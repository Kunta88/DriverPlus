.class public abstract Lcom/txdriver/socket/handler/AbstractExternalOrderAcceptedHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "AbstractExternalOrderAcceptedHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/CurrentOrderData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 18
    const-class v0, Lcom/txdriver/socket/data/CurrentOrderData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method

.method private notifyAccepted(Lcom/txdriver/db/Order;)V
    .locals 4

    const v0, 0x1040014

    .line 46
    invoke-virtual {p0, v0}, Lcom/txdriver/socket/handler/AbstractExternalOrderAcceptedHandler;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f10026b

    .line 47
    invoke-virtual {p0, v1}, Lcom/txdriver/socket/handler/AbstractExternalOrderAcceptedHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/txdriver/db/Order;->address:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 48
    new-instance v1, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;

    iget-object v2, p0, Lcom/txdriver/socket/handler/AbstractExternalOrderAcceptedHandler;->app:Lcom/txdriver/App;

    invoke-direct {v1, v2, v0, p1}, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;-><init>(Lcom/txdriver/App;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/txdriver/socket/handler/AbstractExternalOrderAcceptedHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startOrderActivity(Lcom/txdriver/db/Order;)V
    .locals 1

    .line 34
    new-instance v0, Lcom/txdriver/socket/handler/AbstractExternalOrderAcceptedHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/socket/handler/AbstractExternalOrderAcceptedHandler$1;-><init>(Lcom/txdriver/socket/handler/AbstractExternalOrderAcceptedHandler;Lcom/txdriver/db/Order;)V

    invoke-virtual {p0, v0}, Lcom/txdriver/socket/handler/AbstractExternalOrderAcceptedHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public abstract getOrderSource()Lcom/txdriver/db/Order$Source;
.end method

.method public handle(Lcom/txdriver/socket/data/CurrentOrderData;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/txdriver/socket/handler/AbstractExternalOrderAcceptedHandler;->app:Lcom/txdriver/App;

    invoke-static {v0, p1}, Lcom/txdriver/order/OrderManager;->createOrder(Lcom/txdriver/App;Lcom/txdriver/socket/data/CurrentOrderData;)Lcom/txdriver/db/Order;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/txdriver/socket/handler/AbstractExternalOrderAcceptedHandler;->app:Lcom/txdriver/App;

    invoke-static {v0, p1}, Lcom/txdriver/order/OrderManager;->updateOrderStatusAndKind(Lcom/txdriver/App;Lcom/txdriver/db/Order;)V

    .line 25
    invoke-virtual {p0}, Lcom/txdriver/socket/handler/AbstractExternalOrderAcceptedHandler;->getOrderSource()Lcom/txdriver/db/Order$Source;

    move-result-object v0

    iput-object v0, p1, Lcom/txdriver/db/Order;->source:Lcom/txdriver/db/Order$Source;

    .line 26
    invoke-virtual {p1}, Lcom/txdriver/db/Order;->save()V

    .line 27
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/AbstractExternalOrderAcceptedHandler;->startOrderActivity(Lcom/txdriver/db/Order;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/AbstractExternalOrderAcceptedHandler;->notifyAccepted(Lcom/txdriver/db/Order;)V

    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/txdriver/socket/data/CurrentOrderData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/AbstractExternalOrderAcceptedHandler;->handle(Lcom/txdriver/socket/data/CurrentOrderData;)V

    return-void
.end method
