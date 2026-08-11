.class public Lcom/otaliastudios/cameraview/engine/meter/FocusMeter;
.super Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;
.source "FocusMeter.java"


# static fields
.field private static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field private static final TAG:Ljava/lang/String; = "FocusMeter"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/otaliastudios/cameraview/engine/meter/FocusMeter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/engine/meter/FocusMeter;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

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

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;-><init>(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method protected checkIsSupported(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)Z
    .locals 5

    .line 31
    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->getBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 34
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 37
    :goto_0
    sget-object v3, Lcom/otaliastudios/cameraview/engine/meter/FocusMeter;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "checkIsSupported:"

    aput-object v4, v0, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {v3, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    return p1
.end method

.method protected checkShouldSkip(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)Z
    .locals 5

    .line 43
    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->getLastResult(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 45
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 48
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 49
    :goto_0
    sget-object v3, Lcom/otaliastudios/cameraview/engine/meter/FocusMeter;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "checkShouldSkip:"

    aput-object v4, v2, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-virtual {v3, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    return p1

    .line 52
    :cond_2
    sget-object p1, Lcom/otaliastudios/cameraview/engine/meter/FocusMeter;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "checkShouldSkip: false - lastResult is null."

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    return v1
.end method

.method public onCaptureCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;->onCaptureCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 84
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 85
    sget-object p2, Lcom/otaliastudios/cameraview/engine/meter/FocusMeter;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "onCaptureCompleted:"

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const-string v0, "afState:"

    const/4 v2, 0x1

    aput-object v0, p3, v2

    const/4 v0, 0x2

    aput-object p1, p3, v0

    invoke-virtual {p2, p3}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x4

    const p3, 0x7fffffff

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p0, v1}, Lcom/otaliastudios/cameraview/engine/meter/FocusMeter;->setSuccessful(Z)V

    .line 95
    invoke-virtual {p0, p3}, Lcom/otaliastudios/cameraview/engine/meter/FocusMeter;->setState(I)V

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p0, v2}, Lcom/otaliastudios/cameraview/engine/meter/FocusMeter;->setSuccessful(Z)V

    .line 90
    invoke-virtual {p0, p3}, Lcom/otaliastudios/cameraview/engine/meter/FocusMeter;->setState(I)V

    :goto_0
    return-void
.end method

.method protected onCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;->onCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    .line 77
    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->getBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

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

    .line 59
    sget-object v0, Lcom/otaliastudios/cameraview/engine/meter/FocusMeter;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

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

    .line 60
    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->getBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 61
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 62
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/otaliastudios/cameraview/engine/meter/FocusMeter;->readCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 64
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez v0, :cond_0

    .line 65
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 66
    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->getBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 67
    invoke-interface {p2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    new-array v0, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 66
    invoke-virtual {v1, v2, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 69
    :cond_0
    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->applyBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;)V

    return-void
.end method
