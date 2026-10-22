package com.txdriver.compat;
import java.io.*;
import java.net.URL;
import java.nio.file.*;
public class WebDiagnosticsTest {
    static int checks;
    static void check(boolean b,String m){if(!b)throw new AssertionError(m);checks++;}
    public static void main(String[] args)throws Exception {
        File root=Files.createTempDirectory("driverplus-diagnostics-test").toFile();
        WebDiagnostics.init(root);
        WebDiagnostics.begin(new Object());
        WebDiagnostics.Trace trace=new WebDiagnostics.Trace(true);
        trace.endpoint(new URL("https://login:secret@private-host.test:8443/customer/123?password=secret&uuid=token"));
        trace.phase="response_headers";trace.status=503;
        trace.finish(new IOException("secret password token",new java.net.SocketTimeoutException("private-host")));
        WebDiagnostics.end();
        File journal=new File(root,"web-diagnostics/web-current.log");
        String s=new String(Files.readAllBytes(journal.toPath()),"UTF-8");
        check(s.contains("status=503"),"numeric status");
        check(s.contains("phase=response_headers"),"failure stage");
        check(s.contains("SocketTimeoutException"),"cause chain");
        check(s.contains("duration_ms="),"duration");
        check(!s.contains("secret")&&!s.contains("private-host")&&!s.contains("customer")&&!s.contains("token"),"no URL/messages/credentials");
        check(s.contains("port=8443"),"port");
        check(WebDiagnostics.token("bad\nrecord").equals("other"),"newline rejected");
        WebDiagnostics.init(root);
        s=new String(Files.readAllBytes(journal.toPath()),"UTF-8");
        check(s.contains("status=503"),"history survives reinit");
        for(int i=0;i<2200;i++)new WebDiagnostics.Trace(false).finish(null);
        File previous=new File(root,"web-diagnostics/web-previous.log");
        check(previous.isFile(),"rotates");
        check(journal.length()<132000&&previous.length()<132000,"bounded disk usage");
        check(new File(root,"web-diagnostics").list().length==2,"only two journals");
        WebDiagnostics.init(journal); // invalid parent must not affect application
        new WebDiagnostics.Trace(false).finish(new IOException("secret"));
        check(true,"storage errors swallowed");
        System.out.println("WebDiagnosticsTest: "+checks+" checks passed");
    }
}
