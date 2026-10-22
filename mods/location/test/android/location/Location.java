package android.location;
public class Location {
    public long elapsed;
    public double lat = 55, lng = 37;
    public float accuracy = 5;
    public boolean accurate = true;
    public Location(String provider) {}
    public Location(Location other) {
        elapsed=other.elapsed; lat=other.lat; lng=other.lng;
        accuracy=other.accuracy; accurate=other.accurate;
    }
    public long getElapsedRealtimeNanos() { return elapsed*1000000L; }
    public double getLatitude() { return lat; }
    public double getLongitude() { return lng; }
    public float getAccuracy() { return accuracy; }
    public boolean hasAccuracy() { return accurate; }
    public float distanceTo(Location other) { return (float)(Math.abs(lat-other.lat)*111000); }
}
