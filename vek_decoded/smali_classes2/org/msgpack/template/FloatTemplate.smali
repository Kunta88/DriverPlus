.class public Lorg/msgpack/template/FloatTemplate;
.super Lorg/msgpack/template/AbstractTemplate;
.source "FloatTemplate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/msgpack/template/AbstractTemplate<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field static final instance:Lorg/msgpack/template/FloatTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lorg/msgpack/template/FloatTemplate;

    invoke-direct {v0}, Lorg/msgpack/template/FloatTemplate;-><init>()V

    sput-object v0, Lorg/msgpack/template/FloatTemplate;->instance:Lorg/msgpack/template/FloatTemplate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/msgpack/template/AbstractTemplate;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/msgpack/template/FloatTemplate;
    .locals 1

    .line 50
    sget-object v0, Lorg/msgpack/template/FloatTemplate;->instance:Lorg/msgpack/template/FloatTemplate;

    return-object v0
.end method


# virtual methods
.method public read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Float;Z)Ljava/lang/Float;
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
    invoke-interface {p1}, Lorg/msgpack/unpacker/Unpacker;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/template/FloatTemplate;->read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Float;Z)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public write(Lorg/msgpack/packer/Packer;Ljava/lang/Float;Z)V
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
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lorg/msgpack/packer/Packer;->write(F)Lorg/msgpack/packer/Packer;

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
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/template/FloatTemplate;->write(Lorg/msgpack/packer/Packer;Ljava/lang/Float;Z)V

    return-void
.end method
