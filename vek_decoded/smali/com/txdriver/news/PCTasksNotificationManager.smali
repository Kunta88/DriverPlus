.class public Lcom/txdriver/news/PCTasksNotificationManager;
.super Ljava/lang/Object;
.source "PCTasksNotificationManager.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/txdriver/http/request/HttpRequest$OnResponseListener<",
        "Ljava/util/ArrayList<",
        "Lcom/txdriver/json/PhotoControlTask;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final SCHEDULE_DELAY:I = 0x1388

.field private static final SCHEDULE_INTERVAL:I = 0x1b7740

.field private static final TAG:Ljava/lang/String; = "PCTasksNotificationManager"


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

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/txdriver/news/PCTasksNotificationManager;->app:Lcom/txdriver/App;

    const-string v0, "notification"

    .line 48
    invoke-virtual {p1, v0}, Lcom/txdriver/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/txdriver/news/PCTasksNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    .line 49
    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getCompany()Lcom/txdriver/json/Company;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, v0, Lcom/txdriver/json/Company;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/txdriver/news/PCTasksNotificationManager;->companyName:Ljava/lang/String;

    const-string v0, "alarm"

    .line 51
    invoke-virtual {p1, v0}, Lcom/txdriver/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/txdriver/news/PCTasksNotificationManager;->alarmManager:Landroid/app/AlarmManager;

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/txdriver/receiver/PCTasksReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/news/PCTasksNotificationManager;->alarmIntent:Landroid/app/PendingIntent;

    .line 53
    invoke-virtual {p1}, Lcom/txdriver/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08009b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/news/PCTasksNotificationManager;->largeIcon:Landroid/graphics/Bitmap;

    .line 54
    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private cancelAlarm()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/txdriver/news/PCTasksNotificationManager;->alarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/txdriver/news/PCTasksNotificationManager;->alarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private showNotification(Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/txdriver/json/PhotoControlTask;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 85
    iget-object v2, v0, Lcom/txdriver/news/PCTasksNotificationManager;->app:Lcom/txdriver/App;

    const v3, 0x7f1001d1

    invoke-virtual {v2, v3}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    new-instance v3, Landroid/content/Intent;

    iget-object v4, v0, Lcom/txdriver/news/PCTasksNotificationManager;->app:Lcom/txdriver/App;

    const-class v5, Lcom/txdriver/ui/activity/photocontrol/PhotoControlTasksListActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "action_photo_control_tasks_list_open"

    .line 87
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v4, 0x10008000

    .line 88
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    iget-object v5, v0, Lcom/txdriver/news/PCTasksNotificationManager;->app:Lcom/txdriver/App;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/txdriver/json/PhotoControlTask;

    iget v7, v7, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskId:I

    const/high16 v8, 0x10000000

    invoke-static {v5, v7, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 91
    new-instance v7, Landroid/content/Intent;

    iget-object v8, v0, Lcom/txdriver/news/PCTasksNotificationManager;->app:Lcom/txdriver/App;

    const-class v9, Lcom/txdriver/ui/activity/photocontrol/PhotoControlTasksListActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    iget-object v3, v0, Lcom/txdriver/news/PCTasksNotificationManager;->app:Lcom/txdriver/App;

    invoke-static {v3, v6, v7, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 95
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const v7, 0x7f1001cf

    const/4 v9, 0x2

    const/4 v10, -0x1

    const v11, 0x7f0800c4

    const v12, 0x7f1001d0

    const/4 v13, 0x1

    const/16 v14, 0x1a

    if-lt v4, v14, :cond_0

    const-string v4, "TxPhotoControlTasksNotificationChannelID"

    .line 99
    new-instance v14, Landroid/app/NotificationChannel;

    const/4 v15, 0x3

    const-string v8, "TxPhotoControlTasksNotificationChannel"

    invoke-direct {v14, v4, v8, v15}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 100
    invoke-virtual {v14, v13}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 101
    invoke-virtual {v14, v13}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const v8, -0xffff01

    .line 102
    invoke-virtual {v14, v8}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 103
    invoke-virtual {v14, v6}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 104
    iget-object v8, v0, Lcom/txdriver/news/PCTasksNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v8, v14}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 106
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v14, v0, Lcom/txdriver/news/PCTasksNotificationManager;->app:Lcom/txdriver/App;

    invoke-virtual {v14}, Lcom/txdriver/App;->getBaseContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v8, v14, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/txdriver/news/PCTasksNotificationManager;->largeIcon:Landroid/graphics/Bitmap;

    .line 107
    invoke-virtual {v8, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 108
    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 109
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v4, v0, Lcom/txdriver/news/PCTasksNotificationManager;->app:Lcom/txdriver/App;

    .line 110
    invoke-virtual {v4, v12}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v4, v0, Lcom/txdriver/news/PCTasksNotificationManager;->companyName:Ljava/lang/String;

    .line 111
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v8, v0, Lcom/txdriver/news/PCTasksNotificationManager;->app:Lcom/txdriver/App;

    .line 112
    invoke-virtual {v8, v12}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 114
    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 115
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 116
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 117
    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 118
    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v4, v0, Lcom/txdriver/news/PCTasksNotificationManager;->app:Lcom/txdriver/App;

    .line 119
    invoke-virtual {v4, v7}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0800d1

    invoke-virtual {v2, v5, v4, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 121
    iget-object v3, v0, Lcom/txdriver/news/PCTasksNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/json/PhotoControlTask;

    iget v1, v1, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskId:I

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 124
    :cond_0
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v8, v0, Lcom/txdriver/news/PCTasksNotificationManager;->app:Lcom/txdriver/App;

    invoke-direct {v4, v8}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v8, v0, Lcom/txdriver/news/PCTasksNotificationManager;->largeIcon:Landroid/graphics/Bitmap;

    .line 125
    invoke-virtual {v4, v8}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 126
    invoke-virtual {v4, v11}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 127
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v4, v0, Lcom/txdriver/news/PCTasksNotificationManager;->app:Lcom/txdriver/App;

    .line 128
    invoke-virtual {v4, v12}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v4, v0, Lcom/txdriver/news/PCTasksNotificationManager;->companyName:Ljava/lang/String;

    .line 129
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    new-instance v4, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v4}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    iget-object v8, v0, Lcom/txdriver/news/PCTasksNotificationManager;->app:Lcom/txdriver/App;

    .line 130
    invoke-virtual {v8, v12}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 132
    invoke-virtual {v2, v13}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 133
    invoke-virtual {v2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 134
    invoke-virtual {v2, v10}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 135
    invoke-virtual {v2, v9}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 136
    invoke-virtual {v2, v13}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v4, v0, Lcom/txdriver/news/PCTasksNotificationManager;->app:Lcom/txdriver/App;

    .line 137
    invoke-virtual {v4, v7}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0800d1

    invoke-virtual {v2, v5, v4, v3}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 138
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 139
    iget-object v3, v0, Lcom/txdriver/news/PCTasksNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v4, Lcom/txdriver/news/PCTasksNotificationManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/json/PhotoControlTask;

    iget v1, v1, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskId:I

    invoke-virtual {v3, v4, v1, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelNotification(Lcom/txdriver/json/PhotoControlTask;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/txdriver/news/PCTasksNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/txdriver/news/PCTasksNotificationManager;->TAG:Ljava/lang/String;

    iget p1, p1, Lcom/txdriver/json/PhotoControlTask;->photoControlTaskId:I

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public fetchPCTasks()V
    .locals 3

    .line 153
    new-instance v0, Lcom/txdriver/http/request/PhotoControlTasksListRequest;

    iget-object v1, p0, Lcom/txdriver/news/PCTasksNotificationManager;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->getPrefDriverUuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/txdriver/http/request/PhotoControlTasksListRequest;-><init>(Lcom/txdriver/App;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0, p0}, Lcom/txdriver/http/request/PhotoControlTasksListRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 155
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/PhotoControlTasksListRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onEvent(Lcom/txdriver/socket/SocketEvents$AuthEvent;)V
    .locals 2

    .line 58
    new-instance p1, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/txdriver/news/PCTasksNotificationManager;->app:Lcom/txdriver/App;

    const-class v1, Lcom/txdriver/receiver/BootReceiver;

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    iget-object v0, p0, Lcom/txdriver/news/PCTasksNotificationManager;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, p1, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 61
    invoke-virtual {p0}, Lcom/txdriver/news/PCTasksNotificationManager;->scheduleAlarm()V

    .line 62
    iget-object p1, p0, Lcom/txdriver/news/PCTasksNotificationManager;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/txdriver/news/PCTasksNotificationManager;->onResponse(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResponse(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/txdriver/json/PhotoControlTask;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-direct {p0, p1}, Lcom/txdriver/news/PCTasksNotificationManager;->showNotification(Ljava/util/ArrayList;)V

    .line 81
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/txdriver/news/NewsEvents$PCTasksEventCounter;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {v1, p1}, Lcom/txdriver/news/NewsEvents$PCTasksEventCounter;-><init>(I)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public scheduleAlarm()V
    .locals 9

    .line 66
    invoke-direct {p0}, Lcom/txdriver/news/PCTasksNotificationManager;->cancelAlarm()V

    .line 67
    iget-object v0, p0, Lcom/txdriver/news/PCTasksNotificationManager;->alarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1388

    add-long/2addr v3, v1

    iget-object v6, p0, Lcom/txdriver/news/PCTasksNotificationManager;->alarmIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x1

    const-wide/32 v7, 0x1b7740

    move-wide v2, v3

    move-wide v4, v7

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method
