package com.txdriver.order;

public final class DepartureGateTest {
    private static int checks;
    private static void check(boolean value, String message) {
        checks++;
        if (!value) throw new AssertionError(message);
    }
    public static void main(String[] args) {
        DepartureGate g = new DepartureGate();
        check(!g.accept(10000,10000,9000,210,5,true), "one fix");
        check(!g.accept(10000,12000,9000,210,5,true), "same fix is not confirmation");
        check(g.accept(12000,12000,9000,210,5,true), "two stable fixes beyond 200 m");
        check(!g.accept(14000,14000,9000,199,0,true), "inside 200 m");
        check(!g.accept(15000,15000,9000,204,5,true), "uncertainty crosses boundary");
        check(!g.accept(16000,16000,9000,205,5,true), "boundary first fix");
        check(g.accept(18000,18000,9000,205,5,true), "boundary with uncertainty");
        check(!g.accept(19000,19000,9000,500,51,true), "poor accuracy");
        check(!g.accept(20000,20000,9000,500,5,false), "unknown accuracy");
        check(!g.accept(21000,21000,9000,500,Float.NaN,true), "NaN accuracy");
        check(!g.accept(22000,22000,9000,500,Float.POSITIVE_INFINITY,true), "infinite accuracy");
        check(!g.accept(23000,23000,9000,500,-1,true), "negative accuracy");
        check(!g.accept(1,40000,0,500,5,true), "stale fix");
        check(!g.accept(50000,49000,9000,500,5,true), "future fix");
        check(!g.accept(50000,50000,51000,500,5,true), "fix before arrival");
        check(!g.accept(51000,51000,9000,Double.NaN,5,true), "NaN distance");
        check(!g.accept(52000,52000,9000,Double.POSITIVE_INFINITY,5,true), "infinite distance");
        check(!g.accept(53000,53000,9000,-1,5,true), "negative distance");
        check(!g.accept(54000,54000,9000,210,5,true), "new first fix after rejection");
        g.reset();
        check(!g.accept(56000,56000,9000,210,5,true), "reset prevents inherited confirmation");
        check(!g.accept(55000,57000,9000,210,5,true), "out of order fix restarts confirmation");
        check(g.accept(58000,59000,9000,210,5,true), "confirmation after restart");
        System.out.println("DepartureGate: " + checks + " checks passed");
    }
}
