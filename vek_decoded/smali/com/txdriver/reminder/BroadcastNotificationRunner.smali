.class public Lcom/txdriver/reminder/BroadcastNotificationRunner;
.super Ljava/lang/Object;
.source "BroadcastNotificationRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private app:Lcom/txdriver/App;

.field private order:Lcom/txdriver/db/Order;


# direct methods
.method public constructor <init>(Lcom/txdriver/App;Lcom/txdriver/db/Order;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/txdriver/reminder/BroadcastNotificationRunner;->app:Lcom/txdriver/App;

    .line 49
    iput-object p2, p0, Lcom/txdriver/reminder/BroadcastNotificationRunner;->order:Lcom/txdriver/db/Order;

    .line 50
    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/reminder/BroadcastNotificationRunner;)Lcom/txdriver/App;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/txdriver/reminder/BroadcastNotificationRunner;->app:Lcom/txdriver/App;

    return-object p0
.end method

.method private showNotification(Lcom/txdriver/db/Order;I)V
    .locals 9

    .line 22
    iget-object v0, p0, Lcom/txdriver/reminder/BroadcastNotificationRunner;->app:Lcom/txdriver/App;

    iget v1, p1, Lcom/txdriver/db/Order;->orderId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->start(Lcom/txdriver/App;J)V

    .line 23
    new-instance v4, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;

    iget-object v0, p0, Lcom/txdriver/reminder/BroadcastNotificationRunner;->app:Lcom/txdriver/App;

    invoke-direct {v4, v0, p1, p2}, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;-><init>(Lcom/txdriver/App;Lcom/txdriver/db/Order;I)V

    .line 24
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x3e8

    .line 25
    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private showToast(Lcom/txdriver/db/Order;)V
    .locals 8

    .line 29
    iget-object v0, p1, Lcom/txdriver/db/Order;->address:Ljava/lang/String;

    .line 30
    iget-object v1, p1, Lcom/txdriver/db/Order;->destinationAddress:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/txdriver/db/Order;->destinationAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/txdriver/db/Order;->destinationAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    :cond_0
    iget-wide v1, p1, Lcom/txdriver/db/Order;->price:D

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmpl-double v7, v1, v3

    if-lez v7, :cond_1

    .line 35
    iget-object v1, p0, Lcom/txdriver/reminder/BroadcastNotificationRunner;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/preferences/Preferences;->getCurrency()Ljava/lang/String;

    move-result-object v1

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    iget-wide v3, p1, Lcom/txdriver/db/Order;->price:D

    invoke-static {v3, v4, v1}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    const-string v1, " (%s)"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v6

    .line 38
    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v0

    iget-object p1, p1, Lcom/txdriver/db/Order;->date:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "%s (%s)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 39
    new-instance v0, Lcom/txdriver/reminder/BroadcastNotificationRunner$1;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/reminder/BroadcastNotificationRunner$1;-><init>(Lcom/txdriver/reminder/BroadcastNotificationRunner;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/txdriver/utils/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private stop()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/txdriver/reminder/BroadcastNotificationRunner;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/txdriver/ui/activity/InboundMessageActivity$FinishEvent;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/txdriver/reminder/BroadcastNotificationRunner;->stop()V

    return-void
.end method

.method public run()V
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/txdriver/reminder/BroadcastNotificationRunner;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->broadcastOrderNotificationIsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/txdriver/reminder/BroadcastNotificationRunner;->order:Lcom/txdriver/db/Order;

    iget v0, v0, Lcom/txdriver/db/Order;->orderId:I

    invoke-static {v0}, Lcom/txdriver/db/OrderNotification;->getById(I)Lcom/txdriver/db/OrderNotification;

    move-result-object v0

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Lcom/txdriver/db/OrderNotification;

    iget-object v1, p0, Lcom/txdriver/reminder/BroadcastNotificationRunner;->order:Lcom/txdriver/db/Order;

    iget v1, v1, Lcom/txdriver/db/Order;->orderId:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/txdriver/db/OrderNotification;-><init>(II)V

    .line 62
    invoke-virtual {v0, v2}, Lcom/txdriver/db/OrderNotification;->save(Z)V

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/txdriver/reminder/BroadcastNotificationRunner;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/preferences/Preferences;->getTypeNotificationsForBroadcastOrder()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 66
    iget-object v1, p0, Lcom/txdriver/reminder/BroadcastNotificationRunner;->order:Lcom/txdriver/db/Order;

    invoke-direct {p0, v1}, Lcom/txdriver/reminder/BroadcastNotificationRunner;->showToast(Lcom/txdriver/db/Order;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 68
    iget-object v1, p0, Lcom/txdriver/reminder/BroadcastNotificationRunner;->order:Lcom/txdriver/db/Order;

    iget-object v3, p0, Lcom/txdriver/reminder/BroadcastNotificationRunner;->app:Lcom/txdriver/App;

    invoke-virtual {v3}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/txdriver/preferences/Preferences;->getLifetimeNotificationsForBroadcastOrder()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/txdriver/reminder/BroadcastNotificationRunner;->showNotification(Lcom/txdriver/db/Order;I)V

    .line 70
    :cond_3
    :goto_0
    const-class v1, Lcom/txdriver/db/OrderNotification;

    invoke-virtual {v0}, Lcom/txdriver/db/OrderNotification;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/txdriver/db/OrderNotification;->load(Ljava/lang/Class;J)Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/txdriver/db/OrderNotification;

    .line 71
    iget v1, v0, Lcom/txdriver/db/OrderNotification;->countNotifications:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/txdriver/db/OrderNotification;->countNotifications:I

    .line 72
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/txdriver/db/OrderNotification;->lastNotification:Ljava/util/Date;

    .line 73
    invoke-virtual {v0}, Lcom/txdriver/db/OrderNotification;->save()V

    return-void
.end method
