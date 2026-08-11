.class final Lorg/msgpack/unpacker/DoubleAccept;
.super Lorg/msgpack/unpacker/Accept;
.source "DoubleAccept.java"


# instance fields
.field value:D


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "float"

    .line 24
    invoke-direct {p0, v0}, Lorg/msgpack/unpacker/Accept;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method acceptDouble(D)V
    .locals 0

    .line 32
    iput-wide p1, p0, Lorg/msgpack/unpacker/DoubleAccept;->value:D

    return-void
.end method

.method acceptFloat(F)V
    .locals 2

    float-to-double v0, p1

    .line 28
    iput-wide v0, p0, Lorg/msgpack/unpacker/DoubleAccept;->value:D

    return-void
.end method
