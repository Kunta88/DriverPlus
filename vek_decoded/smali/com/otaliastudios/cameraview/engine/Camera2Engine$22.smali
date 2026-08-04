.class Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;
.super Ljava/lang/Object;
.source "Camera2Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/Camera2Engine;->setFrameProcessingFormat(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

.field final synthetic val$format:I


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;I)V
    .locals 0

    .line 1502
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iput p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->val$format:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1505
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->isAtLeast(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->isChangingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1508
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->val$format:I

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->setFrameProcessingFormat(I)V

    return-void

    .line 1511
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->val$format:I

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x23

    :goto_0
    iput v1, v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFrameProcessingFormat:I

    .line 1512
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->isAtLeast(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1513
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->restartBind()Lcom/google/android/gms/tasks/Task;

    :cond_2
    return-void
.end method
