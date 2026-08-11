.class public Lcom/txdriver/socket/handler/RestoreOrderHandler;
.super Lcom/txdriver/socket/handler/CurrentOrderHandler;
.source "RestoreOrderHandler.java"


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/CurrentOrderHandler;-><init>(Lcom/txdriver/App;)V

    return-void
.end method

.method private notifyOrderRestored(Lcom/txdriver/db/Order;)V
    .locals 4

    const v0, 0x1040014

    .line 42
    invoke-virtual {p0, v0}, Lcom/txdriver/socket/handler/RestoreOrderHandler;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f100193

    .line 43
    invoke-virtual {p0, v1}, Lcom/txdriver/socket/handler/RestoreOrderHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/txdriver/db/Order;->address:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 44
    new-instance v1, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;

    iget-object v2, p0, Lcom/txdriver/socket/handler/RestoreOrderHandler;->app:Lcom/txdriver/App;

    invoke-direct {v1, v2, v0, p1}, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;-><init>(Lcom/txdriver/App;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/txdriver/socket/handler/RestoreOrderHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startOrderActivity(Lcom/txdriver/db/Order;)V
    .locals 1

    .line 30
    new-instance v0, Lcom/txdriver/socket/handler/RestoreOrderHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/socket/handler/RestoreOrderHandler$1;-><init>(Lcom/txdriver/socket/handler/RestoreOrderHandler;Lcom/txdriver/db/Order;)V

    invoke-virtual {p0, v0}, Lcom/txdriver/socket/handler/RestoreOrderHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/CurrentOrderData;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/txdriver/socket/handler/CurrentOrderHandler;->handle(Lcom/txdriver/socket/data/CurrentOrderData;)V

    .line 23
    iget-object p1, p0, Lcom/txdriver/socket/handler/RestoreOrderHandler;->order:Lcom/txdriver/db/Order;

    if-eqz p1, :cond_0

    .line 24
    iget-object p1, p0, Lcom/txdriver/socket/handler/RestoreOrderHandler;->order:Lcom/txdriver/db/Order;

    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/RestoreOrderHandler;->startOrderActivity(Lcom/txdriver/db/Order;)V

    .line 25
    iget-object p1, p0, Lcom/txdriver/socket/handler/RestoreOrderHandler;->order:Lcom/txdriver/db/Order;

    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/RestoreOrderHandler;->notifyOrderRestored(Lcom/txdriver/db/Order;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/txdriver/socket/data/CurrentOrderData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/RestoreOrderHandler;->handle(Lcom/txdriver/socket/data/CurrentOrderData;)V

    return-void
.end method
