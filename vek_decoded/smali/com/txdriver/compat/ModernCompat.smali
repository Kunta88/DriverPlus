.class public final Lcom/txdriver/compat/ModernCompat;
.super Ljava/lang/Object;
.source "ModernCompat.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/compat/ModernCompat$NetworkWatcher;
    }
.end annotation


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "driverplus_connection_v2"

.field private static foregroundOk:Z

.field private static instance:Lcom/txdriver/compat/ModernCompat;


# instance fields
.field private final activities:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final app:Lcom/txdriver/App;

.field private callback:Lcom/txdriver/compat/ModernCompat$NetworkWatcher;

.field private volatile configured:Z

.field private connectivity:Landroid/net/ConnectivityManager;

.field private final handler:Landroid/os/Handler;

.field private idleScreen:Z

.field private reconnect:Lcom/txdriver/compat/ReconnectPolicy;

.field private volatile watching:Z


# direct methods
.method private constructor <init>(Lcom/txdriver/App;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/txdriver/compat/ModernCompat;->handler:Landroid/os/Handler;

    .line 38
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/txdriver/compat/ModernCompat;->activities:Ljava/util/WeakHashMap;

    .line 39
    new-instance v0, Lcom/txdriver/compat/ReconnectPolicy;

    invoke-direct {v0}, Lcom/txdriver/compat/ReconnectPolicy;-><init>()V

    iput-object v0, p0, Lcom/txdriver/compat/ModernCompat;->reconnect:Lcom/txdriver/compat/ReconnectPolicy;

    .line 46
    iput-object p1, p0, Lcom/txdriver/compat/ModernCompat;->app:Lcom/txdriver/App;

    return-void
.end method

.method public static applyScreenPolicy(Z)V
    .registers 3

    .line 160
    sget-object v0, Lcom/txdriver/compat/ModernCompat;->instance:Lcom/txdriver/compat/ModernCompat;

    if-nez v0, :cond_5

    return-void

    .line 161
    :cond_5
    sget-object v0, Lcom/txdriver/compat/ModernCompat;->instance:Lcom/txdriver/compat/ModernCompat;

    iput-boolean p0, v0, Lcom/txdriver/compat/ModernCompat;->idleScreen:Z

    .line 162
    sget-object p0, Lcom/txdriver/compat/ModernCompat;->instance:Lcom/txdriver/compat/ModernCompat;

    iget-object p0, p0, Lcom/txdriver/compat/ModernCompat;->activities:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget-object v1, Lcom/txdriver/compat/ModernCompat;->instance:Lcom/txdriver/compat/ModernCompat;

    invoke-direct {v1, v0}, Lcom/txdriver/compat/ModernCompat;->screen(Landroid/app/Activity;)V

    goto :goto_15

    .line 163
    :cond_27
    return-void
.end method

.method public static audioFile(Landroid/content/Context;I)Ljava/io/File;
    .registers 7

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".mp3"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 212
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3a

    .line 213
    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_3a

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_23
    if-ltz v1, :cond_3a

    .line 215
    aget-object v3, v0, v1

    if-eqz v3, :cond_37

    .line 216
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_37

    return-object v3

    .line 214
    :cond_37
    add-int/lit8 v1, v1, -0x1

    goto :goto_23

    .line 221
    :cond_3a
    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 222
    if-nez v0, :cond_44

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 223
    :cond_44
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 224
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public static closeChannel(Ljava/nio/channels/SocketChannel;)V
    .registers 3

    .line 228
    if-nez p0, :cond_3

    return-void

    .line 229
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    .line 230
    goto :goto_f

    :catch_7
    move-exception p0

    const-string v0, "Android16"

    const-string v1, "Socket close failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    :goto_f
    return-void
.end method

.method public static connectionStarted()V
    .registers 2

    .line 81
    sget-object v0, Lcom/txdriver/compat/ModernCompat;->instance:Lcom/txdriver/compat/ModernCompat;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/txdriver/compat/ModernCompat;->instance:Lcom/txdriver/compat/ModernCompat;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/txdriver/compat/ModernCompat;->configured:Z

    :cond_9
    return-void
.end method

.method public static ensureStartedService(Landroid/app/Service;)Z
    .registers 4

    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-lt v0, v1, :cond_11

    invoke-static {p0}, Lcom/txdriver/compat/ModernCompat;->hasLocation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return v2

    .line 167
    :cond_11
    invoke-static {p0, v2}, Lcom/txdriver/compat/ModernCompat;->foreground(Landroid/app/Service;Z)V

    .line 168
    sget-boolean p0, Lcom/txdriver/compat/ModernCompat;->foregroundOk:Z

    return p0
.end method

.method public static foreground(Landroid/app/Service;Z)V
    .registers 8

    .line 129
    const/4 v0, 0x0

    sput-boolean v0, Lcom/txdriver/compat/ModernCompat;->foregroundOk:Z

    .line 132
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_10

    invoke-static {p0}, Lcom/txdriver/compat/ModernCompat;->hasLocation(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_10

    return-void

    .line 133
    :cond_10
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 135
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_3d

    .line 136
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "\u0421\u0432\u044f\u0437\u044c \u0441 \u0442\u0430\u043a\u0441\u043e\u043f\u0430\u0440\u043a\u043e\u043c"

    const/4 v4, 0x2

    const-string v5, "driverplus_connection_v2"

    invoke-direct {v2, v5, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 137
    const-string v3, "\u0424\u043e\u043d\u043e\u0432\u0430\u044f \u0440\u0430\u0431\u043e\u0442\u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0432\u043e\u0434\u0438\u0442\u0435\u043b\u044f \u0438 \u0433\u0435\u043e\u043b\u043e\u043a\u0430\u0446\u0438\u044f"

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 138
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 139
    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 140
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 141
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    goto :goto_42

    :cond_3d
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    :goto_42
    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 144
    const v3, 0x7f08009b

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 145
    if-eqz p1, :cond_6a

    const-string p1, "\u041f\u043e\u0434\u043a\u043b\u044e\u0447\u0435\u043d\u043e \u043a \u0442\u0430\u043a\u0441\u043e\u043f\u0430\u0440\u043a\u0443"

    goto :goto_6c

    :cond_6a
    const-string p1, "\u041f\u043e\u0434\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u0435 \u043a \u0442\u0430\u043a\u0441\u043e\u043f\u0430\u0440\u043a\u0443"

    :goto_6c
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 146
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 147
    if-eqz v2, :cond_92

    .line 148
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt p1, v4, :cond_87

    const/high16 p1, 0x4000000

    goto :goto_88

    :cond_87
    const/4 p1, 0x0

    :goto_88
    const/high16 v4, 0x8000000

    or-int/2addr p1, v4

    .line 147
    invoke-static {p0, v0, v2, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 149
    :cond_92
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    const-string v2, "Android16"

    const/16 v4, 0x3e9

    if-lt p1, v0, :cond_c2

    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, p1}, Landroid/app/Service;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_ac

    .line 150
    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, p1}, Landroid/app/Service;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_c2

    .line 151
    :cond_ac
    :try_start_ac
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p0, v4, p1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    sput-boolean v3, Lcom/txdriver/compat/ModernCompat;->foregroundOk:Z
    :try_end_b7
    .catch Ljava/lang/RuntimeException; {:try_start_ac .. :try_end_b7} :catch_b8

    .line 152
    goto :goto_d5

    :catch_b8
    move-exception p1

    const-string p1, "Location service denied"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_d5

    .line 154
    :cond_c2
    :try_start_c2
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    sput-boolean v3, Lcom/txdriver/compat/ModernCompat;->foregroundOk:Z
    :try_end_cb
    .catch Ljava/lang/RuntimeException; {:try_start_c2 .. :try_end_cb} :catch_cc

    .line 155
    goto :goto_d5

    :catch_cc
    move-exception p1

    const-string p1, "Foreground service denied"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 157
    :goto_d5
    return-void
.end method

.method private static hasLocation(Landroid/content/Context;)Z
    .registers 2

    .line 99
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_13

    .line 100
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    .line 99
    :goto_14
    return p0
.end method

.method public static install(Lcom/txdriver/App;)V
    .registers 4

    .line 49
    sget-object v0, Lcom/txdriver/compat/ModernCompat;->instance:Lcom/txdriver/compat/ModernCompat;

    if-eqz v0, :cond_5

    return-void

    .line 50
    :cond_5
    new-instance v0, Lcom/txdriver/compat/ModernCompat;

    invoke-direct {v0, p0}, Lcom/txdriver/compat/ModernCompat;-><init>(Lcom/txdriver/App;)V

    sput-object v0, Lcom/txdriver/compat/ModernCompat;->instance:Lcom/txdriver/compat/ModernCompat;

    .line 51
    invoke-static {p0}, Lcom/txdriver/compat/ConfigHttp;->migrateLegacyEndpoint(Landroid/content/Context;)V

    .line 52
    invoke-static {p0}, Lcom/txdriver/compat/SecureStore;->migrate(Landroid/content/Context;)V

    .line 53
    invoke-static {p0}, Lcom/txdriver/compat/ChatDraft;->install(Landroid/content/Context;)V

    .line 54
    invoke-static {p0}, Lcom/txdriver/compat/EventGuard;->install(Landroid/content/Context;)V

    .line 55
    sget-object v0, Lcom/txdriver/compat/ModernCompat;->instance:Lcom/txdriver/compat/ModernCompat;

    invoke-virtual {p0, v0}, Lcom/txdriver/App;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 58
    :try_start_1d
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/txdriver/App;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "osmdroid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/txdriver/App;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "map_tiles"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 61
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/osmdroid/config/IConfigurationProvider;->setOsmdroidBasePath(Ljava/io/File;)V

    .line 62
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object p0

    invoke-interface {p0, v1}, Lorg/osmdroid/config/IConfigurationProvider;->setOsmdroidTileCache(Ljava/io/File;)V
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_47} :catch_48

    .line 63
    goto :goto_50

    :catch_48
    move-exception p0

    const-string v0, "Android16"

    const-string v1, "Map cache configuration failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    :goto_50
    return-void
.end method

.method private screen(Landroid/app/Activity;)V
    .registers 5

    .line 171
    if-eqz p1, :cond_37

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_37

    .line 173
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_d
    if-eqz v0, :cond_36

    .line 174
    const-string v1, "com.txdriver.ui.activity.BaseActivity"

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 175
    iget-boolean v0, p0, Lcom/txdriver/compat/ModernCompat;->idleScreen:Z

    const/16 v1, 0x80

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_30

    .line 176
    :cond_29
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 177
    :goto_30
    return-void

    .line 173
    :cond_31
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_d

    .line 180
    :cond_36
    return-void

    .line 171
    :cond_37
    :goto_37
    return-void
.end method

.method public static serviceCreated(Landroid/app/Service;)V
    .registers 4

    .line 67
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/txdriver/compat/ModernCompat;->foreground(Landroid/app/Service;Z)V

    .line 68
    sget-object v0, Lcom/txdriver/compat/ModernCompat;->instance:Lcom/txdriver/compat/ModernCompat;

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/txdriver/App;

    invoke-static {v0}, Lcom/txdriver/compat/ModernCompat;->install(Lcom/txdriver/App;)V

    .line 69
    :cond_11
    sget-object v0, Lcom/txdriver/compat/ModernCompat;->instance:Lcom/txdriver/compat/ModernCompat;

    .line 70
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_48

    iget-boolean v1, v0, Lcom/txdriver/compat/ModernCompat;->watching:Z

    if-nez v1, :cond_48

    .line 72
    :try_start_1d
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    iput-object p0, v0, Lcom/txdriver/compat/ModernCompat;->connectivity:Landroid/net/ConnectivityManager;

    .line 73
    new-instance p0, Lcom/txdriver/compat/ReconnectPolicy;

    invoke-direct {p0}, Lcom/txdriver/compat/ReconnectPolicy;-><init>()V

    iput-object p0, v0, Lcom/txdriver/compat/ModernCompat;->reconnect:Lcom/txdriver/compat/ReconnectPolicy;

    .line 74
    new-instance p0, Lcom/txdriver/compat/ModernCompat$NetworkWatcher;

    invoke-direct {p0, v0}, Lcom/txdriver/compat/ModernCompat$NetworkWatcher;-><init>(Lcom/txdriver/compat/ModernCompat;)V

    iput-object p0, v0, Lcom/txdriver/compat/ModernCompat;->callback:Lcom/txdriver/compat/ModernCompat$NetworkWatcher;

    .line 75
    iget-object p0, v0, Lcom/txdriver/compat/ModernCompat;->connectivity:Landroid/net/ConnectivityManager;

    iget-object v1, v0, Lcom/txdriver/compat/ModernCompat;->callback:Lcom/txdriver/compat/ModernCompat$NetworkWatcher;

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 76
    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/txdriver/compat/ModernCompat;->watching:Z
    :try_end_3f
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_3f} :catch_40

    .line 77
    goto :goto_48

    :catch_40
    move-exception p0

    const-string v0, "Android16"

    const-string v1, "Cannot watch network changes"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    :cond_48
    :goto_48
    return-void
