package com.txdriver.compat;

/** Debounces default-network handover without polling or replaying orders. */
public final class ReconnectPolicy {
    private String network;
    private boolean lost;
    private long lastAttempt = -10000L;
    public boolean available(String value) {
        boolean changed = network != null && (!network.equals(value) || lost);
        network = value;
        lost = false;
        return changed;
    }
    public void lost(String value) { if (value.equals(network)) lost = true; }
    public long delay(long now) { return Math.max(750L, 5000L - (now - lastAttempt)); }
    public boolean ready(long now) {
        if (lost || network == null || now - lastAttempt < 5000L) return false;
        lastAttempt = now;
        return true;
    }
}
