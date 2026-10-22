package com.txdriver;
public class App {
 public final android.content.SharedPreferences prefs=new android.content.MemoryPreferences();
 public final com.txdriver.socket.Client client=new com.txdriver.socket.Client();
 public final com.txdriver.location.LocationManager location=new com.txdriver.location.LocationManager();
 public final com.txdriver.preferences.Preferences preferences=new com.txdriver.preferences.Preferences();
 public final android.content.res.Resources resources=new android.content.res.Resources();
 public android.content.SharedPreferences getSharedPreferences(String name,int mode) { return prefs; }
 public com.txdriver.socket.Client getClient() { return client; }
 public com.txdriver.location.LocationManager getLocationManager() { return location; }
 public com.txdriver.preferences.Preferences getPreferences() { return preferences; }
 public android.content.res.Resources getResources() { return resources; }
}
