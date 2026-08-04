.class public Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;
.super Ljava/util/TimerTask;
.source "AcceptOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/AcceptOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AcceptOrderActivityRunner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AcceptOrderActivityRunner"


# instance fields
.field private final acceptTimeout:I

.field private app:Lcom/txdriver/App;

.field private counter:I

.field private final notificationManager:Landroid/app/NotificationManager;

.field private order:Lcom/txdriver/db/Order;

.field private final soundManager:Lcom/txdriver/notification/SoundManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;Lcom/txdriver/db/Order;)V
    .locals 0

    .line 454
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 455
    iput-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->app:Lcom/txdriver/App;

    .line 456
    iput-object p2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->order:Lcom/txdriver/db/Order;

    const-string p2, "notification"

    .line 457
    invoke-virtual {p1, p2}, Lcom/txdriver/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->notificationManager:Landroid/app/NotificationManager;

    .line 458
    invoke-virtual {p1}, Lcom/txdriver/App;->getSoundManager()Lcom/txdriver/notification/SoundManager;

    move-result-object p2

    iput-object p2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->soundManager:Lcom/txdriver/notification/SoundManager;

    .line 459
    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p2

    invoke-virtual {p2}, Lcom/txdriver/preferences/Preferences;->getApplyOrderTimeout()I

    move-result p2

    iput p2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->acceptTimeout:I

    .line 460
    iput p2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->counter:I

    .line 461
    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;Lcom/txdriver/db/Order;I)V
    .locals 0

    .line 464
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 465
    iput-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->app:Lcom/txdriver/App;

    .line 466
    iput-object p2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->order:Lcom/txdriver/db/Order;

    const-string p2, "notification"

    .line 467
    invoke-virtual {p1, p2}, Lcom/txdriver/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->notificationManager:Landroid/app/NotificationManager;

    .line 468
    invoke-virtual {p1}, Lcom/txdriver/App;->getSoundManager()Lcom/txdriver/notification/SoundManager;

    move-result-object p2

    iput-object p2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->soundManager:Lcom/txdriver/notification/SoundManager;

    .line 469
    iput p3, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->acceptTimeout:I

    .line 470
    iput p3, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->counter:I

    .line 471
    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private playSound()V
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->soundManager:Lcom/txdriver/notification/SoundManager;

    invoke-virtual {v0}, Lcom/txdriver/notification/SoundManager;->playPersonalOrderSound()V

    return-void
.end method

.method private showNotification(Lcom/txdriver/db/Order;)V
    .locals 7

    .line 513
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const-string v2, "TxOrderNotificationChannelID"

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    .line 514
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v3, 0x4

    const-string v4, "TxOrderNotificationChannel"

    invoke-direct {v0, v2, v4, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 515
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 516
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const v3, -0xffff01

    .line 517
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 518
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 519
    iget-object v3, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 522
    :cond_0
    iget-object v0, p1, Lcom/txdriver/db/Order;->address:Ljava/lang/String;

    .line 523
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->app:Lcom/txdriver/App;

    const-class v5, Lcom/txdriver/ui/activity/AcceptOrderActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 524
    iget v4, p1, Lcom/txdriver/db/Order;->orderId:I

    const-string v5, "id_extra"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v4, 0x30040000

    .line 525
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 526
    iget-object v4, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->app:Lcom/txdriver/App;

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 527
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->app:Lcom/txdriver/App;

    invoke-direct {v4, v5, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f08009b

    .line 528
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->app:Lcom/txdriver/App;

    const v5, 0x7f100188

    .line 529
    invoke-virtual {v4, v5}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 530
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 531
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->app:Lcom/txdriver/App;

    .line 532
    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->getCompany()Lcom/txdriver/json/Company;

    move-result-object v2

    iget-object v2, v2, Lcom/txdriver/json/Company;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p1, Lcom/txdriver/db/Order;->date:Ljava/util/Date;

    .line 533
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, 0x2

    .line 534
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v2, "alarm"

    .line 535
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 536
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 537
    invoke-virtual {v0, v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 540
    iget-object v1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->notificationManager:Landroid/app/NotificationManager;

    sget-object v2, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->TAG:Ljava/lang/String;

    iget p1, p1, Lcom/txdriver/db/Order;->orderId:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 3

    .line 484
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 485
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->notificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->order:Lcom/txdriver/db/Order;

    iget v2, v2, Lcom/txdriver/db/Order;->orderId:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 486
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->soundManager:Lcom/txdriver/notification/SoundManager;

    invoke-virtual {v0}, Lcom/txdriver/notification/SoundManager;->stop()V

    const/4 v0, 0x0

    .line 487
    iput v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->counter:I

    .line 488
    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z

    move-result v0

    return v0
.end method

.method public getCounter()I
    .locals 1

    .line 475
    iget v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->counter:I

    return v0
.end method

.method public onEvent(Lcom/txdriver/service/MainService$StopEvent;)V
    .locals 0

    .line 544
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->cancel()Z

    return-void
.end method

.method public onEvent(Lcom/txdriver/socket/SocketEvents$ConnectionStateEvent;)V
    .locals 0

    .line 479
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->cancel()Z

    return-void
.end method

.method public onEvent(Lcom/txdriver/ui/activity/AcceptOrderActivity$FinishEvent;)V
    .locals 4

    .line 548
    invoke-virtual {p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity$FinishEvent;->getOrderId()J

    move-result-wide v0

    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->order:Lcom/txdriver/db/Order;

    iget p1, p1, Lcom/txdriver/db/Order;->orderId:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->cancel()Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 6

    .line 493
    iget v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->counter:I

    iget v1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->acceptTimeout:I

    if-ne v0, v1, :cond_0

    .line 494
    invoke-direct {p0}, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->playSound()V

    .line 495
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->order:Lcom/txdriver/db/Order;

    invoke-direct {p0, v0}, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->showNotification(Lcom/txdriver/db/Order;)V

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/txdriver/socket/handler/OrderHandler$OrderRejectTickEvent;

    iget-object v2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->order:Lcom/txdriver/db/Order;

    iget v2, v2, Lcom/txdriver/db/Order;->orderId:I

    int-to-long v2, v2

    iget v4, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->counter:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->counter:I

    invoke-direct {v1, v2, v3, v4}, Lcom/txdriver/socket/handler/OrderHandler$OrderRejectTickEvent;-><init>(JI)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 498
    iget v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->counter:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->order:Lcom/txdriver/db/Order;

    iget-object v0, v0, Lcom/txdriver/db/Order;->kind:Lcom/txdriver/db/Order$Kind;

    sget-object v1, Lcom/txdriver/db/Order$Kind;->BROADCAST:Lcom/txdriver/db/Order$Kind;

    if-eq v0, v1, :cond_1

    .line 499
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->order:Lcom/txdriver/db/Order;

    invoke-virtual {v0}, Lcom/txdriver/db/Order;->delete()V

    .line 500
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object v0

    new-instance v1, Lcom/txdriver/socket/packet/CancelOrderPacket;

    iget-object v2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->order:Lcom/txdriver/db/Order;

    iget v2, v2, Lcom/txdriver/db/Order;->orderId:I

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lcom/txdriver/socket/packet/CancelOrderPacket;-><init>(IB)V

    invoke-virtual {v0, v1}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    .line 501
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;->cancel()Z

    :cond_1
    return-void
.end method
