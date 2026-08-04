.class public Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;
.super Ljava/lang/Object;
.source "NotificationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/NotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationActivityRunner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationActivityRunner"


# instance fields
.field private app:Lcom/txdriver/App;

.field private message:Ljava/lang/String;

.field private final notificationManager:Landroid/app/NotificationManager;

.field private soundDuration:I

.field private final soundManager:Lcom/txdriver/notification/SoundManager;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x3c

    .line 76
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;-><init>(Lcom/txdriver/App;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->app:Lcom/txdriver/App;

    .line 81
    iput-object p2, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->title:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->message:Ljava/lang/String;

    .line 83
    iput p4, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->soundDuration:I

    const-string p2, "notification"

    .line 84
    invoke-virtual {p1, p2}, Lcom/txdriver/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->notificationManager:Landroid/app/NotificationManager;

    .line 85
    invoke-virtual {p1}, Lcom/txdriver/App;->getSoundManager()Lcom/txdriver/notification/SoundManager;

    move-result-object p2

    iput-object p2, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->soundManager:Lcom/txdriver/notification/SoundManager;

    .line 86
    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private showNotification()V
    .locals 4

    .line 105
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->app:Lcom/txdriver/App;

    const-class v2, Lcom/txdriver/ui/activity/NotificationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    iget-object v1, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->title:Ljava/lang/String;

    const-string v2, "title_extra"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->message:Ljava/lang/String;

    const-string v2, "message_extra"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    iget-object v1, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->app:Lcom/txdriver/App;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 110
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->app:Lcom/txdriver/App;

    invoke-direct {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08009b

    .line 111
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->title:Ljava/lang/String;

    .line 112
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->title:Ljava/lang/String;

    .line 113
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->message:Ljava/lang/String;

    .line 114
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->app:Lcom/txdriver/App;

    .line 115
    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->getCompany()Lcom/txdriver/json/Company;

    move-result-object v2

    iget-object v2, v2, Lcom/txdriver/json/Company;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 117
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->notificationManager:Landroid/app/NotificationManager;

    sget-object v2, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->message:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private startActivity()V
    .locals 3

    .line 97
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->app:Lcom/txdriver/App;

    const-class v2, Lcom/txdriver/ui/activity/NotificationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    iget-object v1, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->title:Ljava/lang/String;

    const-string v2, "title_extra"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v1, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->message:Ljava/lang/String;

    const-string v2, "message_extra"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->app:Lcom/txdriver/App;

    invoke-virtual {v1, v0}, Lcom/txdriver/App;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private stop()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->notificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 132
    iget-object v0, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->soundManager:Lcom/txdriver/notification/SoundManager;

    invoke-virtual {v0}, Lcom/txdriver/notification/SoundManager;->stop()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/txdriver/service/MainService$StopEvent;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->stop()V

    return-void
.end method

.method public onEvent(Lcom/txdriver/ui/activity/NotificationActivity$FinishEvent;)V
    .locals 1

    .line 123
    invoke-virtual {p1}, Lcom/txdriver/ui/activity/NotificationActivity$FinishEvent;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->stop()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 91
    invoke-direct {p0}, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->startActivity()V

    .line 92
    invoke-direct {p0}, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->showNotification()V

    .line 93
    iget-object v0, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->soundManager:Lcom/txdriver/notification/SoundManager;

    iget v1, p0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;->soundDuration:I

    invoke-virtual {v0, v1}, Lcom/txdriver/notification/SoundManager;->playNotificationSound(I)V

    return-void
.end method
