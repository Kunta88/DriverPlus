package com.txdriver.compat;

/** Routing only. Saved credentials never imply a successful server authorization. */
public final class AutoLoginPolicy {
    private AutoLoginPolicy() {}
    public static boolean shouldSkipForm(String login, String password, boolean company, boolean rejected) {
        return company && !rejected && login != null && login.trim().length() > 0
            && password != null && password.length() > 0;
    }
}
