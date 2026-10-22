package com.txdriver.socket;
import java.nio.ByteBuffer;
import com.txdriver.socket.packet.ServerPacket;

/** Original unsigned-short length + byte code wire format, with split headers supported. */
public final class SocketFrameDecoder implements FrameDecoder {
 private int first=-1, expected;
 private ByteBuffer body;
 public void reset(){first=-1;expected=0;body=null;}
 public Packet decode(ByteBuffer input) {
  while(input.hasRemaining()) {
   if(body==null) {
    if(first<0) {first=input.get()&255;if(!input.hasRemaining())return null;}
    expected=(first<<8)|(input.get()&255);first=-1;
    if(expected<1){reset();throw new IllegalArgumentException("Invalid zero-length fleet frame");}
    body=ByteBuffer.allocate(expected);
   }
   int count=Math.min(body.remaining(),input.remaining());
   int limit=input.limit();input.limit(input.position()+count);body.put(input);input.limit(limit);
   if(!body.hasRemaining()) {
    byte[] bytes=body.array(); byte code=bytes[0];byte[] payload=new byte[bytes.length-1];
    System.arraycopy(bytes,1,payload,0,payload.length);body=null;expected=0;
    return new ServerPacket(code,payload);
   }
  }
  return null;
 }
}
