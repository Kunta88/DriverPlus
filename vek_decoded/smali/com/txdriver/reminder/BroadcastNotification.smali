.class public Lcom/txdriver/reminder/BroadcastNotification;
.super Ljava/lang/Object;
.source "BroadcastNotification.java"


# instance fields
.field private app:Lcom/txdriver/App;

.field private order:Lcom/txdriver/db/Order;


# direct methods
.method public constructor <init>(Lcom/txdriver/App;Lcom/txdriver/db/Order;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/txdriver/reminder/BroadcastNotification;->app:Lcom/txdriver/App;

    .line 14
    iput-object p2, p0, Lcom/txdriver/reminder/BroadcastNotification;->order:Lcom/txdriver/db/Order;

    return-void
.end method


# virtual methods
.method public canRunNotification()Z
    .locals 10

    const/4 v0, 0x0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/txdriver/reminder/BroadcastNotification;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/preferences/Preferences;->broadcastOrderNotificationIsActive()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/txdriver/reminder/BroadcastNotification;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/preferences/Preferences;->getMaxNotificationsForBroadcastOrder()I

    move-result v1

    .line 25
    iget-object v2, p0, Lcom/txdriver/reminder/BroadcastNotification;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->getPauseNotificationsForBroadcastOrder()I

    move-result v2

    .line 27
    iget-object v3, p0, Lcom/txdriver/reminder/BroadcastNotification;->order:Lcom/txdriver/db/Order;

    iget v3, v3, Lcom/txdriver/db/Order;->orderId:I

    invoke-static {v3}, Lcom/txdriver/db/OrderNotification;->getById(I)Lcom/txdriver/db/OrderNotification;

    move-result-object v3

    if-nez v3, :cond_1

    .line 29
    new-instance v3, Lcom/txdriver/db/OrderNotification;

    iget-object v4, p0, Lcom/txdriver/reminder/BroadcastNotification;->order:Lcom/txdriver/db/Order;

    iget v4, v4, Lcom/txdriver/db/Order;->orderId:I

    invoke-direct {v3, v4, v0}, Lcom/txdriver/db/OrderNotification;-><init>(II)V

    .line 30
    invoke-virtual {v3, v0}, Lcom/txdriver/db/OrderNotification;->save(Z)V

    .line 33
    :cond_1
    invoke-static {}, Lcom/txdriver/db/OrderNotification;->getLastNotification()Lcom/txdriver/db/OrderNotification;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 35
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    iget-object v7, v4, Lcom/txdriver/db/OrderNotification;->lastNotification:Ljava/util/Date;

    if-eqz v7, :cond_2

    iget-object v4, v4, Lcom/txdriver/db/OrderNotification;->lastNotification:Ljava/util/Date;

    :goto_0
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    goto :goto_0

    :goto_1
    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    .line 36
    div-long/2addr v5, v7

    long-to-int v4, v5

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 39
    :goto_2
    iget-object v5, p0, Lcom/txdriver/reminder/BroadcastNotification;->app:Lcom/txdriver/App;

    invoke-virtual {v5}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/txdriver/preferences/Preferences;->getCurrentOrderId()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_4

    iget-object v5, p0, Lcom/txdriver/reminder/BroadcastNotification;->app:Lcom/txdriver/App;

    invoke-virtual {v5}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/txdriver/preferences/Preferences;->getCurrentOrderId()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/txdriver/db/Order;->get(J)Lcom/txdriver/db/Order;

    move-result-object v5

    invoke-virtual {v5}, Lcom/txdriver/db/Order;->isOnRouteState()Z

    move-result v5

    if-nez v5, :cond_4

    return v0

    .line 43
    :cond_4
    iget v5, v3, Lcom/txdriver/db/OrderNotification;->countNotifications:I

    if-ge v5, v1, :cond_5

    if-eqz v4, :cond_7

    :cond_5
    iget v5, v3, Lcom/txdriver/db/OrderNotification;->countNotifications:I

    if-ge v5, v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    iget v3, v3, Lcom/txdriver/db/OrderNotification;->countNotifications:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v3, v1, :cond_8

    if-lt v4, v2, :cond_8

    :cond_7
    const/4 v0, 0x1

    :catch_0
    :cond_8
    return v0
.end method
