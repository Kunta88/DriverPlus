package com.txdriver.compat;

import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONObject;

/** Only the public fleet-configuration request; no credentials or trip packets. */
public final class ConfigHttp {
    private static android.content.Context context;
    private ConfigHttp() {}
    public static void migrateLegacyEndpoint(android.content.Context context) {
        ConfigHttp.context=context.getApplicationContext();
        android.content.SharedPreferences prefs = android.preference.PreferenceManager.getDefaultSharedPreferences(context);
        String host = prefs.getString("pref_primary_server_address", "");
        int port = prefs.getInt("pref_primary_server_port", 8090);
        // This is the branded fleet-1260 build. Preserve every non-legacy custom endpoint.
        if (prefs.getInt("pref_company_id", 1260) == 1260
                && (host.length() == 0 || "dev.novatel.biz".equals(host)) && port == 8090) {
            prefs.edit().putString("pref_primary_server_address", "api-21vek-ze.ligataxi.com")
                .putInt("pref_primary_server_port", 11223).apply();
            android.util.Log.i("DriverConfig", "Migrated obsolete fleet-1260 default endpoint");
        }
        if (prefs.getInt("pref_company_id",1260)==1260 && prefs.getString("pref_web_server", "").trim().length()==0) {
            // Verified public configuration of this branded fleet, not the TCP host.
            prefs.edit().putString("pref_web_server","21vek-ze.ligataxi.com").apply();
        }
    }
    public static String get(String address) throws Exception {
        android.content.SharedPreferences cache=context.getSharedPreferences("complete_fleet_config",0);
        try {
            String text=fetch(address);
            validate(text);
            cache.edit().putString(address,text).apply();
            return text;
        } catch(Exception error) {
            String saved=cache.getString(address,"");
            if(saved.length()==0) throw error;
            validate(saved);
            android.util.Log.w("DriverConfig","Using last complete cached configuration");
            return saved;
        }
    }
    private static void validate(String text) throws Exception {
        JSONObject json=new JSONObject(text);
        String server=json.optString("server","").trim();
        String web=json.optString("web_server","").trim();
        int port=json.optInt("port",0);
        if(!validHost(server) || !validHost(web) || port<1 || port>65535) throw new IOException("Incomplete fleet configuration");
    }
    private static boolean validHost(String host) {
        return host.length()>0 && host.length()<254 && host.matches("[a-zA-Z0-9.-]+")
            && !host.startsWith(".") && !host.endsWith(".") && !host.contains("..");
    }
    public static void apply(android.content.Context context,String server,int port,String web) throws Exception {
        if(!validHost(server) || !validHost(web) || port<1 || port>65535) throw new IOException("Invalid configuration");
        android.preference.PreferenceManager.getDefaultSharedPreferences(context).edit()
            .putString("pref_primary_server_address",server).putInt("pref_primary_server_port",port)
            .putString("pref_web_server",web).apply();
    }
    private static String fetch(String address) throws Exception {
        URL url = new URL(address);
        String host = url.getHost();
        for (int redirect = 0; redirect < 4; redirect++) {
            if (!"https".equals(url.getProtocol()) || !host.equalsIgnoreCase(url.getHost()))
                throw new IOException("Unsafe configuration redirect");
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setConnectTimeout(10000);
            connection.setReadTimeout(10000);
            connection.setInstanceFollowRedirects(false);
            connection.setRequestProperty("Accept", "application/json");
            try {
                int status = connection.getResponseCode();
                if (status == 301 || status == 302 || status == 303 || status == 307 || status == 308) {
                    String location = connection.getHeaderField("Location");
                    if (location == null) throw new IOException("Missing configuration redirect");
                    url = new URL(url, location);
                    continue;
                }
                if (status != 200) throw new IOException("Configuration HTTP " + status);
                StringBuilder body = new StringBuilder();
                try (InputStreamReader reader = new InputStreamReader(connection.getInputStream(), "UTF-8")) {
                    char[] buffer = new char[2048];
                    int count;
                    while ((count = reader.read(buffer)) != -1) {
                        if (body.length() + count > 1048576) throw new IOException("Configuration too large");
                        body.append(buffer, 0, count);
                    }
                }
                JSONObject config = new JSONObject(body.toString());
                String server = config.optString("server", "").trim();
                int port = config.optInt("port", 0);
                if (server.length() == 0 || server.contains("://") || server.contains("/")
                        || port < 1 || port > 65535) throw new IOException("Invalid fleet endpoint");
                android.util.Log.i("DriverConfig", "Configuration received: " + server + ":" + port);
                return body.toString();
            } finally { connection.disconnect(); }
        }
        throw new IOException("Too many configuration redirects");
    }
}
