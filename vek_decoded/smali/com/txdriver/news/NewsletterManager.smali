.class public Lcom/txdriver/news/NewsletterManager;
.super Ljava/lang/Object;
.source "NewsletterManager.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/txdriver/http/request/HttpRequest$OnResponseListener<",
        "Lcom/txdriver/json/Response<",
        "Lcom/txdriver/json/Newsletter;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final SCHEDULE_DELAY:I = 0x1388

.field private static final SCHEDULE_INTERVAL:I = 0x1b7740

.field private static final TAG:Ljava/lang/String; = "NewsletterManager"


# instance fields
.field private alarmIntent:Landroid/app/PendingIntent;

.field private alarmManager:Landroid/app/AlarmManager;

.field private app:Lcom/txdriver/App;

.field private final companyName:Ljava/lang/String;

.field private final largeIcon:Landroid/graphics/Bitmap;

.field private final notificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/txdriver/news/NewsletterManager;->app:Lcom/txdriver/App;

    const-string v0, "notification"

    .line 51
    invoke-virtual {p1, v0}, Lcom/txdriver/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/txdriver/news/NewsletterManager;->notificationManager:Landroid/app/NotificationManager;

    .line 52
    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getCompany()Lcom/txdriver/json/Company;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, v0, Lcom/txdriver/json/Company;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/txdriver/news/NewsletterManager;->companyName:Ljava/lang/String;

    const-string v0, "alarm"

    .line 54
    invoke-virtual {p1, v0}, Lcom/txdriver/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/txdriver/news/NewsletterManager;->alarmManager:Landroid/app/AlarmManager;

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/txdriver/receiver/NewsletterAlarmReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/news/NewsletterManager;->alarmIntent:Landroid/app/PendingIntent;

    .line 56
    invoke-virtual {p1}, Lcom/txdriver/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08009b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/news/NewsletterManager;->largeIcon:Landroid/graphics/Bitmap;

    .line 57
    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private showNotification(Lcom/txdriver/json/Newsletter;)V
    .locals 14

    .line 88
    iget-object v0, p1, Lcom/txdriver/json/Newsletter;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txdriver/news/NewsletterManager;->app:Lcom/txdriver/App;

    const v1, 0x7f100167

    invoke-virtual {v0, v1}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/txdriver/json/Newsletter;->title:Ljava/lang/String;

    .line 89
    :goto_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/txdriver/news/NewsletterManager;->app:Lcom/txdriver/App;

    const-class v3, Lcom/txdriver/ui/activity/NewslettersActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "action_newsletter_open"

    .line 90
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extra_newsletter"

    .line 91
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v3, 0x10008000

    .line 92
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    iget-object v4, p0, Lcom/txdriver/news/NewsletterManager;->app:Lcom/txdriver/App;

    iget v5, p1, Lcom/txdriver/json/Newsletter;->id:I

    const/high16 v6, 0x10000000

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 95
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/txdriver/news/NewsletterManager;->app:Lcom/txdriver/App;

    const-class v7, Lcom/txdriver/ui/activity/NewslettersActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    invoke-virtual {v5, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 97
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 98
    iget-object v1, p0, Lcom/txdriver/news/NewsletterManager;->app:Lcom/txdriver/App;

    const/4 v2, 0x0

    invoke-static {v1, v2, v5, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 100
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    const v6, 0x7f10002f

    const v7, 0x7f0800d1

    const/4 v8, 0x2

    const/4 v9, -0x1

    const v10, 0x7f0800a9

    const/4 v11, 0x1

    if-lt v3, v5, :cond_1

    const-string v3, "TxNewsletterNotificationChannelID"

    .line 104
    new-instance v5, Landroid/app/NotificationChannel;

    const/4 v12, 0x3

    const-string v13, "TxNewsletterNotificationChannel"

    invoke-direct {v5, v3, v13, v12}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 105
    invoke-virtual {v5, v11}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 106
    invoke-virtual {v5, v11}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const v12, -0xffff01

    .line 107
    invoke-virtual {v5, v12}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 108
    invoke-virtual {v5, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 109
    iget-object v2, p0, Lcom/txdriver/news/NewsletterManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 111
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/txdriver/news/NewsletterManager;->app:Lcom/txdriver/App;

    invoke-virtual {v5}, Lcom/txdriver/App;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/txdriver/news/NewsletterManager;->largeIcon:Landroid/graphics/Bitmap;

    .line 112
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 114
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p1, Lcom/txdriver/json/Newsletter;->text:Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/txdriver/news/NewsletterManager;->companyName:Ljava/lang/String;

    .line 116
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v3, p1, Lcom/txdriver/json/Newsletter;->text:Ljava/lang/String;

    .line 117
    invoke-virtual {v2, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/txdriver/news/NewsletterManager;->app:Lcom/txdriver/App;

    .line 124
    invoke-virtual {v2, v6}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v2, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/txdriver/news/NewsletterManager;->notificationManager:Landroid/app/NotificationManager;

    iget p1, p1, Lcom/txdriver/json/Newsletter;->id:I

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 128
    :cond_1
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/txdriver/news/NewsletterManager;->app:Lcom/txdriver/App;

    invoke-direct {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/txdriver/news/NewsletterManager;->largeIcon:Landroid/graphics/Bitmap;

    .line 129
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 130
    invoke-virtual {v2, v10}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 131
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p1, Lcom/txdriver/json/Newsletter;->text:Ljava/lang/String;

    .line 132
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/txdriver/news/NewsletterManager;->companyName:Ljava/lang/String;

    .line 133
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    new-instance v2, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    iget-object v3, p1, Lcom/txdriver/json/Newsletter;->text:Ljava/lang/String;

    .line 134
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v0, v11}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 137
    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0, v9}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v8}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {v0, v11}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/txdriver/news/NewsletterManager;->app:Lcom/txdriver/App;

    .line 141
    invoke-virtual {v2, v6}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/txdriver/news/NewsletterManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v2, Lcom/txdriver/news/NewsletterManager;->TAG:Ljava/lang/String;

    iget p1, p1, Lcom/txdriver/json/Newsletter;->id:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public cancelAlarm()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/txdriver/news/NewsletterManager;->alarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/txdriver/news/NewsletterManager;->alarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public cancelNotification(Lcom/txdriver/json/Newsletter;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/txdriver/news/NewsletterManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/txdriver/news/NewsletterManager;->TAG:Ljava/lang/String;

    iget p1, p1, Lcom/txdriver/json/Newsletter;->id:I

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public fetchNewsletters()V
    .locals 3

    .line 163
    new-instance v0, Lcom/txdriver/http/request/NewslettersRequest;

    iget-object v1, p0, Lcom/txdriver/news/NewsletterManager;->app:Lcom/txdriver/App;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/txdriver/http/request/NewslettersRequest;-><init>(Lcom/txdriver/App;Z)V

    .line 164
    invoke-virtual {v0, p0}, Lcom/txdriver/http/request/NewslettersRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 165
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/NewslettersRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public newsletterRead(Lcom/txdriver/json/Newsletter;)V
    .locals 3

    .line 154
    new-instance v0, Lcom/txdriver/http/request/NewsletterReadRequest;

    iget-object v1, p0, Lcom/txdriver/news/NewsletterManager;->app:Lcom/txdriver/App;

    iget v2, p1, Lcom/txdriver/json/Newsletter;->id:I

    invoke-direct {v0, v1, v2}, Lcom/txdriver/http/request/NewsletterReadRequest;-><init>(Lcom/txdriver/App;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/NewsletterReadRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    invoke-virtual {p0, p1}, Lcom/txdriver/news/NewsletterManager;->cancelNotification(Lcom/txdriver/json/Newsletter;)V

    return-void
.end method

.method public onEvent(Lcom/txdriver/socket/SocketEvents$AuthEvent;)V
    .locals 2

    .line 61
    new-instance p1, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/txdriver/news/NewsletterManager;->app:Lcom/txdriver/App;

    const-class v1, Lcom/txdriver/receiver/BootReceiver;

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    iget-object v0, p0, Lcom/txdriver/news/NewsletterManager;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, p1, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 64
    invoke-virtual {p0}, Lcom/txdriver/news/NewsletterManager;->scheduleAlarm()V

    .line 65
    iget-object p1, p0, Lcom/txdriver/news/NewsletterManager;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/Newsletter;",
            ">;)V"
        }
    .end annotation

    .line 79
    iget-object v0, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/json/Newsletter;

    .line 81
    invoke-direct {p0, v1}, Lcom/txdriver/news/NewsletterManager;->showNotification(Lcom/txdriver/json/Newsletter;)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/txdriver/news/NewsEvents$NewsEventCounter;

    iget-object p1, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {v1, p1}, Lcom/txdriver/news/NewsEvents$NewsEventCounter;-><init>(I)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/txdriver/json/Response;

    invoke-virtual {p0, p1}, Lcom/txdriver/news/NewsletterManager;->onResponse(Lcom/txdriver/json/Response;)V

    return-void
.end method

.method public scheduleAlarm()V
    .locals 9

    .line 69
    invoke-virtual {p0}, Lcom/txdriver/news/NewsletterManager;->cancelAlarm()V

    .line 70
    iget-object v0, p0, Lcom/txdriver/news/NewsletterManager;->alarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1388

    add-long/2addr v3, v1

    iget-object v6, p0, Lcom/txdriver/news/NewsletterManager;->alarmIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x1

    const-wide/32 v7, 0x1b7740

    move-wide v2, v3

    move-wide v4, v7

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method
