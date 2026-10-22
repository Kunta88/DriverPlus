package com.txdriver.compat;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.Ringtone;
import android.util.Log;

/** Maximum supported stream gain; does not change ringer/DND policy or audio routing. */
public final class AlertAudio {
    private AlertAudio() {}
    public static void vibrateAutoAccept(Context context) {
        try {
            android.os.Vibrator vibrator = (android.os.Vibrator)context.getSystemService(Context.VIBRATOR_SERVICE);
            if (vibrator == null || !vibrator.hasVibrator()) return;
            if (android.os.Build.VERSION.SDK_INT >= 26) {
                vibrator.vibrate(android.os.VibrationEffect.createOneShot(6000L,
                    android.os.VibrationEffect.DEFAULT_AMPLITUDE),
                    new android.media.AudioAttributes.Builder()
                        .setUsage(android.media.AudioAttributes.USAGE_NOTIFICATION_EVENT)
                        .setContentType(android.media.AudioAttributes.CONTENT_TYPE_SONIFICATION).build());
            } else {
                vibrator.vibrate(6000L);
            }
        } catch (RuntimeException error) {
            Log.w("AlertAudio", "System restricted auto-accept vibration", error);
        }
    }
    private static void maximum(Context context, int stream) {
        try {
            AudioManager audio = (AudioManager)context.getSystemService(Context.AUDIO_SERVICE);
            if (audio != null) audio.setStreamVolume(stream, audio.getStreamMaxVolume(stream), 0);
        } catch (RuntimeException error) {
            Log.w("AlertAudio", "System restricted alert volume", error);
        }
    }
    public static void prepare(Context context, MediaPlayer player) {
        player.setAudioStreamType(AudioManager.STREAM_MUSIC);
        player.setVolume(1f, 1f);
        maximum(context, AudioManager.STREAM_MUSIC);
    }
    public static void prepare(Context context, Ringtone ringtone) {
        if (ringtone == null) return;
        maximum(context, ringtone.getStreamType());
        try {
            if (android.os.Build.VERSION.SDK_INT >= 28) ringtone.setVolume(1f);
        } catch (RuntimeException error) { Log.w("AlertAudio", "System restricted ringtone gain", error); }
    }
}
