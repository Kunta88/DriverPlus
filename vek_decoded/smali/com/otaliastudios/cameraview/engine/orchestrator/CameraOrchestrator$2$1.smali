.class Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2$1;
.super Ljava/lang/Object;
.source "CameraOrchestrator.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->onComplete(Lcom/google/android/gms/tasks/Task;)V
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
.field final synthetic this$1:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2$1;->this$1:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;)V"
        }
    .end annotation

    .line 104
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 106
    sget-object p1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2$1;->this$1:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;

    iget-object v5, v5, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->val$name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "- Finished with ERROR."

    aput-object v3, v4, v2

    aput-object v0, v4, v1

    invoke-virtual {p1, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2$1;->this$1:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;

    iget-boolean p1, p1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->val$dispatchExceptions:Z

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2$1;->this$1:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;

    iget-object p1, p1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->this$0:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;

    iget-object p1, p1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mCallback:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Callback;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2$1;->this$1:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->val$name:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Callback;->handleJobException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2$1;->this$1:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;

    iget-object p1, p1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->val$source:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    sget-object p1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2$1;->this$1:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->val$name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "- Finished because ABORTED."

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2$1;->this$1:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;

    iget-object p1, p1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->val$source:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 115
    :cond_2
    sget-object v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2$1;->this$1:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;

    iget-object v4, v4, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->val$name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "- Finished."

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2$1;->this$1:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->val$source:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
