.class public abstract Lcom/txdriver/socket/handler/AbstractOrderPacketHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "AbstractOrderPacketHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/txdriver/socket/data/OrderData;",
        ">",
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractOrderPacketHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;Lorg/msgpack/template/Template;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/App;",
            "Lorg/msgpack/template/Template<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Lorg/msgpack/template/Template;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/AbstractOrderPacketHandler;->handle(Ljava/util/List;)V

    return-void
.end method

.method public handle(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iget-object v2, v0, Lcom/txdriver/socket/handler/AbstractOrderPacketHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 36
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/txdriver/socket/data/OrderData;

    .line 38
    new-instance v5, Lcom/txdriver/filter/BroadcastOrderFilter;

    iget-object v6, v0, Lcom/txdriver/socket/handler/AbstractOrderPacketHandler;->app:Lcom/txdriver/App;

    invoke-direct {v5, v6, v4}, Lcom/txdriver/filter/BroadcastOrderFilter;-><init>(Lcom/txdriver/App;Lcom/txdriver/socket/data/OrderData;)V

    .line 39
    invoke-virtual {v5}, Lcom/txdriver/filter/BroadcastOrderFilter;->isFilter()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 40
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_1
    invoke-static {}, Lcom/txdriver/db/Order;->getCurrentOrder()Lcom/txdriver/db/Order;

    move-result-object v6

    .line 44
    invoke-interface {v4}, Lcom/txdriver/socket/data/OrderData;->isAcceptable()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lcom/txdriver/filter/BroadcastOrderFilter;->isAutoAccept()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v6, :cond_2

    .line 45
    iget-object v5, v0, Lcom/txdriver/socket/handler/AbstractOrderPacketHandler;->app:Lcom/txdriver/App;

    sget-object v6, Lcom/txdriver/db/Order$Status;->AUTO_ACCEPTING:Lcom/txdriver/db/Order$Status;

    sget-object v7, Lcom/txdriver/db/Order$Kind;->BROADCAST:Lcom/txdriver/db/Order$Kind;

    invoke-static {v5, v4, v6, v7, v8}, Lcom/txdriver/order/OrderManager;->createOrder(Lcom/txdriver/App;Lcom/txdriver/socket/data/OrderData;Lcom/txdriver/db/Order$Status;Lcom/txdriver/db/Order$Kind;Z)Lcom/txdriver/db/Order;

    move-result-object v4

    .line 46
    invoke-static {v4}, Lcom/txdriver/order/OrderHelper;->canStartPerforming(Lcom/txdriver/db/Order;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 47
    iget-object v5, v0, Lcom/txdriver/socket/handler/AbstractOrderPacketHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v5}, Lcom/txdriver/App;->getOrderAcceptManager()Lcom/txdriver/filter/OrderAcceptManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/txdriver/filter/OrderAcceptManager;->add(Lcom/txdriver/db/Order;)V

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v5}, Lcom/txdriver/filter/BroadcastOrderFilter;->isFilterEnabled()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 51
    iget-object v5, v0, Lcom/txdriver/socket/handler/AbstractOrderPacketHandler;->app:Lcom/txdriver/App;

    sget-object v7, Lcom/txdriver/db/Order$Kind;->BROADCAST:Lcom/txdriver/db/Order$Kind;

    invoke-static {v5, v4, v7, v8}, Lcom/txdriver/order/OrderManager;->createOrder(Lcom/txdriver/App;Lcom/txdriver/socket/data/OrderData;Lcom/txdriver/db/Order$Kind;Z)Lcom/txdriver/db/Order;

    move-result-object v4

    .line 52
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 53
    new-instance v5, Lcom/txdriver/reminder/BroadcastNotification;

    iget-object v6, v0, Lcom/txdriver/socket/handler/AbstractOrderPacketHandler;->app:Lcom/txdriver/App;

    invoke-direct {v5, v6, v4}, Lcom/txdriver/reminder/BroadcastNotification;-><init>(Lcom/txdriver/App;Lcom/txdriver/db/Order;)V

    .line 54
    invoke-virtual {v5}, Lcom/txdriver/reminder/BroadcastNotification;->canRunNotification()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    new-instance v5, Lcom/txdriver/reminder/BroadcastNotificationRunner;

    iget-object v6, v0, Lcom/txdriver/socket/handler/AbstractOrderPacketHandler;->app:Lcom/txdriver/App;

    invoke-direct {v5, v6, v4}, Lcom/txdriver/reminder/BroadcastNotificationRunner;-><init>(Lcom/txdriver/App;Lcom/txdriver/db/Order;)V

    invoke-virtual {v0, v5}, Lcom/txdriver/socket/handler/AbstractOrderPacketHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_4

    .line 60
    iget-object v5, v0, Lcom/txdriver/socket/handler/AbstractOrderPacketHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v5}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/txdriver/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 61
    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    invoke-interface {v4}, Lcom/txdriver/socket/data/OrderData;->getLat()D

    move-result-wide v13

    invoke-interface {v4}, Lcom/txdriver/socket/data/OrderData;->getLng()D

    move-result-wide v15

    invoke-static/range {v9 .. v16}, Lcom/txdriver/location/LocationUtils;->distanceBetween(DDDD)D

    move-result-wide v9

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v11, v5

    cmpl-double v5, v9, v11

    if-lez v5, :cond_4

    goto/16 :goto_0

    .line 66
    :cond_4
    iget-object v5, v0, Lcom/txdriver/socket/handler/AbstractOrderPacketHandler;->app:Lcom/txdriver/App;

    sget-object v7, Lcom/txdriver/db/Order$Kind;->BROADCAST:Lcom/txdriver/db/Order$Kind;

    invoke-static {v5, v4, v7, v8}, Lcom/txdriver/order/OrderManager;->createOrder(Lcom/txdriver/App;Lcom/txdriver/socket/data/OrderData;Lcom/txdriver/db/Order$Kind;Z)Lcom/txdriver/db/Order;

    move-result-object v4

    .line 67
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 68
    new-instance v5, Lcom/txdriver/reminder/BroadcastNotification;

    iget-object v6, v0, Lcom/txdriver/socket/handler/AbstractOrderPacketHandler;->app:Lcom/txdriver/App;

    invoke-direct {v5, v6, v4}, Lcom/txdriver/reminder/BroadcastNotification;-><init>(Lcom/txdriver/App;Lcom/txdriver/db/Order;)V

    .line 69
    invoke-virtual {v5}, Lcom/txdriver/reminder/BroadcastNotification;->canRunNotification()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    new-instance v5, Lcom/txdriver/reminder/BroadcastNotificationRunner;

    iget-object v6, v0, Lcom/txdriver/socket/handler/AbstractOrderPacketHandler;->app:Lcom/txdriver/App;

    invoke-direct {v5, v6, v4}, Lcom/txdriver/reminder/BroadcastNotificationRunner;-><init>(Lcom/txdriver/App;Lcom/txdriver/db/Order;)V

    invoke-virtual {v0, v5}, Lcom/txdriver/socket/handler/AbstractOrderPacketHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 76
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v2, v1, :cond_7

    .line 77
    const-class v1, Lcom/txdriver/db/Order;

    invoke-static {v1}, Lcom/txdriver/db/Order;->notifyChanged(Ljava/lang/Class;)V

    .line 78
    invoke-static {}, Lcom/txdriver/db/Order;->getCurrentOrder()Lcom/txdriver/db/Order;

    move-result-object v1

    .line 79
    iget-object v2, v0, Lcom/txdriver/socket/handler/AbstractOrderPacketHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v1, :cond_6

    return-void

    .line 82
    :cond_6
    new-instance v1, Lcom/txdriver/notification/SoundManager;

    iget-object v2, v0, Lcom/txdriver/socket/handler/AbstractOrderPacketHandler;->app:Lcom/txdriver/App;

    invoke-direct {v1, v2}, Lcom/txdriver/notification/SoundManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/txdriver/notification/SoundManager;->playBroadcastSound()V

    .line 84
    :cond_7
    iget-object v1, v0, Lcom/txdriver/socket/handler/AbstractOrderPacketHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getOrderAcceptManager()Lcom/txdriver/filter/OrderAcceptManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/filter/OrderAcceptManager;->accept()V

    return-void
.end method
