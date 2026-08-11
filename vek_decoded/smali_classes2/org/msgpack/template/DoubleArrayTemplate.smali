.class public Lorg/msgpack/template/DoubleArrayTemplate;
.super Lorg/msgpack/template/AbstractTemplate;
.source "DoubleArrayTemplate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/msgpack/template/AbstractTemplate<",
        "[D>;"
    }
.end annotation


# static fields
.field static final instance:Lorg/msgpack/template/DoubleArrayTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lorg/msgpack/template/DoubleArrayTemplate;

    invoke-direct {v0}, Lorg/msgpack/template/DoubleArrayTemplate;-><init>()V

    sput-object v0, Lorg/msgpack/template/DoubleArrayTemplate;->instance:Lorg/msgpack/template/DoubleArrayTemplate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/msgpack/template/AbstractTemplate;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/msgpack/template/DoubleArrayTemplate;
    .locals 1

    .line 62
    sget-object v0, Lorg/msgpack/template/DoubleArrayTemplate;->instance:Lorg/msgpack/template/DoubleArrayTemplate;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    check-cast p2, [D

    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/template/DoubleArrayTemplate;->read(Lorg/msgpack/unpacker/Unpacker;[DZ)[D

    move-result-object p1

    return-object p1
.end method

.method public read(Lorg/msgpack/unpacker/Unpacker;[DZ)[D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 47
    invoke-interface {p1}, Lorg/msgpack/unpacker/Unpacker;->trySkipNil()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 50
    :cond_0
    invoke-interface {p1}, Lorg/msgpack/unpacker/Unpacker;->readArrayBegin()I

    move-result p3

    if-eqz p2, :cond_1

    .line 51
    array-length v0, p2

    if-eq v0, p3, :cond_2

    .line 52
    :cond_1
    new-array p2, p3, [D

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    .line 55
    invoke-interface {p1}, Lorg/msgpack/unpacker/Unpacker;->readDouble()D

    move-result-wide v1

    aput-wide v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_3
    invoke-interface {p1}, Lorg/msgpack/unpacker/Unpacker;->readArrayEnd()V

    return-object p2
.end method

.method public bridge synthetic write(Lorg/msgpack/packer/Packer;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    check-cast p2, [D

    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/template/DoubleArrayTemplate;->write(Lorg/msgpack/packer/Packer;[DZ)V

    return-void
.end method

.method public write(Lorg/msgpack/packer/Packer;[DZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    .line 35
    invoke-interface {p1}, Lorg/msgpack/packer/Packer;->writeNil()Lorg/msgpack/packer/Packer;

    return-void

    .line 33
    :cond_0
    new-instance p1, Lorg/msgpack/MessageTypeException;

    const-string p2, "Attempted to write null"

    invoke-direct {p1, p2}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_1
    array-length p3, p2

    invoke-interface {p1, p3}, Lorg/msgpack/packer/Packer;->writeArrayBegin(I)Lorg/msgpack/packer/Packer;

    .line 39
    array-length p3, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    aget-wide v1, p2, v0

    .line 40
    invoke-interface {p1, v1, v2}, Lorg/msgpack/packer/Packer;->write(D)Lorg/msgpack/packer/Packer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_2
    invoke-interface {p1}, Lorg/msgpack/packer/Packer;->writeArrayEnd()Lorg/msgpack/packer/Packer;

    return-void
.end method