.end method

.method public static serviceDestroyed()V
    .registers 5

    .line 104
    sget-object v0, Lcom/txdriver/compat/ModernCompat;->instance:Lcom/txdriver/compat/ModernCompat;

    if-nez v0, :cond_5

    return-void

    .line 105
    :cond_5
    sget-object v0, Lcom/txdriver/compat/ModernCompat;->instance:Lcom/txdriver/compat/ModernCompat;

    .line 106
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/txdriver/compat/ModernCompat;->configured:Z

    .line 107
    iget-object v2, v0, Lcom/txdriver/compat/ModernCompat;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    iget-boolean v2, v0, Lcom/txdriver/compat/ModernCompat;->watching:Z

    if-eqz v2, :cond_23

    .line 109
    :try_start_13
    iget-object v2, v0, Lcom/txdriver/compat/ModernCompat;->connectivity:Landroid/net/ConnectivityManager;

    iget-object v3, v0, Lcom/txdriver/compat/ModernCompat;->callback:Lcom/txdriver/compat/ModernCompat$NetworkWatcher;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_1a} :catch_1b

    .line 110
    goto :goto_23

    :catch_1b
    move-exception v2

    const-string v3, "Android16"

    const-string v4, "Network callback already removed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    :cond_23
    :goto_23
    iput-boolean v1, v0, Lcom/txdriver/compat/ModernCompat;->watching:Z

    .line 113
    return-void
