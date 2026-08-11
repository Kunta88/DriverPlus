.class Lorg/msgpack/type/IntValueImpl;
.super Lorg/msgpack/type/IntegerValue;
.source "IntValueImpl.java"


# static fields
.field private static BYTE_MAX:I = 0x7f

.field private static BYTE_MIN:I = -0x80

.field private static SHORT_MAX:I = 0x7fff

.field private static SHORT_MIN:I = -0x8000


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/msgpack/type/IntegerValue;-><init>()V

    .line 30
    iput p1, p0, Lorg/msgpack/type/IntValueImpl;->value:I

    return-void
.end method


# virtual methods
.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 2

    .line 92
    iget v0, p0, Lorg/msgpack/type/IntValueImpl;->value:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public byteValue()B
    .locals 1

    .line 72
    iget v0, p0, Lorg/msgpack/type/IntValueImpl;->value:I

    int-to-byte v0, v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    .line 102
    iget v0, p0, Lorg/msgpack/type/IntValueImpl;->value:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 117
    :cond_0
    instance-of v1, p1, Lorg/msgpack/type/Value;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 120
    :cond_1
    check-cast p1, Lorg/msgpack/type/Value;

    .line 121
    invoke-interface {p1}, Lorg/msgpack/type/Value;->isIntegerValue()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 127
    :cond_2
    :try_start_0
    iget v1, p0, Lorg/msgpack/type/IntValueImpl;->value:I

    invoke-interface {p1}, Lorg/msgpack/type/Value;->asIntegerValue()Lorg/msgpack/type/IntegerValue;

    move-result-object p1

    invoke-virtual {p1}, Lorg/msgpack/type/IntegerValue;->getInt()I

    move-result p1
    :try_end_0
    .catch Lorg/msgpack/MessageTypeException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    return v2
.end method

.method public floatValue()F
    .locals 1

    .line 97
    iget v0, p0, Lorg/msgpack/type/IntValueImpl;->value:I

    int-to-float v0, v0

    return v0
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .locals 2

    .line 67
    iget v0, p0, Lorg/msgpack/type/IntValueImpl;->value:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getByte()B
    .locals 2

    .line 41
    iget v0, p0, Lorg/msgpack/type/IntValueImpl;->value:I

    sget v1, Lorg/msgpack/type/IntValueImpl;->BYTE_MAX:I

    if-gt v0, v1, :cond_0

    sget v1, Lorg/msgpack/type/IntValueImpl;->BYTE_MIN:I

    if-lt v0, v1, :cond_0

    int-to-byte v0, v0

    return v0

    .line 42
    :cond_0
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw v0
.end method

.method public getInt()I
    .locals 1

    .line 57
    iget v0, p0, Lorg/msgpack/type/IntValueImpl;->value:I

    return v0
.end method

.method public getLong()J
    .locals 2

    .line 62
    iget v0, p0, Lorg/msgpack/type/IntValueImpl;->value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getShort()S
    .locals 2

    .line 49
    iget v0, p0, Lorg/msgpack/type/IntValueImpl;->value:I

    sget v1, Lorg/msgpack/type/IntValueImpl;->SHORT_MAX:I

    if-gt v0, v1, :cond_0

    sget v1, Lorg/msgpack/type/IntValueImpl;->SHORT_MIN:I

    if-lt v0, v1, :cond_0

    int-to-short v0, v0

    return v0

    .line 50
    :cond_0
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 135
    iget v0, p0, Lorg/msgpack/type/IntValueImpl;->value:I

    return v0
.end method

.method public intValue()I
    .locals 1

    .line 82
    iget v0, p0, Lorg/msgpack/type/IntValueImpl;->value:I

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 87
    iget v0, p0, Lorg/msgpack/type/IntValueImpl;->value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    .line 77
    iget v0, p0, Lorg/msgpack/type/IntValueImpl;->value:I

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 140
    iget v0, p0, Lorg/msgpack/type/IntValueImpl;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    .line 145
    iget v0, p0, Lorg/msgpack/type/IntValueImpl;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Lorg/msgpack/packer/Packer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget v0, p0, Lorg/msgpack/type/IntValueImpl;->value:I

    invoke-interface {p1, v0}, Lorg/msgpack/packer/Packer;->write(I)Lorg/msgpack/packer/Packer;

    return-void
.end method
