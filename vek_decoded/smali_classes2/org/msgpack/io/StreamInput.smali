.class public Lorg/msgpack/io/StreamInput;
.super Lorg/msgpack/io/AbstractInput;
.source "StreamInput.java"


# instance fields
.field private castBuffer:[B

.field private castByteBuffer:Ljava/nio/ByteBuffer;

.field private filled:I

.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/msgpack/io/AbstractInput;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/msgpack/io/StreamInput;->in:Ljava/io/InputStream;

    const/16 p1, 0x8

    new-array p1, p1, [B

    .line 34
    iput-object p1, p0, Lorg/msgpack/io/StreamInput;->castBuffer:[B

    .line 35
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/io/StreamInput;->castByteBuffer:Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lorg/msgpack/io/StreamInput;->filled:I

    return-void
.end method

.method private require(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    :goto_0
    iget v0, p0, Lorg/msgpack/io/StreamInput;->filled:I

    if-ge v0, p1, :cond_1

    .line 73
    iget-object v1, p0, Lorg/msgpack/io/StreamInput;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/msgpack/io/StreamInput;->castBuffer:[B

    sub-int v3, p1, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_0

    .line 77
    iget v1, p0, Lorg/msgpack/io/StreamInput;->filled:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/msgpack/io/StreamInput;->filled:I

    goto :goto_0

    .line 75
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method


# virtual methods
.method public advance()V
    .locals 1

    .line 67
    iget v0, p0, Lorg/msgpack/io/StreamInput;->filled:I

    invoke-virtual {p0, v0}, Lorg/msgpack/io/StreamInput;->incrReadByteCount(I)V

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lorg/msgpack/io/StreamInput;->filled:I

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/msgpack/io/StreamInput;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 82
    invoke-direct {p0, v0}, Lorg/msgpack/io/StreamInput;->require(I)V

    .line 83
    iget-object v0, p0, Lorg/msgpack/io/StreamInput;->castBuffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public getDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 107
    invoke-direct {p0, v0}, Lorg/msgpack/io/StreamInput;->require(I)V

    .line 108
    iget-object v0, p0, Lorg/msgpack/io/StreamInput;->castByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 102
    invoke-direct {p0, v0}, Lorg/msgpack/io/StreamInput;->require(I)V

    .line 103
    iget-object v0, p0, Lorg/msgpack/io/StreamInput;->castByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 92
    invoke-direct {p0, v0}, Lorg/msgpack/io/StreamInput;->require(I)V

    .line 93
    iget-object v0, p0, Lorg/msgpack/io/StreamInput;->castByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 97
    invoke-direct {p0, v0}, Lorg/msgpack/io/StreamInput;->require(I)V

    .line 98
    iget-object v0, p0, Lorg/msgpack/io/StreamInput;->castByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getReadByteCount()I
    .locals 1

    .line 25
    invoke-super {p0}, Lorg/msgpack/io/AbstractInput;->getReadByteCount()I

    move-result v0

    return v0
.end method

.method public getShort()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 87
    invoke-direct {p0, v0}, Lorg/msgpack/io/StreamInput;->require(I)V

    .line 88
    iget-object v0, p0, Lorg/msgpack/io/StreamInput;->castByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p3

    :goto_0
    if-lez v0, :cond_1

    .line 42
    iget-object v1, p0, Lorg/msgpack/io/StreamInput;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_0

    .line 46
    invoke-virtual {p0, v1}, Lorg/msgpack/io/StreamInput;->incrReadByteCount(I)V

    sub-int/2addr v0, v1

    add-int/2addr p2, v1

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return p3
.end method

.method public readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/msgpack/io/StreamInput;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lorg/msgpack/io/StreamInput;->incrReadOneByteCount()V

    int-to-byte v0, v0

    return v0

    .line 60
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public bridge synthetic resetReadByteCount()V
    .locals 0

    .line 25
    invoke-super {p0}, Lorg/msgpack/io/AbstractInput;->resetReadByteCount()V

    return-void
.end method

.method public tryRefer(Lorg/msgpack/io/BufferReferer;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
