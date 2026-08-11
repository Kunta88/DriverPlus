.class Lcom/otaliastudios/cameraview/internal/WorkerHandler$4;
.super Ljava/lang/Object;
.source "WorkerHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/internal/WorkerHandler;->post(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$source:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/internal/WorkerHandler;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler$4;->this$0:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler$4;->val$source:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p3, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler$4;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler$4;->val$source:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler$4;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 179
    iget-object v1, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler$4;->val$source:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    :goto_0
    return-void
.end method
