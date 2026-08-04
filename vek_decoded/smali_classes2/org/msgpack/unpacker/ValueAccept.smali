.class final Lorg/msgpack/unpacker/ValueAccept;
.super Lorg/msgpack/unpacker/Accept;
.source "ValueAccept.java"


# instance fields
.field private uc:Lorg/msgpack/packer/Unconverter;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, v0}, Lorg/msgpack/unpacker/Accept;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object v0, p0, Lorg/msgpack/unpacker/ValueAccept;->uc:Lorg/msgpack/packer/Unconverter;

    return-void
.end method


# virtual methods
.method acceptArray(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/msgpack/unpacker/ValueAccept;->uc:Lorg/msgpack/packer/Unconverter;

    invoke-virtual {v0, p1}, Lorg/msgpack/packer/Unconverter;->writeArrayBegin(I)Lorg/msgpack/packer/Packer;

    return-void
.end method

.method acceptBoolean(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/msgpack/unpacker/ValueAccept;->uc:Lorg/msgpack/packer/Unconverter;

    invoke-static {p1}, Lorg/msgpack/type/ValueFactory;->createBooleanValue(Z)Lorg/msgpack/type/BooleanValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/msgpack/packer/Unconverter;->write(Lorg/msgpack/type/Value;)Lorg/msgpack/packer/Packer;

    return-void
.end method

.method acceptDouble(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/msgpack/unpacker/ValueAccept;->uc:Lorg/msgpack/packer/Unconverter;

    invoke-static {p1, p2}, Lorg/msgpack/type/ValueFactory;->createFloatValue(D)Lorg/msgpack/type/FloatValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/msgpack/packer/Unconverter;->write(Lorg/msgpack/type/Value;)Lorg/msgpack/packer/Packer;

    return-void
.end method

.method acceptEmptyRaw()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/msgpack/unpacker/ValueAccept;->uc:Lorg/msgpack/packer/Unconverter;

    invoke-static {}, Lorg/msgpack/type/ValueFactory;->createRawValue()Lorg/msgpack/type/RawValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/msgpack/packer/Unconverter;->write(Lorg/msgpack/type/Value;)Lorg/msgpack/packer/Packer;

    return-void
.end method

.method acceptFloat(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lorg/msgpack/unpacker/ValueAccept;->uc:Lorg/msgpack/packer/Unconverter;

    invoke-static {p1}, Lorg/msgpack/type/ValueFactory;->createFloatValue(F)Lorg/msgpack/type/FloatValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/msgpack/packer/Unconverter;->write(Lorg/msgpack/type/Value;)Lorg/msgpack/packer/Packer;

    return-void
.end method

.method acceptInteger(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/msgpack/unpacker/ValueAccept;->uc:Lorg/msgpack/packer/Unconverter;

    invoke-static {p1}, Lorg/msgpack/type/ValueFactory;->createIntegerValue(B)Lorg/msgpack/type/IntegerValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/msgpack/packer/Unconverter;->write(Lorg/msgpack/type/Value;)Lorg/msgpack/packer/Packer;

    return-void
.end method

.method acceptInteger(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lorg/msgpack/unpacker/ValueAccept;->uc:Lorg/msgpack/packer/Unconverter;

    invoke-static {p1}, Lorg/msgpack/type/ValueFactory;->createIntegerValue(I)Lorg/msgpack/type/IntegerValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/msgpack/packer/Unconverter;->write(Lorg/msgpack/type/Value;)Lorg/msgpack/packer/Packer;

    return-void
.end method

.method acceptInteger(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/msgpack/unpacker/ValueAccept;->uc:Lorg/msgpack/packer/Unconverter;

    invoke-static {p1, p2}, Lorg/msgpack/type/ValueFactory;->createIntegerValue(J)Lorg/msgpack/type/IntegerValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/msgpack/packer/Unconverter;->write(Lorg/msgpack/type/Value;)Lorg/msgpack/packer/Packer;

    return-void
.end method

.method acceptInteger(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/msgpack/unpacker/ValueAccept;->uc:Lorg/msgpack/packer/Unconverter;

    invoke-static {p1}, Lorg/msgpack/type/ValueFactory;->createIntegerValue(S)Lorg/msgpack/type/IntegerValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/msgpack/packer/Unconverter;->write(Lorg/msgpack/type/Value;)Lorg/msgpack/packer/Packer;

    return-void
.end method

.method acceptMap(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/msgpack/unpacker/ValueAccept;->uc:Lorg/msgpack/packer/Unconverter;

    invoke-virtual {v0, p1}, Lorg/msgpack/packer/Unconverter;->writeMapBegin(I)Lorg/msgpack/packer/Packer;

    return-void
.end method

.method acceptNil()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/msgpack/unpacker/ValueAccept;->uc:Lorg/msgpack/packer/Unconverter;

    invoke-static {}, Lorg/msgpack/type/ValueFactory;->createNilValue()Lorg/msgpack/type/NilValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/msgpack/packer/Unconverter;->write(Lorg/msgpack/type/Value;)Lorg/msgpack/packer/Packer;

    return-void
.end method

.method acceptRaw([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/msgpack/unpacker/ValueAccept;->uc:Lorg/msgpack/packer/Unconverter;

    invoke-static {p1}, Lorg/msgpack/type/ValueFactory;->createRawValue([B)Lorg/msgpack/type/RawValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/msgpack/packer/Unconverter;->write(Lorg/msgpack/type/Value;)Lorg/msgpack/packer/Packer;

    return-void
.end method

.method acceptUnsignedInteger(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/msgpack/unpacker/ValueAccept;->uc:Lorg/msgpack/packer/Unconverter;

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lorg/msgpack/type/ValueFactory;->createIntegerValue(I)Lorg/msgpack/type/IntegerValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/msgpack/packer/Unconverter;->write(Lorg/msgpack/type/Value;)Lorg/msgpack/packer/Packer;

    return-void
.end method

.method acceptUnsignedInteger(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_0

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    const-wide v2, 0x80000000L

    add-long/2addr v0, v2

    .line 76
    iget-object p1, p0, Lorg/msgpack/unpacker/ValueAccept;->uc:Lorg/msgpack/packer/Unconverter;

    invoke-static {v0, v1}, Lorg/msgpack/type/ValueFactory;->createIntegerValue(J)Lorg/msgpack/type/IntegerValue;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/msgpack/packer/Unconverter;->write(Lorg/msgpack/type/Value;)Lorg/msgpack/packer/Packer;

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/msgpack/unpacker/ValueAccept;->uc:Lorg/msgpack/packer/Unconverter;

    invoke-static {p1}, Lorg/msgpack/type/ValueFactory;->createIntegerValue(I)Lorg/msgpack/type/IntegerValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/msgpack/packer/Unconverter;->write(Lorg/msgpack/type/Value;)Lorg/msgpack/packer/Packer;

    :goto_0
    return-void
.end method

.method acceptUnsignedInteger(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    add-long/2addr p1, v0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    .line 85
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    const/16 p2, 0x3f

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 87
    iget-object p2, p0, Lorg/msgpack/unpacker/ValueAccept;->uc:Lorg/msgpack/packer/Unconverter;

    invoke-static {p1}, Lorg/msgpack/type/ValueFactory;->createIntegerValue(Ljava/math/BigInteger;)Lorg/msgpack/type/IntegerValue;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/msgpack/packer/Unconverter;->write(Lorg/msgpack/type/Value;)Lorg/msgpack/packer/Packer;

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/msgpack/unpacker/ValueAccept;->uc:Lorg/msgpack/packer/Unconverter;

    invoke-static {p1, p2}, Lorg/msgpack/type/ValueFactory;->createIntegerValue(J)Lorg/msgpack/type/IntegerValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/msgpack/packer/Unconverter;->write(Lorg/msgpack/type/Value;)Lorg/msgpack/packer/Packer;

    :goto_0
    return-void
.end method

.method acceptUnsignedInteger(S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/msgpack/unpacker/ValueAccept;->uc:Lorg/msgpack/packer/Unconverter;

    const v1, 0xffff

    and-int/2addr p1, v1

    invoke-static {p1}, Lorg/msgpack/type/ValueFactory;->createIntegerValue(I)Lorg/msgpack/type/IntegerValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/msgpack/packer/Unconverter;->write(Lorg/msgpack/type/Value;)Lorg/msgpack/packer/Packer;

    return-void
.end method

.method public refer(Ljava/nio/ByteBuffer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    new-array p2, p2, [B

    .line 107
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 108
    iget-object p1, p0, Lorg/msgpack/unpacker/ValueAccept;->uc:Lorg/msgpack/packer/Unconverter;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lorg/msgpack/type/ValueFactory;->createRawValue([BZ)Lorg/msgpack/type/RawValue;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/msgpack/packer/Unconverter;->write(Lorg/msgpack/type/Value;)Lorg/msgpack/packer/Packer;

    return-void
.end method

.method setUnconverter(Lorg/msgpack/packer/Unconverter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lorg/msgpack/unpacker/ValueAccept;->uc:Lorg/msgpack/packer/Unconverter;

    return-void
.end method
