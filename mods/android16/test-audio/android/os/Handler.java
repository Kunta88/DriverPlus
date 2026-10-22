package android.os;
import java.util.*;
public class Handler {
 public static long now;
 static final Map<Runnable,Long> tasks=new LinkedHashMap<Runnable,Long>();
 public Handler(Looper l){}
 public boolean post(Runnable r){r.run();return true;}
 public boolean postDelayed(Runnable r,long delay){tasks.put(r,now+delay);return true;}
 public void removeCallbacks(Runnable r){tasks.remove(r);}
 public static void advance(long ms){now+=ms;for(Runnable r:new ArrayList<Runnable>(tasks.keySet())){
  Long due=tasks.get(r);if(due!=null&&due<=now){tasks.remove(r);r.run();}
 }}
}
