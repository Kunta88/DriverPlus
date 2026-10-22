package com.txdriver.energy;
import com.txdriver.App;
import com.txdriver.db.Order;
import android.os.*;
import android.preference.PreferenceManager;
import android.widget.TextView;
public class EnergyTest {
 private static int checks;
 private static void check(boolean value,String text){checks++;if(!value)throw new AssertionError(text);}
 private static void set(String key,boolean value){PreferenceManager.prefs.set(key,value);Handler.drain();}
 private static int flags(App app){return app.power.locks.get(app.power.locks.size()-1).flags;}
 public static void main(String[] args){
  App app=new App(); Energy.start(app);
  check(app.location.interval==0,"Original GPS by default");
  check(flags(app)==0x3000001a,"Original screen lock by default");
  check(Energy.option(app,Energy.UI)&&Energy.option(app,Energy.HIDDEN)&&Energy.pickupEnabled(),"Three safe defaults enabled");
  check(!Energy.option(app,Energy.GPS)&&!Energy.option(app,Energy.SCREEN),"GPS and screen opt in");
  set(Energy.GPS,true);check(app.location.interval==5000,"Idle GPS mode");
  int starts=app.location.starts;Energy.update(null);Energy.update(null);
  check(app.location.starts==starts,"No repeated GPS registration");
  Order.current=new Order();Energy.signal();Handler.drain();
  check(app.location.interval==0,"Order event restores accurate GPS");
  Order.current=null;app.taximeter.status=1;Energy.signal();Handler.drain();
  check(app.location.interval==0,"Standalone taximeter retains accurate GPS");
  app.taximeter.status=0;Energy.signal();Handler.drain();
  check(app.location.interval==5000,"Idle mode resumes after meter stops");
  set(Energy.GPS,false);check(app.location.interval==0,"Disabling GPS option restores original mode");
  set(Energy.SCREEN,true);check(flags(app)==1,"Idle screen may sleep, CPU lock retained");
  check(com.txdriver.compat.ModernCompat.idleScreen,"Activity screen-on flag released in idle mode");
  Order.current=new Order();Energy.signal();Handler.drain();
  check(flags(app)==0x3000001a,"Active order restores original screen lock");
  check(!com.txdriver.compat.ModernCompat.idleScreen,"Activity screen-on flag restored during order");
  Order.current=null;Energy.signal();Handler.drain();
  check(flags(app)==1,"Screen returns to idle mode");
  set(Energy.SCREEN,false);check(flags(app)==0x3000001a,"Disabling screen mode restores original");
  TextView view=new TextView(app);
  check(Energy.shouldRender(view),"First frame immediate");
  SystemClock.now+=500;check(!Energy.shouldRender(view),"Intermediate frame skipped");
  SystemClock.now+=500;check(Energy.shouldRender(view),"Frame at one second");
  app.power.screen=false;check(!Energy.shouldRender(view),"Screen-off rendering paused");
  app.power.screen=true;view.shown=false;check(!Energy.mayRender(view),"Hidden rendering paused");
  set(Energy.HIDDEN,false);check(Energy.mayRender(view),"Hidden setting can be disabled");
  view.shown=true;set(Energy.UI,false);
  check(Energy.shouldRender(view)&&Energy.shouldRender(view),"UI setting restores unrestricted callbacks");
  set(Energy.UI,true);Energy.setText(view,"130");Energy.setText(view,"130");
  check(view.writes==1,"Unchanged text not rewritten");Energy.setText(view,"131");
  check(view.writes==2,"Changed text rendered");
  set(Energy.PICKUP,false);check(!Energy.pickupEnabled(),"Pickup option can restore polling");
  check(com.txdriver.order.AutoPickup.refreshes>0,"Preference change reschedules pickup immediately");
  Energy.stop();for(PowerManager.WakeLock lock:app.power.locks)check(!lock.held,"All locks released");
  System.out.println("Energy: "+checks+" scenario checks passed");
 }
}
