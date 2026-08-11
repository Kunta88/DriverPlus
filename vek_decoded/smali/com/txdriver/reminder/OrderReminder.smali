.class public Lcom/txdriver/reminder/OrderReminder;
.super Ljava/lang/Object;
.source "OrderReminder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/reminder/OrderReminder$OrderRemindCheckTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OrderReminder"


# instance fields
.field private app:Lcom/txdriver/App;

.field final notifiedOrders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/txdriver/db/Order;",
            ">;"
        }
    .end annotation
.end field

.field private orderRemindCheckTask:Lcom/txdriver/reminder/OrderReminder$OrderRemindCheckTask;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/txdriver/reminder/OrderReminder;->notifiedOrders:Ljava/util/Set;

    .line 32
    iput-object p1, p0, Lcom/txdriver/reminder/OrderReminder;->app:Lcom/txdriver/App;

    .line 33
    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 34
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/txdriver/reminder/OrderReminder;->timer:Ljava/util/Timer;

    return-void
.end method

.method private startRemind(Lcom/txdriver/db/Order;)V
    .locals 2

    .line 84
    new-instance v0, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;

    iget-object v1, p0, Lcom/txdriver/reminder/OrderReminder;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1, p1}, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;-><init>(Lcom/txdriver/App;Lcom/txdriver/db/Order;)V

    invoke-static {v0}, Lcom/txdriver/utils/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancelOrderRemind()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/txdriver/reminder/OrderReminder;->orderRemindCheckTask:Lcom/txdriver/reminder/OrderReminder$OrderRemindCheckTask;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/txdriver/reminder/OrderReminder$OrderRemindCheckTask;->cancel()Z

    :cond_0
    return-void
.end method

.method public onEvent(Lcom/txdriver/socket/SocketEvents$AuthEvent;)V
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/txdriver/reminder/OrderReminder;->scheduleOrderRemind()V

    return-void
.end method

.method public onEvent(Lcom/txdriver/socket/SocketEvents$ConnectionStateEvent;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/txdriver/reminder/OrderReminder;->notifiedOrders:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 55
    invoke-virtual {p0}, Lcom/txdriver/reminder/OrderReminder;->cancelOrderRemind()V

    return-void
.end method

.method public orderRemindCheck()V
    .locals 5

    .line 59
    iget-object v0, p0, Lcom/txdriver/reminder/OrderReminder;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getCurrentOrderId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_5

    iget-object v0, p0, Lcom/txdriver/reminder/OrderReminder;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->isSessionOpened()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 62
    :cond_0
    invoke-static {}, Lcom/txdriver/db/Order;->getReservedOrdersQuery()Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/db/Order;

    .line 64
    invoke-static {v1}, Lcom/txdriver/order/OrderHelper;->canStartPerforming(Lcom/txdriver/db/Order;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/txdriver/reminder/OrderReminder;->notifiedOrders:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    invoke-direct {p0, v1}, Lcom/txdriver/reminder/OrderReminder;->startRemind(Lcom/txdriver/db/Order;)V

    .line 66
    iget-object v0, p0, Lcom/txdriver/reminder/OrderReminder;->notifiedOrders:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_2
    invoke-static {}, Lcom/txdriver/db/OrderTab;->selectAll()Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/db/OrderTab;

    .line 72
    iget v1, v1, Lcom/txdriver/db/OrderTab;->tabId:I

    invoke-static {v1}, Lcom/txdriver/db/Order;->getOrdersByTabQuery(I)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v1

    .line 73
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/db/Order;

    .line 74
    new-instance v3, Lcom/txdriver/reminder/BroadcastNotification;

    iget-object v4, p0, Lcom/txdriver/reminder/OrderReminder;->app:Lcom/txdriver/App;

    invoke-direct {v3, v4, v2}, Lcom/txdriver/reminder/BroadcastNotification;-><init>(Lcom/txdriver/App;Lcom/txdriver/db/Order;)V

    .line 75
    invoke-virtual {v3}, Lcom/txdriver/reminder/BroadcastNotification;->canRunNotification()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 76
    new-instance v1, Lcom/txdriver/reminder/BroadcastNotificationRunner;

    iget-object v3, p0, Lcom/txdriver/reminder/OrderReminder;->app:Lcom/txdriver/App;

    invoke-direct {v1, v3, v2}, Lcom/txdriver/reminder/BroadcastNotificationRunner;-><init>(Lcom/txdriver/App;Lcom/txdriver/db/Order;)V

    invoke-static {v1}, Lcom/txdriver/utils/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public scheduleOrderRemind()V
    .locals 6

    .line 42
    invoke-virtual {p0}, Lcom/txdriver/reminder/OrderReminder;->cancelOrderRemind()V

    .line 43
    new-instance v1, Lcom/txdriver/reminder/OrderReminder$OrderRemindCheckTask;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/txdriver/reminder/OrderReminder$OrderRemindCheckTask;-><init>(Lcom/txdriver/reminder/OrderReminder;Lcom/txdriver/reminder/OrderReminder$1;)V

    iput-object v1, p0, Lcom/txdriver/reminder/OrderReminder;->orderRemindCheckTask:Lcom/txdriver/reminder/OrderReminder$OrderRemindCheckTask;

    .line 44
    iget-object v0, p0, Lcom/txdriver/reminder/OrderReminder;->timer:Ljava/util/Timer;

    const/16 v2, 0x1e

    invoke-static {v2}, Lcom/txdriver/utils/TimeUtils;->secondsToMilliseconds(I)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0xa

    invoke-static {v4}, Lcom/txdriver/utils/TimeUtils;->secondsToMilliseconds(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
