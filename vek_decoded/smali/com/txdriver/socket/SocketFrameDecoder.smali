.class public final Lcom/txdriver/socket/SocketFrameDecoder;
.super Ljava/lang/Object;
.source "SocketFrameDecoder.java"

# interfaces
.implements Lcom/txdriver/socket/FrameDecoder;


# instance fields
.field private body:Ljava/nio/ByteBuffer;

.field private expected:I

.field private first:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lcom/txdriver/socket/SocketFrameDecoder;->first:I

    return-void
.end method


# virtual methods
.method public decode(Ljava/nio/ByteBuffer;)Lcom/txdriver/socket/Packet;
    .registers 8

    .line 11
    nop

    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8e

    .line 12
    iget-object v0, p0, Lcom/txdriver/socket/SocketFrameDecoder;->body:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    if-nez v0, :cond_48

    .line 13
    iget v0, p0, Lcom/txdriver/socket/SocketFrameDecoder;->first:I

    if-gez v0, :cond_20

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/txdriver/socket/SocketFrameDecoder;->first:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_20

    return-object v1

    .line 14
    :cond_20
    iget v0, p0, Lcom/txdriver/socket/SocketFrameDecoder;->first:I

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    iput v0, p0, Lcom/txdriver/socket/SocketFrameDecoder;->expected:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/txdriver/socket/SocketFrameDecoder;->first:I

    .line 15
    iget v0, p0, Lcom/txdriver/socket/SocketFrameDecoder;->expected:I

    if-lt v0, v2, :cond_3d

    .line 16
    iget v0, p0, Lcom/txdriver/socket/SocketFrameDecoder;->expected:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/socket/SocketFrameDecoder;->body:Ljava/nio/ByteBuffer;

    goto :goto_48

    .line 15
    :cond_3d
    invoke-virtual {p0}, Lcom/txdriver/socket/SocketFrameDecoder;->reset()V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid zero-length fleet frame"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_48
    :goto_48
    iget-object v0, p0, Lcom/txdriver/socket/SocketFrameDecoder;->body:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 19
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/txdriver/socket/SocketFrameDecoder;->body:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 20
    iget-object v0, p0, Lcom/txdriver/socket/SocketFrameDecoder;->body:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_8c

    .line 21
    iget-object p1, p0, Lcom/txdriver/socket/SocketFrameDecoder;->body:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const/4 v0, 0x0

    aget-byte v3, p1, v0

    array-length v4, p1

    sub-int/2addr v4, v2

    new-array v5, v4, [B

    .line 22
    invoke-static {p1, v2, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/txdriver/socket/SocketFrameDecoder;->body:Ljava/nio/ByteBuffer;

    iput v0, p0, Lcom/txdriver/socket/SocketFrameDecoder;->expected:I

    .line 23
    new-instance p1, Lcom/txdriver/socket/packet/ServerPacket;

    invoke-direct {p1, v3, v5}, Lcom/txdriver/socket/packet/ServerPacket;-><init>(B[B)V

    return-object p1

    .line 25
    :cond_8c
    goto/16 :goto_1

    .line 26
    :cond_8e
    return-object v1
.end method

.method public reset()V
    .registers 2

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/txdriver/socket/SocketFrameDecoder;->first:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/txdriver/socket/SocketFrameDecoder;->expected:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/txdriver/socket/SocketFrameDecoder;->body:Ljava/nio/ByteBuffer;

    return-void
.end method
