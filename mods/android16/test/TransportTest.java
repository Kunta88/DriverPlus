import com.txdriver.socket.*;
import java.io.*;
import java.net.*;
import java.nio.*;
import java.nio.channels.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.*;

public final class TransportTest {
 static int checks;
 static void check(boolean ok,String text){checks++;if(!ok)throw new AssertionError(text);}
 static class Limited implements WritableByteChannel {
  int limit; ByteArrayOutputStream out=new ByteArrayOutputStream();
  public int write(ByteBuffer b){int n=Math.min(limit,b.remaining());for(int i=0;i<n;i++)out.write(b.get());return n;}
  public boolean isOpen(){return true;}public void close(){}
 }
 static class Bytes implements Packet {final byte[] bytes;Bytes(String s)throws Exception{bytes=s.getBytes("UTF-8");}public byte[] toByteArray(){return bytes;}}
 static class Decoder implements FrameDecoder {
  public void reset(){}
  public Packet decode(ByteBuffer in){while(in.hasRemaining())in.get();try{return new Bytes("reply");}catch(Exception e){throw new RuntimeException(e);}}
 }
 public static void main(String[] args)throws Exception{
  Limited output=new Limited();ByteBuffer b=ByteBuffer.wrap(new byte[]{1,2,3,4,5});
  output.limit=0;check(!FrameWriter.write(output,b),"zero write incomplete");check(b.position()==0,"zero retains position");
  output.limit=2;check(!FrameWriter.write(output,b),"partial write incomplete");check(b.position()==2,"partial retains position");
  check(!FrameWriter.write(output,b),"second partial incomplete");check(FrameWriter.write(output,b),"last completes");
  check(java.util.Arrays.equals(output.out.toByteArray(),new byte[]{1,2,3,4,5}),"no bytes lost or repeated");
  final ServerSocket server=new ServerSocket(0,1,InetAddress.getLoopbackAddress());server.setSoTimeout(5000);
  final AtomicReference<String> received=new AtomicReference<String>();
  final CountDownLatch serverDone=new CountDownLatch(1), connected=new CountDownLatch(1), written=new CountDownLatch(1), reply=new CountDownLatch(1);
  Thread receiver=new Thread(new Runnable(){public void run(){try{
   Socket s=server.accept();s.setSoTimeout(4000);BufferedReader r=new BufferedReader(new InputStreamReader(s.getInputStream(),"UTF-8"));
   received.set(r.readLine());s.getOutputStream().write("ok\n".getBytes("UTF-8"));s.getOutputStream().flush();
   serverDone.countDown();Thread.sleep(100);s.close();
  }catch(Exception e){serverDone.countDown();}}});receiver.setDaemon(true);receiver.start();
  final AtomicInteger writes=new AtomicInteger();
  Client client=new Client(new SocketClientListener(){
   public void onConnected(Client c){connected.countDown();}public void onConnecting(Client c){}public void onDisconnected(Client c){}
   public void onExceptionCaught(Client c,Throwable e){}public void onRead(Client c,ByteBuffer b){}
   public void onRead(Client c,Packet p){reply.countDown();}public void onWrite(Client c,Packet p){writes.incrementAndGet();written.countDown();}
  },new Decoder());
  check(!client.trySend(new Bytes("offline\n")),"offline reject");
  client.open("127.0.0.1",server.getLocalPort());check(connected.await(3,TimeUnit.SECONDS),"loopback connects");
  check(client.trySend(new Bytes("hello\n")),"enqueue accepted");
  check(!client.trySend(new Packet(){public byte[] toByteArray(){return new byte[40000];}}),"oversized frame rejected");
  check(written.await(3,TimeUnit.SECONDS),"write callback");check(reply.await(3,TimeUnit.SECONDS),"read remains enabled");
  check(serverDone.await(3,TimeUnit.SECONDS) && "hello".equals(received.get()),"server gets exact payload");
  check(writes.get()==1,"one write callback");client.close();check(!client.isSocketConnected(),"close is immediate");
  check(!client.trySend(new Bytes("late\n")),"closed rejects stale command");server.close();
  for(int i=0;i<30;i++)client.reconn();
  int owners=0;for(Thread thread:Thread.getAllStackTraces().keySet())if(thread.isAlive() && "DriverPlus-Connection".equals(thread.getName()))owners++;
  check(owners==1,"reconnect storm retains exactly one owner");client.close();
  client.open(null,0);check(!client.isSocketConnected(),"invalid endpoint rejected safely");
  System.out.println("Transport: "+checks+" checks passed");
 }
}
