.class public Lcom/txdriver/socket/handler/OrderHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "OrderHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/socket/handler/OrderHandler$OrderRejectTickEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/CommonOrderData;",
        ">;"
    }
.end annotation


# instance fields
.field private acceptTask:Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;

.field private final timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 22
    const-class v0, Lcom/txdriver/socket/data/CommonOrderData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    .line 23
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/txdriver/socket/handler/OrderHandler;->timer:Ljava/util/Timer;

    return-void
.end method

.method private startActivity(J)V
    .locals 1

    .line 37
    new-instance v0, Lcom/txdriver/socket/handler/OrderHandler$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/txdriver/socket/handler/OrderHandler$1;-><init>(Lcom/txdriver/socket/handler/OrderHandler;J)V

    invoke-virtual {p0, v0}, Lcom/txdriver/socket/handler/OrderHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startTask(Lcom/txdriver/db/Order;)V
    .locals 6

    .line 46
    new-instance v1, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;

    iget-object v0, p0, Lcom/txdriver/socket/handler/OrderHandler;->app:Lcom/txdriver/App;

    invoke-direct {v1, v0, p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;-><init>(Lcom/txdriver/App;Lcom/txdriver/db/Order;)V

    iput-object v1, p0, Lcom/txdriver/socket/handler/OrderHandler;->acceptTask:Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;

    .line 47
    iget-object v0, p0, Lcom/txdriver/socket/handler/OrderHandler;->timer:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/CommonOrderData;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/txdriver/socket/handler/OrderHandler;->app:Lcom/txdriver/App;

    sget-object v1, Lcom/txdriver/db/Order$Kind;->NONE:Lcom/txdriver/db/Order$Kind;

    invoke-static {v0, p1, v1}, Lcom/txdriver/order/OrderManager;->createOrder(Lcom/txdriver/App;Lcom/txdriver/socket/data/OrderData;Lcom/txdriver/db/Order$Kind;)Lcom/txdriver/db/Order;

    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/txdriver/socket/handler/OrderHandler;->acceptTask:Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->getCounter()I

    move-result v0

    if-nez v0, :cond_1

    .line 30
    :cond_0
    iget v0, p1, Lcom/txdriver/db/Order;->orderId:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/txdriver/socket/handler/OrderHandler;->startActivity(J)V

    .line 32
    :cond_1
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/OrderHandler;->startTask(Lcom/txdriver/db/Order;)V

    .line 33
    iget-object p1, p0, Lcom/txdriver/socket/handler/OrderHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/txdriver/preferences/Preferences;->setTakeBreak(Z)V

    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/txdriver/socket/data/CommonOrderData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/OrderHandler;->handle(Lcom/txdriver/socket/data/CommonOrderData;)V

    return-void
.end method
