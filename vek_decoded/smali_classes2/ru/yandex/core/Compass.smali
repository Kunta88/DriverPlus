.class public Lru/yandex/core/Compass;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private lastBearingChangeTime:J

.field private nativeHandle:J

.field private sensorManager:Landroid/hardware/SensorManager;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lru/yandex/core/Compass;->nativeHandle:J

    iput-wide v0, p0, Lru/yandex/core/Compass;->lastBearingChangeTime:J

    iput-wide p1, p0, Lru/yandex/core/Compass;->nativeHandle:J

    invoke-static {}, Lru/yandex/core/CoreApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lru/yandex/core/Compass;->windowManager:Landroid/view/WindowManager;

    invoke-static {}, Lru/yandex/core/CoreApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lru/yandex/core/Compass;->sensorManager:Landroid/hardware/SensorManager;

    return-void
.end method

.method private static native signal(JF)V
.end method


# virtual methods
.method cancel()V
    .locals 1

    iget-object v0, p0, Lru/yandex/core/Compass;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
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

    iget-wide v3, p0, Lru/yandex/core/Compass;->lastBearingChangeTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1f4

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    return-void

    :cond_0
    iput-wide v1, p0, Lru/yandex/core/Compass;->lastBearingChangeTime:J

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lru/yandex/core/Compass;->windowManager:Landroid/view/WindowManager;

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
    iget-wide v0, p0, Lru/yandex/core/Compass;->nativeHandle:J

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget p1, p1, v3

    add-float/2addr p1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr p1, v2

    invoke-static {v0, v1, p1}, Lru/yandex/core/Compass;->signal(JF)V

    :cond_5
    return-void
.end method

.method start()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lru/yandex/core/Compass;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lru/yandex/core/Compass;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
