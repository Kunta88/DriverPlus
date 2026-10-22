package com.txdriver.socket;
public class Client {
    public boolean connected = true, accept = true;
    public long session = 1;
    public final java.util.List<Packet> sent = new java.util.ArrayList<Packet>();
    public boolean isSocketConnected() { return connected; }
    public long getSessionId() { return session; }
    public boolean trySend(Packet packet) {
        if (!connected || !accept) return false;
        sent.add(packet); return true;
    }
}
