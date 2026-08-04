.class public Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;
.super Ljava/lang/Object;
.source "DriverInDangerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/DriverInDangerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DriverInDangerActivityRunner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DriverInDangerActivityRunner"


# instance fields
.field private app:Lcom/txdriver/App;

.field private driverData:Lcom/txdriver/socket/data/DriverInDangerData;

.field private driverStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final notificationManager:Landroid/app/NotificationManager;

.field private final soundManager:Lcom/txdriver/notification/SoundManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;Lcom/txdriver/socket/data/DriverInDangerData;)V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner$1;-><init>(Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->driverStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    iput-object p1, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->app:Lcom/txdriver/App;

    .line 119
    iput-object p2, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->driverData:Lcom/txdriver/socket/data/DriverInDangerData;

    const-string p2, "notification"

    .line 120
    invoke-virtual {p1, p2}, Lcom/txdriver/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->notificationManager:Landroid/app/NotificationManager;

    .line 121
    invoke-virtual {p1}, Lcom/txdriver/App;->getSoundManager()Lcom/txdriver/notification/SoundManager;

    move-result-object p2

    iput-object p2, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->soundManager:Lcom/txdriver/notification/SoundManager;

    .line 122
    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 123
    invoke-direct {p0}, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->registerDriverStatusBroadcastReceiver()V

    return-void
.end method

.method static synthetic access$100(Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;)Lcom/txdriver/socket/data/DriverInDangerData;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->driverData:Lcom/txdriver/socket/data/DriverInDangerData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->stop()V

    return-void
.end method

.method private registerDriverStatusBroadcastReceiver()V
    .locals 3

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "action_received_driver_status"

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->app:Lcom/txdriver/App;

    iget-object v2, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->driverStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/txdriver/App;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private showNotification()V
    .locals 6

    .line 147
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->driverData:Lcom/txdriver/socket/data/DriverInDangerData;

    iget v2, v2, Lcom/txdriver/socket/data/DriverInDangerData;->driverId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->app:Lcom/txdriver/App;

    const v4, 0x7f100057

    invoke-virtual {v2, v4}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "%d %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->app:Lcom/txdriver/App;

    const v2, 0x7f1000b2

    invoke-virtual {v1, v2}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->app:Lcom/txdriver/App;

    const-class v5, Lcom/txdriver/ui/activity/DriverInDangerActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    iget-object v4, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->driverData:Lcom/txdriver/socket/data/DriverInDangerData;

    const-string v5, "driver_extra"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v4, 0x10008000

    .line 151
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 152
    iget-object v4, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->app:Lcom/txdriver/App;

    const/high16 v5, 0x8000000

    invoke-static {v4, v3, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 153
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->app:Lcom/txdriver/App;

    invoke-direct {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f08009b

    .line 154
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 155
    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 156
    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 157
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->app:Lcom/txdriver/App;

    .line 158
    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/preferences/Preferences;->getCompany()Lcom/txdriver/json/Company;

    move-result-object v1

    iget-object v1, v1, Lcom/txdriver/json/Company;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->notificationManager:Landroid/app/NotificationManager;

    sget-object v2, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->driverData:Lcom/txdriver/socket/data/DriverInDangerData;

    iget v3, v3, Lcom/txdriver/socket/data/DriverInDangerData;->driverId:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private stop()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->notificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->driverData:Lcom/txdriver/socket/data/DriverInDangerData;

    iget v2, v2, Lcom/txdriver/socket/data/DriverInDangerData;->driverId:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 175
    iget-object v0, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->soundManager:Lcom/txdriver/notification/SoundManager;

    invoke-virtual {v0}, Lcom/txdriver/notification/SoundManager;->stop()V

    .line 176
    iget-object v0, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->app:Lcom/txdriver/App;

    iget-object v1, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->driverStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/txdriver/App;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/txdriver/service/MainService$StopEvent;)V
    .locals 0

    .line 180
    invoke-direct {p0}, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->stop()V

    return-void
.end method

.method public onEvent(Lcom/txdriver/ui/activity/DriverInDangerActivity$FinishEvent;)V
    .locals 1

    .line 166
    invoke-virtual {p1}, Lcom/txdriver/ui/activity/DriverInDangerActivity$FinishEvent;->getDriverData()Lcom/txdriver/socket/data/DriverInDangerData;

    move-result-object p1

    iget p1, p1, Lcom/txdriver/socket/data/DriverInDangerData;->driverId:I

    iget-object v0, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->driverData:Lcom/txdriver/socket/data/DriverInDangerData;

    iget v0, v0, Lcom/txdriver/socket/data/DriverInDangerData;->driverId:I

    if-eq p1, v0, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->stop()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->startActivity()V

    .line 135
    invoke-direct {p0}, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->showNotification()V

    .line 136
    iget-object v0, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->soundManager:Lcom/txdriver/notification/SoundManager;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/txdriver/notification/SoundManager;->playNotificationSound(I)V

    return-void
.end method

.method public startActivity()V
    .locals 3

    .line 140
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->app:Lcom/txdriver/App;

    const-class v2, Lcom/txdriver/ui/activity/DriverInDangerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    iget-object v1, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->driverData:Lcom/txdriver/socket/data/DriverInDangerData;

    const-string v2, "driver_extra"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->app:Lcom/txdriver/App;

    invoke-virtual {v1, v0}, Lcom/txdriver/App;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
