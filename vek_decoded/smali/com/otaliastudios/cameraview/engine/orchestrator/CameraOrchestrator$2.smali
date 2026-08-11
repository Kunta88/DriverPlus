.class Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;
.super Ljava/lang/Object;
.source "CameraOrchestrator.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->schedule(Ljava/lang/String;ZLjava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;

.field final synthetic val$dispatchExceptions:Z

.field final synthetic val$handler:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

.field final synthetic val$job:Ljava/util/concurrent/Callable;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$source:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;Ljava/lang/String;Ljava/util/concurrent/Callable;Lcom/otaliastudios/cameraview/internal/WorkerHandler;ZLcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->this$0:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->val$job:Ljava/util/concurrent/Callable;

    iput-object p4, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->val$handler:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    iput-boolean p5, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->val$dispatchExceptions:Z

    iput-object p6, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->val$source:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 6

    .line 94
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->this$0:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;

    iget-object p1, p1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->this$0:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mJobs:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->this$0:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->access$000(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;)V

    .line 97
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 99
    :try_start_1
    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->val$name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "- Executing."

    aput-object v4, v3, p1

    invoke-virtual {v2, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->val$job:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/tasks/Task;

    .line 101
    iget-object v3, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->val$handler:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    new-instance v4, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2$1;

    invoke-direct {v4, p0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2$1;-><init>(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;)V

    invoke-static {v2, v3, v4}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->access$100(Lcom/google/android/gms/tasks/Task;Lcom/otaliastudios/cameraview/internal/WorkerHandler;Lcom/google/android/gms/tasks/OnCompleteListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 121
    sget-object v3, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->val$name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v0, "- Finished."

    aput-object v0, v4, p1

    aput-object v2, v4, v1

    invoke-virtual {v3, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    iget-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->val$dispatchExceptions:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->this$0:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;

    iget-object p1, p1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mCallback:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Callback;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->val$name:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Callback;->handleJobException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;->val$source:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 97
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
