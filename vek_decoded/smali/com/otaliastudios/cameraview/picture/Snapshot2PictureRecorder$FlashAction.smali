.class Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$FlashAction;
.super Lcom/otaliastudios/cameraview/engine/action/BaseAction;
.source "Snapshot2PictureRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlashAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;


# direct methods
.method private constructor <init>(Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$FlashAction;->this$0:Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;

    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$1;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$FlashAction;-><init>(Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;)V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 6

    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onCaptureCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 66
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const p2, 0x7fffffff

    const-string p3, "Taking snapshot."

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "FlashAction:"

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-nez p1, :cond_0

    .line 68
    sget-object p1, Lcom/otaliastudios/cameraview/picture/SnapshotPictureRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const-string v2, "Waiting flash, but flashState is null!"

    aput-object v2, v4, v1

    aput-object p3, v4, v0

    invoke-virtual {p1, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    invoke-virtual {p0, p2}, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$FlashAction;->setState(I)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 72
    sget-object p1, Lcom/otaliastudios/cameraview/picture/SnapshotPictureRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const-string v2, "Waiting flash and we have FIRED state!"

    aput-object v2, v4, v1

    aput-object p3, v4, v0

    invoke-virtual {p1, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    invoke-virtual {p0, p2}, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$FlashAction;->setState(I)V

    goto :goto_0

    .line 76
    :cond_1
    sget-object p2, Lcom/otaliastudios/cameraview/picture/SnapshotPictureRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v2, p3, v3

    const-string v2, "Waiting flash but flashState is"

    aput-object v2, p3, v1

    aput-object p1, p3, v0

    const-string p1, ". Waiting..."

    aput-object p1, p3, v4

    invoke-virtual {p2, p3}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method protected onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 5

    .line 52
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    .line 53
    sget-object v0, Lcom/otaliastudios/cameraview/picture/SnapshotPictureRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "FlashAction:"

    aput-object v4, v2, v3

    const-string v3, "Parameters locked, opening torch."

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->getBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 56
    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->getBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 57
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 58
    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->applyBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;)V

    return-void
.end method
