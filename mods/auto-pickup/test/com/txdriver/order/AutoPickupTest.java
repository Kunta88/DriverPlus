package com.txdriver.order;
import com.txdriver.App;
import com.txdriver.db.Order;
import com.txdriver.socket.packet.OrderStatePacket;
import android.os.SystemClock;
import android.location.Location;
import android.widget.Button;
import java.lang.reflect.Field;

public final class AutoPickupTest {
 private static int checks;
 private static void check(boolean value,String message) { checks++; if(!value) throw new AssertionError(message); }
 private static AutoPickup instance() throws Exception {
  Field field=AutoPickup.class.getDeclaredField("instance"); field.setAccessible(true); return (AutoPickup)field.get(null);
 }
 private static void restart(App app) throws Exception {
  Field field=AutoPickup.class.getDeclaredField("instance"); field.setAccessible(true); field.set(null,null);
  AutoPickup.start(app);
 }
 private static void fresh(App app) {
  app.location.location=new Location(); app.location.location.elapsed=SystemClock.now;
 }
 private static void dwell(App app,AutoPickup loop) {
  com.txdriver.utils.DistanceUtils.distance=50;fresh(app);loop.run();
  for(int i=0;i<3;i++){SystemClock.now+=5000;fresh(app);loop.run();}
 }
 public static void main(String[] args) throws Exception {
  App app=new App(); Order order=new Order(); Order.current=order;
  AutoPickup.start(app); AutoPickup loop=instance(); Button button=new Button();
  AutoPickup.bind(order,button);
  loop.run(); check(app.client.sent.size()==0,"No GPS must not auto-arrive");
  fresh(app); com.txdriver.utils.DistanceUtils.distance=101;
  loop.run(); check(app.client.sent.size()==0,"Outside fleet radius");
  com.txdriver.utils.DistanceUtils.distance=50; app.location.location.elapsed-=31000;
  loop.run(); check(app.client.sent.size()==0,"Stale location rejected");
  fresh(app); app.client.connected=false;
  loop.run(); check(app.client.sent.size()==0,"Offline cannot send");
  app.client.connected=true; SystemClock.now+=2000; fresh(app); loop.run();
  check(app.client.sent.size()==1 && ((OrderStatePacket)app.client.sent.get(0)).state==3,"Send arrived on entry");
  loop.run(); check(app.client.sent.size()==1,"No per-second duplicate");
  check("На месте".equals(button.text),"No countdown before server acknowledgement");
  order.status=Order.Status.ARRIVED; loop.run();
  check("05:00".equals(button.text) && !button.enabled,"Confirmed arrival starts countdown");
  SystemClock.now+=1000; loop.run(); check("04:59".equals(button.text),"Countdown display");
  Button rotated=new Button(); AutoPickup.bind(order,rotated);
  check("04:59".equals(rotated.text),"Screen recreation preserves wait");
  restart(app); loop=instance(); AutoPickup.bind(order,rotated); loop.run();
  check("04:59".equals(rotated.text),"Process recreation preserves wait");
  SystemClock.now+=298000; loop.run();
  check("00:01".equals(rotated.text) && app.client.sent.size()==1,"No early pickup");
  app.client.connected=false; SystemClock.now+=1000; loop.run();
  check(app.client.sent.size()==1 && "Нет связи".equals(rotated.text),"Offline expiry waits");
  app.client.connected=true; loop.run();
  check(app.client.sent.size()==2 && ((OrderStatePacket)app.client.sent.get(1)).state==4,"Expiry sends pickup");
  loop.run(); check(app.client.sent.size()==2,"Pickup awaits server instead of repeating");
  order.status=Order.Status.ON_ROUTE; loop.run();
  check(rotated.visibility==8 && !app.prefs.contains("order"),"Confirmed pickup clears timer");
  SystemClock.now+=30000; loop.run(); check(app.client.sent.size()==2,"No repeat after pickup");
  Order next=new Order(); next.row=2; next.orderId=2; next.status=Order.Status.ARRIVED;
  Order.current=next; Button nextButton=new Button(); AutoPickup.bind(next,nextButton); loop.run();
  check("05:00".equals(nextButton.text),"New order cannot inherit timer");
  Order.current=null; loop.run(); SystemClock.now+=300000; loop.run();
  check(app.client.sent.size()==2 && !app.prefs.contains("order"),"Canceled order cannot trigger pickup");
  next.status=Order.Status.PERFORMING; Order.current=next; next.source=Order.Source.YANDEX;
  fresh(app); loop.run(); check(app.client.sent.size()==2,"External provider is excluded");
  next.source=Order.Source.NONE; next.address.lat=0; next.address.lng=0;
  loop.run(); check(app.client.sent.size()==2,"Missing pickup coordinates rejected");
  next.address.lat=55; next.address.lng=37; app.preferences.radius=-1;
  com.txdriver.utils.DistanceUtils.distance=150; loop.run();
  check(app.client.sent.size()==2,"No fleet limit uses physical proximity fallback");
  com.txdriver.utils.DistanceUtils.distance=50; OrderHelper.far=true;
  loop.run(); check(app.client.sent.size()==2,"Original arrival restriction respected");
  OrderHelper.far=false; loop.run(); SystemClock.now+=2000; fresh(app); loop.run(); check(app.client.sent.size()==3,"Fallback permits stable nearby arrival");
  next.status=Order.Status.ARRIVED; loop.run(); app.resources.restrict=true;
  SystemClock.now+=300000; fresh(app); com.txdriver.utils.DistanceUtils.distance=150; loop.run();
  check(app.client.sent.size()==3,"Pickup respects optional distance check");
  com.txdriver.utils.DistanceUtils.distance=50; loop.run(); SystemClock.now+=2000; fresh(app); loop.run();
  check(app.client.sent.size()==4,"Pickup resumes when original restriction permits");
  Order.current=null;loop.run();
  check(android.os.Handler.lastDelay==30000,"Idle backup interval replaces second polling");
  com.txdriver.energy.Energy.enabled=false;AutoPickup.refreshOptions();
  check(android.os.Handler.lastDelay==0,"Changing option reschedules immediately");
  loop.run();check(android.os.Handler.lastDelay==1000,"Disabled option restores original polling");
  com.txdriver.energy.Energy.enabled=true;Order.current=next;loop.run();
  check(android.os.Handler.lastDelay==1000,"Active countdown keeps second interval");
  SystemClock.now+=1000;AutoPickup.signal();
  check(android.os.Handler.lastDelay==0,"Order or GPS event wakes idle worker");
  Order hidden=new Order();hidden.row=3;hidden.orderId=3;hidden.status=Order.Status.ARRIVED;
  Order.current=hidden;Button hiddenButton=new Button();AutoPickup.bind(hidden,hiddenButton);
  com.txdriver.energy.Energy.visible=false;loop.run();String before=hiddenButton.text;
  SystemClock.now+=300000;fresh(app);loop.run();
  SystemClock.now+=2000;fresh(app);loop.run();
  check(app.client.sent.size()==5,"Hidden screen does not delay automatic pickup");
  check(java.util.Objects.equals(before,hiddenButton.text),"Hidden countdown does not rewrite button");
  app.preferences.autoArrival=false; int sentBefore=app.client.sent.size();
  Order.current=hidden; loop.run(); SystemClock.now+=400000; loop.run();
  check(app.client.sent.size()==sentBefore,"Disabling automation cancels future pickup sends");
  check(!app.prefs.contains("order"),"Disabling automation clears countdown persistence");
  // Manual ARRIVED status must use the same departure path as automatic arrival.
  app.preferences.autoArrival=true; com.txdriver.energy.Energy.visible=true;
  app.resources.restrict=true; app.client.connected=true;
  Order depart=new Order(); depart.row=10; depart.orderId=10;
  depart.status=Order.Status.ARRIVED; Order.current=depart;
  Button departureButton=new Button(); AutoPickup.bind(depart,departureButton);
  fresh(app); com.txdriver.utils.DistanceUtils.distance=50; loop.run();
  int departureStart=app.client.sent.size();
  check("05:00".equals(departureButton.text),"Manual arrival starts normal wait");
  com.txdriver.utils.DistanceUtils.distance=210;SystemClock.now+=2000;fresh(app);loop.run();
  SystemClock.now+=2000;fresh(app);loop.run();
  check(app.client.sent.size()==departureStart,"Departure without fifteen-second stay rejected");
  dwell(app,loop);
  check(app.prefs.getBoolean("dwell_qualified",false),"Confirmed stay saved for current order");
  restart(app);loop=instance();loop.run();
  check(app.prefs.getBoolean("dwell_qualified",false),"Process restart preserves qualified stay");
  SystemClock.now+=1000; fresh(app); com.txdriver.utils.DistanceUtils.distance=199; loop.run();
  check(app.client.sent.size()==departureStart,"199 m cannot trigger pickup");
  com.txdriver.utils.DistanceUtils.distance=204; loop.run();
  check(app.client.sent.size()==departureStart,"200 m uncertainty margin required");
  com.txdriver.utils.DistanceUtils.distance=210; loop.run();
  SystemClock.now+=2000; loop.run();
  check(app.client.sent.size()==departureStart,"Same far GPS fix cannot trigger pickup");
  fresh(app); app.location.location.accuracy=100; loop.run();
  check(app.client.sent.size()==departureStart,"Inaccurate far GPS cannot trigger pickup");
  fresh(app); loop.run(); SystemClock.now+=2000; fresh(app); loop.run();
  check(app.client.sent.size()==departureStart+1
    && ((OrderStatePacket)app.client.sent.get(departureStart)).state==4,
    "Departure starts pickup before five minutes even with fleet pickup distance restriction");
  loop.run(); check(app.client.sent.size()==departureStart+1,"Departure request is rate limited");
  check(depart.status==Order.Status.ARRIVED,"Departure does not fabricate server acknowledgement");
  depart.status=Order.Status.ON_ROUTE; loop.run();
  SystemClock.now+=300000; fresh(app); loop.run();
  check(app.client.sent.size()==departureStart+1 && !app.prefs.contains("order"),
    "Acknowledged departure clears wait and prevents five-minute duplicate");
  Order offline=new Order(); offline.row=11; offline.orderId=11;
  offline.status=Order.Status.ARRIVED; Order.current=offline;
  com.txdriver.utils.DistanceUtils.distance=50;
  app.client.connected=false; fresh(app); loop.run();
  dwell(app,loop);
  com.txdriver.utils.DistanceUtils.distance=210;fresh(app);loop.run();
  SystemClock.now+=2000; fresh(app); loop.run();
  check(app.client.sent.size()==departureStart+1,"Offline departure cannot send");
  app.client.connected=true; loop.run();
  check(app.client.sent.size()==departureStart+2,"Confirmed departure sends after reconnect");
  Order replacement=new Order(); replacement.row=12; replacement.orderId=12;
  replacement.status=Order.Status.ARRIVED; Order.current=replacement;
  fresh(app); loop.run();
  check(app.client.sent.size()==departureStart+2,"New order cannot inherit departure confirmation");
  Order.current=null; loop.run(); SystemClock.now+=2000; fresh(app); loop.run();
  check(app.client.sent.size()==departureStart+2,"Canceled departed order cannot send");
  replacement.status=Order.Status.PERFORMING; Order.current=replacement;
  fresh(app); loop.run(); SystemClock.now+=2000; fresh(app); loop.run();
  check(app.client.sent.size()==departureStart+2,"Departure cannot pick up before ARRIVED");
  replacement.status=Order.Status.ARRIVED; replacement.address.lat=Double.NaN;
  loop.run(); SystemClock.now+=2000; fresh(app); loop.run();
  check(app.client.sent.size()==departureStart+2,"Invalid pickup coordinates cannot trigger departure");
  replacement.address.lat=55; app.preferences.autoArrival=false;
  loop.run(); SystemClock.now+=2000; fresh(app); loop.run();
  check(app.client.sent.size()==departureStart+2,"Disabled automation blocks departure");
  System.out.println("AutoPickup: "+checks+" scenario checks passed");
 }
}
