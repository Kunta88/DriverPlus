.class public interface abstract Lcom/txdriver/socket/SocketClientListener;
.super Ljava/lang/Object;
.source "SocketClientListener.java"


# virtual methods
.method public abstract onConnected(Lcom/txdriver/socket/Client;)V
.end method

.method public abstract onConnecting(Lcom/txdriver/socket/Client;)V
.end method

.method public abstract onDisconnected(Lcom/txdriver/socket/Client;)V
.end method

.method public abstract onExceptionCaught(Lcom/txdriver/socket/Client;Ljava/lang/Throwable;)V
.end method

.method public abstract onRead(Lcom/txdriver/socket/Client;Lcom/txdriver/socket/Packet;)V
.end method

.method public abstract onRead(Lcom/txdriver/socket/Client;Ljava/nio/ByteBuffer;)V
.end method

.method public abstract onWrite(Lcom/txdriver/socket/Client;Lcom/txdriver/socket/Packet;)V
.end method
