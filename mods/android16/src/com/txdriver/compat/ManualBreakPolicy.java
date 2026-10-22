package com.txdriver.compat;

/** Driver intent is independent of unsolicited server state and connection resets. */
public final class ManualBreakPolicy {
    private boolean desired,known,observed,pending;
    public ManualBreakPolicy(boolean saved){desired=saved;pending=saved;}
    public synchronized void manual(boolean value){
        desired=value;pending=true;
        WebDiagnostics.breakEvent("manual",desired,known?Boolean.valueOf(observed):null);
    }
    public synchronized void server(boolean value){
        observed=value;known=true;
        pending=false;
        WebDiagnostics.breakEvent("server",desired,Boolean.valueOf(observed));
    }
    public synchronized void reconnect(){
        known=false;pending=desired||pending;
        WebDiagnostics.breakEvent("reconnect_preserved",desired,null);
    }
    public synchronized void automaticIgnored(boolean attempted){
        WebDiagnostics.breakEvent(attempted?"auto_true_ignored":"auto_false_ignored",desired,known?Boolean.valueOf(observed):null);
    }
    public synchronized boolean desired(){return desired;}
    public synchronized String note(){
        if(pending)return desired?"ПЕРЕРЫВ ВЫБРАН — сервер ещё не подтвердил":"СНЯТИЕ ПЕРЕРЫВА ЗАПРОШЕНО — сервер ещё не подтвердил";
        if(known && observed!=desired)
            return desired ? "⚠️ ПЕРЕРЫВ ВЫБРАН ВРУЧНУЮ; сервер сообщил снятие перерыва. Автопринятие заблокировано."
                : "⚠️ СЕРВЕР СООБЩИЛ ПЕРЕРЫВ, которого вы не включали. Приём заказов на сервере может быть приостановлен.";
        return desired?"ПЕРЕРЫВ ВКЛЮЧЁН ВРУЧНУЮ":"";
    }
}
