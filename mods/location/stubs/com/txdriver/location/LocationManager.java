package com.txdriver.location;
public class LocationManager {
    public interface LocationChangeListener { void onLocationChanged(android.location.Location location); }
    public android.location.Location location;
    public android.location.Location getLastLocation() { return location; }
}
