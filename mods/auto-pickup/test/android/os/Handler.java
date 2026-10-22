package android.os;
public class Handler {
 public static long lastDelay;
 public Handler(Looper looper) {}
 public boolean post(Runnable runnable) { lastDelay=0;return true; }
 public boolean postDelayed(Runnable runnable,long delay) { lastDelay=delay;return true; }
 public void removeCallbacks(Runnable runnable) {}
}
