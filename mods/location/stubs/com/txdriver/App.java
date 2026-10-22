package com.txdriver;
public class App {
    public final com.txdriver.socket.Client client = new com.txdriver.socket.Client();
    public final com.txdriver.location.LocationManager location = new com.txdriver.location.LocationManager();
    public final com.txdriver.preferences.Preferences prefs = new com.txdriver.preferences.Preferences();
    public com.txdriver.socket.Client getClient() { return client; }
    public com.txdriver.location.LocationManager getLocationManager() { return location; }
    public com.txdriver.preferences.Preferences getPreferences() { return prefs; }
}
