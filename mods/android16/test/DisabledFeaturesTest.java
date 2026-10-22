package com.txdriver.http.request;
import com.txdriver.compat.*;
import java.io.*;
import java.net.*;
import java.nio.file.*;

// Test-only class names mirror the request types; never packaged in the APK.
class NewslettersRequest {}
class NewsletterReadRequest {}
class PhotoControlTasksListRequest {}
class PhotoControlSendImageRequest {}
class DriverInfoRequest {}
class AppConfigRequest {}
class RoadRequest {}

public class DisabledFeaturesTest {
    static int checks;
    static void check(boolean b,String m){if(!b)throw new AssertionError(m);checks++;}
    public static void main(String[] args)throws Exception {
        File root=Files.createTempDirectory("driverplus-disabled-test").toFile();
        WebDiagnostics.init(root);
        File log=new File(root,"web-diagnostics/web-current.log");
        for(Object req:new Object[]{new NewslettersRequest(),new NewsletterReadRequest(),new PhotoControlTasksListRequest(),new PhotoControlSendImageRequest()}) {
            check(DisabledFeatures.request(req),"disabled request "+req.getClass().getSimpleName());
            long size=log.length();
            WebDiagnostics.failed(req,new IOException("secret"));
            check(log.length()==size,"no disabled diagnostics");
        }
        for(Object req:new Object[]{new DriverInfoRequest(),new AppConfigRequest(),new RoadRequest(),new Object()})
            check(!DisabledFeatures.request(req),"unrelated request allowed");
        check(!DisabledFeatures.request(null),"null allowed");
        check(!DisabledFeatures.label("RegistrationAddCarRequest"),"registration retained");
        check(!DisabledFeatures.label("DriverLocationRequest"),"location retained");
        try {SafeHttp.get("https:///");throw new AssertionError("normal error lost");}catch(IOException expected){}
        String failure=SafeHttp.getLastFailure();
        check(!failure.isEmpty(),"normal errors still shown");
        ServerSocket server=new ServerSocket(0,1,InetAddress.getLoopbackAddress());
        server.setSoTimeout(120);
        WebDiagnostics.begin(new NewslettersRequest());
        long size=log.length();
        check(WebDiagnostics.suppressed(),"disabled context suppressed");
        check(SafeHttp.get("http://127.0.0.1:"+server.getLocalPort()).isEmpty(),"suppressed network call skipped");
        check(SafeHttp.request("invalid-url","uuid",new byte[0]).isEmpty(),"POST skipped too");
        check(log.length()==size,"no transport diagnostics for disabled feature");
        check(SafeHttp.getLastFailure().equals(failure),"disabled calls cannot clear unrelated error");
        try{server.accept().close();throw new AssertionError("disabled request reached network");}
        catch(SocketTimeoutException expected){checks++;}finally{server.close();}
        WebDiagnostics.end();
        check(!WebDiagnostics.suppressed(),"worker context cleared");
        WebDiagnostics.failed(new DriverInfoRequest(),new IOException("secret"));
        String s=new String(Files.readAllBytes(log.toPath()),"UTF-8");
        check(s.contains("request=DriverInfoRequest"),"unrelated diagnostics retained");
        check(!s.contains("request=NewslettersRequest")&&!s.contains("request=PhotoControl"),"disabled classes never logged");
        System.out.println("DisabledFeaturesTest: "+checks+" checks passed");
    }
}
