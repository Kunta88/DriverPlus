.class Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$ResetFlashAction;
.super Lcom/otaliastudios/cameraview/engine/action/BaseAction;
.source "Snapshot2PictureRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetFlashAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;


# direct methods
.method private constructor <init>(Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$ResetFlashAction;->this$0:Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;

    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$1;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$ResetFlashAction;-><init>(Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;)V

    return-void
.end method


# virtual methods
.method protected onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 5

    .line 86
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    .line 90
    :try_start_0
    sget-object v0, Lcom/otaliastudios/cameraview/picture/SnapshotPictureRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ResetFlashAction:"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Reverting the flash changes."

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->getBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 92
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 93
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 94
    invoke-interface {p1, p0, v0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->applyBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 95
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$ResetFlashAction;->this$0:Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;

    invoke-static {v2}, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;->access$000(Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 96
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$ResetFlashAction;->this$0:Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;

    invoke-static {v2}, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;->access$100(Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 97
    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->applyBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
