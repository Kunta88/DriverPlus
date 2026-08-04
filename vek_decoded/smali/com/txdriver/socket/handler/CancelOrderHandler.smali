.class public Lcom/txdriver/socket/handler/CancelOrderHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "CancelOrderHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/CancelOrderData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 17
    const-class v0, Lcom/txdriver/socket/data/CancelOrderData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method

.method private getReasonText(Lcom/txdriver/socket/data/CancelOrderData;)Ljava/lang/String;
    .locals 3

    .line 63
    iget-object v0, p1, Lcom/txdriver/socket/data/CancelOrderData;->reasonText:Ljava/lang/String;

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 67
    :cond_0
    iget-byte v1, p1, Lcom/txdriver/socket/data/CancelOrderData;->reasonId:B

    const/4 v2, -0x3

    if-eq v1, v2, :cond_1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 75
    iget-byte p1, p1, Lcom/txdriver/socket/data/CancelOrderData;->reasonId:B

    invoke-static {p1}, Lcom/txdriver/db/RejectReason;->getByReasonId(I)Lcom/txdriver/db/RejectReason;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 77
    iget-object v0, p1, Lcom/txdriver/db/RejectReason;->reasonText:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const p1, 0x7f10003a

    .line 69
    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/CancelOrderHandler;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private notiffyOrderCanceled(Lcom/txdriver/db/Order;Lcom/txdriver/socket/data/CancelOrderData;)V
    .locals 4

    .line 55
    invoke-direct {p0, p2}, Lcom/txdriver/socket/handler/CancelOrderHandler;->getReasonText(Lcom/txdriver/socket/data/CancelOrderData;)Ljava/lang/String;

    move-result-object p2

    const v0, 0x1040014

    .line 56
    invoke-virtual {p0, v0}, Lcom/txdriver/socket/handler/CancelOrderHandler;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f10018c

    .line 57
    invoke-virtual {p0, v1}, Lcom/txdriver/socket/handler/CancelOrderHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/txdriver/db/Order;->address:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 58
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f100265

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/CancelOrderHandler;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/4 p1, 0x1

    aput-object p2, v2, p1

    .line 57
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 59
    new-instance p2, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;

    iget-object v1, p0, Lcom/txdriver/socket/handler/CancelOrderHandler;->app:Lcom/txdriver/App;

    invoke-direct {p2, v1, v0, p1}, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;-><init>(Lcom/txdriver/App;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/txdriver/socket/handler/CancelOrderHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateOrder(Lcom/txdriver/db/Order;)Lcom/txdriver/db/Order;
    .locals 1

    if-eqz p1, :cond_0

    .line 39
    sget-object v0, Lcom/txdriver/db/Order$Status;->CANCELED:Lcom/txdriver/db/Order$Status;

    iput-object v0, p1, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    .line 40
    invoke-virtual {p1}, Lcom/txdriver/db/Order;->save()V

    :cond_0
    return-object p1
.end method

.method private updatePreferences(J)V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/txdriver/socket/handler/CancelOrderHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getCurrentOrderId()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 48
    iget-object p1, p0, Lcom/txdriver/socket/handler/CancelOrderHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/txdriver/preferences/Preferences;->setCurrentOrderId(J)V

    .line 49
    iget-object p1, p0, Lcom/txdriver/socket/handler/CancelOrderHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->stopAndReset()V

    :cond_0
    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/CancelOrderData;)V
    .locals 5

    .line 22
    iget v0, p1, Lcom/txdriver/socket/data/CancelOrderData;->orderId:I

    .line 23
    invoke-static {v0}, Lcom/txdriver/db/Order;->getOrderById(I)Lcom/txdriver/db/Order;

    move-result-object v0

    .line 24
    invoke-direct {p0, v0}, Lcom/txdriver/socket/handler/CancelOrderHandler;->updateOrder(Lcom/txdriver/db/Order;)Lcom/txdriver/db/Order;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-virtual {v0}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/txdriver/socket/handler/CancelOrderHandler;->updatePreferences(J)V

    .line 29
    invoke-direct {p0, v0, p1}, Lcom/txdriver/socket/handler/CancelOrderHandler;->notiffyOrderCanceled(Lcom/txdriver/db/Order;Lcom/txdriver/socket/data/CancelOrderData;)V

    .line 30
    iget-object p1, p0, Lcom/txdriver/socket/handler/CancelOrderHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getCurrentOrderId()J

    move-result-wide v1

    .line 31
    invoke-virtual {v0}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/txdriver/socket/handler/CancelOrderHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getVersion()I

    move-result p1

    if-gez p1, :cond_1

    .line 32
    iget-object p1, p0, Lcom/txdriver/socket/handler/CancelOrderHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/socket/Client;->reconn()V

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/txdriver/socket/handler/CancelOrderHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getOrderReminder()Lcom/txdriver/reminder/OrderReminder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/reminder/OrderReminder;->orderRemindCheck()V

    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/txdriver/socket/data/CancelOrderData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/CancelOrderHandler;->handle(Lcom/txdriver/socket/data/CancelOrderData;)V

    return-void
.end method
