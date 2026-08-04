.class public Lorg/msgpack/util/json/JSONBufferUnpacker;
.super Lorg/msgpack/util/json/JSONUnpacker;
.source "JSONBufferUnpacker.java"

# interfaces
.implements Lorg/msgpack/unpacker/BufferUnpacker;


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x200


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x200

    .line 31
    invoke-direct {p0, v0}, Lorg/msgpack/util/json/JSONBufferUnpacker;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 35
    new-instance v0, Lorg/msgpack/MessagePack;

    invoke-direct {v0}, Lorg/msgpack/MessagePack;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/msgpack/util/json/JSONBufferUnpacker;-><init>(Lorg/msgpack/MessagePack;I)V

    return-void
.end method

.method public constructor <init>(Lorg/msgpack/MessagePack;)V
    .locals 1

    const/16 v0, 0x200

    .line 39
    invoke-direct {p0, p1, v0}, Lorg/msgpack/util/json/JSONBufferUnpacker;-><init>(Lorg/msgpack/MessagePack;I)V

    return-void
.end method

.method public constructor <init>(Lorg/msgpack/MessagePack;I)V
    .locals 0

    .line 43
    invoke-static {}, Lorg/msgpack/util/json/JSONBufferUnpacker;->newEmptyReader()Ljava/io/Reader;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/msgpack/util/json/JSONUnpacker;-><init>(Lorg/msgpack/MessagePack;Ljava/io/Reader;)V

    return-void
.end method

.method private static newEmptyReader()Ljava/io/Reader;
    .locals 3

    .line 119
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 114
    invoke-virtual {p0}, Lorg/msgpack/util/json/JSONBufferUnpacker;->reset()V

    .line 115
    invoke-static {}, Lorg/msgpack/util/json/JSONBufferUnpacker;->newEmptyReader()Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lorg/msgpack/util/json/JSONBufferUnpacker;->in:Ljava/io/Reader;

    return-void
.end method

.method public copyReferencedBuffer()V
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "JSONBufferUnpacker doesn\'t support copyReferencedBuffer()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic feed(Ljava/nio/ByteBuffer;)Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/msgpack/util/json/JSONBufferUnpacker;->feed(Ljava/nio/ByteBuffer;)Lorg/msgpack/util/json/JSONBufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic feed(Ljava/nio/ByteBuffer;Z)Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/msgpack/util/json/JSONBufferUnpacker;->feed(Ljava/nio/ByteBuffer;Z)Lorg/msgpack/util/json/JSONBufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic feed([B)Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/msgpack/util/json/JSONBufferUnpacker;->feed([B)Lorg/msgpack/util/json/JSONBufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic feed([BII)Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/util/json/JSONBufferUnpacker;->feed([BII)Lorg/msgpack/util/json/JSONBufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic feed([BIIZ)Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/msgpack/util/json/JSONBufferUnpacker;->feed([BIIZ)Lorg/msgpack/util/json/JSONBufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic feed([BZ)Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/msgpack/util/json/JSONBufferUnpacker;->feed([BZ)Lorg/msgpack/util/json/JSONBufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public feed(Ljava/nio/ByteBuffer;)Lorg/msgpack/util/json/JSONBufferUnpacker;
    .locals 1

    .line 90
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "JSONBufferUnpacker doesn\'t support feed()"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public feed(Ljava/nio/ByteBuffer;Z)Lorg/msgpack/util/json/JSONBufferUnpacker;
    .locals 0

    .line 96
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "JSONBufferUnpacker doesn\'t support feed()"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public feed([B)Lorg/msgpack/util/json/JSONBufferUnpacker;
    .locals 1

    .line 66
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "JSONBufferUnpacker doesn\'t support feed()"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public feed([BII)Lorg/msgpack/util/json/JSONBufferUnpacker;
    .locals 0

    .line 78
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "JSONBufferUnpacker doesn\'t support feed()"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public feed([BIIZ)Lorg/msgpack/util/json/JSONBufferUnpacker;
    .locals 0

    .line 84
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "JSONBufferUnpacker doesn\'t support feed()"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public feed([BZ)Lorg/msgpack/util/json/JSONBufferUnpacker;
    .locals 0

    .line 72
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "JSONBufferUnpacker doesn\'t support feed()"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBufferSize()I
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "JSONBufferUnpacker doesn\'t support getBufferSize()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic wrap(Ljava/nio/ByteBuffer;)Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/msgpack/util/json/JSONBufferUnpacker;->wrap(Ljava/nio/ByteBuffer;)Lorg/msgpack/util/json/JSONBufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic wrap([B)Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/msgpack/util/json/JSONBufferUnpacker;->wrap([B)Lorg/msgpack/util/json/JSONBufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic wrap([BII)Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/util/json/JSONBufferUnpacker;->wrap([BII)Lorg/msgpack/util/json/JSONBufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public wrap(Ljava/nio/ByteBuffer;)Lorg/msgpack/util/json/JSONBufferUnpacker;
    .locals 1

    .line 60
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "JSONBufferUnpacker doesn\'t support wrap(ByteBuffer buf)"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public wrap([B)Lorg/msgpack/util/json/JSONBufferUnpacker;
    .locals 2

    .line 48
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/msgpack/util/json/JSONBufferUnpacker;->wrap([BII)Lorg/msgpack/util/json/JSONBufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public wrap([BII)Lorg/msgpack/util/json/JSONBufferUnpacker;
    .locals 1

    .line 53
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 54
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lorg/msgpack/util/json/JSONBufferUnpacker;->in:Ljava/io/Reader;

    return-object p0
.end method
