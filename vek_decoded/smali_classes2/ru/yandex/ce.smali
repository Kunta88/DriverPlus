.class public Lru/yandex/ce;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

.field private b:Landroid/view/WindowManager;

.field private c:Landroid/hardware/SensorManager;

.field private d:Z

.field private e:J


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/ce;->d:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lru/yandex/ce;->e:J

    iput-object p1, p0, Lru/yandex/ce;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->c()Landroid/content/Context;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lru/yandex/ce;->b:Landroid/view/WindowManager;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lru/yandex/ce;->c:Landroid/hardware/SensorManager;

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/ce;->d:Z

    return v0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lru/yandex/ce;->c:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lru/yandex/ce;->c:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/ce;->d:Z

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lru/yandex/ce;->c:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lru/yandex/ce;->d:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/ce;->d:Z

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lru/yandex/ce;->e:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1f4

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    return-void

    :cond_0
    iput-wide v1, p0, Lru/yandex/ce;->e:J

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lru/yandex/ce;->b:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x43870000    # 270.0f

    goto :goto_0

    :cond_2
    const/high16 v2, 0x43340000    # 180.0f

    goto :goto_0

    :cond_3
    const/high16 v2, 0x42b40000    # 90.0f

    :cond_4
    :goto_0
    iget-object v0, p0, Lru/yandex/ce;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->getMyLocationItem()Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget p1, p1, v1

    add-float/2addr p1, v2

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->b(F)V

    iget-object p1, p0, Lru/yandex/ce;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->k()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    return-void
.end method
