.class public Lcom/txdriver/service/MainService;
.super Landroid/app/Service;
.source "MainService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/service/MainService$LocalBinder;,
        Lcom/txdriver/service/MainService$StopEvent;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final NOTIFICATION_ID:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "MainService"


# instance fields
.field private app:Lcom/txdriver/App;

.field private client:Lcom/txdriver/socket/Client;

.field private companyName:Ljava/lang/String;

.field private downloadHelper:Lcom/txdriver/helpers/DownloadHelper;

.field private locationManager:Lcom/txdriver/location/LocationManager;

.field private final mBinder:Landroid/os/IBinder;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    new-instance v0, Lcom/txdriver/service/MainService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/txdriver/service/MainService$LocalBinder;-><init>(Lcom/txdriver/service/MainService;)V

    iput-object v0, p0, Lcom/txdriver/service/MainService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method private createWakeLock()V
    .locals 3

    const-string v0, "power"

    .line 98
    invoke-virtual {p0, v0}, Lcom/txdriver/service/MainService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 99
    sget-object v1, Lcom/txdriver/service/MainService;->TAG:Ljava/lang/String;

    const v2, 0x3000001a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/service/MainService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 100
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method private getConnectedNotification()Landroid/app/Notification;
    .locals 5

    .line 167
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v0, 0x3e9

    .line 168
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "My Background Service"

    invoke-direct {p0, v0, v1}, Lcom/txdriver/service/MainService;->getConnectedNotificationAndroidO(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/txdriver/service/MainService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/txdriver/service/MainService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x8000000

    const/4 v2, 0x0

    .line 171
    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 172
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08009b

    .line 173
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const v3, 0x7f100035

    .line 174
    invoke-virtual {p0, v3}, Lcom/txdriver/service/MainService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const v3, 0x7f100093

    .line 175
    invoke-virtual {p0, v3}, Lcom/txdriver/service/MainService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 176
    invoke-virtual {p0, v3}, Lcom/txdriver/service/MainService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/txdriver/service/MainService;->companyName:Ljava/lang/String;

    .line 177
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 178
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private getConnectedNotificationAndroidO(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 4

    .line 186
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const p2, -0xffff01

    .line 187
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 188
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const-string p2, "notification"

    .line 189
    invoke-virtual {p0, p2}, Lcom/txdriver/service/MainService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    .line 191
    invoke-virtual {p2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 193
    invoke-virtual {p0}, Lcom/txdriver/service/MainService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p0}, Lcom/txdriver/service/MainService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v0, 0x8000000

    .line 194
    invoke-static {p0, v1, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 196
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v0, p0, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 197
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const v0, 0x7f08009b

    .line 198
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const v0, 0x7f100035

    .line 199
    invoke-virtual {p0, v0}, Lcom/txdriver/service/MainService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const v0, 0x7f100093

    .line 200
    invoke-virtual {p0, v0}, Lcom/txdriver/service/MainService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 201
    invoke-virtual {p0, v0}, Lcom/txdriver/service/MainService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/service/MainService;->companyName:Ljava/lang/String;

    .line 202
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 203
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 205
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 206
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private getConnectingNotification()Landroid/app/Notification;
    .locals 5

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v0, 0x3e9

    .line 124
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "My Background Service"

    invoke-direct {p0, v0, v1}, Lcom/txdriver/service/MainService;->getConnectingNotificationAndroidO(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/txdriver/service/MainService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/txdriver/service/MainService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x8000000

    const/4 v2, 0x0

    .line 127
    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 128
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08009b

    .line 129
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const v3, 0x7f100035

    .line 130
    invoke-virtual {p0, v3}, Lcom/txdriver/service/MainService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const v3, 0x7f100091

    .line 131
    invoke-virtual {p0, v3}, Lcom/txdriver/service/MainService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 132
    invoke-virtual {p0, v3}, Lcom/txdriver/service/MainService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/txdriver/service/MainService;->companyName:Ljava/lang/String;

    .line 133
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 134
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private getConnectingNotificationAndroidO(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 4

    .line 142
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const p2, -0xffff01

    .line 143
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 144
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const-string p2, "notification"

    .line 145
    invoke-virtual {p0, p2}, Lcom/txdriver/service/MainService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    .line 147
    invoke-virtual {p2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 149
    invoke-virtual {p0}, Lcom/txdriver/service/MainService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p0}, Lcom/txdriver/service/MainService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v0, 0x8000000

    .line 150
    invoke-static {p0, v1, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 152
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v0, p0, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 153
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const v0, 0x7f08009b

    .line 154
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const v0, 0x7f100035

    .line 155
    invoke-virtual {p0, v0}, Lcom/txdriver/service/MainService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const v0, 0x7f100091

    .line 156
    invoke-virtual {p0, v0}, Lcom/txdriver/service/MainService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 157
    invoke-virtual {p0, v0}, Lcom/txdriver/service/MainService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/service/MainService;->companyName:Ljava/lang/String;

    .line 158
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 159
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 161
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 162
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private onConnected()V
    .locals 2

    .line 119
    invoke-direct {p0}, Lcom/txdriver/service/MainService;->getConnectedNotification()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {p0, v1, v0}, Lcom/txdriver/service/MainService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private onConnecting()V
    .locals 2

    .line 115
    invoke-direct {p0}, Lcom/txdriver/service/MainService;->getConnectingNotification()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {p0, v1, v0}, Lcom/txdriver/service/MainService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/txdriver/service/MainService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private runDownloadHelper()V
    .locals 2

    .line 61
    new-instance v0, Lcom/txdriver/helpers/DownloadHelper;

    iget-object v1, p0, Lcom/txdriver/service/MainService;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1}, Lcom/txdriver/helpers/DownloadHelper;-><init>(Lcom/txdriver/App;)V

    iput-object v0, p0, Lcom/txdriver/service/MainService;->downloadHelper:Lcom/txdriver/helpers/DownloadHelper;

    .line 62
    invoke-virtual {v0}, Lcom/txdriver/helpers/DownloadHelper;->run()V

    return-void
.end method

.method private stop()V
    .locals 1

    const/4 v0, 0x1

    .line 219
    invoke-virtual {p0, v0}, Lcom/txdriver/service/MainService;->stopForeground(Z)V

    .line 220
    invoke-virtual {p0}, Lcom/txdriver/service/MainService;->stopSelf()V

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/txdriver/service/MainService;->client:Lcom/txdriver/socket/Client;

    iget-object v1, p0, Lcom/txdriver/service/MainService;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/preferences/Preferences;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/txdriver/service/MainService;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->getServerPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/txdriver/socket/Client;->open(Ljava/lang/String;I)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/txdriver/service/MainService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 49
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 50
    sget-object v0, Lcom/txdriver/service/MainService;->TAG:Ljava/lang/String;

    const-string v1, "[onCreate]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p0}, Lcom/txdriver/service/MainService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/txdriver/App;

    iput-object v0, p0, Lcom/txdriver/service/MainService;->app:Lcom/txdriver/App;

    .line 52
    invoke-virtual {v0}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/service/MainService;->client:Lcom/txdriver/socket/Client;

    .line 53
    iget-object v0, p0, Lcom/txdriver/service/MainService;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/service/MainService;->locationManager:Lcom/txdriver/location/LocationManager;

    .line 54
    iget-object v0, p0, Lcom/txdriver/service/MainService;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/txdriver/service/MainService;->locationManager:Lcom/txdriver/location/LocationManager;

    invoke-virtual {v0}, Lcom/txdriver/location/LocationManager;->startUpdates()V

    .line 56
    invoke-direct {p0}, Lcom/txdriver/service/MainService;->createWakeLock()V

    .line 57
    invoke-direct {p0}, Lcom/txdriver/service/MainService;->runDownloadHelper()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 75
    sget-object v0, Lcom/txdriver/service/MainService;->TAG:Ljava/lang/String;

    const-string v1, "[onDestroy]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/txdriver/service/MainService;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/txdriver/service/MainService;->locationManager:Lcom/txdriver/location/LocationManager;

    invoke-virtual {v0}, Lcom/txdriver/location/LocationManager;->stopUpdates()V

    .line 78
    invoke-direct {p0}, Lcom/txdriver/service/MainService;->releaseWakeLock()V

    .line 79
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onEvent(Lcom/txdriver/service/MainService$StopEvent;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/txdriver/service/MainService;->stop()V

    return-void
.end method

.method public onEventMainThread(Lcom/txdriver/socket/SocketEvents$ConnectionStateEvent;)V
    .locals 1

    .line 104
    iget p1, p1, Lcom/txdriver/socket/SocketEvents$ConnectionStateEvent;->state:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/txdriver/service/MainService;->onConnected()V

    goto :goto_0

    .line 106
    :cond_1
    invoke-direct {p0}, Lcom/txdriver/service/MainService;->onConnecting()V

    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/txdriver/socket/SocketEvents$ExceptionEvent;)V
    .locals 1

    .line 211
    invoke-direct {p0}, Lcom/txdriver/service/MainService;->getConnectingNotification()Landroid/app/Notification;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0, p1}, Lcom/txdriver/service/MainService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/txdriver/service/MainService;->connect()V

    .line 68
    iget-object p1, p0, Lcom/txdriver/service/MainService;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getCompany()Lcom/txdriver/json/Company;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p1, Lcom/txdriver/json/Company;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/txdriver/service/MainService;->companyName:Ljava/lang/String;

    const/4 p1, 0x3

    return p1
.end method
