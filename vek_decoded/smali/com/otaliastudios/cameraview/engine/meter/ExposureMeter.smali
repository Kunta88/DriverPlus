.class public Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;
.super Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;
.source "ExposureMeter.java"


# static fields
.field private static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field private static final STATE_WAITING_PRECAPTURE:I = 0x0

.field private static final STATE_WAITING_PRECAPTURE_END:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ExposureMeter"


# instance fields
.field private mSupportsAreas:Z

.field private mSupportsTrigger:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;Z)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;-><init>(Ljava/util/List;Z)V

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->mSupportsAreas:Z

    .line 28
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->mSupportsTrigger:Z

    return-void
.end method


# virtual methods
.method protected checkIsSupported(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)Z
    .locals 9

    .line 38
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v1, -0x1

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->readCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->getBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eqz p1, :cond_2

    .line 43
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v3, :cond_1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v6, :cond_1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v1, :cond_1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v5, :cond_1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v4, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    xor-int/2addr v0, v3

    .line 49
    iput-boolean v0, p0, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->mSupportsTrigger:Z

    .line 50
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 50
    invoke-virtual {p0, v0, v7}, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->readCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->mSupportsAreas:Z

    if-eqz p1, :cond_5

    .line 52
    iget-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->mSupportsTrigger:Z

    if-nez p1, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    .line 53
    :goto_3
    sget-object v0, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "checkIsSupported:"

    aput-object v8, v7, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v3

    const-string v2, "trigger:"

    aput-object v2, v7, v1

    iget-boolean v1, p0, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->mSupportsTrigger:Z

    .line 54
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v6

    const-string v1, "areas:"

    aput-object v1, v7, v5

    iget-boolean v1, p0, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->mSupportsAreas:Z

    .line 55
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v4

    .line 53
    invoke-virtual {v0, v7}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    return p1
.end method

.method protected checkShouldSkip(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)Z
    .locals 5

    .line 61
    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->getLastResult(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 63
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 65
    :goto_0
    sget-object v3, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "checkShouldSkip:"

    aput-object v4, v2, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-virtual {v3, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    return p1

    .line 68
    :cond_1
    sget-object p1, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "checkShouldSkip: false - lastResult is null."

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    return v1
.end method

.method public onCaptureCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 7

    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;->onCaptureCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 111
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 112
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 113
    sget-object p3, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onCaptureCompleted:"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "aeState:"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string v5, "aeTriggerState:"

    const/4 v6, 0x3

    aput-object v5, v1, v6

    const/4 v5, 0x4

    aput-object p2, v1, v5

    invoke-virtual {p3, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->getState()I

    move-result p3

    const v1, 0x7fffffff

    if-nez p3, :cond_4

    .line 117
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eq p3, v2, :cond_3

    if-eq p3, v6, :cond_2

    if-eq p3, v5, :cond_3

    if-eq p3, v0, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p0, v4}, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->setState(I)V

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p0, v3}, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->setSuccessful(Z)V

    .line 137
    invoke-virtual {p0, v1}, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->setState(I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 127
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v4, :cond_4

    .line 129
    invoke-virtual {p0, v4}, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->setSuccessful(Z)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->setState(I)V

    .line 148
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->getState()I

    move-result p2

    if-ne p2, v4, :cond_7

    .line 149
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v2, :cond_6

    if-eq p1, v6, :cond_5

    if-eq p1, v5, :cond_6

    goto :goto_1

    .line 158
    :cond_5
    invoke-virtual {p0, v3}, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->setSuccessful(Z)V

    .line 159
    invoke-virtual {p0, v1}, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->setState(I)V

    goto :goto_1

    .line 152
    :cond_6
    invoke-virtual {p0, v4}, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->setSuccessful(Z)V

    .line 153
    invoke-virtual {p0, v1}, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->setState(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method protected onCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 2

    .line 101
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;->onCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    .line 104
    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->getBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method protected onStarted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/cameraview/engine/action/ActionHolder;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;)V"
        }
    .end annotation

    .line 75
    sget-object v0, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onStarted:"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "with areas:"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->mSupportsAreas:Z

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->readCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 79
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 80
    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->getBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 81
    invoke-interface {p2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    new-array v0, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 80
    invoke-virtual {v1, v2, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 84
    :cond_0
    iget-boolean p2, p0, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->mSupportsTrigger:Z

    if-eqz p2, :cond_1

    .line 85
    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->getBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p2

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 87
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 85
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 91
    :cond_1
    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->applyBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;)V

    .line 92
    iget-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->mSupportsTrigger:Z

    if-eqz p1, :cond_2

    .line 93
    invoke-virtual {p0, v3}, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->setState(I)V

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0, v4}, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;->setState(I)V

    :goto_0
    return-void
.end method
