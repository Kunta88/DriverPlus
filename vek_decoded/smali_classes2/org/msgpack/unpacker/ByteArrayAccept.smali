.class final Lorg/msgpack/unpacker/ByteArrayAccept;
.super Lorg/msgpack/unpacker/Accept;
.source "ByteArrayAccept.java"


# instance fields
.field value:[B


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "raw value"

    .line 27
    invoke-direct {p0, v0}, Lorg/msgpack/unpacker/Accept;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method acceptEmptyRaw()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 37
    iput-object v0, p0, Lorg/msgpack/unpacker/ByteArrayAccept;->value:[B

    return-void
.end method

.method acceptRaw([B)V
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/msgpack/unpacker/ByteArrayAccept;->value:[B

    return-void
.end method

.method public refer(Ljava/nio/ByteBuffer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/msgpack/unpacker/ByteArrayAccept;->value:[B

    .line 44
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method
