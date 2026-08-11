.class public Lcom/txdriver/socket/handler/OrderDetailsHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "OrderDetailsHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/OrderDetailsData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OrderDetailsHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 17
    const-class v0, Lcom/txdriver/socket/data/OrderDetailsData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/OrderDetailsData;)V
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/OrderDetailsHandler;->saveOrderDetails(Lcom/txdriver/socket/data/OrderDetailsData;)Lcom/txdriver/db/Order;

    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/txdriver/socket/data/OrderDetailsData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/OrderDetailsHandler;->handle(Lcom/txdriver/socket/data/OrderDetailsData;)V

    return-void
.end method

.method saveOrderDetails(Lcom/txdriver/socket/data/OrderDetailsData;)Lcom/txdriver/db/Order;
    .locals 2

    .line 26
    iget v0, p1, Lcom/txdriver/socket/data/OrderDetailsData;->orderId:I

    invoke-static {v0}, Lcom/txdriver/db/Order;->getOrderById(I)Lcom/txdriver/db/Order;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v1, p0, Lcom/txdriver/socket/handler/OrderDetailsHandler;->app:Lcom/txdriver/App;

    invoke-static {v1, v0, p1}, Lcom/txdriver/order/OrderManager;->setOrderDetails(Lcom/txdriver/App;Lcom/txdriver/db/Order;Lcom/txdriver/socket/data/OrderDetailsData;)V

    :cond_0
    return-object v0
.end method
