.class public Lorg/msgpack/template/IntegerArrayTemplate;
.super Lorg/msgpack/template/AbstractTemplate;
.source "IntegerArrayTemplate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/msgpack/template/AbstractTemplate<",
        "[I>;"
    }
.end annotation


# static fields
.field static final instance:Lorg/msgpack/template/IntegerArrayTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lorg/msgpack/template/IntegerArrayTemplate;

    invoke-direct {v0}, Lorg/msgpack/template/IntegerArrayTemplate;-><init>()V

    sput-object v0, Lorg/msgpack/template/IntegerArrayTemplate;->instance:Lorg/msgpack/template/IntegerArrayTemplate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/msgpack/template/AbstractTemplate;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/msgpack/template/IntegerArrayTemplate;
    .locals 1

    .line 65
    sget-object v0, Lorg/msgpack/template/IntegerArrayTemplate;->instance:Lorg/msgpack/template/IntegerArrayTemplate;

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
    check-cast p2, [I

    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/template/IntegerArrayTemplate;->read(Lorg/msgpack/unpacker/Unpacker;[IZ)[I

    move-result-object p1

    return-object p1
.end method

.method public read(Lorg/msgpack/unpacker/Unpacker;[IZ)[I
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

    .line 52
    array-length v0, p2

    if-ne v0, p3, :cond_1

    goto :goto_0

    .line 55
    :cond_1
    new-array p2, p3, [I

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_2

    .line 58
    invoke-interface {p1}, Lorg/msgpack/unpacker/Unpacker;->readInt()I

    move-result v1

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    :cond_2
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
    check-cast p2, [I

    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/template/IntegerArrayTemplate;->write(Lorg/msgpack/packer/Packer;[IZ)V

    return-void
.end method

.method public write(Lorg/msgpack/packer/Packer;[IZ)V
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

    aget v1, p2, v0

    .line 40
    invoke-interface {p1, v1}, Lorg/msgpack/packer/Packer;->write(I)Lorg/msgpack/packer/Packer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_2
    invoke-interface {p1}, Lorg/msgpack/packer/Packer;->writeArrayEnd()Lorg/msgpack/packer/Packer;

    return-void
.end method
