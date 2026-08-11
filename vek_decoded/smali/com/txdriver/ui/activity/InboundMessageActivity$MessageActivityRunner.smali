.class public Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;
.super Ljava/lang/Object;
.source "InboundMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/InboundMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageActivityRunner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageActivityRunner"


# instance fields
.field private app:Lcom/txdriver/App;

.field private final notificationManager:Landroid/app/NotificationManager;

.field private final soundManager:Lcom/txdriver/notification/SoundManager;

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->app:Lcom/txdriver/App;

    .line 93
    iput-object p2, p0, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->text:Ljava/lang/String;

    const-string p2, "notification"

    .line 94
    invoke-virtual {p1, p2}, Lcom/txdriver/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->notificationManager:Landroid/app/NotificationManager;

    .line 95
    invoke-virtual {p1}, Lcom/txdriver/App;->getSoundManager()Lcom/txdriver/notification/SoundManager;

    move-result-object p2

    iput-object p2, p0, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->soundManager:Lcom/txdriver/notification/SoundManager;

    .line 96
    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private showNotification(Ljava/lang/String;)V
    .locals 4

    .line 115
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->app:Lcom/txdriver/App;

    const-class v2, Lcom/txdriver/ui/activity/InboundMessageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "message_extra"

    .line 116
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->app:Lcom/txdriver/App;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 119
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->app:Lcom/txdriver/App;

    invoke-direct {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08009b

    .line 120
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->app:Lcom/txdriver/App;

    const v3, 0x7f1000f2

    .line 121
    invoke-virtual {v2, v3}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 122
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 123
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->app:Lcom/txdriver/App;

    .line 124
    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->getCompany()Lcom/txdriver/json/Company;

    move-result-object v2

    iget-object v2, v2, Lcom/txdriver/json/Company;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 126
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->notificationManager:Landroid/app/NotificationManager;

    sget-object v2, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v1, v2, p1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private stop()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->notificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 141
    iget-object v0, p0, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->soundManager:Lcom/txdriver/notification/SoundManager;

    invoke-virtual {v0}, Lcom/txdriver/notification/SoundManager;->stop()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/txdriver/service/MainService$StopEvent;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->stop()V

    return-void
.end method

.method public onEvent(Lcom/txdriver/ui/activity/InboundMessageActivity$FinishEvent;)V
    .locals 1

    .line 132
    invoke-virtual {p1}, Lcom/txdriver/ui/activity/InboundMessageActivity$FinishEvent;->getText()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->stop()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->startActivity()V

    .line 102
    iget-object v0, p0, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->soundManager:Lcom/txdriver/notification/SoundManager;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/txdriver/notification/SoundManager;->playNotificationSound(I)V

    .line 103
    iget-object v0, p0, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->text:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->showNotification(Ljava/lang/String;)V

    return-void
.end method

.method public startActivity()V
    .locals 3

    .line 107
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->app:Lcom/txdriver/App;

    const-class v2, Lcom/txdriver/ui/activity/InboundMessageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    iget-object v1, p0, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->text:Ljava/lang/String;

    const-string v2, "message_extra"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;->app:Lcom/txdriver/App;

    invoke-virtual {v1, v0}, Lcom/txdriver/App;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
