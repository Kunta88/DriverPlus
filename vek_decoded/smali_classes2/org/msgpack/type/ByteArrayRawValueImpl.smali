.class Lorg/msgpack/type/ByteArrayRawValueImpl;
.super Lorg/msgpack/type/AbstractRawValue;
.source "ByteArrayRawValueImpl.java"


# static fields
.field private static final decoderStore:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/charset/CharsetDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private static emptyInstance:Lorg/msgpack/type/ByteArrayRawValueImpl;


# instance fields
.field private bytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lorg/msgpack/type/ByteArrayRawValueImpl;

    const/4 v1, 0x0

    new-array v1, v1, [B

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/msgpack/type/ByteArrayRawValueImpl;-><init>([BZ)V

    sput-object v0, Lorg/msgpack/type/ByteArrayRawValueImpl;->emptyInstance:Lorg/msgpack/type/ByteArrayRawValueImpl;

    .line 37
    new-instance v0, Lorg/msgpack/type/ByteArrayRawValueImpl$1;

    invoke-direct {v0}, Lorg/msgpack/type/ByteArrayRawValueImpl$1;-><init>()V

    sput-object v0, Lorg/msgpack/type/ByteArrayRawValueImpl;->decoderStore:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>([BII)V
    .locals 2

    .line 57
    invoke-direct {p0}, Lorg/msgpack/type/AbstractRawValue;-><init>()V

    .line 59
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/msgpack/type/ByteArrayRawValueImpl;->bytes:[B

    const/4 v1, 0x0

    .line 60
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method constructor <init>([BZ)V
    .locals 2

    .line 48
    invoke-direct {p0}, Lorg/msgpack/type/AbstractRawValue;-><init>()V

    if-eqz p2, :cond_0

    .line 50
    iput-object p1, p0, Lorg/msgpack/type/ByteArrayRawValueImpl;->bytes:[B

    goto :goto_0

    .line 52
    :cond_0
    array-length p2, p1

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/msgpack/type/ByteArrayRawValueImpl;->bytes:[B

    .line 53
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public static getEmptyInstance()Lorg/msgpack/type/RawValue;
    .locals 1

    .line 34
    sget-object v0, Lorg/msgpack/type/ByteArrayRawValueImpl;->emptyInstance:Lorg/msgpack/type/ByteArrayRawValueImpl;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 88
    :cond_0
    instance-of v0, p1, Lorg/msgpack/type/Value;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 91
    :cond_1
    check-cast p1, Lorg/msgpack/type/Value;

    .line 92
    invoke-interface {p1}, Lorg/msgpack/type/Value;->isRawValue()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 96
    :cond_2
    iget-object v0, p0, Lorg/msgpack/type/ByteArrayRawValueImpl;->bytes:[B

    invoke-interface {p1}, Lorg/msgpack/type/Value;->asRawValue()Lorg/msgpack/type/RawValue;

    move-result-object p1

    invoke-interface {p1}, Lorg/msgpack/type/RawValue;->getByteArray()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getByteArray()[B
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/msgpack/type/ByteArrayRawValueImpl;->bytes:[B

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .line 70
    sget-object v0, Lorg/msgpack/type/ByteArrayRawValueImpl;->decoderStore:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetDecoder;

    .line 72
    :try_start_0
    iget-object v1, p0, Lorg/msgpack/type/ByteArrayRawValueImpl;->bytes:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 74
    new-instance v1, Lorg/msgpack/MessageTypeException;

    invoke-direct {v1, v0}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hashCode()I
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/msgpack/type/ByteArrayRawValueImpl;->bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public writeTo(Lorg/msgpack/packer/Packer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/msgpack/type/ByteArrayRawValueImpl;->bytes:[B

    invoke-interface {p1, v0}, Lorg/msgpack/packer/Packer;->write([B)Lorg/msgpack/packer/Packer;

    return-void
.end method
