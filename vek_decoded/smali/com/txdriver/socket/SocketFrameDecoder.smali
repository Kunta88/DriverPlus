.class public Lcom/txdriver/socket/SocketFrameDecoder;
.super Ljava/lang/Object;
.source "SocketFrameDecoder.java"

# interfaces
.implements Lcom/txdriver/socket/FrameDecoder;


# static fields
.field private static final PACKET_PREFIX_LENGTH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SocketFrameDecoder"


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decodeLast(Ljava/nio/ByteBuffer;)Lcom/txdriver/socket/Packet;
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/txdriver/socket/SocketFrameDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/txdriver/socket/SocketFrameDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    .line 44
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x0

    if-lt v1, v0, :cond_0

    .line 45
    iget-object v1, p0, Lcom/txdriver/socket/SocketFrameDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/SocketFrameDecoder;->getBytes(Ljava/nio/ByteBuffer;I)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 46
    iget-object p1, p0, Lcom/txdriver/socket/SocketFrameDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 47
    iget-object p1, p0, Lcom/txdriver/socket/SocketFrameDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    .line 48
    iget-object v0, p0, Lcom/txdriver/socket/SocketFrameDecoder;->buffer:Ljava/nio/ByteBuffer;

    .line 49
    iput-object v2, p0, Lcom/txdriver/socket/SocketFrameDecoder;->buffer:Ljava/nio/ByteBuffer;

    .line 50
    invoke-direct {p0, v0, p1}, Lcom/txdriver/socket/SocketFrameDecoder;->decodePacket(Ljava/nio/ByteBuffer;I)Lcom/txdriver/socket/Packet;

    move-result-object p1

    return-object p1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/txdriver/socket/SocketFrameDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/txdriver/socket/SocketFrameDecoder;->getBytes(Ljava/nio/ByteBuffer;I)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v2
.end method

.method private decodePacket(Ljava/nio/ByteBuffer;I)Lcom/txdriver/socket/Packet;
    .locals 1

    .line 37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    add-int/lit8 p2, p2, -0x1

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/txdriver/socket/SocketFrameDecoder;->getBytes(Ljava/nio/ByteBuffer;I)[B

    move-result-object p1

    .line 39
    new-instance p2, Lcom/txdriver/socket/packet/ServerPacket;

    invoke-direct {p2, v0, p1}, Lcom/txdriver/socket/packet/ServerPacket;-><init>(B[B)V

    return-object p2
.end method

.method private getBytes(Ljava/nio/ByteBuffer;I)[B
    .locals 0

    .line 57
    new-array p2, p2, [B

    .line 58
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p2
.end method


# virtual methods
.method public decode(Ljava/nio/ByteBuffer;)Lcom/txdriver/socket/Packet;
    .locals 5

    .line 16
    iget-object v0, p0, Lcom/txdriver/socket/SocketFrameDecoder;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 17
    invoke-direct {p0, p1}, Lcom/txdriver/socket/SocketFrameDecoder;->decodeLast(Ljava/nio/ByteBuffer;)Lcom/txdriver/socket/Packet;

    move-result-object p1

    return-object p1

    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v1, v0

    .line 21
    sget-object v2, Lcom/txdriver/socket/SocketFrameDecoder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[decode] signedLength:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " unsignedLength:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ge v2, v1, :cond_1

    add-int/lit8 v1, v1, 0x2

    .line 23
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/txdriver/socket/SocketFrameDecoder;->buffer:Ljava/nio/ByteBuffer;

    .line 24
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 25
    iget-object v0, p0, Lcom/txdriver/socket/SocketFrameDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/txdriver/socket/SocketFrameDecoder;->getBytes(Ljava/nio/ByteBuffer;I)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    return-object p1

    .line 28
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/txdriver/socket/SocketFrameDecoder;->decodePacket(Ljava/nio/ByteBuffer;I)Lcom/txdriver/socket/Packet;

    move-result-object p1

    return-object p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/txdriver/socket/SocketFrameDecoder;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method
