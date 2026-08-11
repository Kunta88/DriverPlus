.class public Lorg/msgpack/template/ByteBufferTemplate;
.super Lorg/msgpack/template/AbstractTemplate;
.source "ByteBufferTemplate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/msgpack/template/AbstractTemplate<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# static fields
.field static final instance:Lorg/msgpack/template/ByteBufferTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lorg/msgpack/template/ByteBufferTemplate;

    invoke-direct {v0}, Lorg/msgpack/template/ByteBufferTemplate;-><init>()V

    sput-object v0, Lorg/msgpack/template/ByteBufferTemplate;->instance:Lorg/msgpack/template/ByteBufferTemplate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/msgpack/template/AbstractTemplate;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/msgpack/template/ByteBufferTemplate;
    .locals 1

    .line 52
    sget-object v0, Lorg/msgpack/template/ByteBufferTemplate;->instance:Lorg/msgpack/template/ByteBufferTemplate;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/template/ByteBufferTemplate;->read(Lorg/msgpack/unpacker/Unpacker;Ljava/nio/ByteBuffer;Z)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public read(Lorg/msgpack/unpacker/Unpacker;Ljava/nio/ByteBuffer;Z)Ljava/nio/ByteBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 45
    invoke-interface {p1}, Lorg/msgpack/unpacker/Unpacker;->trySkipNil()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 48
    :cond_0
    invoke-interface {p1}, Lorg/msgpack/unpacker/Unpacker;->readByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write(Lorg/msgpack/packer/Packer;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/template/ByteBufferTemplate;->write(Lorg/msgpack/packer/Packer;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public write(Lorg/msgpack/packer/Packer;Ljava/nio/ByteBuffer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    .line 37
    invoke-interface {p1}, Lorg/msgpack/packer/Packer;->writeNil()Lorg/msgpack/packer/Packer;

    return-void

    .line 35
    :cond_0
    new-instance p1, Lorg/msgpack/MessageTypeException;

    const-string p2, "Attempted to write null"

    invoke-direct {p1, p2}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_1
    invoke-interface {p1, p2}, Lorg/msgpack/packer/Packer;->write(Ljava/nio/ByteBuffer;)Lorg/msgpack/packer/Packer;

    return-void
.end method
