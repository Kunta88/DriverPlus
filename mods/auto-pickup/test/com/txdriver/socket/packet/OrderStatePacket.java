package com.txdriver.socket.packet;
public class OrderStatePacket extends com.txdriver.socket.Packet {
 public final int orderId; public final byte state;
 public OrderStatePacket(int id,byte state) { this.orderId=id; this.state=state; }
}
