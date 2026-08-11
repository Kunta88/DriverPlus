.class Lcom/otaliastudios/cameraview/engine/Camera2Engine$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "Camera2Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/engine/Camera2Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$1;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 292
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$1;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-static {p1, p3}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->access$102(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;

    .line 293
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$1;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->access$000(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/engine/action/Action;

    .line 294
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$1;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-interface {v0, v1, p2, p3}, Lcom/otaliastudios/cameraview/engine/action/Action;->onCaptureCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 283
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$1;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->access$000(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/engine/action/Action;

    .line 284
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$1;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-interface {v0, v1, p2, p3}, Lcom/otaliastudios/cameraview/engine/action/Action;->onCaptureProgressed(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    .line 274
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$1;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->access$000(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/otaliastudios/cameraview/engine/action/Action;

    .line 275
    iget-object p4, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$1;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-interface {p3, p4, p2}, Lcom/otaliastudios/cameraview/engine/action/Action;->onCaptureStarted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;)V

    goto :goto_0

    :cond_0
    return-void
.end method
