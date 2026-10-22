package com.txdriver.order;

/** Two distinct accurate fixes, sustained for at least two seconds. */
public final class ArrivalGate {
    private long first=-1,last=-1;
    private int samples;
    public void reset(){first=-1;last=-1;samples=0;}
    public boolean accept(long fix,long now,double distance,int radius,float accuracy,boolean hasAccuracy) {
        long age=now-fix;
        if(!hasAccuracy || Float.isNaN(accuracy) || Float.isInfinite(accuracy) || accuracy<0
            || accuracy>Math.min(50,Math.max(10,radius/2)) || age<0 || age>30000
            || Double.isNaN(distance) || distance<0 || distance>radius) {reset();return false;}
        if(first<0 || fix<last || now-first>30000){first=now;samples=0;last=-1;}
        if(fix!=last){samples++;last=fix;}
        return samples>=2 && now-first>=2000;
    }
}
