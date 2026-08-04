.class public Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;
.super Ljava/lang/Object;
.source "CameraOrchestrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Token;,
        Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Callback;
    }
.end annotation


# static fields
.field protected static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field protected static final TAG:Ljava/lang/String; = "CameraOrchestrator"


# instance fields
.field protected final mCallback:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Callback;

.field private final mDelayedJobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected final mJobs:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Token;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Callback;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mJobs:Ljava/util/ArrayDeque;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mDelayedJobs:Ljava/util/Map;

    .line 64
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mCallback:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Callback;

    .line 65
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->ensureToken()V

    return-void
.end method

.method static synthetic access$000(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->ensureToken()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gms/tasks/Task;Lcom/otaliastudios/cameraview/internal/WorkerHandler;Lcom/google/android/gms/tasks/OnCompleteListener;)V
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->applyCompletionListener(Lcom/google/android/gms/tasks/Task;Lcom/otaliastudios/cameraview/internal/WorkerHandler;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;)Ljava/util/Map;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mDelayedJobs:Ljava/util/Map;

    return-object p0
.end method

.method private static applyCompletionListener(Lcom/google/android/gms/tasks/Task;Lcom/otaliastudios/cameraview/internal/WorkerHandler;Lcom/google/android/gms/tasks/OnCompleteListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;",
            "Lcom/otaliastudios/cameraview/internal/WorkerHandler;",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$4;

    invoke-direct {v0, p2, p0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$4;-><init>(Lcom/google/android/gms/tasks/OnCompleteListener;Lcom/google/android/gms/tasks/Task;)V

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->run(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :goto_0
    return-void
.end method

.method private ensureToken()V
    .locals 6

    .line 181
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mJobs:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mJobs:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Token;

    const-string v3, "BASE"

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v5

    invoke-direct {v2, v3, v5, v4}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Token;-><init>(Ljava/lang/String;Lcom/google/android/gms/tasks/Task;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$1;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public remove(Ljava/lang/String;)V
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mDelayedJobs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mCallback:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Callback;

    invoke-interface {v1, p1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Callback;->getJobWorker(Ljava/lang/String;)Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mDelayedJobs:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->remove(Ljava/lang/Runnable;)V

    .line 157
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mDelayedJobs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_0
    new-instance v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Token;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    invoke-direct {v1, p1, v3, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Token;-><init>(Ljava/lang/String;Lcom/google/android/gms/tasks/Task;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$1;)V

    .line 161
    :goto_0
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mJobs:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 162
    :cond_1
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->ensureToken()V

    .line 163
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public reset()V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mDelayedJobs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 171
    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mJobs:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Token;

    .line 172
    iget-object v3, v3, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Token;->name:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 175
    invoke-virtual {p0, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 177
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public schedule(Ljava/lang/String;ZLjava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$1;

    invoke-direct {v0, p0, p3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$1;-><init>(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->schedule(Ljava/lang/String;ZLjava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public schedule(Ljava/lang/String;ZLjava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/concurrent/Callable<",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    .line 86
    sget-object v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "- Scheduling."

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 88
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mCallback:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Callback;

    invoke-interface {v1, p1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Callback;->getJobWorker(Ljava/lang/String;)Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    move-result-object v1

    .line 89
    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 90
    :try_start_0
    iget-object v3, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mJobs:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Token;

    iget-object v3, v3, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Token;->task:Lcom/google/android/gms/tasks/Task;

    new-instance v11, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;

    move-object v4, v11

    move-object v5, p0

    move-object v6, p1

    move-object v7, p3

    move-object v8, v1

    move v9, p2

    move-object v10, v0

    invoke-direct/range {v4 .. v10}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$2;-><init>(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;Ljava/lang/String;Ljava/util/concurrent/Callable;Lcom/otaliastudios/cameraview/internal/WorkerHandler;ZLcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-static {v3, v1, v11}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->applyCompletionListener(Lcom/google/android/gms/tasks/Task;Lcom/otaliastudios/cameraview/internal/WorkerHandler;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    .line 127
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mJobs:Ljava/util/ArrayDeque;

    new-instance p3, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Token;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {p3, p1, v1, v3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Token;-><init>(Ljava/lang/String;Lcom/google/android/gms/tasks/Task;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$1;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 128
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 128
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public scheduleDelayed(Ljava/lang/String;JLjava/lang/Runnable;)V
    .locals 2

    .line 135
    new-instance v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$3;

    invoke-direct {v0, p0, p1, p4}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$3;-><init>(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 146
    iget-object p4, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mDelayedJobs:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mCallback:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Callback;

    invoke-interface {v1, p1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Callback;->getJobWorker(Ljava/lang/String;)Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v0}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->post(JLjava/lang/Runnable;)V

    .line 149
    monitor-exit p4

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
