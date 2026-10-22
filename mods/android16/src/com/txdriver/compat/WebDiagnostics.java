package com.txdriver.compat;

import java.io.*;
import java.net.URL;
import java.util.concurrent.atomic.AtomicLong;

/** Bounded local journal. Never receives headers, bodies, credentials or locations. */
public final class WebDiagnostics {
    private static final int LIMIT=131072;
    private static File directory;
    private static final AtomicLong ids=new AtomicLong();
    private static final ThreadLocal<String> owner=new ThreadLocal<String>();
    private WebDiagnostics() {}
    public static synchronized void init(File files) {
        if(files==null) return;
        directory=new File(files,"web-diagnostics");
        if(!directory.isDirectory() && !directory.mkdirs()) {directory=null;return;}
        write("event=process_start schema=1 version=277");
    }
    public static void begin(Object request) {
        String name=request==null ? "unknown" : request.getClass().getName();
        owner.set(name.startsWith("com.txdriver.http.request.") ? token(name.substring(name.lastIndexOf('.')+1)) : "unknown");
    }
    public static void end() {owner.remove();}
    public static boolean suppressed(){return DisabledFeatures.label(owner.get());}
    public static void breakEvent(String source,boolean desired,Boolean observed){
        write("event=break source="+token(source)+" manual="+desired+" server="+(observed==null?"unknown":observed.toString()));
    }
    public static void failed(Object request,Throwable error) {
        begin(request);
        if(!suppressed())write("event=request_failed request="+label()+" causes="+causes(error));
        end();
    }
    private static String label(){String s=owner.get();return s==null?"unclassified":s;}
    static String token(String s) {
        if(s==null || !s.matches("[A-Za-z0-9_.$-]{1,96}")) return "other";
        return s;
    }
    static String causes(Throwable error) {
        StringBuilder s=new StringBuilder();
        for(int i=0;error!=null && i<5;i++,error=error.getCause()) {
            if(i>0)s.append(',');
            s.append(token(error.getClass().getName()));
        }
        return s.length()==0?"none":s.toString();
    }
    public static final class Trace {
        final long id=ids.incrementAndGet(), started=System.nanoTime();
        final String request=label(), method;
        final boolean enabled=!suppressed();
        String phase="validate", scheme="unknown", hostKey="unknown";
        int port=-1,status=-1,redirects=0;
        Trace(boolean post){method=post?"POST":"GET";}
        void endpoint(URL url) {
            scheme="https".equals(url.getProtocol())?"https":"http".equals(url.getProtocol())?"http":"other";
            // A stable non-cryptographic endpoint key groups failures without exposing host/path/query.
            hostKey=Integer.toHexString(url.getHost().toLowerCase(java.util.Locale.US).hashCode());
            port=url.getPort()<0?url.getDefaultPort():url.getPort();
        }
        void finish(Throwable error) {
            if(!enabled)return;
            write("event=http_end id="+id+" request="+request+" method="+method+
                " scheme="+scheme+" host_key="+hostKey+" port="+port+" phase="+phase+
                " status="+status+" redirects="+redirects+" duration_ms="+((System.nanoTime()-started)/1000000L)+
                " result="+(error==null?"ok":"failed")+" causes="+causes(error));
        }
    }
    private static synchronized void write(String entry) {
        if(directory==null)return;
        try {
            File current=new File(directory,"web-current.log"),previous=new File(directory,"web-previous.log");
            if(current.length()>LIMIT) {
                if(previous.exists() && !previous.delete())return;
                if(!current.renameTo(previous))return;
            }
            OutputStream out=new FileOutputStream(current,true);
            try {out.write(("time_ms="+System.currentTimeMillis()+" "+entry+"\n").getBytes("UTF-8"));}
            finally {out.close();}
        } catch(Exception ignored) { /* Diagnostics must not break orders or HTTP. */ }
    }
}
