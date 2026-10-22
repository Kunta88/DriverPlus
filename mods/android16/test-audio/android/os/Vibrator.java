package android.os;
public class Vibrator {
 public boolean present=true,denied;public int calls;public long duration;
 public android.media.AudioAttributes attributes;
 public boolean hasVibrator(){return present;}
 public void vibrate(long value){if(denied)throw new SecurityException("restricted");calls++;duration=value;}
 public void vibrate(VibrationEffect effect,android.media.AudioAttributes attributes){
  vibrate(effect.duration);this.attributes=attributes;
 }
}
