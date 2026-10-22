package com.txdriver.compat;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.provider.Settings;

/** Target 34 contracts used by the original app and its bundled Android adapters. */
public final class CompatIntents {
    public static int flags(int original) {
        if (Build.VERSION.SDK_INT >= 23 && (original & 0x02000000) == 0) return original | 0x04000000;
        return original;
    }
    public static PendingIntent getActivity(Context context, int request, Intent intent, int original) {
        return PendingIntent.getActivity(context, request, intent, flags(original));
    }
    public static PendingIntent getBroadcast(Context context, int request, Intent intent, int original) {
        return PendingIntent.getBroadcast(context, request, intent, flags(original));
    }
    public static PendingIntent getActivities(Context context, int request, Intent[] intents, int original) {
        return PendingIntent.getActivities(context, request, intents, flags(original));
    }
    public static PendingIntent getActivities(Context context, int request, Intent[] intents, int original, Bundle options) {
        return PendingIntent.getActivities(context, request, intents, flags(original), options);
    }
    public static Intent registerReceiver(Context context, BroadcastReceiver receiver, IntentFilter filter) {
        if (Build.VERSION.SDK_INT >= 33) return context.registerReceiver(receiver, filter, Context.RECEIVER_NOT_EXPORTED);
        return context.registerReceiver(receiver, filter);
    }
    public static void requestBackground(Activity activity) {
        if (Build.VERSION.SDK_INT >= 30) {
            Intent intent = new Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS,
                Uri.parse("package:" + activity.getPackageName()));
            activity.startActivity(intent);
        } else if (Build.VERSION.SDK_INT >= 29) {
            activity.requestPermissions(new String[]{"android.permission.ACCESS_BACKGROUND_LOCATION"}, 1006);
        }
    }
    public static void requestNotifications(Activity activity) {
        if (Build.VERSION.SDK_INT < 33 || activity.isFinishing()
                || activity.checkSelfPermission("android.permission.POST_NOTIFICATIONS") == 0) return;
        android.content.SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(activity);
        if (prefs.getBoolean("notifications_permission_requested", false)) return;
        prefs.edit().putBoolean("notifications_permission_requested", true).apply();
        activity.requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 1033);
    }
    public static void openNotifications(Activity activity) {
        Intent intent;
        if (Build.VERSION.SDK_INT >= 26) {
            intent = new Intent(Settings.ACTION_APP_NOTIFICATION_SETTINGS)
                .putExtra(Settings.EXTRA_APP_PACKAGE, activity.getPackageName());
        } else intent = new Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS,
            Uri.parse("package:" + activity.getPackageName()));
        activity.startActivity(intent);
    }
}
