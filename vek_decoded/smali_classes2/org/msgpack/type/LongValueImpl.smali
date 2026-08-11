.class Lorg/msgpack/type/LongValueImpl;
.super Lorg/msgpack/type/IntegerValue;
.source "LongValueImpl.java"


# static fields
.field private static BYTE_MAX:J = 0x7fL

.field private static BYTE_MIN:J = -0x80L

.field private static INT_MAX:J = 0x7fffffffL

.field private static INT_MIN:J = -0x80000000L

.field private static SHORT_MAX:J = 0x7fffL

.field private static SHORT_MIN:J = -0x8000L


# instance fields
.field private value:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(J)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/msgpack/type/IntegerValue;-><init>()V

    .line 30
    iput-wide p1, p0, Lorg/msgpack/type/LongValueImpl;->value:J

    return-void
.end method


# virtual methods
.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 2

    .line 97
    iget-wide v0, p0, Lorg/msgpack/type/LongValueImpl;->value:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public byteValue()B
    .locals 2

    .line 77
    iget-wide v0, p0, Lorg/msgpack/type/LongValueImpl;->value:J

    long-to-int v1, v0

    int-to-byte v0, v1

    return v0
.end method

.method public doubleValue()D
    .locals 2

    .line 107
    iget-wide v0, p0, Lorg/msgpack/type/LongValueImpl;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 122
    :cond_0
    instance-of v1, p1, Lorg/msgpack/type/Value;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 125
    :cond_1
    check-cast p1, Lorg/msgpack/type/Value;

    .line 126
    invoke-interface {p1}, Lorg/msgpack/type/Value;->isIntegerValue()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 132
    :cond_2
    :try_start_0
    iget-wide v3, p0, Lorg/msgpack/type/LongValueImpl;->value:J

    invoke-interface {p1}, Lorg/msgpack/type/Value;->asIntegerValue()Lorg/msgpack/type/IntegerValue;

    move-result-object p1

    invoke-virtual {p1}, Lorg/msgpack/type/IntegerValue;->getLong()J

    move-result-wide v5
    :try_end_0
    .catch Lorg/msgpack/MessageTypeException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    return v2
.end method

.method public floatValue()F
    .locals 2

    .line 102
    iget-wide v0, p0, Lorg/msgpack/type/LongValueImpl;->value:J

    long-to-float v0, v0

    return v0
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .locals 2

    .line 72
    iget-wide v0, p0, Lorg/msgpack/type/LongValueImpl;->value:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getByte()B
    .locals 5

    .line 43
    iget-wide v0, p0, Lorg/msgpack/type/LongValueImpl;->value:J

    sget-wide v2, Lorg/msgpack/type/LongValueImpl;->BYTE_MAX:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    sget-wide v2, Lorg/msgpack/type/LongValueImpl;->BYTE_MIN:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    long-to-int v1, v0

    int-to-byte v0, v1

    return v0

    .line 44
    :cond_0
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw v0
.end method

.method public getInt()I
    .locals 5

    .line 59
    iget-wide v0, p0, Lorg/msgpack/type/LongValueImpl;->value:J

    sget-wide v2, Lorg/msgpack/type/LongValueImpl;->INT_MAX:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    sget-wide v2, Lorg/msgpack/type/LongValueImpl;->INT_MIN:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    long-to-int v1, v0

    return v1

    .line 60
    :cond_0
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw v0
.end method

.method public getLong()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lorg/msgpack/type/LongValueImpl;->value:J

    return-wide v0
.end method

.method public getShort()S
    .locals 5

    .line 51
    iget-wide v0, p0, Lorg/msgpack/type/LongValueImpl;->value:J

    sget-wide v2, Lorg/msgpack/type/LongValueImpl;->SHORT_MAX:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    sget-wide v2, Lorg/msgpack/type/LongValueImpl;->SHORT_MIN:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0

    .line 52
    :cond_0
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 5

    .line 140
    sget-wide v0, Lorg/msgpack/type/LongValueImpl;->INT_MIN:J

    iget-wide v2, p0, Lorg/msgpack/type/LongValueImpl;->value:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    sget-wide v0, Lorg/msgpack/type/LongValueImpl;->INT_MAX:J

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    long-to-int v0, v2

    return v0

    :cond_0
    const/16 v0, 0x20

    ushr-long v0, v2, v0

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public intValue()I
    .locals 2

    .line 87
    iget-wide v0, p0, Lorg/msgpack/type/LongValueImpl;->value:J

    long-to-int v1, v0

    return v1
.end method

.method public longValue()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lorg/msgpack/type/LongValueImpl;->value:J

    return-wide v0
.end method

.method public shortValue()S
    .locals 2

    .line 82
    iget-wide v0, p0, Lorg/msgpack/type/LongValueImpl;->value:J

    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 149
    iget-wide v0, p0, Lorg/msgpack/type/LongValueImpl;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    .line 154
    iget-wide v0, p0, Lorg/msgpack/type/LongValueImpl;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Lorg/msgpack/packer/Packer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-wide v0, p0, Lorg/msgpack/type/LongValueImpl;->value:J

    invoke-interface {p1, v0, v1}, Lorg/msgpack/packer/Packer;->write(J)Lorg/msgpack/packer/Packer;

    return-void
.end method
