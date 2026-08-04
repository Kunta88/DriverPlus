.class Lcom/otaliastudios/cameraview/engine/Camera2Engine$21;
.super Ljava/lang/Object;
.source "Camera2Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/Camera2Engine;->setHasFrameProcessors(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

.field final synthetic val$hasFrameProcessors:Z


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Z)V
    .locals 0

    .line 1477
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$21;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iput-boolean p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$21;->val$hasFrameProcessors:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1480
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$21;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->isAtLeast(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$21;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->isChangingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$21;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-boolean v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$21;->val$hasFrameProcessors:Z

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->setHasFrameProcessors(Z)V

    return-void

    .line 1487
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$21;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-boolean v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$21;->val$hasFrameProcessors:Z

    iput-boolean v1, v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mHasFrameProcessors:Z

    .line 1488
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$21;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->isAtLeast(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1489
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$21;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->restartBind()Lcom/google/android/gms/tasks/Task;

    :cond_1
    return-void
.end method
