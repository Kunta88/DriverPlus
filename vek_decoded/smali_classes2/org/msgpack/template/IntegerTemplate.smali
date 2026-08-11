.class public Lorg/msgpack/template/IntegerTemplate;
.super Lorg/msgpack/template/AbstractTemplate;
.source "IntegerTemplate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/msgpack/template/AbstractTemplate<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field static final instance:Lorg/msgpack/template/IntegerTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lorg/msgpack/template/IntegerTemplate;

    invoke-direct {v0}, Lorg/msgpack/template/IntegerTemplate;-><init>()V

    sput-object v0, Lorg/msgpack/template/IntegerTemplate;->instance:Lorg/msgpack/template/IntegerTemplate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/msgpack/template/AbstractTemplate;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/msgpack/template/IntegerTemplate;
    .locals 1

    .line 50
    sget-object v0, Lorg/msgpack/template/IntegerTemplate;->instance:Lorg/msgpack/template/IntegerTemplate;

    return-object v0
.end method


# virtual methods
.method public read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Integer;Z)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 43
    invoke-interface {p1}, Lorg/msgpack/unpacker/Unpacker;->trySkipNil()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 46
    :cond_0
    invoke-interface {p1}, Lorg/msgpack/unpacker/Unpacker;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/template/IntegerTemplate;->read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Integer;Z)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public write(Lorg/msgpack/packer/Packer;Ljava/lang/Integer;Z)V
    .locals 0
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
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lorg/msgpack/packer/Packer;->write(I)Lorg/msgpack/packer/Packer;

    return-void
.end method

.method public bridge synthetic write(Lorg/msgpack/packer/Packer;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/template/IntegerTemplate;->write(Lorg/msgpack/packer/Packer;Ljava/lang/Integer;Z)V

    return-void
.end method
