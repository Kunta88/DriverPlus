.class public Lcom/txdriver/socket/data/template/MultiTaxiOrderTemplate;
.super Lorg/msgpack/template/AbstractTemplate;
.source "MultiTaxiOrderTemplate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/msgpack/template/AbstractTemplate<",
        "Lcom/txdriver/socket/data/MultiTaxiOrderData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/msgpack/template/AbstractTemplate;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lorg/msgpack/unpacker/Unpacker;Lcom/txdriver/socket/data/MultiTaxiOrderData;Z)Lcom/txdriver/socket/data/MultiTaxiOrderData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 24
    invoke-interface {p1}, Lorg/msgpack/unpacker/Unpacker;->trySkipNil()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 27
    :cond_0
    const-class p2, Lcom/txdriver/socket/data/MultiTaxiOrderData;

    invoke-interface {p1, p2}, Lorg/msgpack/unpacker/Unpacker;->read(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/socket/data/MultiTaxiOrderData;

    return-object p1
.end method

.method public bridge synthetic read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    check-cast p2, Lcom/txdriver/socket/data/MultiTaxiOrderData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/txdriver/socket/data/template/MultiTaxiOrderTemplate;->read(Lorg/msgpack/unpacker/Unpacker;Lcom/txdriver/socket/data/MultiTaxiOrderData;Z)Lcom/txdriver/socket/data/MultiTaxiOrderData;

    move-result-object p1

    return-object p1
.end method

.method public write(Lorg/msgpack/packer/Packer;Lcom/txdriver/socket/data/MultiTaxiOrderData;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic write(Lorg/msgpack/packer/Packer;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    check-cast p2, Lcom/txdriver/socket/data/MultiTaxiOrderData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/txdriver/socket/data/template/MultiTaxiOrderTemplate;->write(Lorg/msgpack/packer/Packer;Lcom/txdriver/socket/data/MultiTaxiOrderData;Z)V

    return-void
.end method
