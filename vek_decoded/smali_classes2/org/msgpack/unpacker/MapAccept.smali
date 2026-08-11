.class final Lorg/msgpack/unpacker/MapAccept;
.super Lorg/msgpack/unpacker/Accept;
.source "MapAccept.java"


# instance fields
.field size:I


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "map"

    .line 24
    invoke-direct {p0, v0}, Lorg/msgpack/unpacker/Accept;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method acceptMap(I)V
    .locals 0

    .line 29
    iput p1, p0, Lorg/msgpack/unpacker/MapAccept;->size:I

    return-void
.end method
