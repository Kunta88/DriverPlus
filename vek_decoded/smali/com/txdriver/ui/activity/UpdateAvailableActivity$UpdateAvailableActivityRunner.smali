.class public Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;
.super Ljava/lang/Object;
.source "UpdateAvailableActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/UpdateAvailableActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateAvailableActivityRunner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateAvailableActivityRunner"


# instance fields
.field private app:Lcom/txdriver/App;

.field private config:Lcom/txdriver/json/AppConfig;

.field private final notificationManager:Landroid/app/NotificationManager;

.field private final soundManager:Lcom/txdriver/notification/SoundManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;Lcom/txdriver/json/AppConfig;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;->app:Lcom/txdriver/App;

    .line 91
    iput-object p2, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;->config:Lcom/txdriver/json/AppConfig;

    const-string p2, "notification"

    .line 92
    invoke-virtual {p1, p2}, Lcom/txdriver/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;->notificationManager:Landroid/app/NotificationManager;

    .line 93
    invoke-virtual {p1}, Lcom/txdriver/App;->getSoundManager()Lcom/txdriver/notification/SoundManager;

    move-result-object p2

    iput-object p2, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;->soundManager:Lcom/txdriver/notification/SoundManager;

    .line 94
    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private showNotification()V
    .locals 6

    .line 112
    iget-object v0, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;->app:Lcom/txdriver/App;

    const v1, 0x7f100267

    invoke-virtual {v0, v1}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 113
    iget-object v3, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;->app:Lcom/txdriver/App;

    const v4, 0x7f100035

    invoke-virtual {v3, v4}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "%s %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 114
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;->app:Lcom/txdriver/App;

    const-class v5, Lcom/txdriver/ui/activity/InboundMessageActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    iget-object v4, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;->config:Lcom/txdriver/json/AppConfig;

    const-string v5, "config_extra"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v4, 0x10008000

    .line 116
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 117
    iget-object v4, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;->app:Lcom/txdriver/App;

    const/high16 v5, 0x8000000

    invoke-static {v4, v2, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 118
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;->app:Lcom/txdriver/App;

    invoke-direct {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f08009b

    .line 119
    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 120
    invoke-virtual {v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 121
    invoke-virtual {v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;->app:Lcom/txdriver/App;

    .line 123
    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/preferences/Preferences;->getCompany()Lcom/txdriver/json/Company;

    move-result-object v1

    iget-object v1, v1, Lcom/txdriver/json/Company;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;->notificationManager:Landroid/app/NotificationManager;

    sget-object v3, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private stop()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;->notificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 137
    iget-object v0, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;->soundManager:Lcom/txdriver/notification/SoundManager;

    invoke-virtual {v0}, Lcom/txdriver/notification/SoundManager;->stop()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/txdriver/service/MainService$StopEvent;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;->stop()V

    return-void
.end method

.method public onEvent(Lcom/txdriver/ui/activity/UpdateAvailableActivity$FinishEvent;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;->stop()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;->startActivity()V

    .line 100
    iget-object v0, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;->soundManager:Lcom/txdriver/notification/SoundManager;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/txdriver/notification/SoundManager;->playNotificationSound(I)V

    .line 101
    invoke-direct {p0}, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;->showNotification()V

    return-void
.end method

.method public startActivity()V
    .locals 3

    .line 105
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;->app:Lcom/txdriver/App;

    const-class v2, Lcom/txdriver/ui/activity/UpdateAvailableActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    iget-object v1, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;->config:Lcom/txdriver/json/AppConfig;

    const-string v2, "config_extra"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;->app:Lcom/txdriver/App;

    invoke-virtual {v1, v0}, Lcom/txdriver/App;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
