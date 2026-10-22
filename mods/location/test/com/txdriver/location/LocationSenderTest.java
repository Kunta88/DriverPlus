package com.txdriver.location;
import com.txdriver.App;
import com.txdriver.socket.packet.DriverLocationPacket;
import android.location.Location;
import android.os.SystemClock;

public final class LocationSenderTest {
    private static int checks;
    private static void check(boolean value, String message) {
        checks++; if (!value) throw new AssertionError(message);
    }
    private static void fix(App app, double lat) {
        app.location.location = new Location("gps");
        app.location.location.elapsed = SystemClock.now;
        app.location.location.lat = lat;
    }
    private static DriverLocationPacket packet(App app) {
        return (DriverLocationPacket)app.client.sent.get(app.client.sent.size()-1);
    }
    public static void main(String[] args) {
        App app=new App(); LocationSender sender=new LocationSender(app);
        sender.run(); check(app.client.sent.isEmpty(),"No GPS: no fabricated position");
        fix(app,55); app.prefs.open=false; sender.run();
        check(app.client.sent.isEmpty(),"No position before session is opened");
        app.prefs.open=true; sender.run(); check(app.client.sent.size()==1,"Initial position");
        sender.run(); check(app.client.sent.size()==1,"No duplicate on immediate tick");
        SystemClock.now+=24999; fix(app,55); sender.run();
        check(app.client.sent.size()==1,"Stationary interval lower boundary");
        SystemClock.now++; fix(app,55); sender.run();
        check(app.client.sent.size()==2,"Stationary refresh without movement");
        check(packet(app).location.elapsed==SystemClock.now,"Latest genuine GPS timestamp retained");
        SystemClock.now+=1000; fix(app,55.001); sender.run();
        check(app.client.sent.size()==2,"Movement is rate limited");
        SystemClock.now+=4000; fix(app,55.001); sender.run();
        check(app.client.sent.size()==3,"Moving position sent without stopping");
        SystemClock.now+=5000; fix(app,55.00101); sender.run();
        check(app.client.sent.size()==3,"Small jitter does not cause movement spam");
        app.prefs.order=42; sender.run();
        check(app.client.sent.size()==4 && packet(app).order==42,"Order change bypasses movement threshold");
        app.prefs.order=-1; sender.run();
        check(app.client.sent.size()==5 && packet(app).order==-1,"Completion refresh while stationary");
        app.client.connected=false; SystemClock.now+=5000; fix(app,55.002); sender.run();
        SystemClock.now+=5000; fix(app,55.003); sender.run();
        check(app.client.sent.size()==5,"Offline positions are not enqueued");
        app.client.connected=true; app.client.session++; sender.run();
        check(app.client.sent.size()==6 && packet(app).location.lat==55.003,"Reconnect sends latest only");
        app.client.session++; sender.run();
        check(app.client.sent.size()==7,"Reconnect detected even without disconnected tick");
        app.client.accept=false; app.prefs.order=43; sender.run();
        check(app.client.sent.size()==7,"Queue refusal does not count as send");
        app.client.accept=true; sender.run();
        check(app.client.sent.size()==8,"Rejected position retried on next tick");
        SystemClock.now+=31000; sender.run();
        check(app.client.sent.size()==8,"Stale cached fix is not refreshed with invented time");
        fix(app,55.003); sender.run(); check(app.client.sent.size()==9,"Fresh fix resumes stationary refresh");
        app.prefs.open=false; sender.run(); app.prefs.open=true; sender.run();
        check(app.client.sent.size()==10,"Reopened session refreshes even same socket generation");
        // Invalid fixes: use a new helper for each case to avoid the latest-fix timestamp policy.
        for(int kind=0;kind<7;kind++) {
            App bad=new App(); fix(bad,55);
            if(kind==0) bad.location.location.elapsed-=31000;
            if(kind==1) bad.location.location.elapsed++;
            if(kind==2) bad.location.location.lat=Double.NaN;
            if(kind==3) bad.location.location.lng=181;
            if(kind==4) bad.location.location.accuracy=Float.NaN;
            if(kind==5) bad.location.location.accuracy=-1;
            if(kind==6) bad.location.location.accurate=false;
            new LocationSender(bad).run();
            check(bad.client.sent.isEmpty(),"Invalid GPS rejected: "+kind);
        }
        App copied=new App(); fix(copied,55); LocationSender copy=new LocationSender(copied);
        copy.onLocationChanged(copied.location.location);
        copied.location.location.lat=55.1;
        copied.location.location=null;
        copy.run(); check(packet(copied).location.lat==55,"Location callbacks are defensively copied");
        App recovered=new App(); fix(recovered,55);
        recovered.location.location.elapsed+=86400000;
        LocationSender recover=new LocationSender(recovered); recover.onLocationChanged(recovered.location.location);
        fix(recovered,55); recover.run();
        check(recovered.client.sent.size()==1,"Future fix cannot poison subsequent valid fixes");
        App noReplay=new App(); fix(noReplay,55); LocationSender offline=new LocationSender(noReplay);
        offline.run(); noReplay.client.connected=false; SystemClock.now+=31000; offline.run();
        noReplay.client.connected=true; noReplay.client.session++; offline.run();
        check(noReplay.client.sent.size()==1,"Reconnect cannot replay a stale cached position");
        fix(noReplay,55.01); offline.run();
        check(noReplay.client.sent.size()==2,"Fresh position after reconnect resumes delivery");
        check(android.os.Handler.delay==5000,"Stationary timer continues without GPS callbacks");
        System.out.println("LocationSender: "+checks+" checks passed");
    }
}
