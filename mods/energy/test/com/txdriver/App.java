package com.txdriver;
public class App extends android.content.Context {
 public final com.txdriver.location.LocationManager location=new com.txdriver.location.LocationManager();
 public final com.txdriver.taximeter.Taximeter taximeter=new com.txdriver.taximeter.Taximeter();
 public com.txdriver.location.LocationManager getLocationManager(){return location;}
 public com.txdriver.taximeter.Taximeter getTaximeter(){return taximeter;}
}
