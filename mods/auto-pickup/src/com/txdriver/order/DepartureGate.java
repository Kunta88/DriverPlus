package com.txdriver.order;

/** Confirms departure using distinct, fresh fixes after the confirmed arrival. */
public final class DepartureGate {
    private long first = -1, last = -1;
    private int samples;

    public void reset() { first = -1; last = -1; samples = 0; }

    public boolean accept(long fix, long now, long arrivedAt, double distance,
                          float accuracy, boolean hasAccuracy) {
        long age = now - fix;
        // Subtract the reported uncertainty: a noisy fix near 200 m is not enough.
        if (!hasAccuracy || Float.isNaN(accuracy) || Float.isInfinite(accuracy)
                || accuracy < 0 || accuracy > 50 || age < 0 || age > 30000
                || fix < arrivedAt || Double.isNaN(distance) || Double.isInfinite(distance)
                || distance - accuracy < 200) {
            reset();
            return false;
        }
        if (first < 0 || fix < last || now - first > 30000) {
            first = now;
            last = -1;
            samples = 0;
        }
        if (fix != last) { samples++; last = fix; }
        return samples >= 2 && now - first >= 2000;
    }
}
