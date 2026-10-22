package android.media;
public class AudioManager {
 public static final int STREAM_MUSIC=3;
 public boolean denied;public int stream=-1,volume=-1;
 public int getStreamMaxVolume(int stream){return 15;}
 public void setStreamVolume(int stream,int value,int flags){
  if(denied)throw new SecurityException("DND");this.stream=stream;volume=value;
 }
}
