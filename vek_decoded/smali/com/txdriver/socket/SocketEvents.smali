.class public Lcom/txdriver/socket/SocketEvents;
.super Ljava/lang/Object;
.source "SocketEvents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/socket/SocketEvents$ConnectionStateEvent;,
        Lcom/txdriver/socket/SocketEvents$PendingResponseEvent;,
        Lcom/txdriver/socket/SocketEvents$ExceptionEvent;,
        Lcom/txdriver/socket/SocketEvents$GetExtrasEvent;,
        Lcom/txdriver/socket/SocketEvents$AuthEvent;,
        Lcom/txdriver/socket/SocketEvents$DisconnectedEvent;,
        Lcom/txdriver/socket/SocketEvents$ConnectedEvent;,
        Lcom/txdriver/socket/SocketEvents$ConnectingEvent;,
        Lcom/txdriver/socket/SocketEvents$PacketWriteEvent;,
        Lcom/txdriver/socket/SocketEvents$PacketReadEvent;,
        Lcom/txdriver/socket/SocketEvents$RttEvent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
