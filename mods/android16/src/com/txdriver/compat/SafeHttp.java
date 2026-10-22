package com.txdriver.compat;

import java.io.*;
import java.net.*;

/** Platform TLS validation, bounded bodies, no URL/UUID logging or POST replays. */
public final class SafeHttp {
    private static final WebRequestHealth health=new WebRequestHealth();
    private static long now(){return System.nanoTime()/1000000L;}
    public static String getLastFailure(){return health.failure();}
    public static String getIndicatorNote(){return health.note(now());}
    private SafeHttp() {}
    public static String get(String address) throws IOException { return request(address,null,null); }
    public static String get(String address,String uuid) throws IOException { return request(address,uuid,null); }
    public static String request(String address,String uuid,byte[] body) throws IOException {
        if(WebDiagnostics.suppressed())return "";
        WebDiagnostics.Trace trace=new WebDiagnostics.Trace(body!=null);
        try {String text=perform(address,uuid,body,trace);if(trace.enabled)health.succeeded();trace.finish(null);return text;}
        catch(IOException error) {
            String reason=error instanceof UnknownHostException ? "ошибка DNS" :
                error instanceof SocketTimeoutException ? "тайм-аут" :
                error instanceof javax.net.ssl.SSLException ? "ошибка защищённого соединения" :
                error instanceof ConnectException ? "не удалось соединиться" : "сбой запроса";
            // Only our own numeric status is safe to display: exception messages may contain URLs/tokens.
            if(error.getMessage()!=null && error.getMessage().matches("HTTP [0-9]{3}")) reason=error.getMessage();
            if(trace.enabled)health.failed(reason,now());
            trace.finish(error);
            throw error;
        }
    }
    private static String perform(String address,String uuid,byte[] body,WebDiagnostics.Trace trace) throws IOException {
        URL url;
        try { url=new URL(address); } catch(Exception error) { throw new IOException("Не задан веб-сервер таксопарка"); }
        if(url.getHost().length()==0 || url.getUserInfo()!=null) throw new IOException("Некорректный веб-сервер");
        String host=url.getHost();
        for(int redirects=0;redirects<4;redirects++) {
            trace.endpoint(url); trace.redirects=redirects; trace.phase="redirect_check";
            if(!host.equalsIgnoreCase(url.getHost()) || (!"https".equals(url.getProtocol()) && !"http".equals(url.getProtocol())))
                throw new IOException("Недопустимое перенаправление");
            trace.phase="open";
            HttpURLConnection c=(HttpURLConnection)url.openConnection();
            c.setConnectTimeout(10000); c.setReadTimeout(10000); c.setInstanceFollowRedirects(false);
            c.setRequestProperty("Accept","application/json");
            if(uuid!=null) c.setRequestProperty("uuid",uuid);
            try {
                if(body!=null) {
                    trace.phase="upload";
                    c.setRequestMethod("POST"); c.setRequestProperty("Content-Type","application/json; charset=UTF-8");
                    c.setDoOutput(true); c.setFixedLengthStreamingMode(body.length);
                    OutputStream out=c.getOutputStream(); try {out.write(body);} finally {out.close();}
                }
                trace.phase="response_headers";
                int status=c.getResponseCode(); trace.status=status;
                if(status==301 || status==302 || status==303 || status==307 || status==308) {
                    if(body!=null) throw new IOException("POST redirect requires explicit retry");
                    String location=c.getHeaderField("Location");
                    if(location==null) throw new IOException("Empty redirect");
                    URL next=new URL(url,location);
                    if("https".equals(url.getProtocol()) && !"https".equals(next.getProtocol())) throw new IOException("TLS downgrade");
                    url=next; continue;
                }
                if(status<200 || status>=300) throw new IOException("HTTP "+status);
                trace.phase="response_body";
                InputStreamReader reader=new InputStreamReader(c.getInputStream(),"UTF-8");
                try {
                    StringBuilder text=new StringBuilder(); char[] buffer=new char[4096]; int n;
                    while((n=reader.read(buffer))!=-1) {
                        if(text.length()+n>4194304) throw new IOException("Response exceeds limit");
                        text.append(buffer,0,n);
                    }
                    return text.toString();
                } finally {reader.close();}
            } finally {c.disconnect();}
        }
        throw new IOException("Too many redirects");
    }
}
