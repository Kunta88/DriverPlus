package android.os;
import java.util.*;
public class PowerManager {
 public static final int PARTIAL_WAKE_LOCK=1;
 public boolean screen=true;
 public final List<WakeLock> locks=new ArrayList<WakeLock>();
 public boolean isScreenOn() { return screen; }
 public WakeLock newWakeLock(int flags,String tag) { WakeLock lock=new WakeLock(flags); locks.add(lock); return lock; }
 public static class WakeLock {
  public final int flags;
  public boolean held;
  WakeLock(int flags){this.flags=flags;}
  public void acquire(){held=true;}
  public void release(){if(!held)throw new AssertionError("Double release");held=false;}
  public boolean isHeld(){return held;}
 }
}
