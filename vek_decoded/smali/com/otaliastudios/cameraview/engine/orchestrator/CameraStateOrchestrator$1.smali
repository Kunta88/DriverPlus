.class Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$1;
.super Ljava/lang/Object;
.source "CameraStateOrchestrator.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateChange(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;ZLjava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

.field final synthetic val$changeCount:I


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;I)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$1;->this$0:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iput p2, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$1;->val$changeCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;)V"
        }
    .end annotation

    .line 84
    iget p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$1;->val$changeCount:I

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$1;->this$0:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->access$000(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 85
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$1;->this$0:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->access$200(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;)Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->access$102(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;)Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    :cond_0
    return-void
.end method
