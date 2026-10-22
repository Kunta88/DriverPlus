package com.txdriver.order;

/** Fifteen seconds inside the arrival zone, measured by distinct accurate GPS fixes. */
public final class DwellGate {
    private long first = -1, last = -1;
    private boolean qualified;
    public void reset() { first = -1; last = -1; qualified = false; }
    public void restoreQualified() { qualified = true; }
    public boolean accept(long fix, long now, long arrivedAt, double distance, int radius,
                          float accuracy, boolean hasAccuracy) {
        if (qualified) return true;
        long age = now - fix;
        if (fix < arrivedAt || age < 0 || age > 10000 || !hasAccuracy
            || Float.isNaN(accuracy) || Float.isInfinite(accuracy) || accuracy < 0
            || accuracy > Math.min(50, Math.max(10, radius / 2))
            || Double.isNaN(distance) || Double.isInfinite(distance) || distance < 0
            || distance + accuracy > radius) { first = -1; last = -1; return false; }
        if (last < 0 || fix < last || fix - last > 10000) first = fix;
        last = fix;
        qualified = fix - first >= 15000;
        return qualified;
    }
}
