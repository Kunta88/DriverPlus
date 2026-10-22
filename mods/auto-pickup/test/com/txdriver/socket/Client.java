package com.txdriver.socket;
public class Client {
 public boolean connected=true;
 public final java.util.List<Packet> sent=new java.util.ArrayList<Packet>();
 public boolean isSocketConnected() { return connected; }
 public void send(Packet packet) { sent.add(packet); }
}
