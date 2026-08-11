.class public Lcom/txdriver/socket/handler/BankCardPaymentStateHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "BankCardPaymentStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/BankCardPaymentStateData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 16
    const-class v0, Lcom/txdriver/socket/data/BankCardPaymentStateData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method

.method private notifyPaymentFailed()V
    .locals 4

    const v0, 0x1040014

    .line 39
    invoke-virtual {p0, v0}, Lcom/txdriver/socket/handler/BankCardPaymentStateHandler;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1000d7

    .line 40
    invoke-virtual {p0, v1}, Lcom/txdriver/socket/handler/BankCardPaymentStateHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    new-instance v2, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;

    iget-object v3, p0, Lcom/txdriver/socket/handler/BankCardPaymentStateHandler;->app:Lcom/txdriver/App;

    invoke-direct {v2, v3, v0, v1}, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;-><init>(Lcom/txdriver/App;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/txdriver/socket/handler/BankCardPaymentStateHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyPaymentProcessed()V
    .locals 5

    const v0, 0x7f100191

    .line 45
    invoke-virtual {p0, v0}, Lcom/txdriver/socket/handler/BankCardPaymentStateHandler;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f10024b

    .line 46
    invoke-virtual {p0, v1}, Lcom/txdriver/socket/handler/BankCardPaymentStateHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    new-instance v2, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;

    iget-object v3, p0, Lcom/txdriver/socket/handler/BankCardPaymentStateHandler;->app:Lcom/txdriver/App;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;-><init>(Lcom/txdriver/App;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Lcom/txdriver/socket/handler/BankCardPaymentStateHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/BankCardPaymentStateData;)V
    .locals 2

    .line 21
    iget v0, p1, Lcom/txdriver/socket/data/BankCardPaymentStateData;->orderId:I

    .line 22
    iget-byte p1, p1, Lcom/txdriver/socket/data/BankCardPaymentStateData;->state:B

    .line 23
    invoke-static {v0}, Lcom/txdriver/db/Order;->getOrderById(I)Lcom/txdriver/db/Order;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {p1}, Lcom/txdriver/db/Order$BankCardPaymentState;->get(I)Lcom/txdriver/db/Order$BankCardPaymentState;

    move-result-object v1

    iput-object v1, v0, Lcom/txdriver/db/Order;->bankCardPaymentState:Lcom/txdriver/db/Order$BankCardPaymentState;

    .line 26
    invoke-virtual {v0}, Lcom/txdriver/db/Order;->save()V

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    invoke-direct {p0}, Lcom/txdriver/socket/handler/BankCardPaymentStateHandler;->notifyPaymentFailed()V

    goto :goto_0

    .line 33
    :cond_2
    invoke-direct {p0}, Lcom/txdriver/socket/handler/BankCardPaymentStateHandler;->notifyPaymentProcessed()V

    :goto_0
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/txdriver/socket/data/BankCardPaymentStateData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/BankCardPaymentStateHandler;->handle(Lcom/txdriver/socket/data/BankCardPaymentStateData;)V

    return-void
.end method
