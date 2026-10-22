package android.media;
public class AudioAttributes {
 public static final int USAGE_NOTIFICATION_EVENT=10,CONTENT_TYPE_SONIFICATION=4;
 public int usage;
 public static class Builder {
  private int usage;
  public Builder setUsage(int value){usage=value;return this;}
  public Builder setContentType(int value){return this;}
  public AudioAttributes build(){AudioAttributes a=new AudioAttributes();a.usage=usage;return a;}
 }
}
