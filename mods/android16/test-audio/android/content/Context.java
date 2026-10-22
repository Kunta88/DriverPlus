package android.content;
public class Context {
 public static final String AUDIO_SERVICE="audio";
 public static final String VIBRATOR_SERVICE="vibrator";
 public android.media.AudioManager audio = new android.media.AudioManager();
 public android.os.Vibrator vibrator = new android.os.Vibrator();
 public Context getApplicationContext(){return this;}
 public android.content.res.AssetManager assets = new android.content.res.AssetManager();
 public android.content.res.AssetManager getAssets(){return assets;}
 public Object getSystemService(String service){return VIBRATOR_SERVICE.equals(service)?vibrator:audio;}
}
