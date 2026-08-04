.class public Lcom/txdriver/socket/handler/UpdateOrderHandler;
.super Lcom/txdriver/socket/handler/OrderDetailsHandler;
.source "UpdateOrderHandler.java"


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/OrderDetailsHandler;-><init>(Lcom/txdriver/App;)V

    return-void
.end method

.method private notifyOrderChanged(Lcom/txdriver/db/Order;)V
    .locals 4

    const v0, 0x1040014

    .line 27
    invoke-virtual {p0, v0}, Lcom/txdriver/socket/handler/UpdateOrderHandler;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f10018e

    .line 28
    invoke-virtual {p0, v1}, Lcom/txdriver/socket/handler/UpdateOrderHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/txdriver/db/Order;->address:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 29
    new-instance v1, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;

    iget-object v2, p0, Lcom/txdriver/socket/handler/UpdateOrderHandler;->app:Lcom/txdriver/App;

    invoke-direct {v1, v2, v0, p1}, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;-><init>(Lcom/txdriver/App;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/txdriver/socket/handler/UpdateOrderHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method saveOrderDetails(Lcom/txdriver/socket/data/OrderDetailsData;)Lcom/txdriver/db/Order;
    .locals 0

    .line 19
    invoke-super {p0, p1}, Lcom/txdriver/socket/handler/OrderDetailsHandler;->saveOrderDetails(Lcom/txdriver/socket/data/OrderDetailsData;)Lcom/txdriver/db/Order;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 21
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/UpdateOrderHandler;->notifyOrderChanged(Lcom/txdriver/db/Order;)V

    :cond_0
    return-object p1
.end method
