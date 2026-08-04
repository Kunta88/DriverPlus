.class public Lcom/txdriver/socket/handler/AcceptOrderDelegate;
.super Ljava/lang/Object;
.source "AcceptOrderDelegate.java"


# instance fields
.field private app:Lcom/txdriver/App;


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/txdriver/socket/handler/AcceptOrderDelegate;->app:Lcom/txdriver/App;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/socket/handler/AcceptOrderDelegate;)Lcom/txdriver/App;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/txdriver/socket/handler/AcceptOrderDelegate;->app:Lcom/txdriver/App;

    return-object p0
.end method

.method private handleFailResult(I)V
    .locals 2

    .line 59
    invoke-static {p1}, Lcom/txdriver/db/Order;->getOrderById(I)Lcom/txdriver/db/Order;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v0, p1, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    sget-object v1, Lcom/txdriver/db/Order$Status;->AUTO_ACCEPTING:Lcom/txdriver/db/Order$Status;

    if-ne v0, v1, :cond_1

    .line 64
    sget-object v0, Lcom/txdriver/db/Order$Status;->NEW:Lcom/txdriver/db/Order$Status;

    iput-object v0, p1, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    .line 65
    invoke-virtual {p1}, Lcom/txdriver/db/Order;->save()V

    return-void

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/txdriver/socket/handler/AcceptOrderDelegate;->app:Lcom/txdriver/App;

    const v0, 0x7f100174

    invoke-virtual {p1, v0}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private notifyAccepted(Lcom/txdriver/db/Order;)V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/txdriver/socket/handler/AcceptOrderDelegate;->app:Lcom/txdriver/App;

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/txdriver/socket/handler/AcceptOrderDelegate;->app:Lcom/txdriver/App;

    const v2, 0x7f10018b

    invoke-virtual {v1, v2}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/txdriver/db/Order;->address:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 86
    new-instance v1, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;

    iget-object v2, p0, Lcom/txdriver/socket/handler/AcceptOrderDelegate;->app:Lcom/txdriver/App;

    invoke-direct {v1, v2, v0, p1}, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;-><init>(Lcom/txdriver/App;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/txdriver/utils/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startOrderActivity(Lcom/txdriver/db/Order;)V
    .locals 1

    .line 72
    new-instance v0, Lcom/txdriver/socket/handler/AcceptOrderDelegate$1;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/socket/handler/AcceptOrderDelegate$1;-><init>(Lcom/txdriver/socket/handler/AcceptOrderDelegate;Lcom/txdriver/db/Order;)V

    invoke-static {v0}, Lcom/txdriver/utils/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public handle(II)Lcom/txdriver/db/Order;
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/AcceptOrderDelegate;->handleFailResult(I)V

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/AcceptOrderDelegate;->handleOkResult(I)Lcom/txdriver/db/Order;

    move-result-object p1

    .line 37
    :goto_1
    iget-object p2, p0, Lcom/txdriver/socket/handler/AcceptOrderDelegate;->app:Lcom/txdriver/App;

    invoke-virtual {p2}, Lcom/txdriver/App;->getOrderAcceptManager()Lcom/txdriver/filter/OrderAcceptManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/txdriver/filter/OrderAcceptManager;->accept()V

    return-object p1
.end method

.method handleOkResult(I)Lcom/txdriver/db/Order;
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/txdriver/socket/handler/AcceptOrderDelegate;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setTakeBreak(Z)V

    .line 43
    invoke-static {p1}, Lcom/txdriver/db/Order;->getOrderById(I)Lcom/txdriver/db/Order;

    move-result-object p1

    if-nez p1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/txdriver/socket/handler/AcceptOrderDelegate;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/socket/Client;->reconn()V

    const/4 p1, 0x0

    return-object p1

    .line 48
    :cond_0
    iget-object v0, p1, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    sget-object v2, Lcom/txdriver/db/Order$Status;->AUTO_ACCEPTING:Lcom/txdriver/db/Order$Status;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/txdriver/socket/handler/AcceptOrderDelegate;->app:Lcom/txdriver/App;

    invoke-static {v0, p1}, Lcom/txdriver/order/OrderManager;->updateOrderStatusAndKind(Lcom/txdriver/App;Lcom/txdriver/db/Order;)V

    .line 50
    invoke-virtual {p1}, Lcom/txdriver/db/Order;->save()V

    .line 51
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/AcceptOrderDelegate;->startOrderActivity(Lcom/txdriver/db/Order;)V

    if-eqz v1, :cond_2

    .line 53
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/AcceptOrderDelegate;->notifyAccepted(Lcom/txdriver/db/Order;)V

    :cond_2
    return-object p1
.end method
