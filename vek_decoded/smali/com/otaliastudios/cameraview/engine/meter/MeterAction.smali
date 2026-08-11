.class public Lcom/otaliastudios/cameraview/engine/meter/MeterAction;
.super Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;
.source "MeterAction.java"


# static fields
.field private static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field private static final TAG:Ljava/lang/String; = "MeterAction"


# instance fields
.field private action:Lcom/otaliastudios/cameraview/engine/action/BaseAction;

.field private final engine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

.field private meters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;",
            ">;"
        }
    .end annotation
.end field

.field private final regions:Lcom/otaliastudios/cameraview/metering/MeteringRegions;

.field private final skipIfPossible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;Lcom/otaliastudios/cameraview/metering/MeteringRegions;Z)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->regions:Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    .line 41
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->engine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    .line 42
    iput-boolean p3, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->skipIfPossible:Z

    return-void
.end method

.method private initialize(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 9

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->regions:Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    if-eqz v1, :cond_0

    .line 73
    new-instance v0, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->engine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    .line 74
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v3

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->engine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    .line 75
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getPreview()Lcom/otaliastudios/cameraview/preview/CameraPreview;

    move-result-object v1

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->getSurfaceSize()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v4

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->engine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    .line 76
    invoke-virtual {v1, v2}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getPreviewStreamSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v5

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->engine:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    .line 77
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getPreview()Lcom/otaliastudios/cameraview/preview/CameraPreview;

    move-result-object v1

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->isCropping()Z

    move-result v6

    .line 78
    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->getCharacteristics(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v7

    .line 79
    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->getBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;-><init>(Lcom/otaliastudios/cameraview/engine/offset/Angles;Lcom/otaliastudios/cameraview/size/Size;Lcom/otaliastudios/cameraview/size/Size;ZLandroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 81
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->regions:Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->transform(Lcom/otaliastudios/cameraview/metering/MeteringTransform;)Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    move-result-object p1

    const v1, 0x7fffffff

    .line 82
    invoke-virtual {p1, v1, v0}, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->get(ILcom/otaliastudios/cameraview/metering/MeteringTransform;)Ljava/util/List;

    move-result-object v0

    .line 85
    :cond_0
    new-instance p1, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;

    iget-boolean v1, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->skipIfPossible:Z

    invoke-direct {p1, v0, v1}, Lcom/otaliastudios/cameraview/engine/meter/ExposureMeter;-><init>(Ljava/util/List;Z)V

    .line 86
    new-instance v1, Lcom/otaliastudios/cameraview/engine/meter/FocusMeter;

    iget-boolean v2, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->skipIfPossible:Z

    invoke-direct {v1, v0, v2}, Lcom/otaliastudios/cameraview/engine/meter/FocusMeter;-><init>(Ljava/util/List;Z)V

    .line 87
    new-instance v2, Lcom/otaliastudios/cameraview/engine/meter/WhiteBalanceMeter;

    iget-boolean v3, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->skipIfPossible:Z

    invoke-direct {v2, v0, v3}, Lcom/otaliastudios/cameraview/engine/meter/WhiteBalanceMeter;-><init>(Ljava/util/List;Z)V

    const/4 v0, 0x3

    new-array v3, v0, [Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const/4 v6, 0x2

    aput-object v2, v3, v6

    .line 88
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->meters:Ljava/util/List;

    new-array v0, v0, [Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    aput-object p1, v0, v4

    aput-object v1, v0, v5

    aput-object v2, v0, v6

    .line 89
    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/action/Actions;->together([Lcom/otaliastudios/cameraview/engine/action/BaseAction;)Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->action:Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    return-void
.end method


# virtual methods
.method public getAction()Lcom/otaliastudios/cameraview/engine/action/BaseAction;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->action:Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 6

    .line 52
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->meters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "isSuccessful:"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;

    .line 53
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    sget-object v0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v2, v1, v5

    const-string v2, "returning false."

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    return v5

    .line 58
    :cond_1
    sget-object v0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v2, v1, v5

    const-string v2, "returning true."

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    return v4
.end method

.method protected onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 7

    .line 64
    sget-object v0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "onStart:"

    aput-object v4, v2, v3

    const-string v5, "initializing."

    const/4 v6, 0x1

    aput-object v5, v2, v6

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->initialize(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    const-string v2, "initialized."

    aput-object v2, v1, v6

    .line 66
    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;->onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    return-void
.end method
