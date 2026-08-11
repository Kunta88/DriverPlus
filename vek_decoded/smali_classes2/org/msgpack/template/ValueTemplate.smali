.class public Lorg/msgpack/template/ValueTemplate;
.super Lorg/msgpack/template/AbstractTemplate;
.source "ValueTemplate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/msgpack/template/AbstractTemplate<",
        "Lorg/msgpack/type/Value;",
        ">;"
    }
.end annotation


# static fields
.field static final instance:Lorg/msgpack/template/ValueTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lorg/msgpack/template/ValueTemplate;

    invoke-direct {v0}, Lorg/msgpack/template/ValueTemplate;-><init>()V

    sput-object v0, Lorg/msgpack/template/ValueTemplate;->instance:Lorg/msgpack/template/ValueTemplate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/msgpack/template/AbstractTemplate;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/msgpack/template/ValueTemplate;
    .locals 1

    .line 51
    sget-object v0, Lorg/msgpack/template/ValueTemplate;->instance:Lorg/msgpack/template/ValueTemplate;

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

    .line 26
    check-cast p2, Lorg/msgpack/type/Value;

    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/template/ValueTemplate;->read(Lorg/msgpack/unpacker/Unpacker;Lorg/msgpack/type/Value;Z)Lorg/msgpack/type/Value;

    move-result-object p1

    return-object p1
.end method

.method public read(Lorg/msgpack/unpacker/Unpacker;Lorg/msgpack/type/Value;Z)Lorg/msgpack/type/Value;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 44
    invoke-interface {p1}, Lorg/msgpack/unpacker/Unpacker;->trySkipNil()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 47
    :cond_0
    invoke-interface {p1}, Lorg/msgpack/unpacker/Unpacker;->readValue()Lorg/msgpack/type/Value;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write(Lorg/msgpack/packer/Packer;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    check-cast p2, Lorg/msgpack/type/Value;

    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/template/ValueTemplate;->write(Lorg/msgpack/packer/Packer;Lorg/msgpack/type/Value;Z)V

    return-void
.end method

.method public write(Lorg/msgpack/packer/Packer;Lorg/msgpack/type/Value;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    .line 36
    invoke-interface {p1}, Lorg/msgpack/packer/Packer;->writeNil()Lorg/msgpack/packer/Packer;

    return-void

    .line 34
    :cond_0
    new-instance p1, Lorg/msgpack/MessageTypeException;

    const-string p2, "Attempted to write null"

    invoke-direct {p1, p2}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_1
    invoke-interface {p2, p1}, Lorg/msgpack/type/Value;->writeTo(Lorg/msgpack/packer/Packer;)V

    return-void
.end method
