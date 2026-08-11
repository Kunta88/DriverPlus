.class final Lorg/msgpack/unpacker/BigIntegerAccept;
.super Lorg/msgpack/unpacker/Accept;
.source "BigIntegerAccept.java"


# instance fields
.field value:Ljava/math/BigInteger;


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "integer"

    .line 26
    invoke-direct {p0, v0}, Lorg/msgpack/unpacker/Accept;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method acceptInteger(B)V
    .locals 2

    int-to-long v0, p1

    .line 31
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/unpacker/BigIntegerAccept;->value:Ljava/math/BigInteger;

    return-void
.end method

.method acceptInteger(I)V
    .locals 2

    int-to-long v0, p1

    .line 41
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/unpacker/BigIntegerAccept;->value:Ljava/math/BigInteger;

    return-void
.end method

.method acceptInteger(J)V
    .locals 0

    .line 46
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/unpacker/BigIntegerAccept;->value:Ljava/math/BigInteger;

    return-void
.end method

.method acceptInteger(S)V
    .locals 2

    int-to-long v0, p1

    .line 36
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/unpacker/BigIntegerAccept;->value:Ljava/math/BigInteger;

    return-void
.end method

.method acceptUnsignedInteger(B)V
    .locals 2

    and-int/lit16 p1, p1, 0xff

    int-to-long v0, p1

    .line 51
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    return-void
.end method

.method acceptUnsignedInteger(I)V
    .locals 4

    if-gez p1, :cond_0

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    const-wide v2, 0x80000000L

    add-long/2addr v0, v2

    .line 62
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/unpacker/BigIntegerAccept;->value:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 64
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/unpacker/BigIntegerAccept;->value:Ljava/math/BigInteger;

    :goto_0
    return-void
.end method

.method acceptUnsignedInteger(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    add-long/2addr p1, v0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    .line 71
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    const/16 p2, 0x3f

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/unpacker/BigIntegerAccept;->value:Ljava/math/BigInteger;

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/unpacker/BigIntegerAccept;->value:Ljava/math/BigInteger;

    :goto_0
    return-void
.end method

.method acceptUnsignedInteger(S)V
    .locals 2

    const v0, 0xffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 56
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    return-void
.end method
