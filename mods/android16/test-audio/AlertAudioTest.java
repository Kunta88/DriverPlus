import com.txdriver.compat.AlertAudio;
import android.content.Context;
import android.media.*;
public class AlertAudioTest {
 static int checks;
 static void check(boolean value,String text){checks++;if(!value)throw new AssertionError(text);}
 public static void main(String[] args){
  Context c=new Context();MediaPlayer p=new MediaPlayer();AlertAudio.prepare(c,p);
  check(c.audio.stream==3&&c.audio.volume==15,"media stream maximum");
  check(p.left==1&&p.right==1,"both channels full gain");
  Ringtone r=new Ringtone();AlertAudio.prepare(c,r);
  check(c.audio.stream==5&&c.audio.volume==15,"ringtone own stream maximum");
  check(r.gain==1,"ringtone full gain");
  c.audio.denied=true;AlertAudio.prepare(c,p);check(p.left==1,"policy denial does not crash");
  r.denied=true;AlertAudio.prepare(c,r);check(true,"ringtone denial does not crash");
  AlertAudio.prepare(c,(Ringtone)null);check(true,"null ringtone safe");
  c.audio=null;AlertAudio.prepare(c,p);check(p.left==1,"missing audio manager safe");
  android.os.Build.VERSION.SDK_INT=17;r=new Ringtone();AlertAudio.prepare(c,r);
  check(r.gain==0,"old Android avoids unsupported gain API");
  AlertAudio.vibrateAutoAccept(c);
  check(c.vibrator.duration==6000&&c.vibrator.calls==1,"legacy six-second vibration once");
  android.os.Build.VERSION.SDK_INT=36;
  AlertAudio.vibrateAutoAccept(c);
  check(c.vibrator.duration==6000&&c.vibrator.calls==2,"modern six-second vibration once per event");
  check(c.vibrator.attributes.usage==AudioAttributes.USAGE_NOTIFICATION_EVENT,"normal notification policy");
  c.vibrator.present=false;AlertAudio.vibrateAutoAccept(c);
  check(c.vibrator.calls==2,"no vibration hardware safe");
  c.vibrator.present=true;c.vibrator.denied=true;AlertAudio.vibrateAutoAccept(c);
  check(c.vibrator.calls==2,"system policy denial safe");
  c.vibrator=null;AlertAudio.vibrateAutoAccept(c);check(true,"missing vibrator safe");
  System.out.println("AlertAudio: "+checks+" checks passed");
 }
}
