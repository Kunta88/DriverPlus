package android.media;
public class Ringtone {
 public float gain;public boolean denied;
 public int getStreamType(){return 5;}
 public void setVolume(float value){if(denied)throw new SecurityException("restricted");gain=value;}
}
