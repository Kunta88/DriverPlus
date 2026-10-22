package com.txdriver.socket.packet;
public class DriverLocationPacket implements com.txdriver.socket.Packet {
    public final android.location.Location location;
    public final long order;
    public DriverLocationPacket(com.txdriver.App app, android.location.Location location) {
        this.location = new android.location.Location(location);
        order = app.getPreferences().getCurrentOrderId();
    }
}
