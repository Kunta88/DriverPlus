package android.media;
public class MediaPlayer {
 public interface OnPreparedListener{void onPrepared(MediaPlayer p);}
 public interface OnErrorListener{boolean onError(MediaPlayer p,int what,int extra);}
 public static MediaPlayer latest; public static int created;
 public OnPreparedListener prepared;public OnErrorListener error;
 public boolean looping,started,released,failStart;
 public MediaPlayer(){latest=this;created++;}
 public void setDataSource(java.io.FileDescriptor fd,long offset,long length){}
 public void setLooping(boolean value){looping=value;}
 public void setOnPreparedListener(OnPreparedListener value){prepared=value;}
 public void setOnErrorListener(OnErrorListener value){error=value;}
 public void prepareAsync(){}
 public void start(){if(failStart)throw new IllegalStateException();started=true;}
 public void release(){released=true;started=false;}
 public int stream;public float left,right;
 public void setAudioStreamType(int value){stream=value;}
 public void setVolume(float l,float r){left=l;right=r;}
}
