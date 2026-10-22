package com.txdriver.socket;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.ArrayDeque;
import java.util.Iterator;

/** One owner thread, session-local channels, no replay of ambiguous fleet commands. */
public final class Client implements Runnable {
    public static final int STATE_OPEN=1, STATE_DISCONNECTED=2, STATE_CONNECTING=3, STATE_CONNECTED=4;
    private final SocketClientListener listener;
    private final FrameDecoder decoder;
    private final Object control = new Object();
    private final ArrayDeque<Frame> queue = new ArrayDeque<Frame>();
    private volatile int state = STATE_DISCONNECTED;
    private volatile String failure = "";
    private String host;
    private int port;
    private boolean enabled;
    private long generation;
    private long minimumDelay=1000;
    private Thread worker;
    private volatile Selector selector;
    private volatile SocketChannel channel;
    private int queuedBytes;

    private static final class Frame {
        final Packet packet;
        final ByteBuffer bytes;
        Frame(Packet packet, byte[] bytes) { this.packet=packet; this.bytes=ByteBuffer.wrap(bytes); }
    }
    public Client(SocketClientListener listener, FrameDecoder decoder) {
        this.listener=listener; this.decoder=decoder;
    }
    public boolean isSocketConnected() { return state==STATE_CONNECTED; }
    public String getLastFailure() { return failure; }
    public long getSessionId() {synchronized(control){return generation;}}
    public void setReconnectTimeout(long value) { minimumDelay=Math.max(250, Math.min(30000,value)); }
    public void open(String host, int port) {
        if(host==null || host.trim().length()==0 || port<1 || port>65535) {failure="Некорректный адрес сервера";return;}
        synchronized(control) {
            if (enabled && isSocketConnected() && host.equals(this.host) && port==this.port) return;
            this.host=host; this.port=port;
        }
        reconn();
    }
    public void reconn() {
        synchronized(control) {
            if (host==null || host.trim().length()==0 || port<1 || port>65535) return;
            enabled=true; generation++;
            // A reconnect request never creates a second connection owner.
            if (worker==null) { worker=new Thread(this,"DriverPlus-Connection"); worker.setDaemon(true); worker.start(); }
            control.notifyAll();
        }
        wake();
    }
    public void close() {
        synchronized(control) { enabled=false; generation++; state=STATE_DISCONNECTED; control.notifyAll(); }
        wake();
        SocketChannel active=channel;
        if (active!=null) try { active.close(); } catch(IOException ignored) {}
    }
    private void wake() { Selector active=selector; if(active!=null) active.wakeup(); }
    public void send(Packet packet) { trySend(packet); }
    public boolean trySend(Packet packet) {
        try {
            byte[] bytes=packet.toByteArray();
            synchronized(control) {
                if (!enabled || !isSocketConnected()) return false;
                if (bytes.length==0 || bytes.length>32769 || queue.size()>=256 || queuedBytes+bytes.length>262144) {
                    failure="Очередь отправки заполнена"; return false;
                }
                queue.addLast(new Frame(packet,bytes)); queuedBytes+=bytes.length;
            }
            wake(); return true;
        } catch(Exception error) { failure="Ошибка подготовки пакета"; return false; }
    }
    private boolean current(long session) {
        synchronized(control) { return enabled && generation==session; }
    }
    private void discardQueue() {
        synchronized(control) { queue.clear(); queuedBytes=0; }
    }
    @Override public void run() {
        int failures=0;
        long retryAfter=0;
        for (;;) {
            final long session;
            final String address;
            final int endpoint;
            synchronized(control) {
                try {
                    while (!enabled) control.wait();
                    long wait=(retryAfter-System.nanoTime())/1000000L;
                    if (wait>0) { control.wait(Math.min(wait,30000)); continue; }
                } catch(InterruptedException ignored) { continue; }
                session=generation; address=host; endpoint=port;
            }
            SocketChannel socket=null;
            Selector local=null;
            boolean connected=false;
            try {
                discardQueue(); decoder.reset(); state=STATE_CONNECTING;
                listener.onConnecting(this);
                // DNS may block, but cannot leave an old thread manipulating a new session.
                InetSocketAddress target=new InetSocketAddress(address,endpoint);
                if (target.isUnresolved()) throw new java.net.UnknownHostException(address);
                if (!current(session)) continue;
                local=Selector.open(); selector=local;
                socket=SocketChannel.open(); channel=socket;
                socket.configureBlocking(false);
                socket.socket().setKeepAlive(true); socket.socket().setTcpNoDelay(true);
                connected=socket.connect(target);
                SelectionKey key=socket.register(local,connected ? SelectionKey.OP_READ : SelectionKey.OP_CONNECT);
                long connectDeadline=System.nanoTime()+10000000000L;
                if(connected) { state=STATE_CONNECTED; failure=""; failures=0; listener.onConnected(this); }
                ByteBuffer input=ByteBuffer.allocate(8192);
                while(current(session)) {
                    if (!connected && System.nanoTime()>connectDeadline) throw new java.net.SocketTimeoutException("Connection timeout");
                    if(connected) synchronized(control) {
                        key.interestOps(SelectionKey.OP_READ | (queue.isEmpty()?0:SelectionKey.OP_WRITE));
                    }
                    local.select(1000);
                    Iterator<SelectionKey> keys=local.selectedKeys().iterator();
                    while(keys.hasNext() && current(session)) {
                        SelectionKey selected=keys.next(); keys.remove();
                        if(!selected.isValid()) continue;
                        if(selected.isConnectable()) {
                            if(!socket.finishConnect()) continue;
                            connected=true; state=STATE_CONNECTED; failure=""; failures=0;
                            selected.interestOps(SelectionKey.OP_READ); listener.onConnected(this);
                        }
                        if(selected.isReadable()) {
                            input.clear(); int count=socket.read(input);
                            if(count<0) throw new IOException("End of stream");
                            if(count>0) {
                                input.flip(); listener.onRead(this,input.asReadOnlyBuffer());
                                while(input.hasRemaining()) {
                                    int position=input.position(); Packet packet=decoder.decode(input);
                                    if(packet!=null) listener.onRead(this,packet);
                                    if(input.position()==position) throw new IOException("Decoder made no progress");
                                }
                            }
                        }
                        if(selected.isWritable()) {
                            int budget=65536;
                            while(budget>0 && current(session)) {
                                Frame frame;
                                synchronized(control) { frame=queue.peekFirst(); }
                                if(frame==null) break;
                                int before=frame.bytes.remaining();
                                boolean complete=FrameWriter.write(socket,frame.bytes);
                                budget-=before-frame.bytes.remaining();
                                if(!complete) break;
                                synchronized(control) { queue.removeFirst(); queuedBytes-=frame.bytes.limit(); }
                                listener.onWrite(this,frame.packet);
                            }
                        }
                    }
                }
            } catch(Exception error) {
                if(current(session)) {
                    failure=error instanceof java.net.UnknownHostException ? "Не найден адрес сервера" :
                        error.getMessage()!=null && error.getMessage().contains("Permission denied") ?
                            "Android запретил доступ к сети" : "Соединение прервано";
                    // Existing listener requests reconn; the owner remains this same thread.
                    try { listener.onExceptionCaught(this,error); } catch(RuntimeException ignored) {}
                }
            } finally {
                synchronized(control){if(generation==session)generation++;}
                state=STATE_DISCONNECTED;
                if(socket!=null) try { socket.close(); } catch(IOException ignored) {}
                if(local!=null) try { local.close(); } catch(IOException ignored) {}
                channel=null; selector=null; discardQueue(); decoder.reset();
                try { listener.onDisconnected(this); } catch(RuntimeException ignored) {}
            }
            failures=Math.min(failures+1,5);
            long delay=Math.min(30000,minimumDelay*(1L << (failures-1)));
            retryAfter=System.nanoTime()+(delay+(long)(Math.random()*250))*1000000L;
        }
    }
}
