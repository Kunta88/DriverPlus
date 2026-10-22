import com.txdriver.socket.*;
import com.txdriver.socket.packet.ServerPacket;
import java.nio.*;
public final class FrameDecoderTest {
 static int checks;
 static void check(boolean b,String m){checks++;if(!b)throw new AssertionError(m);}
 public static void main(String[] args){
  SocketFrameDecoder decoder=new SocketFrameDecoder();
  byte[] wire={0,4,20,1,2,3};Packet result=null;
  for(int i=0;i<wire.length;i++){
   result=decoder.decode(ByteBuffer.wrap(new byte[]{wire[i]}));
   check((i==wire.length-1)==(result!=null),"split byte "+i);
  }
  ServerPacket packet=(ServerPacket)result;
  check(packet.code==20 && java.util.Arrays.equals(packet.body,new byte[]{1,2,3}),"exact payload");
  ByteBuffer joined=ByteBuffer.wrap(new byte[]{0,1,127,0,2,20,42});
  check(((ServerPacket)decoder.decode(joined)).code==127,"first joined packet");
  check(((ServerPacket)decoder.decode(joined)).body[0]==42,"second joined packet");
  check(!joined.hasRemaining(),"joined consumed");
  decoder.decode(ByteBuffer.wrap(new byte[]{0}));decoder.reset();
  check(((ServerPacket)decoder.decode(ByteBuffer.wrap(new byte[]{0,1,9}))).code==9,"session reset clears partial header");
  try{decoder.decode(ByteBuffer.wrap(new byte[]{0,0}));throw new AssertionError("zero length");}catch(IllegalArgumentException expected){checks++;}
  check(decoder.decode(ByteBuffer.allocate(0))==null,"empty read");
  System.out.println("FrameDecoder: "+checks+" checks passed");
 }
}
