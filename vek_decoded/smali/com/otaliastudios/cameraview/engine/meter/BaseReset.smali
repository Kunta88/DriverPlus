.class public abstract Lcom/otaliastudios/cameraview/engine/meter/BaseReset;
.super Lcom/otaliastudios/cameraview/engine/action/BaseAction;
.source "BaseReset.java"


# instance fields
.field private resetArea:Z


# direct methods
.method protected constructor <init>(Z)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;-><init>()V

    .line 24
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/meter/BaseReset;->resetArea:Z

    return-void
.end method


# virtual methods
.method protected final onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 3

    .line 29
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    .line 31
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/engine/meter/BaseReset;->resetArea:Z

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/otaliastudios/cameraview/engine/meter/BaseReset;->readCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 34
    new-instance v1, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 36
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/otaliastudios/cameraview/engine/meter/BaseReset;->onStarted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/params/MeteringRectangle;)V

    return-void
.end method

.method protected abstract onStarted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/params/MeteringRectangle;)V
.end method
