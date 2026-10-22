package com.txdriver.compat;

/** Last completed web request, not an active service availability probe. */
public final class WebRequestHealth {
    private String failure = "";
    private long failedAt;

    public synchronized void succeeded() { failure = ""; }

    public synchronized void failed(String reason, long now) {
        failure = reason;
        failedAt = now;
    }

    public synchronized String failure() { return failure; }

    public synchronized String note(long now) {
        if (failure.length() == 0) return "";
        long seconds = Math.max(0L, now - failedAt) / 1000L;
        String age = seconds < 60 ? seconds + " с назад" :
            seconds < 3600 ? seconds / 60 + " мин назад" : seconds / 3600 + " ч назад";
        if (seconds < 120)
            return "Веб: последний запрос не выполнен — " + failure + " (" + age + ")";
        return "Веб: ранее была ошибка (" + age + "); повторной проверки не было";
    }
}
