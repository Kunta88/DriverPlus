.class public Lcom/txdriver/socket/handler/AcceptOrderHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "AcceptOrderHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/AcceptOrderData;",
        ">;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/txdriver/socket/handler/AcceptOrderDelegate;


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 13
    const-class v0, Lcom/txdriver/socket/data/AcceptOrderData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    .line 14
    new-instance v0, Lcom/txdriver/socket/handler/AcceptOrderDelegate;

    invoke-direct {v0, p1}, Lcom/txdriver/socket/handler/AcceptOrderDelegate;-><init>(Lcom/txdriver/App;)V

    iput-object v0, p0, Lcom/txdriver/socket/handler/AcceptOrderHandler;->delegate:Lcom/txdriver/socket/handler/AcceptOrderDelegate;

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/AcceptOrderData;)V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/txdriver/socket/handler/AcceptOrderHandler;->delegate:Lcom/txdriver/socket/handler/AcceptOrderDelegate;

    iget v1, p1, Lcom/txdriver/socket/data/AcceptOrderData;->orderId:I

    iget p1, p1, Lcom/txdriver/socket/data/AcceptOrderData;->result:I

    invoke-virtual {v0, v1, p1}, Lcom/txdriver/socket/handler/AcceptOrderDelegate;->handle(II)Lcom/txdriver/db/Order;

    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/txdriver/socket/data/AcceptOrderData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/AcceptOrderHandler;->handle(Lcom/txdriver/socket/data/AcceptOrderData;)V

    return-void
.end method
