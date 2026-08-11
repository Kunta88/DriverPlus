.class public Lorg/msgpack/template/ShortArrayTemplate;
.super Lorg/msgpack/template/AbstractTemplate;
.source "ShortArrayTemplate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/msgpack/template/AbstractTemplate<",
        "[S>;"
    }
.end annotation


# static fields
.field static final instance:Lorg/msgpack/template/ShortArrayTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lorg/msgpack/template/ShortArrayTemplate;

    invoke-direct {v0}, Lorg/msgpack/template/ShortArrayTemplate;-><init>()V

    sput-object v0, Lorg/msgpack/template/ShortArrayTemplate;->instance:Lorg/msgpack/template/ShortArrayTemplate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/msgpack/template/AbstractTemplate;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/msgpack/template/ShortArrayTemplate;
    .locals 1

    .line 62
    sget-object v0, Lorg/msgpack/template/ShortArrayTemplate;->instance:Lorg/msgpack/template/ShortArrayTemplate;

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
    check-cast p2, [S

    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/template/ShortArrayTemplate;->read(Lorg/msgpack/unpacker/Unpacker;[SZ)[S

    move-result-object p1

    return-object p1
.end method

.method public read(Lorg/msgpack/unpacker/Unpacker;[SZ)[S
    .locals 2
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
    new-array p2, p3, [S

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    .line 55
    invoke-interface {p1}, Lorg/msgpack/unpacker/Unpacker;->readShort()S

    move-result v1

    aput-short v1, p2, v0

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
    check-cast p2, [S

    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/template/ShortArrayTemplate;->write(Lorg/msgpack/packer/Packer;[SZ)V

    return-void
.end method

.method public write(Lorg/msgpack/packer/Packer;[SZ)V
    .locals 2
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

    aget-short v1, p2, v0

    .line 40
    invoke-interface {p1, v1}, Lorg/msgpack/packer/Packer;->write(S)Lorg/msgpack/packer/Packer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_2
    invoke-interface {p1}, Lorg/msgpack/packer/Packer;->writeArrayEnd()Lorg/msgpack/packer/Packer;

    return-void
.end method
