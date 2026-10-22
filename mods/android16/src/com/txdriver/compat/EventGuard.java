package com.txdriver.compat;

import android.content.Context;

/** Durable server IDs, scoped to fleet and account without storing the account in plaintext. */
public final class EventGuard {
    private static Context app;
    public static void install(Context context) {app=context.getApplicationContext();}
    public static String scope(Context context) {
        android.content.SharedPreferences p=android.preference.PreferenceManager.getDefaultSharedPreferences(context);
        String account=p.getInt("pref_company_id",1260)+":"+p.getString("login_pref","");
        try {
            byte[] hash=java.security.MessageDigest.getInstance("SHA-256").digest(account.getBytes("UTF-8"));
            return android.util.Base64.encodeToString(hash,android.util.Base64.NO_WRAP|android.util.Base64.URL_SAFE);
        } catch(Exception error){throw new IllegalStateException("Account scope unavailable",error);}
    }
    public static void autoAccepted(int id) {
        if(app==null || !android.preference.PreferenceManager.getDefaultSharedPreferences(app).getBoolean("pref_auto_accept_orders",true)
                || !first("auto_accept_horn",id)) return;
        ((com.txdriver.App)app).getSoundManager().playAutoAcceptSound();
    }
    public static synchronized boolean first(String kind,int id) {
        if(app==null || id<=0) return true;
        String account=scope(app);
        android.content.SharedPreferences seen=app.getSharedPreferences("event_ids",0);
        String key=account+":"+kind+":"+id;
        long now=System.currentTimeMillis(), last=seen.getLong(key,0);
        if(last>0 && now>=last && now-last<86400000L) return false;
        android.content.SharedPreferences.Editor edit=seen.edit();
        if(seen.getAll().size()>2048) {
            for(java.util.Map.Entry<String,?> entry:seen.getAll().entrySet())
                if(entry.getValue() instanceof Long && now-(Long)entry.getValue()>86400000L) edit.remove(entry.getKey());
            String oldest=null;long oldestTime=Long.MAX_VALUE;
            for(java.util.Map.Entry<String,?> entry:seen.getAll().entrySet())
                if(entry.getValue() instanceof Long && (Long)entry.getValue()<oldestTime){oldest=entry.getKey();oldestTime=(Long)entry.getValue();}
            if(oldest!=null)edit.remove(oldest);
        }
        edit.putLong(key,now).apply(); return true;
    }
}
