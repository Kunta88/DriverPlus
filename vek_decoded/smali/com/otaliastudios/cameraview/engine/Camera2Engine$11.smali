.class Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;
.super Ljava/lang/Object;
.source "Camera2Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/Camera2Engine;->setFlash(Lcom/otaliastudios/cameraview/controls/Flash;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

.field final synthetic val$flash:Lcom/otaliastudios/cameraview/controls/Flash;

.field final synthetic val$old:Lcom/otaliastudios/cameraview/controls/Flash;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/otaliastudios/cameraview/controls/Flash;Lcom/otaliastudios/cameraview/controls/Flash;)V
    .locals 0

    .line 1095
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->val$old:Lcom/otaliastudios/cameraview/controls/Flash;

    iput-object p3, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->val$flash:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1098
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->access$1300(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->val$old:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/otaliastudios/cameraview/controls/Flash;)Z

    move-result v0

    .line 1099
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object v1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->PREVIEW:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1104
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    sget-object v1, Lcom/otaliastudios/cameraview/controls/Flash;->OFF:Lcom/otaliastudios/cameraview/controls/Flash;

    iput-object v1, v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFlash:Lcom/otaliastudios/cameraview/controls/Flash;

    .line 1105
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->access$1300(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->val$old:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/otaliastudios/cameraview/controls/Flash;)Z

    .line 1107
    :try_start_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->access$900(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->access$1300(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1112
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->val$flash:Lcom/otaliastudios/cameraview/controls/Flash;

    iput-object v1, v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFlash:Lcom/otaliastudios/cameraview/controls/Flash;

    .line 1113
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->access$1300(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->val$old:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/otaliastudios/cameraview/controls/Flash;)Z

    .line 1114
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyRepeatingRequestBuilder()V

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1110
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-static {v1, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->access$700(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Landroid/hardware/camera2/CameraAccessException;)Lcom/otaliastudios/cameraview/CameraException;

    move-result-object v0

    throw v0

    :cond_1
    if-eqz v0, :cond_2

    .line 1117
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyRepeatingRequestBuilder()V

    :cond_2
    :goto_1
    return-void
.end method
