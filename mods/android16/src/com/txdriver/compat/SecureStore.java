package com.txdriver.compat;

import android.content.Context;
import android.os.Build;
import android.util.Base64;
import java.security.KeyStore;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import android.security.keystore.KeyGenParameterSpec;
import android.security.keystore.KeyProperties;

/** Private app data; key never leaves Android Keystore. No weak-crypto fallback on modern Android. */
public final class SecureStore {
    private static final String PREFIX="keystore:v1:";
    private static synchronized SecretKey key() throws Exception {
        KeyStore store=KeyStore.getInstance("AndroidKeyStore"); store.load(null);
        String alias="DriverPlusPrivateV1";
        if(store.containsAlias(alias)) return (SecretKey)store.getKey(alias,null);
        KeyGenerator generator=KeyGenerator.getInstance("AES","AndroidKeyStore");
        generator.init(new KeyGenParameterSpec.Builder(alias,KeyProperties.PURPOSE_ENCRYPT|KeyProperties.PURPOSE_DECRYPT)
            .setBlockModes(KeyProperties.BLOCK_MODE_GCM).setEncryptionPaddings(KeyProperties.ENCRYPTION_PADDING_NONE).build());
        return generator.generateKey();
    }
    public static String encode(Context context,String value) {
        if(value==null || value.length()==0 || value.startsWith(PREFIX) || Build.VERSION.SDK_INT<23) return value==null?"":value;
        try {
            Cipher cipher=Cipher.getInstance("AES/GCM/NoPadding"); cipher.init(Cipher.ENCRYPT_MODE,key());
            return PREFIX+Base64.encodeToString(cipher.getIV(),Base64.NO_WRAP)+":"+Base64.encodeToString(cipher.doFinal(value.getBytes("UTF-8")),Base64.NO_WRAP);
        } catch(Exception error) {
            android.util.Log.e("PrivateStorage","Cannot encrypt private value");
            throw new IllegalStateException("Защищённое хранилище недоступно",error);
        }
    }
    public static String decode(Context context,String value) {
        if(value==null) return "";
        if(!value.startsWith(PREFIX)) return value;
        try {
            String[] parts=value.substring(PREFIX.length()).split(":",2);
            Cipher cipher=Cipher.getInstance("AES/GCM/NoPadding");
            cipher.init(Cipher.DECRYPT_MODE,key(),new GCMParameterSpec(128,Base64.decode(parts[0],Base64.NO_WRAP)));
            return new String(cipher.doFinal(Base64.decode(parts[1],Base64.NO_WRAP)),"UTF-8");
        } catch(Exception error) {android.util.Log.e("PrivateStorage","Cannot decrypt private value; sign in again");return "";}
    }
    public static void migrate(Context context) {
        if(Build.VERSION.SDK_INT>=23) {
            try {
                if(!"storage-check".equals(decode(context,encode(context,"storage-check"))))throw new IllegalStateException("Keystore self-check");
                android.util.Log.i("PrivateStorage","Keystore self-check OK");
            }catch(RuntimeException error){android.util.Log.e("PrivateStorage","Keystore self-check failed");}
        }
        android.content.SharedPreferences prefs=android.preference.PreferenceManager.getDefaultSharedPreferences(context);
        String saved=prefs.getString("password_pref","");
        if(Build.VERSION.SDK_INT>=23 && saved.length()>0 && !saved.startsWith(PREFIX)) {
            try {prefs.edit().putString("password_pref",encode(context,saved)).apply();}
            catch(RuntimeException error){android.util.Log.e("PrivateStorage","Password migration postponed");}
        }
    }
    public static void storePassword(Context context,String value) {
        try {
            String encrypted=encode(context,value);
            android.preference.PreferenceManager.getDefaultSharedPreferences(context).edit().putString("password_pref",encrypted).apply();
        } catch(RuntimeException error) {
            android.widget.Toast.makeText(context,"Не удалось сохранить пароль в защищённом хранилище",android.widget.Toast.LENGTH_LONG).show();
        }
    }
}
