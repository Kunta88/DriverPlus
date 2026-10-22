package com.txdriver.socket.packet;
public class ServerPacket implements com.txdriver.socket.Packet {
 public final byte code;public final byte[] body;
 public ServerPacket(byte code,byte[] body){this.code=code;this.body=body;}
 public byte[] toByteArray(){return body;}
}
