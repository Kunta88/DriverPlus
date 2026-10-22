package com.txdriver.compat;
public class ManualBreakPolicyTest {
    static int checks;
    static void check(boolean b,String m){if(!b)throw new AssertionError(m);checks++;}
    public static void main(String[] args){
        ManualBreakPolicy p=new ManualBreakPolicy(false);
        check(!p.desired()&&p.note().isEmpty(),"normal initial state");
        p.server(true);
        check(!p.desired(),"unsolicited pause cannot change intent");
        check(p.note().contains("СЕРВЕР СООБЩИЛ ПЕРЕРЫВ"),"remote pause visible, not concealed");
        p.server(false);check(p.note().isEmpty(),"matching normal state");
        p.manual(true);check(p.desired(),"driver starts break immediately");
        check(p.note().contains("ещё не подтвердил"),"pending not falsely confirmed");
        p.server(true);check(p.desired()&&p.note().contains("ВКЛЮЧЁН ВРУЧНУЮ"),"manual pause acknowledged");
        p.server(false);check(p.desired(),"remote resume cannot clear intent");
        check(p.note().contains("сервер сообщил снятие"),"remote resume warning");
        p.automaticIgnored(false);check(p.desired(),"order/reset cannot clear break");
        p.reconnect();check(p.desired(),"reconnect preserves break");
        check(p.note().contains("ещё не подтвердил"),"old server state invalidated");
        p.server(false);p.server(false);check(p.desired(),"repeated server resume harmless");
        p.manual(false);check(!p.desired(),"only driver ends break");
        p.server(false);check(p.note().isEmpty(),"resume acknowledged");
        p.automaticIgnored(true);check(!p.desired(),"automatic pause ignored");
        p.reconnect();check(!p.desired()&&p.note().isEmpty(),"idle reconnect adds no fake break");
        ManualBreakPolicy restored=new ManualBreakPolicy(true);
        check(restored.desired(),"saved break restored");
        restored.reconnect();restored.server(false);check(restored.desired(),"saved break protected after process restart");
        System.out.println("ManualBreakPolicyTest: "+checks+" checks passed");
    }
}
