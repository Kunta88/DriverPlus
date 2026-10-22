package com.txdriver.order;
public final class DwellGateTest {
 private static int checks;
 private static void check(boolean value,String message){checks++;if(!value)throw new AssertionError(message);}
 public static void main(String[] args){
  DwellGate g=new DwellGate();
  check(!g.accept(10000,10000,10000,50,100,5,true),"first fix");
  check(!g.accept(10000,25000,10000,50,100,5,true),"same/stale fix cannot establish stay");
  for(long t=30000;t<45000;t+=5000)check(!g.accept(t,t,10000,50,100,5,true),"under fifteen seconds");
  check(g.accept(45000,45000,10000,50,100,5,true),"fifteen seconds of distinct fixes");
  check(g.accept(47000,47000,10000,250,100,5,true),"qualification survives leaving zone");
  g.reset();
  check(!g.accept(50000,50000,10000,50,100,5,true),"new stay after reset");
  check(!g.accept(55000,55000,10000,101,100,5,true),"exit resets partial stay");
  check(!g.accept(60000,60000,10000,50,100,5,true),"return begins new stay");
  check(!g.accept(65000,65000,10000,50,100,100,true),"poor accuracy resets stay");
  check(!g.accept(70000,70000,10000,98,100,5,true),"uncertainty outside zone");
  check(!g.accept(75000,75000,80000,50,100,5,true),"pre-arrival fix excluded");
  check(!g.accept(80000,80000,10000,50,100,5,true),"first after invalid fix");
  check(!g.accept(96000,96000,10000,50,100,5,true),"GPS gap restarts dwell");
  check(!g.accept(101000,101000,10000,50,100,5,true),"five seconds after gap");
  g.reset();g.restoreQualified();
  check(g.accept(1,100000,1,500,100,5,true),"only confirmed qualification can be restored");
  System.out.println("DwellGate: "+checks+" checks passed");
 }
}
