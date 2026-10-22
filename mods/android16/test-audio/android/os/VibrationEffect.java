package android.os;
public class VibrationEffect {
 public static final int DEFAULT_AMPLITUDE=-1;
 public long duration;
 public static VibrationEffect createOneShot(long duration,int amplitude){
  VibrationEffect effect=new VibrationEffect();effect.duration=duration;return effect;
 }
}
