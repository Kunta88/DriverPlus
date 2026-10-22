.class public final Lcom/txdriver/location/LocationSender;
.super Ljava/lang/Object;
.source "LocationSender.java"

# interfaces
.implements Lcom/txdriver/location/LocationManager$LocationChangeListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private final app:Lcom/txdriver/App;

.field private final handler:Landroid/os/Handler;

.field private lastQueued:Landroid/location/Location;

.field private latest:Landroid/location/Location;

.field private queuedAt:J

.field private queuedOrder:J

.field private queuedSession:J

.field private wasReady:Z


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/txdriver/location/LocationSender;->handler:Landroid/os/Handler;

    .line 16
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/txdriver/location/LocationSender;->queuedAt:J

    iput-wide v0, p0, Lcom/txdriver/location/LocationSender;->queuedSession:J

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/txdriver/location/LocationSender;->queuedOrder:J

    .line 20
    iput-object p1, p0, Lcom/txdriver/location/LocationSender;->app:Lcom/txdriver/App;

    .line 21
    iget-object p1, p0, Lcom/txdriver/location/LocationSender;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    return-void
.end method

.method private declared-synchronized remember(Landroid/location/Location;)V
    .registers 7

    monitor-enter p0

    .line 32
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 33
    invoke-static {p1, v0, v1}, Lcom/txdriver/location/LocationSender;->valid(Landroid/location/Location;J)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/txdriver/location/LocationSender;->latest:Landroid/location/Location;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/txdriver/location/LocationSender;->latest:Landroid/location/Location;

    invoke-static {v2, v0, v1}, Lcom/txdriver/location/LocationSender;->valid(Landroid/location/Location;J)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 34
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v0

    iget-object v2, p0, Lcom/txdriver/location/LocationSender;->latest:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2c

    .line 35
    :cond_25
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/txdriver/location/LocationSender;->latest:Landroid/location/Location;
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 37
    :cond_2c
    monitor-exit p0

    return-void

    .line 31
    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized tick()V
    .registers 13

    monitor-enter p0

    .line 50
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 51
    iget-object v2, p0, Lcom/txdriver/location/LocationSender;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/socket/Client;->isSocketConnected()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/txdriver/location/LocationSender;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->isSessionOpened()Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    .line 52
    :goto_22
    if-nez v2, :cond_28

    iput-boolean v4, p0, Lcom/txdriver/location/LocationSender;->wasReady:Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_ee

    monitor-exit p0

    return-void

    .line 53
    :cond_28
    :try_start_28
    iget-object v2, p0, Lcom/txdriver/location/LocationSender;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/txdriver/location/LocationSender;->remember(Landroid/location/Location;)V

    .line 54
    iget-object v2, p0, Lcom/txdriver/location/LocationSender;->latest:Landroid/location/Location;

    invoke-static {v2, v0, v1}, Lcom/txdriver/location/LocationSender;->valid(Landroid/location/Location;J)Z

    move-result v2
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_ee

    if-nez v2, :cond_3f

    monitor-exit p0

    return-void

    .line 55
    :cond_3f
    :try_start_3f
    iget-object v2, p0, Lcom/txdriver/location/LocationSender;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/socket/Client;->getSessionId()J

    move-result-wide v4

    .line 56
    iget-object v2, p0, Lcom/txdriver/location/LocationSender;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->getCurrentOrderId()J

    move-result-wide v6

    .line 58
    iget-boolean v2, p0, Lcom/txdriver/location/LocationSender;->wasReady:Z

    if-eqz v2, :cond_95

    iget-object v2, p0, Lcom/txdriver/location/LocationSender;->lastQueued:Landroid/location/Location;

    if-eqz v2, :cond_95

    iget-wide v8, p0, Lcom/txdriver/location/LocationSender;->queuedSession:J

    cmp-long v2, v4, v8

    if-eqz v2, :cond_62

    goto :goto_95

    .line 59
    :cond_62
    iget-wide v8, p0, Lcom/txdriver/location/LocationSender;->queuedOrder:J

    cmp-long v2, v6, v8

    if-eqz v2, :cond_6b

    const-string v2, "order-change"

    goto :goto_97

    .line 60
    :cond_6b
    iget-wide v8, p0, Lcom/txdriver/location/LocationSender;->queuedAt:J

    sub-long v8, v0, v8

    const-wide/16 v10, 0x61a8

    cmp-long v2, v8, v10

    if-ltz v2, :cond_78

    const-string v2, "stationary-refresh"

    goto :goto_97

    .line 61
    :cond_78
    iget-wide v8, p0, Lcom/txdriver/location/LocationSender;->queuedAt:J

    sub-long v8, v0, v8

    const-wide/16 v10, 0x1388

    cmp-long v2, v8, v10

    if-ltz v2, :cond_93

    iget-object v2, p0, Lcom/txdriver/location/LocationSender;->latest:Landroid/location/Location;

    iget-object v8, p0, Lcom/txdriver/location/LocationSender;->lastQueued:Landroid/location/Location;

    invoke-virtual {v2, v8}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    const/high16 v8, 0x41200000    # 10.0f

    cmpl-float v2, v2, v8

    if-lez v2, :cond_93

    const-string v2, "movement"
    :try_end_92
    .catchall {:try_start_3f .. :try_end_92} :catchall_ee

    goto :goto_97

    .line 62
    :cond_93
    monitor-exit p0

    return-void

    .line 58
    :cond_95
    :goto_95
    :try_start_95
    const-string v2, "session"

    .line 64
    :goto_97
    iget-object v8, p0, Lcom/txdriver/location/LocationSender;->app:Lcom/txdriver/App;

    invoke-virtual {v8}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object v8

    new-instance v9, Lcom/txdriver/socket/packet/DriverLocationPacket;

    iget-object v10, p0, Lcom/txdriver/location/LocationSender;->app:Lcom/txdriver/App;

    iget-object v11, p0, Lcom/txdriver/location/LocationSender;->latest:Landroid/location/Location;

    invoke-direct {v9, v10, v11}, Lcom/txdriver/socket/packet/DriverLocationPacket;-><init>(Lcom/txdriver/App;Landroid/location/Location;)V

    invoke-virtual {v8, v9}, Lcom/txdriver/socket/Client;->trySend(Lcom/txdriver/socket/Packet;)Z

    move-result v8
    :try_end_aa
    .catchall {:try_start_95 .. :try_end_aa} :catchall_ee

    if-nez v8, :cond_ae

    monitor-exit p0

    return-void

    .line 65
    :cond_ae
    :try_start_ae
    new-instance v8, Landroid/location/Location;

    iget-object v9, p0, Lcom/txdriver/location/LocationSender;->latest:Landroid/location/Location;

    invoke-direct {v8, v9}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v8, p0, Lcom/txdriver/location/LocationSender;->lastQueued:Landroid/location/Location;

    .line 66
    iput-wide v0, p0, Lcom/txdriver/location/LocationSender;->queuedAt:J

    .line 67
    iput-wide v4, p0, Lcom/txdriver/location/LocationSender;->queuedSession:J

    .line 68
    iput-wide v6, p0, Lcom/txdriver/location/LocationSender;->queuedOrder:J

    .line 69
    iput-boolean v3, p0, Lcom/txdriver/location/LocationSender;->wasReady:Z

    .line 70
    const-string v3, "LocationSender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Position queued: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", fixAgeMs="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/txdriver/location/LocationSender;->latest:Landroid/location/Location;

    .line 71
    invoke-virtual {v4}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    sub-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ec
    .catchall {:try_start_ae .. :try_end_ec} :catchall_ee

    .line 72
    monitor-exit p0

    return-void

    .line 49
    :catchall_ee
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static valid(Landroid/location/Location;J)Z
    .registers 12

    .line 40
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 41
    :cond_4
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    sub-long/2addr p1, v1

    .line 42
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 43
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    .line 44
    const-wide/16 v6, 0x0

    cmp-long v8, p1, v6

    if-ltz v8, :cond_64

    const-wide/16 v6, 0x7530

    cmp-long v8, p1, v6

    if-gtz v8, :cond_64

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_64

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_64

    .line 45
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide v1, 0x4056800000000000L    # 90.0

    cmpg-double v6, p1, v1

    if-gtz v6, :cond_64

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide v1, 0x4066800000000000L    # 180.0

    cmpg-double v3, p1, v1

    if-gtz v3, :cond_64

    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result p0

    if-eqz p0, :cond_64

    .line 46
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_64

    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    if-nez p0, :cond_64

    const/4 p0, 0x0

    cmpl-float p0, v5, p0

    if-ltz p0, :cond_64

    const/4 v0, 0x1

    goto :goto_65

    :cond_64
    nop

    .line 44
    :goto_65
    return v0
