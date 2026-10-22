package android.os;
public class Handler {
    public static long delay;
    public Handler(Looper looper) {}
    public boolean post(Runnable runnable) { delay=0; return true; }
    public boolean postDelayed(Runnable runnable, long value) { delay=value; return true; }
    public void removeCallbacks(Runnable runnable) {}
}
