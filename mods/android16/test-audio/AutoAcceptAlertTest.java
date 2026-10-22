import android.content.Context;
import android.media.MediaPlayer;
import android.os.Handler;
import com.txdriver.compat.AutoAcceptAlert;
public class AutoAcceptAlertTest {
 static int checks;
 static void check(boolean ok,String name){checks++;if(!ok)throw new AssertionError(name);}
 public static void main(String[] args){
  Context c=new Context();AutoAcceptAlert.play(c);MediaPlayer p=MediaPlayer.latest;
  check(AutoAcceptAlert.isActive()&&p.looping,"retained looping player");
  check(c.assets.last.closed,"asset descriptor closed");
  check(!p.started&&c.vibrator.calls==0,"wait for prepared before sound and vibration");
  Handler.advance(1500);p.prepared.onPrepared(p);
  check(p.started&&c.vibrator.duration==6000&&c.vibrator.calls==1,"start together");
  int count=MediaPlayer.created;AutoAcceptAlert.play(c);
  check(MediaPlayer.created==count,"duplicate does not truncate or overlap");
  Handler.advance(5999);check(!p.released&&AutoAcceptAlert.isActive(),"full six seconds from start");
  Handler.advance(1);check(p.released&&!AutoAcceptAlert.isActive(),"released at six seconds");
  AutoAcceptAlert.play(c);MediaPlayer next=MediaPlayer.latest;
  p.prepared.onPrepared(p);check(!p.started&&AutoAcceptAlert.isActive(),"stale callback ignored");
  check(next.error.onError(next,1,2)&&next.released&&!AutoAcceptAlert.isActive(),"error handled and released");
  AutoAcceptAlert.play(c);p=MediaPlayer.latest;Handler.advance(10000);
  check(p.released&&!AutoAcceptAlert.isActive(),"prepare watchdog bounded");
  c.assets.fail=true;AutoAcceptAlert.play(c);
  check(MediaPlayer.latest.released&&!AutoAcceptAlert.isActive(),"asset failure releases");
  c.assets.fail=false;AutoAcceptAlert.play(c);p=MediaPlayer.latest;p.failStart=true;p.prepared.onPrepared(p);
  check(p.released&&!AutoAcceptAlert.isActive(),"start failure releases");
  check(c.vibrator.calls==1,"failed starts do not vibrate");
  System.out.println("AutoAcceptAlert: "+checks+" checks passed");
 }
}
