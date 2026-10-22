package com.txdriver.socket;
public interface SocketClientListener {
 void onConnected(Client client); void onConnecting(Client client); void onDisconnected(Client client);
 void onExceptionCaught(Client client, Throwable error); void onRead(Client client, Packet packet);
 void onRead(Client client, java.nio.ByteBuffer bytes); void onWrite(Client client, Packet packet);
}
