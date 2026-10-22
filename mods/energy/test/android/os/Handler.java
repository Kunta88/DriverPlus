package android.os;
public class Handler {
 public static Runnable pending;
 public Handler(Looper looper) {}
 public boolean post(Runnable value) { pending=value; return true; }
 public void removeCallbacks(Runnable value) { if(pending==value)pending=null; }
 public static void drain() { Runnable value=pending; pending=null; if(value!=null)value.run(); }
}
