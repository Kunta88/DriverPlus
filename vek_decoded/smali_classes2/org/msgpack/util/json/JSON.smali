.class public Lorg/msgpack/util/json/JSON;
.super Lorg/msgpack/MessagePack;
.source "JSON.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/msgpack/MessagePack;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/msgpack/MessagePack;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/msgpack/MessagePack;-><init>(Lorg/msgpack/MessagePack;)V

    return-void
.end method


# virtual methods
.method public createBufferPacker()Lorg/msgpack/packer/BufferPacker;
    .locals 1

    .line 45
    new-instance v0, Lorg/msgpack/util/json/JSONBufferPacker;

    invoke-direct {v0, p0}, Lorg/msgpack/util/json/JSONBufferPacker;-><init>(Lorg/msgpack/MessagePack;)V

    return-object v0
.end method

.method public createBufferPacker(I)Lorg/msgpack/packer/BufferPacker;
    .locals 1

    .line 50
    new-instance v0, Lorg/msgpack/util/json/JSONBufferPacker;

    invoke-direct {v0, p0, p1}, Lorg/msgpack/util/json/JSONBufferPacker;-><init>(Lorg/msgpack/MessagePack;I)V

    return-object v0
.end method

.method public createBufferUnpacker()Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 1

    .line 60
    new-instance v0, Lorg/msgpack/util/json/JSONBufferUnpacker;

    invoke-direct {v0}, Lorg/msgpack/util/json/JSONBufferUnpacker;-><init>()V

    return-object v0
.end method

.method public createBufferUnpacker(Ljava/nio/ByteBuffer;)Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lorg/msgpack/util/json/JSON;->createBufferUnpacker()Lorg/msgpack/unpacker/BufferUnpacker;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/msgpack/unpacker/BufferUnpacker;->wrap(Ljava/nio/ByteBuffer;)Lorg/msgpack/unpacker/BufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public createBufferUnpacker([B)Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lorg/msgpack/util/json/JSON;->createBufferUnpacker()Lorg/msgpack/unpacker/BufferUnpacker;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/msgpack/unpacker/BufferUnpacker;->wrap([B)Lorg/msgpack/unpacker/BufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public createBufferUnpacker([BII)Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lorg/msgpack/util/json/JSON;->createBufferUnpacker()Lorg/msgpack/unpacker/BufferUnpacker;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/msgpack/unpacker/BufferUnpacker;->wrap([BII)Lorg/msgpack/unpacker/BufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public createPacker(Ljava/io/OutputStream;)Lorg/msgpack/packer/Packer;
    .locals 1

    .line 40
    new-instance v0, Lorg/msgpack/util/json/JSONPacker;

    invoke-direct {v0, p0, p1}, Lorg/msgpack/util/json/JSONPacker;-><init>(Lorg/msgpack/MessagePack;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public createUnpacker(Ljava/io/InputStream;)Lorg/msgpack/unpacker/Unpacker;
    .locals 1

    .line 55
    new-instance v0, Lorg/msgpack/util/json/JSONUnpacker;

    invoke-direct {v0, p0, p1}, Lorg/msgpack/util/json/JSONUnpacker;-><init>(Lorg/msgpack/MessagePack;Ljava/io/InputStream;)V

    return-object v0
.end method