.end method

.method public static startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 6

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_26

    invoke-static {p0}, Lcom/txdriver/compat/ModernCompat;->hasLocation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 85
    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_25

    check-cast p0, Landroid/app/Activity;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v0, p1, v3

    const/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 87
    :cond_25
    return-object v2

    .line 90
    :cond_26
    :try_start_26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_31

    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    goto :goto_35

    :cond_31
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_35} :catch_36

    :goto_35
    return-object p0

    .line 91
    :catch_36
    move-exception p1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service start denied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Android16"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string p1, "\u041e\u0442\u043a\u0440\u043e\u0439\u0442\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u0438 \u043f\u0440\u043e\u0432\u0435\u0440\u044c\u0442\u0435 \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0438\u0435 \u0433\u0435\u043e\u043b\u043e\u043a\u0430\u0446\u0438\u0438"

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 94
    return-object v2
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 182
    iget-object p2, p0, Lcom/txdriver/compat/ModernCompat;->activities:Ljava/util/WeakHashMap;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 184
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_19

    .line 185
    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 186
    invoke-virtual {p1, p2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 188
    :cond_19
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_32

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    .line 189
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, -0x2001

    and-int/lit8 v0, v0, -0x11

    .line 188
    invoke-virtual {p2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 190
    :cond_32
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p2, v0, :cond_42

    .line 191
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 192
    const/4 v0, 0x2

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 193
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 195
    :cond_42
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p2, v0, :cond_4c

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 196
    :cond_4c
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/txdriver/compat/ModernCompat;->activities:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    .line 206
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    .line 198
    invoke-direct {p0, p1}, Lcom/txdriver/compat/ModernCompat;->screen(Landroid/app/Activity;)V

    .line 199
    invoke-static {}, Lcom/txdriver/energy/Energy;->refreshLocation()V

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.txdriver.ui.activity.MainActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 201
    invoke-static {p1}, Lcom/txdriver/compat/CompatIntents;->requestNotifications(Landroid/app/Activity;)V

    .line 203
    :cond_19
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 208
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .line 205
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 207
    return-void
.end method

.method public declared-synchronized onAvailable(Landroid/net/Network;)V
    .registers 5

    monitor-enter p0

    .line 116
    :try_start_1
    iget-object v0, p0, Lcom/txdriver/compat/ModernCompat;->reconnect:Lcom/txdriver/compat/ReconnectPolicy;

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/txdriver/compat/ReconnectPolicy;->available(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    iget-boolean p1, p0, Lcom/txdriver/compat/ModernCompat;->configured:Z

    if-eqz p1, :cond_25

    .line 117
    iget-object p1, p0, Lcom/txdriver/compat/ModernCompat;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 118
    iget-object p1, p0, Lcom/txdriver/compat/ModernCompat;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/txdriver/compat/ModernCompat;->reconnect:Lcom/txdriver/compat/ReconnectPolicy;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/txdriver/compat/ReconnectPolicy;->delay(J)J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 120
    :cond_25
    monitor-exit p0

    return-void

    .line 115
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onLost(Landroid/net/Network;)V
    .registers 3

    monitor-enter p0

    .line 121
    :try_start_1
    iget-object v0, p0, Lcom/txdriver/compat/ModernCompat;->reconnect:Lcom/txdriver/compat/ReconnectPolicy;

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/txdriver/compat/ReconnectPolicy;->lost(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    .line 121
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized run()V
    .registers 4

    monitor-enter p0

    .line 123
    :try_start_1
    iget-boolean v0, p0, Lcom/txdriver/compat/ModernCompat;->watching:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/txdriver/compat/ModernCompat;->configured:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/txdriver/compat/ModernCompat;->reconnect:Lcom/txdriver/compat/ReconnectPolicy;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/txdriver/compat/ReconnectPolicy;->ready(J)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 124
    iget-object v0, p0, Lcom/txdriver/compat/ModernCompat;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/socket/Client;->reconn()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 126
    :cond_1e
    monitor-exit p0

    return-void

    .line 122
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method
