package com.txdriver.compat;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.Toast;
import com.txdriver.socket.Client;
import com.txdriver.socket.Packet;
import java.lang.ref.WeakReference;

public final class ChatDraft implements TextWatcher {
    private static Context app;
    private static final Handler main=new Handler(Looper.getMainLooper());
    private static WeakReference<EditText> field=new WeakReference<EditText>(null);
    private static String pending;
    private static String pendingScope;
    public static void install(Context context) {app=context.getApplicationContext();}
    private static android.content.SharedPreferences prefs() {return app.getSharedPreferences("chat_draft_"+EventGuard.scope(app),0);}
    public static void bind(EditText view) {
        if(app==null) install(view.getContext());
        field=new WeakReference<EditText>(view);
        String draft=SecureStore.decode(app,prefs().getString("draft",""));
        if(view.getText().length()==0 && draft.length()>0) view.setText(draft);
        view.addTextChangedListener(new ChatDraft());
    }
    @Override public void beforeTextChanged(CharSequence s,int start,int count,int after) {}
    @Override public void onTextChanged(CharSequence s,int start,int before,int count) {
        // Commit only the draft, never credentials. Encryption on API 23+.
        try {prefs().edit().putString("draft",SecureStore.encode(app,s.toString())).apply();}
        catch(RuntimeException error){notice("Не удалось сохранить черновик — не закрывайте чат");}
    }
    @Override public void afterTextChanged(Editable value) {}
    public static synchronized boolean send(Client client, Packet packet, String text) {
        if(pending!=null) { notice("Предыдущее сообщение ещё отправляется"); return false; }
        if(!client.isSocketConnected()) {notice("Нет связи — текст сохранён");return false;}
        pending=text;
        pendingScope=EventGuard.scope(app);
        if(!client.trySend(packet)) {pending=null;notice("Не удалось отправить — текст сохранён");return false;}
        notice("Отправляется…"); return true;
    }
    public static void sent(final String text) {
        final String scope;
        synchronized(ChatDraft.class) {if(!text.equals(pending)) return;scope=pendingScope;pending=null;}
        main.post(new Runnable(){public void run(){
            if(!scope.equals(EventGuard.scope(app))) {
                app.getSharedPreferences("chat_draft_"+scope,0).edit().remove("draft").apply();return;
            }
            EditText view=field.get();
            if(view!=null && text.contentEquals(view.getText())) view.setText("");
            else if(text.equals(SecureStore.decode(app,prefs().getString("draft","")))) prefs().edit().remove("draft").apply();
            notice("Передано в соединение");
        }});
    }
    public static synchronized void disconnected() {
        if(pending!=null) {pending=null;notice("Связь потеряна — текст сохранён, повторите отправку");}
    }
    private static void notice(final String message) {
        if(app!=null) main.post(new Runnable(){public void run(){Toast.makeText(app,message,Toast.LENGTH_SHORT).show();}});
    }
}
