.class public Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;
.super Ljava/lang/Object;
.source "InboundQuestionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/InboundQuestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuestionActivityRunner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private app:Lcom/txdriver/App;

.field private final notificationManager:Landroid/app/NotificationManager;

.field private question:Lcom/txdriver/db/Question;

.field private final soundManager:Lcom/txdriver/notification/SoundManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    const-class v0, Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;Lcom/txdriver/db/Question;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->app:Lcom/txdriver/App;

    .line 113
    iput-object p2, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->question:Lcom/txdriver/db/Question;

    const-string p2, "notification"

    .line 114
    invoke-virtual {p1, p2}, Lcom/txdriver/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->notificationManager:Landroid/app/NotificationManager;

    .line 115
    invoke-virtual {p1}, Lcom/txdriver/App;->getSoundManager()Lcom/txdriver/notification/SoundManager;

    move-result-object p2

    iput-object p2, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->soundManager:Lcom/txdriver/notification/SoundManager;

    .line 116
    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private showNotification(Lcom/txdriver/db/Question;)V
    .locals 5

    .line 134
    iget-object v0, p1, Lcom/txdriver/db/Question;->text:Ljava/lang/String;

    .line 135
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->app:Lcom/txdriver/App;

    const-class v3, Lcom/txdriver/ui/activity/InboundQuestionActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    invoke-virtual {p1}, Lcom/txdriver/db/Question;->getId()Ljava/lang/Long;

    move-result-object v2

    const-string v3, "id_extra"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const v2, 0x10008000

    .line 137
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 138
    iget-object v2, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->app:Lcom/txdriver/App;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 139
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->app:Lcom/txdriver/App;

    invoke-direct {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08009b

    .line 140
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->app:Lcom/txdriver/App;

    const v4, 0x7f1000f3

    .line 141
    invoke-virtual {v3, v4}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 142
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 143
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->app:Lcom/txdriver/App;

    .line 144
    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->getCompany()Lcom/txdriver/json/Company;

    move-result-object v2

    iget-object v2, v2, Lcom/txdriver/json/Company;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 146
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->notificationManager:Landroid/app/NotificationManager;

    sget-object v2, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/txdriver/db/Question;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-virtual {v1, v2, p1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private stop()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->notificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->question:Lcom/txdriver/db/Question;

    invoke-virtual {v2}, Lcom/txdriver/db/Question;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 161
    iget-object v0, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->soundManager:Lcom/txdriver/notification/SoundManager;

    invoke-virtual {v0}, Lcom/txdriver/notification/SoundManager;->stop()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/txdriver/service/MainService$StopEvent;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->stop()V

    return-void
.end method

.method public onEvent(Lcom/txdriver/ui/activity/InboundQuestionActivity$FinishEvent;)V
    .locals 4

    .line 152
    invoke-virtual {p1}, Lcom/txdriver/ui/activity/InboundQuestionActivity$FinishEvent;->getQuestionId()J

    move-result-wide v0

    iget-object p1, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->question:Lcom/txdriver/db/Question;

    invoke-virtual {p1}, Lcom/txdriver/db/Question;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->stop()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->startActivity()V

    .line 122
    iget-object v0, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->soundManager:Lcom/txdriver/notification/SoundManager;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/txdriver/notification/SoundManager;->playNotificationSound(I)V

    .line 123
    iget-object v0, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->question:Lcom/txdriver/db/Question;

    invoke-direct {p0, v0}, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->showNotification(Lcom/txdriver/db/Question;)V

    return-void
.end method

.method public startActivity()V
    .locals 3

    .line 127
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->app:Lcom/txdriver/App;

    const-class v2, Lcom/txdriver/ui/activity/InboundQuestionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    iget-object v1, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->question:Lcom/txdriver/db/Question;

    invoke-virtual {v1}, Lcom/txdriver/db/Question;->getId()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "id_extra"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    iget-object v1, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;->app:Lcom/txdriver/App;

    invoke-virtual {v1, v0}, Lcom/txdriver/App;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
