.class public Lcom/txdriver/socket/handler/OrderStateHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "OrderStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/OrderStateData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OrderStateHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 24
    const-class v0, Lcom/txdriver/socket/data/OrderStateData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method

.method private startOrderActivity(Landroid/content/Context;Lcom/txdriver/db/Order;)V
    .locals 1

    .line 54
    new-instance v0, Lcom/txdriver/socket/handler/OrderStateHandler$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/txdriver/socket/handler/OrderStateHandler$1;-><init>(Lcom/txdriver/socket/handler/OrderStateHandler;Landroid/content/Context;Lcom/txdriver/db/Order;)V

    invoke-virtual {p0, v0}, Lcom/txdriver/socket/handler/OrderStateHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/OrderStateData;)V
    .locals 3

    .line 29
    iget v0, p1, Lcom/txdriver/socket/data/OrderStateData;->orderId:I

    .line 30
    iget-byte p1, p1, Lcom/txdriver/socket/data/OrderStateData;->state:B

    .line 31
    iget-object v1, p0, Lcom/txdriver/socket/handler/OrderStateHandler;->app:Lcom/txdriver/App;

    invoke-static {v1, v0, p1}, Lcom/txdriver/order/OrderManager;->updateStatus(Lcom/txdriver/App;IB)Lcom/txdriver/db/Order;

    move-result-object v1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/txdriver/socket/handler/OrderStateHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getVersion()I

    move-result p1

    if-gez p1, :cond_1

    .line 36
    iget-object p1, p0, Lcom/txdriver/socket/handler/OrderStateHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/socket/Client;->reconn()V

    return-void

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/txdriver/socket/handler/OrderStateHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getOrderReminder()Lcom/txdriver/reminder/OrderReminder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/reminder/OrderReminder;->orderRemindCheck()V

    goto :goto_0

    .line 48
    :cond_2
    iget-object p1, p0, Lcom/txdriver/socket/handler/OrderStateHandler;->app:Lcom/txdriver/App;

    invoke-static {p1, v1}, Lcom/txdriver/taximeter/TaximeterHelper;->startTaximeter(Lcom/txdriver/App;Lcom/txdriver/db/Order;)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 42
    invoke-virtual {v1}, Lcom/txdriver/db/Order;->destinations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 43
    iget-object p1, p0, Lcom/txdriver/socket/handler/OrderStateHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    new-instance v2, Lcom/txdriver/socket/packet/OrderDetailsPacket;

    invoke-direct {v2, v0}, Lcom/txdriver/socket/packet/OrderDetailsPacket;-><init>(I)V

    invoke-virtual {p1, v2}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    .line 44
    iget-object p1, p0, Lcom/txdriver/socket/handler/OrderStateHandler;->app:Lcom/txdriver/App;

    invoke-direct {p0, p1, v1}, Lcom/txdriver/socket/handler/OrderStateHandler;->startOrderActivity(Landroid/content/Context;Lcom/txdriver/db/Order;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/txdriver/socket/data/OrderStateData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/OrderStateHandler;->handle(Lcom/txdriver/socket/data/OrderStateData;)V

    return-void
.end method