.end method


# virtual methods
.method public declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .registers 2

    monitor-enter p0

    .line 25
    :try_start_1
    invoke-direct {p0, p1}, Lcom/txdriver/location/LocationSender;->remember(Landroid/location/Location;)V

    .line 27
    iget-object p1, p0, Lcom/txdriver/location/LocationSender;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 28
    iget-object p1, p0, Lcom/txdriver/location/LocationSender;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 29
    monitor-exit p0

    return-void

    .line 24
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .registers 6

    .line 75
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-direct {p0}, Lcom/txdriver/location/LocationSender;->tick()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_12
    .catchall {:try_start_2 .. :try_end_5} :catchall_10

    .line 78
    :goto_5
    iget-object v2, p0, Lcom/txdriver/location/LocationSender;->handler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    iget-object v2, p0, Lcom/txdriver/location/LocationSender;->handler:Landroid/os/Handler;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    goto :goto_1b

    .line 78
    :catchall_10
    move-exception v2

    goto :goto_1c

    .line 76
    :catch_12
    move-exception v2

    :try_start_13
    const-string v3, "LocationSender"

    const-string v4, "Cannot queue current position"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_10

    goto :goto_5

    .line 81
    :goto_1b
    return-void

    .line 78
    :goto_1c
    iget-object v3, p0, Lcom/txdriver/location/LocationSender;->handler:Landroid/os/Handler;

    invoke-virtual {v3, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    iget-object v3, p0, Lcom/txdriver/location/LocationSender;->handler:Landroid/os/Handler;

    invoke-virtual {v3, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    goto :goto_28

    :goto_27
    throw v2

    :goto_28
    goto :goto_27
.end method
