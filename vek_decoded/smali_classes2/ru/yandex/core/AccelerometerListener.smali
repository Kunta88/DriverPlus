.class public Lru/yandex/core/AccelerometerListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private nativeListenerHandle:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lru/yandex/core/AccelerometerListener;->nativeListenerHandle:J

    return-void
.end method

.method private native nativeOnSensorChanged(FFFJJ)V
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v3, v0, v1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v4, v0, v1

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x2

    aget v5, p1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lru/yandex/core/AccelerometerListener;->nativeListenerHandle:J

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lru/yandex/core/AccelerometerListener;->nativeOnSensorChanged(FFFJJ)V

    return-void
.end method
