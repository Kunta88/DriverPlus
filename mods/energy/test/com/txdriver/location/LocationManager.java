package com.txdriver.location;
public class LocationManager {
 public int starts,stops;
 public long interval;
 public void startUpdates(long value){starts++;interval=value;}
 public void stopUpdates(){stops++;}
}
