.class public Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;
.super Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;
.source "Snapshot2PictureRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$ResetFlashAction;,
        Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$FlashAction;
    }
.end annotation


# static fields
.field private static final LOCK_TIMEOUT:J = 0x9c4L


# instance fields
.field private final mAction:Lcom/otaliastudios/cameraview/engine/action/Action;

.field private final mActionNeeded:Z

.field private final mHolder:Lcom/otaliastudios/cameraview/engine/action/ActionHolder;

.field private mOriginalAeMode:Ljava/lang/Integer;

.field private mOriginalFlashMode:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;Lcom/otaliastudios/cameraview/size/AspectRatio;)V
    .locals 6

    .line 112
    invoke-virtual {p2}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getOverlay()Lcom/otaliastudios/cameraview/overlay/Overlay;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;-><init>(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/picture/PictureRecorder$PictureResultListener;Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;Lcom/otaliastudios/cameraview/size/AspectRatio;Lcom/otaliastudios/cameraview/overlay/Overlay;)V

    .line 113
    iput-object p2, p0, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;->mHolder:Lcom/otaliastudios/cameraview/engine/action/ActionHolder;

    const/4 p1, 0x2

    new-array p3, p1, [Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    .line 115
    new-instance p4, Lcom/otaliastudios/cameraview/engine/lock/LockAction;

    invoke-direct {p4}, Lcom/otaliastudios/cameraview/engine/lock/LockAction;-><init>()V

    const-wide/16 v0, 0x9c4

    .line 116
    invoke-static {v0, v1, p4}, Lcom/otaliastudios/cameraview/engine/action/Actions;->timeout(JLcom/otaliastudios/cameraview/engine/action/BaseAction;)Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object p4

    const/4 v0, 0x0

    aput-object p4, p3, v0

    new-instance p4, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$FlashAction;

    const/4 v1, 0x0

    invoke-direct {p4, p0, v1}, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$FlashAction;-><init>(Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$1;)V

    const/4 v2, 0x1

    aput-object p4, p3, v2

    .line 115
    invoke-static {p3}, Lcom/otaliastudios/cameraview/engine/action/Actions;->sequence([Lcom/otaliastudios/cameraview/engine/action/BaseAction;)Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object p3

    iput-object p3, p0, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;->mAction:Lcom/otaliastudios/cameraview/engine/action/Action;

    .line 118
    new-instance p4, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$1;

    invoke-direct {p4, p0}, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$1;-><init>(Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;)V

    invoke-interface {p3, p4}, Lcom/otaliastudios/cameraview/engine/action/Action;->addCallback(Lcom/otaliastudios/cameraview/engine/action/ActionCallback;)V

    .line 126
    invoke-interface {p2, p3}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->getLastResult(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p4

    if-nez p4, :cond_0

    .line 128
    sget-object v3, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array p1, p1, [Ljava/lang/Object;

    const-string v4, "Picture snapshot requested very early, before the first preview frame."

    aput-object v4, p1, v0

    const-string v4, "Metering might not work as intended."

    aput-object v4, p1, v2

    invoke-virtual {v3, p1}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    if-nez p4, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 132
    invoke-virtual {p4, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    .line 133
    :goto_0
    invoke-virtual {p2}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getPictureSnapshotMetering()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 135
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p4, 0x4

    if-ne p1, p4, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;->mActionNeeded:Z

    .line 136
    invoke-interface {p2, p3}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->getBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object p4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p4}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;->mOriginalAeMode:Ljava/lang/Integer;

    .line 137
    invoke-interface {p2, p3}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->getBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;->mOriginalFlashMode:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$000(Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;)Ljava/lang/Integer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;->mOriginalAeMode:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;)Ljava/lang/Integer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;->mOriginalFlashMode:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$301(Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;)V
    .locals 0

    .line 44
    invoke-super {p0}, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->take()V

    return-void
.end method


# virtual methods
.method protected dispatchResult()V
    .locals 2

    .line 155
    new-instance v0, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$ResetFlashAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$ResetFlashAction;-><init>(Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$1;)V

    iget-object v1, p0, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;->mHolder:Lcom/otaliastudios/cameraview/engine/action/ActionHolder;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$ResetFlashAction;->start(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    .line 156
    invoke-super {p0}, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->dispatchResult()V

    return-void
.end method

.method public take()V
    .locals 6

    .line 142
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;->mActionNeeded:Z

    const/4 v1, 0x1

    const-string v2, "take:"

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v0, :cond_0

    .line 143
    sget-object v0, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v3

    const-string v2, "Engine does no metering or needs no flash."

    aput-object v2, v5, v1

    const-string v1, "Taking fast snapshot."

    aput-object v1, v5, v4

    invoke-virtual {v0, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    invoke-super {p0}, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->take()V

    goto :goto_0

    .line 147
    :cond_0
    sget-object v0, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const-string v2, "Engine needs flash. Starting action"

    aput-object v2, v4, v1

    invoke-virtual {v0, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;->mAction:Lcom/otaliastudios/cameraview/engine/action/Action;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;->mHolder:Lcom/otaliastudios/cameraview/engine/action/ActionHolder;

    invoke-interface {v0, v1}, Lcom/otaliastudios/cameraview/engine/action/Action;->start(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    :goto_0
    return-void
.end method
