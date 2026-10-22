import com.txdriver.compat.SafeHttp;
import java.net.*;
import java.io.*;
import java.util.concurrent.atomic.AtomicInteger;
public final class HttpTransportTest {
 static int checks;
 static void check(boolean ok,String message){checks++;if(!ok)throw new AssertionError(message);}
 public static void main(String[] args)throws Exception{
  final ServerSocket server=new ServerSocket(0,8,InetAddress.getLoopbackAddress());
  final AtomicInteger posts=new AtomicInteger();
  Thread t=new Thread(new Runnable(){public void run(){while(!server.isClosed())try{
   Socket s=server.accept();s.setSoTimeout(2000);
   BufferedReader r=new BufferedReader(new InputStreamReader(s.getInputStream(),"UTF-8"));
   String first=r.readLine(),header;int length=0;
   while((header=r.readLine())!=null && header.length()>0)if(header.toLowerCase().startsWith("content-length:"))length=Integer.parseInt(header.substring(15).trim());
   for(int i=0;i<length;i++)r.read();
   if(first.startsWith("POST"))posts.incrementAndGet();
   String response=first.contains(" /redirect ")?"302 Found\r\nLocation: /ok":
    first.contains(" /unsafe ")?"302 Found\r\nLocation: http://example.invalid/":
    first.contains(" /bad ")?"503 Unavailable":"200 OK";
   byte[] bytes="{\"ok\":true}".getBytes("UTF-8");
   OutputStream out=s.getOutputStream();out.write(("HTTP/1.1 "+response+"\r\nContent-Length: "+bytes.length+"\r\nConnection: close\r\n\r\n").getBytes("UTF-8"));out.write(bytes);out.flush();s.close();
  }catch(Exception ignored){}}});t.setDaemon(true);t.start();
  String base="http://127.0.0.1:"+server.getLocalPort();
  check(SafeHttp.get(base+"/ok").contains("true"),"GET body");
  check(SafeHttp.get(base+"/redirect").contains("true"),"same-host GET redirect");
  try{SafeHttp.get(base+"/bad");throw new AssertionError("accept 503");}catch(IOException expected){checks++;}
  check(SafeHttp.getIndicatorNote().contains("HTTP 503"),"real HTTP error records safe reason and age");
  try{SafeHttp.get("https:///api/");throw new AssertionError("empty host");}catch(IOException expected){checks++;}
  try{SafeHttp.get(base+"/unsafe");throw new AssertionError("cross-host redirect");}catch(IOException expected){checks++;}
  check(SafeHttp.request(base+"/ok","probe","{}".getBytes("UTF-8")).contains("true"),"POST body");
  check(SafeHttp.getIndicatorNote().isEmpty(),"real success clears historical failure");
  int before=posts.get();
  try{SafeHttp.request(base+"/redirect",null,"{}".getBytes("UTF-8"));throw new AssertionError("POST replay");}catch(IOException expected){checks++;}
  check(posts.get()==before+1,"POST never repeated automatically");
  server.close();System.out.println("HTTP: "+checks+" checks passed");
 }
}
