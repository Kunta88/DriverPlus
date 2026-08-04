.class final Lorg/msgpack/unpacker/LongAccept;
.super Lorg/msgpack/unpacker/Accept;
.source "LongAccept.java"


# instance fields
.field value:J


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
    iput-wide v0, p0, Lorg/msgpack/unpacker/LongAccept;->value:J

    return-void
.end method

.method acceptInteger(I)V
    .locals 2

    int-to-long v0, p1

    .line 41
    iput-wide v0, p0, Lorg/msgpack/unpacker/LongAccept;->value:J

    return-void
.end method

.method acceptInteger(J)V
    .locals 0

    .line 46
    iput-wide p1, p0, Lorg/msgpack/unpacker/LongAccept;->value:J

    return-void
.end method

.method acceptInteger(S)V
    .locals 2

    int-to-long v0, p1

    .line 36
    iput-wide v0, p0, Lorg/msgpack/unpacker/LongAccept;->value:J

    return-void
.end method

.method acceptUnsignedInteger(B)V
    .locals 2

    and-int/lit16 p1, p1, 0xff

    int-to-long v0, p1

    .line 51
    iput-wide v0, p0, Lorg/msgpack/unpacker/LongAccept;->value:J

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
    iput-wide v0, p0, Lorg/msgpack/unpacker/LongAccept;->value:J

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 64
    iput-wide v0, p0, Lorg/msgpack/unpacker/LongAccept;->value:J

    :goto_0
    return-void
.end method

.method acceptUnsignedInteger(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 73
    iput-wide p1, p0, Lorg/msgpack/unpacker/LongAccept;->value:J

    return-void

    .line 71
    :cond_0
    new-instance p1, Lorg/msgpack/MessageTypeException;

    invoke-direct {p1}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw p1
.end method

.method acceptUnsignedInteger(S)V
    .locals 2

    const v0, 0xffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 56
    iput-wide v0, p0, Lorg/msgpack/unpacker/LongAccept;->value:J

    return-void
.end method
