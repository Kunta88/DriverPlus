.class public Lcom/txdriver/socket/handler/ExchangeOrderHandler;
.super Lcom/txdriver/socket/handler/AbstractOrderPacketHandler;
.source "ExchangeOrderHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractOrderPacketHandler<",
        "Lcom/txdriver/socket/data/ExchangeOrderData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 15
    new-instance v0, Lcom/txdriver/socket/data/template/ExchangeOrderTemplate;

    invoke-direct {v0}, Lcom/txdriver/socket/data/template/ExchangeOrderTemplate;-><init>()V

    invoke-static {v0}, Lorg/msgpack/template/Templates;->tList(Lorg/msgpack/template/Template;)Lorg/msgpack/template/Template;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractOrderPacketHandler;-><init>(Lcom/txdriver/App;Lorg/msgpack/template/Template;)V

    return-void
.end method
