.class Lorg/msgpack/type/BigIntegerValueImpl;
.super Lorg/msgpack/type/IntegerValue;
.source "BigIntegerValueImpl.java"


# static fields
.field private static BYTE_MAX:Ljava/math/BigInteger;

.field private static BYTE_MIN:Ljava/math/BigInteger;

.field private static INT_MAX:Ljava/math/BigInteger;

.field private static INT_MIN:Ljava/math/BigInteger;

.field private static LONG_MAX:Ljava/math/BigInteger;

.field private static LONG_MIN:Ljava/math/BigInteger;

.field private static SHORT_MAX:Ljava/math/BigInteger;

.field private static SHORT_MIN:Ljava/math/BigInteger;


# instance fields
.field private value:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x7f

    .line 33
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/msgpack/type/BigIntegerValueImpl;->BYTE_MAX:Ljava/math/BigInteger;

    const-wide/16 v0, 0x7fff

    .line 34
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/msgpack/type/BigIntegerValueImpl;->SHORT_MAX:Ljava/math/BigInteger;

    const-wide/32 v0, 0x7fffffff

    .line 35
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/msgpack/type/BigIntegerValueImpl;->INT_MAX:Ljava/math/BigInteger;

    const-wide v0, 0x7fffffffffffffffL

    .line 36
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/msgpack/type/BigIntegerValueImpl;->LONG_MAX:Ljava/math/BigInteger;

    const-wide/16 v0, -0x80

    .line 37
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/msgpack/type/BigIntegerValueImpl;->BYTE_MIN:Ljava/math/BigInteger;

    const-wide/16 v0, -0x8000

    .line 38
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/msgpack/type/BigIntegerValueImpl;->SHORT_MIN:Ljava/math/BigInteger;

    const-wide/32 v0, -0x80000000

    .line 39
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/msgpack/type/BigIntegerValueImpl;->INT_MIN:Ljava/math/BigInteger;

    const-wide/high16 v0, -0x8000000000000000L

    .line 40
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/msgpack/type/BigIntegerValueImpl;->LONG_MIN:Ljava/math/BigInteger;

    return-void
.end method

.method constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/msgpack/type/IntegerValue;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    return-object v0
.end method

.method public byteValue()B
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->byteValue()B

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    .line 111
    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 126
    :cond_0
    instance-of v0, p1, Lorg/msgpack/type/Value;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 129
    :cond_1
    check-cast p1, Lorg/msgpack/type/Value;

    .line 130
    invoke-interface {p1}, Lorg/msgpack/type/Value;->isIntegerValue()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 134
    :cond_2
    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    invoke-interface {p1}, Lorg/msgpack/type/Value;->asIntegerValue()Lorg/msgpack/type/IntegerValue;

    move-result-object p1

    invoke-virtual {p1}, Lorg/msgpack/type/IntegerValue;->bigIntegerValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public floatValue()F
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    return v0
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getByte()B
    .locals 2

    .line 44
    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    sget-object v1, Lorg/msgpack/type/BigIntegerValueImpl;->BYTE_MAX:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    sget-object v1, Lorg/msgpack/type/BigIntegerValueImpl;->BYTE_MIN:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 47
    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->byteValue()B

    move-result v0

    return v0

    .line 45
    :cond_0
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw v0
.end method

.method public getInt()I
    .locals 2

    .line 60
    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    sget-object v1, Lorg/msgpack/type/BigIntegerValueImpl;->INT_MAX:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    sget-object v1, Lorg/msgpack/type/BigIntegerValueImpl;->INT_MIN:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    .line 61
    :cond_0
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw v0
.end method

.method public getLong()J
    .locals 2

    .line 68
    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    sget-object v1, Lorg/msgpack/type/BigIntegerValueImpl;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    sget-object v1, Lorg/msgpack/type/BigIntegerValueImpl;->LONG_MIN:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 69
    :cond_0
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw v0
.end method

.method public getShort()S
    .locals 2

    .line 52
    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    sget-object v1, Lorg/msgpack/type/BigIntegerValueImpl;->SHORT_MAX:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    sget-object v1, Lorg/msgpack/type/BigIntegerValueImpl;->SHORT_MIN:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->shortValue()S

    move-result v0

    return v0

    .line 53
    :cond_0
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 4

    .line 139
    sget-object v0, Lorg/msgpack/type/BigIntegerValueImpl;->INT_MIN:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    sget-object v1, Lorg/msgpack/type/BigIntegerValueImpl;->INT_MAX:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    :goto_0
    long-to-int v1, v0

    return v1

    .line 141
    :cond_0
    sget-object v0, Lorg/msgpack/type/BigIntegerValueImpl;->LONG_MIN:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    sget-object v1, Lorg/msgpack/type/BigIntegerValueImpl;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 143
    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->shortValue()S

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

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

    .line 116
    iget-object v0, p0, Lorg/msgpack/type/BigIntegerValueImpl;->value:Ljava/math/BigInteger;

    invoke-interface {p1, v0}, Lorg/msgpack/packer/Packer;->write(Ljava/math/BigInteger;)Lorg/msgpack/packer/Packer;

    return-void
.end method
