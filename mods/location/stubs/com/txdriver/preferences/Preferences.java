package com.txdriver.preferences;
public class Preferences {
    public boolean open = true;
    public long order = -1;
    public boolean isSessionOpened() { return open; }
    public long getCurrentOrderId() { return order; }
}
