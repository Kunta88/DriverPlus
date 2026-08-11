.class public Lcom/txdriver/socket/SocketEvents$PacketReadEvent;
.super Ljava/lang/Object;
.source "SocketEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/socket/SocketEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PacketReadEvent"
.end annotation


# instance fields
.field public packet:Lcom/txdriver/socket/Packet;


# direct methods
.method public constructor <init>(Lcom/txdriver/socket/Packet;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/txdriver/socket/SocketEvents$PacketReadEvent;->packet:Lcom/txdriver/socket/Packet;

    return-void
.end method
