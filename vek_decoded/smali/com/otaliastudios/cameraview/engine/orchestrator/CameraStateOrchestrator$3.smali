.class Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$3;
.super Ljava/lang/Object;
.source "CameraStateOrchestrator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

.field final synthetic val$atLeast:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

.field final synthetic val$job:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$3;->this$0:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$3;->val$atLeast:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    iput-object p3, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$3;->val$job:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$3;->this$0:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->getCurrentState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$3;->val$atLeast:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->isAtLeast(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$3;->val$job:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
