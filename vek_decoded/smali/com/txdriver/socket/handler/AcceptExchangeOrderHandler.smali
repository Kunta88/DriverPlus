.class public Lcom/txdriver/socket/handler/AcceptExchangeOrderHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "AcceptExchangeOrderHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/AcceptExchangeOrderData;",
        ">;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/txdriver/socket/handler/AcceptOrderDelegate;


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 15
    const-class v0, Lcom/txdriver/socket/data/AcceptExchangeOrderData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    .line 16
    new-instance v0, Lcom/txdriver/socket/handler/AcceptOrderDelegate;

    invoke-direct {v0, p1}, Lcom/txdriver/socket/handler/AcceptOrderDelegate;-><init>(Lcom/txdriver/App;)V

    iput-object v0, p0, Lcom/txdriver/socket/handler/AcceptExchangeOrderHandler;->delegate:Lcom/txdriver/socket/handler/AcceptOrderDelegate;

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/AcceptExchangeOrderData;)V
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/txdriver/socket/handler/AcceptExchangeOrderHandler;->delegate:Lcom/txdriver/socket/handler/AcceptOrderDelegate;

    iget v1, p1, Lcom/txdriver/socket/data/AcceptExchangeOrderData;->orderId:I

    iget v2, p1, Lcom/txdriver/socket/data/AcceptExchangeOrderData;->result:I

    invoke-virtual {v0, v1, v2}, Lcom/txdriver/socket/handler/AcceptOrderDelegate;->handle(II)Lcom/txdriver/db/Order;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    iget p1, p1, Lcom/txdriver/socket/data/AcceptExchangeOrderData;->newOrderId:I

    iput p1, v0, Lcom/txdriver/db/Order;->orderId:I

    const/4 p1, 0x0

    .line 24
    invoke-virtual {v0, p1}, Lcom/txdriver/db/Order;->save(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/txdriver/socket/data/AcceptExchangeOrderData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/AcceptExchangeOrderHandler;->handle(Lcom/txdriver/socket/data/AcceptExchangeOrderData;)V

    return-void
.end method
