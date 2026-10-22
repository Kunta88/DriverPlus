package com.txdriver.compat;

/** Only client-side news and photo-control modules are disabled. */
public final class DisabledFeatures {
    private DisabledFeatures() {}
    public static boolean request(Object request) {
        if(request==null)return false;
        String name=request.getClass().getName();
        if(!name.startsWith("com.txdriver.http.request."))return false;
        return label(name.substring(name.lastIndexOf('.')+1));
    }
    public static boolean label(String name) {
        return name!=null && (name.startsWith("Newsletter") || name.startsWith("PhotoControl"));
    }
}
