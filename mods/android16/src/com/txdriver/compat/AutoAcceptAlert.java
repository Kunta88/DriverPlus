package com.txdriver.compat;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaPlayer;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;

/** Owns the player until completion, independently of SoundManager's shared queue. */
public final class AutoAcceptAlert {
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static MediaPlayer player;
    private static volatile boolean active;
    private static Runnable cleanup;
    private AutoAcceptAlert() {}

    public static boolean isActive() { return active; }

    public static void play(final Context context) {
        final Context app = context.getApplicationContext();
        MAIN.post(new Runnable() { public void run() { begin(app); } });
    }

    private static void finish(MediaPlayer expected) {
        if (player != expected) return;
        player = null;
        active = false;
        if (cleanup != null) MAIN.removeCallbacks(cleanup);
        cleanup = null;
        // release also stops playback; no invalid-state stop() call on prepare failure.
        expected.release();
    }

    private static void deadline(final MediaPlayer expected, long delay) {
        if (cleanup != null) MAIN.removeCallbacks(cleanup);
        cleanup = new Runnable() { public void run() { finish(expected); } };
        MAIN.postDelayed(cleanup, delay);
    }

    private static void begin(final Context context) {
        // Do not truncate/restart an alert if two acceptance paths race.
        if (player != null) return;
        final MediaPlayer current = new MediaPlayer();
        player = current;
        active = true;
        try {
            AlertAudio.prepare(context, current);
            try (AssetFileDescriptor asset = context.getAssets().openFd("audio/new_order_notification_v2.mp3")) {
                current.setDataSource(asset.getFileDescriptor(), asset.getStartOffset(), asset.getLength());
            }
            current.setLooping(true);
            current.setOnPreparedListener(new MediaPlayer.OnPreparedListener() {
                public void onPrepared(MediaPlayer prepared) {
                    if (player != prepared) return;
                    try {
                        prepared.start();
                        AlertAudio.vibrateAutoAccept(context);
                        deadline(prepared, 6000L);
                    } catch (RuntimeException error) {
                        Log.w("AutoAcceptAlert", "Cannot start auto-accept alert", error);
                        finish(prepared);
                    }
                }
            });
            current.setOnErrorListener(new MediaPlayer.OnErrorListener() {
                public boolean onError(MediaPlayer failed, int what, int extra) {
                    Log.w("AutoAcceptAlert", "Auto-accept playback failed", null);
                    finish(failed);
                    return true;
                }
            });
            deadline(current, 10000L); // bounded lifetime even if preparation never completes
            current.prepareAsync();
        } catch (Exception error) {
            Log.w("AutoAcceptAlert", "Cannot prepare auto-accept alert", error);
            finish(current);
        }
    }
}
