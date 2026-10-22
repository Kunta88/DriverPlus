import com.txdriver.compat.ReconnectPolicy;
public final class ReconnectPolicyTest {
 static int checks;
 static void check(boolean value,String text){checks++;if(!value)throw new AssertionError(text);}
 public static void main(String[] args){
  ReconnectPolicy p=new ReconnectPolicy();
  check(!p.available("wifi"),"First network does not interrupt login");
  check(!p.available("wifi"),"Duplicate network ignored");
  check(p.available("mobile"),"Handover requests reconnection");
  check(p.delay(10000)==750,"Handover debounced");
  check(p.ready(10750),"First reconnect allowed");
  check(!p.ready(10800),"Reconnect storm prevented");
  check(p.delay(11000)==4750,"Next attempt respects minimum spacing");
  p.lost("wifi");check(p.ready(15750),"Stale old-network loss ignored");
  p.lost("mobile");check(!p.ready(22000),"No reconnect during known outage");
  check(p.available("mobile"),"Restored network requests reconnect");
  check(p.ready(22750),"Restored connection allowed");
  System.out.println("Network: "+checks+" scenario checks passed");
 }
}
