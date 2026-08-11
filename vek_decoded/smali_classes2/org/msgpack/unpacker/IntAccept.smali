.class final Lorg/msgpack/unpacker/IntAccept;
.super Lorg/msgpack/unpacker/Accept;
.source "IntAccept.java"


# instance fields
.field value:I


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
    .locals 0

    .line 31
    iput p1, p0, Lorg/msgpack/unpacker/IntAccept;->value:I

    return-void
.end method

.method acceptInteger(I)V
    .locals 0

    .line 41
    iput p1, p0, Lorg/msgpack/unpacker/IntAccept;->value:I

    return-void
.end method

.method acceptInteger(J)V
    .locals 3

    const-wide/32 v0, -0x80000000

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    long-to-int p2, p1

    .line 49
    iput p2, p0, Lorg/msgpack/unpacker/IntAccept;->value:I

    return-void

    .line 47
    :cond_0
    new-instance p1, Lorg/msgpack/MessageTypeException;

    invoke-direct {p1}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw p1
.end method

.method acceptInteger(S)V
    .locals 0

    .line 36
    iput p1, p0, Lorg/msgpack/unpacker/IntAccept;->value:I

    return-void
.end method

.method acceptUnsignedInteger(B)V
    .locals 0

    and-int/lit16 p1, p1, 0xff

    .line 54
    iput p1, p0, Lorg/msgpack/unpacker/IntAccept;->value:I

    return-void
.end method

.method acceptUnsignedInteger(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 67
    iput p1, p0, Lorg/msgpack/unpacker/IntAccept;->value:I

    return-void

    .line 65
    :cond_0
    new-instance p1, Lorg/msgpack/MessageTypeException;

    invoke-direct {p1}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw p1
.end method

.method acceptUnsignedInteger(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    long-to-int p2, p1

    .line 75
    iput p2, p0, Lorg/msgpack/unpacker/IntAccept;->value:I

    return-void

    .line 73
    :cond_0
    new-instance p1, Lorg/msgpack/MessageTypeException;

    invoke-direct {p1}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw p1
.end method

.method acceptUnsignedInteger(S)V
    .locals 1

    const v0, 0xffff

    and-int/2addr p1, v0

    .line 59
    iput p1, p0, Lorg/msgpack/unpacker/IntAccept;->value:I

    return-void
.end method
