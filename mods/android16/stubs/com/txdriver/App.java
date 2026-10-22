package com.txdriver;
public class App extends android.app.Application {
 public com.txdriver.socket.Client getClient(){return null;}
 public com.txdriver.notification.SoundManager getSoundManager(){return null;}
 public com.txdriver.taximeter.Taximeter getTaximeter(){return null;}
}
