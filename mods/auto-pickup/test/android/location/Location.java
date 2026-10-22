package android.location;
public class Location { public long elapsed; public float accuracy=5; public boolean hasAccuracy(){return true;} public float getAccuracy(){return accuracy;} public long getElapsedRealtimeNanos() { return elapsed*1000000L; } }
