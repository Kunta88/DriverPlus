.class public Lorg/msgpack/template/MessagePackableTemplate;
.super Lorg/msgpack/template/AbstractTemplate;
.source "MessagePackableTemplate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/msgpack/template/AbstractTemplate<",
        "Lorg/msgpack/MessagePackable;",
        ">;"
    }
.end annotation


# instance fields
.field private targetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lorg/msgpack/template/AbstractTemplate;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/msgpack/template/MessagePackableTemplate;->targetClass:Ljava/lang/Class;

    return-void
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
    check-cast p2, Lorg/msgpack/MessagePackable;

    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/template/MessagePackableTemplate;->read(Lorg/msgpack/unpacker/Unpacker;Lorg/msgpack/MessagePackable;Z)Lorg/msgpack/MessagePackable;

    move-result-object p1

    return-object p1
.end method

.method public read(Lorg/msgpack/unpacker/Unpacker;Lorg/msgpack/MessagePackable;Z)Lorg/msgpack/MessagePackable;
    .locals 0
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

    :cond_0
    if-nez p2, :cond_1

    .line 52
    :try_start_0
    iget-object p2, p0, Lorg/msgpack/template/MessagePackableTemplate;->targetClass:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/msgpack/MessagePackable;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 56
    new-instance p2, Lorg/msgpack/MessageTypeException;

    invoke-direct {p2, p1}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 54
    new-instance p2, Lorg/msgpack/MessageTypeException;

    invoke-direct {p2, p1}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 59
    :cond_1
    :goto_0
    invoke-interface {p2, p1}, Lorg/msgpack/MessagePackable;->readFrom(Lorg/msgpack/unpacker/Unpacker;)V

    return-object p2
.end method

.method public bridge synthetic write(Lorg/msgpack/packer/Packer;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    check-cast p2, Lorg/msgpack/MessagePackable;

    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/template/MessagePackableTemplate;->write(Lorg/msgpack/packer/Packer;Lorg/msgpack/MessagePackable;Z)V

    return-void
.end method

.method public write(Lorg/msgpack/packer/Packer;Lorg/msgpack/MessagePackable;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    .line 39
    invoke-interface {p1}, Lorg/msgpack/packer/Packer;->writeNil()Lorg/msgpack/packer/Packer;

    return-void

    .line 37
    :cond_0
    new-instance p1, Lorg/msgpack/MessageTypeException;

    const-string p2, "Attempted to write null"

    invoke-direct {p1, p2}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_1
    invoke-interface {p2, p1}, Lorg/msgpack/MessagePackable;->writeTo(Lorg/msgpack/packer/Packer;)V

    return-void
.end method
