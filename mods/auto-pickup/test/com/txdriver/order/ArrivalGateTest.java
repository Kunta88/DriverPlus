package com.txdriver.order;
public final class ArrivalGateTest {
 public static void main(String[] args) {
  ArrivalGate g=new ArrivalGate(); int checks=0;
  if(g.accept(10000,10000,20,100,5,true))throw new AssertionError("single fix");checks++;
  if(g.accept(10000,12000,20,100,5,true))throw new AssertionError("same fix");checks++;
  if(!g.accept(12000,12000,20,100,5,true))throw new AssertionError("stable fixes");checks++;
  if(g.accept(14000,14000,20,100,500,true))throw new AssertionError("poor accuracy");checks++;
  if(g.accept(15000,15000,20,100,5,true))throw new AssertionError("reset poor accuracy");checks++;
  if(g.accept(17000,17000,200,100,5,true))throw new AssertionError("outside radius");checks++;
  if(g.accept(18000,18000,20,100,5,false))throw new AssertionError("unknown accuracy");checks++;
  if(g.accept(1,40000,20,100,5,true))throw new AssertionError("stale fix");checks++;
  if(g.accept(50000,49000,20,100,5,true))throw new AssertionError("future fix");checks++;
  if(g.accept(50000,50000,Double.NaN,100,5,true))throw new AssertionError("NaN distance");checks++;
  if(g.accept(50000,50000,20,100,Float.NaN,true))throw new AssertionError("NaN accuracy");checks++;
  if(g.accept(50000,50000,-1,100,5,true))throw new AssertionError("negative distance");checks++;
  System.out.println("ArrivalGate: "+checks+" checks passed");
 }
}
