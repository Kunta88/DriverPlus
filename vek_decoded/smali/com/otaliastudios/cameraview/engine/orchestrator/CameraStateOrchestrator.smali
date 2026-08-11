.class public Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;
.super Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;
.source "CameraStateOrchestrator.java"


# instance fields
.field private mCurrentState:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

.field private mStateChangeCount:I

.field private mTargetState:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Callback;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;-><init>(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Callback;)V

    .line 19
    sget-object p1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->OFF:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->mCurrentState:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    .line 20
    sget-object p1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->OFF:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->mTargetState:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->mStateChangeCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->mStateChangeCount:I

    return p0
.end method

.method static synthetic access$102(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;)Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->mTargetState:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;)Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->mCurrentState:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    return-object p0
.end method

.method static synthetic access$202(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;)Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->mCurrentState:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    return-object p1
.end method


# virtual methods
.method public getCurrentState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->mCurrentState:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    return-object v0
.end method

.method public getTargetState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->mTargetState:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    return-object v0
.end method

.method public hasPendingStateChange()Z
    .locals 5

    .line 38
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->mJobs:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Token;

    .line 40
    iget-object v3, v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Token;->name:Ljava/lang/String;

    const-string v4, " >> "

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Token;->name:Ljava/lang/String;

    const-string v4, " << "

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    iget-object v2, v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Token;->task:Lcom/google/android/gms/tasks/Task;

    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 42
    monitor-exit v0

    return v1

    :cond_2
    const/4 v1, 0x0

    .line 45
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw v1

    :goto_1
    goto :goto_0
.end method

.method public scheduleStateChange(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;ZLjava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;",
            "Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;",
            "Z",
            "Ljava/util/concurrent/Callable<",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    .line 54
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->mStateChangeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->mStateChangeCount:I

    .line 55
    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->mTargetState:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    .line 57
    invoke-virtual {p2, p1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->isAtLeast(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;)Z

    move-result v1

    xor-int/lit8 v8, v1, 0x1

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz v8, :cond_0

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    :goto_0
    new-instance v9, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, v1

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;-><init>(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/util/concurrent/Callable;Z)V

    invoke-virtual {p0, v1, p3, v9}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->schedule(Ljava/lang/String;ZLjava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$1;

    invoke-direct {p2, p0, v0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$1;-><init>(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;I)V

    .line 81
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$3;-><init>(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->schedule(Ljava/lang/String;ZLjava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public scheduleStatefulDelayed(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;JLjava/lang/Runnable;)V
    .locals 1

    .line 110
    new-instance v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$4;

    invoke-direct {v0, p0, p2, p5}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$4;-><init>(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleDelayed(Ljava/lang/String;JLjava/lang/Runnable;)V

    return-void
.end method
