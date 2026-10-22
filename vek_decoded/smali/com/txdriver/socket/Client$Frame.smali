.class final Lcom/txdriver/socket/Client$Frame;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/socket/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Frame"
.end annotation


# instance fields
.field final bytes:Ljava/nio/ByteBuffer;

.field final packet:Lcom/txdriver/socket/Packet;


# direct methods
.method constructor <init>(Lcom/txdriver/socket/Packet;[B)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/txdriver/socket/Client$Frame;->packet:Lcom/txdriver/socket/Packet;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/socket/Client$Frame;->bytes:Ljava/nio/ByteBuffer;

    return-void
.end method
