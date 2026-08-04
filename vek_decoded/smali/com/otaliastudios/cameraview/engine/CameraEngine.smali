.class public abstract Lcom/otaliastudios/cameraview/engine/CameraEngine;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;
.implements Lcom/otaliastudios/cameraview/picture/PictureRecorder$PictureResultListener;
.implements Lcom/otaliastudios/cameraview/video/VideoRecorder$VideoResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/cameraview/engine/CameraEngine$NoOpExceptionHandler;,
        Lcom/otaliastudios/cameraview/engine/CameraEngine$CrashExceptionHandler;,
        Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;
    }
.end annotation


# static fields
.field private static final DESTROY_RETRIES:I = 0x2

.field protected static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field protected static final TAG:Ljava/lang/String; = "CameraEngine"


# instance fields
.field private final mCallback:Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

.field mCrashHandler:Landroid/os/Handler;

.field private mHandler:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

.field private final mOrchestrator:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 133
    const-class v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method protected constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;)V
    .locals 2

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    new-instance v1, Lcom/otaliastudios/cameraview/engine/CameraEngine$1;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$1;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V

    invoke-direct {v0, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;-><init>(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Callback;)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->mOrchestrator:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    .line 156
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->mCallback:Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    .line 157
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->mCrashHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 158
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->recreateHandler(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/otaliastudios/cameraview/engine/CameraEngine;)Lcom/otaliastudios/cameraview/internal/WorkerHandler;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->mHandler:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/otaliastudios/cameraview/engine/CameraEngine;Ljava/lang/Throwable;Z)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->handleException(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/otaliastudios/cameraview/engine/CameraEngine;)Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->mCallback:Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    return-object p0
.end method

.method private destroy(ZI)V
    .locals 11

    .line 293
    sget-object v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DESTROY:"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "state:"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "thread:"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 294
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "depth:"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 295
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const/4 v2, 0x7

    const-string v9, "unrecoverably:"

    aput-object v9, v1, v2

    .line 296
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v9, 0x8

    aput-object v2, v1, v9

    .line 293
    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->mHandler:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->getThread()Landroid/os/HandlerThread;

    move-result-object v1

    new-instance v2, Lcom/otaliastudios/cameraview/engine/CameraEngine$NoOpExceptionHandler;

    const/4 v9, 0x0

    invoke-direct {v2, v9}, Lcom/otaliastudios/cameraview/engine/CameraEngine$NoOpExceptionHandler;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine$1;)V

    invoke-virtual {v1, v2}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 303
    :cond_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 304
    invoke-virtual {p0, v4}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->stop(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    iget-object v9, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->mHandler:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    .line 305
    invoke-virtual {v9}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    new-instance v10, Lcom/otaliastudios/cameraview/engine/CameraEngine$3;

    invoke-direct {v10, p0, v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine$3;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;Ljava/util/concurrent/CountDownLatch;)V

    .line 304
    invoke-virtual {v2, v9, v10}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    const-wide/16 v9, 0x6

    .line 313
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v9, v10, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_2

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "DESTROY: Could not destroy synchronously after 6 seconds."

    aput-object v2, v1, v3

    const-string v2, "Current thread:"

    aput-object v2, v1, v4

    .line 319
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Handler thread:"

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->mHandler:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    .line 320
    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->getThread()Landroid/os/HandlerThread;

    move-result-object v2

    aput-object v2, v1, v7

    .line 318
    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    add-int/2addr p2, v4

    if-ge p2, v5, :cond_1

    .line 323
    invoke-direct {p0, v4}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->recreateHandler(Z)V

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "DESTROY: Trying again on thread:"

    aput-object v2, v1, v3

    .line 324
    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->mHandler:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->getThread()Landroid/os/HandlerThread;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 325
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->destroy(ZI)V

    goto :goto_0

    :cond_1
    new-array p1, v4, [Ljava/lang/Object;

    const-string p2, "DESTROY: Giving up because DESTROY_RETRIES was reached."

    aput-object p2, p1, v3

    .line 327
    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method private handleException(Ljava/lang/Throwable;Z)V
    .locals 6

    const/4 v0, 0x1

    const-string v1, "EXCEPTION:"

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 214
    sget-object p2, Lcom/otaliastudios/cameraview/engine/CameraEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v1, v4, v3

    const-string v5, "Handler thread is gone. Replacing."

    aput-object v5, v4, v0

    invoke-virtual {p2, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 215
    invoke-direct {p0, v3}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->recreateHandler(Z)V

    .line 220
    :cond_0
    sget-object p2, Lcom/otaliastudios/cameraview/engine/CameraEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const-string v1, "Scheduling on the crash handler..."

    aput-object v1, v2, v0

    invoke-virtual {p2, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 221
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->mCrashHandler:Landroid/os/Handler;

    new-instance v0, Lcom/otaliastudios/cameraview/engine/CameraEngine$2;

    invoke-direct {v0, p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine$2;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private recreateHandler(Z)V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->mHandler:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->destroy()V

    :cond_0
    const-string v0, "CameraViewEngine"

    .line 255
    invoke-static {v0}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->get(Ljava/lang/String;)Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->mHandler:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    .line 256
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->getThread()Landroid/os/HandlerThread;

    move-result-object v0

    new-instance v1, Lcom/otaliastudios/cameraview/engine/CameraEngine$CrashExceptionHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/otaliastudios/cameraview/engine/CameraEngine$CrashExceptionHandler;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;Lcom/otaliastudios/cameraview/engine/CameraEngine$1;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    if-eqz p1, :cond_1

    .line 257
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->mOrchestrator:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->reset()V

    :cond_1
    return-void
.end method

.method private startBind()Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->mOrchestrator:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v3, Lcom/otaliastudios/cameraview/engine/CameraEngine$8;

    invoke-direct {v3, p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$8;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateChange(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;ZLjava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private startEngine()Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->mOrchestrator:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->OFF:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v3, Lcom/otaliastudios/cameraview/engine/CameraEngine$5;

    invoke-direct {v3, p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$5;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateChange(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;ZLjava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/otaliastudios/cameraview/engine/CameraEngine$4;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$4;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V

    .line 393
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private startPreview()Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->mOrchestrator:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->PREVIEW:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v3, Lcom/otaliastudios/cameraview/engine/CameraEngine$10;

    invoke-direct {v3, p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$10;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateChange(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;ZLjava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private stopBind(Z)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->mOrchestrator:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    xor-int/lit8 p1, p1, 0x1

    new-instance v3, Lcom/otaliastudios/cameraview/engine/CameraEngine$9;

    invoke-direct {v3, p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$9;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateChange(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;ZLjava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private stopEngine(Z)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->mOrchestrator:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->OFF:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    xor-int/lit8 p1, p1, 0x1

    new-instance v3, Lcom/otaliastudios/cameraview/engine/CameraEngine$7;

    invoke-direct {v3, p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$7;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateChange(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;ZLjava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/otaliastudios/cameraview/engine/CameraEngine$6;

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$6;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V

    .line 416
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private stopPreview(Z)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->mOrchestrator:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->PREVIEW:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    xor-int/lit8 p1, p1, 0x1

    new-instance v3, Lcom/otaliastudios/cameraview/engine/CameraEngine$11;

    invoke-direct {v3, p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$11;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateChange(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;ZLjava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected abstract collectCameraInfo(Lcom/otaliastudios/cameraview/controls/Facing;)Z
.end method

.method public destroy(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 289
    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->destroy(ZI)V

    return-void
.end method

.method public abstract getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;
.end method

.method public abstract getAudio()Lcom/otaliastudios/cameraview/controls/Audio;
.end method

.method public abstract getAudioBitRate()I
.end method

.method public abstract getAudioCodec()Lcom/otaliastudios/cameraview/controls/AudioCodec;
.end method

.method public abstract getAutoFocusResetDelay()J
.end method

.method protected final getCallback()Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->mCallback:Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    return-object v0
.end method

.method public abstract getCameraOptions()Lcom/otaliastudios/cameraview/CameraOptions;
.end method

.method public abstract getExposureCorrectionValue()F
.end method

.method public abstract getFacing()Lcom/otaliastudios/cameraview/controls/Facing;
.end method

.method public abstract getFlash()Lcom/otaliastudios/cameraview/controls/Flash;
.end method

.method public abstract getFrameManager()Lcom/otaliastudios/cameraview/frame/FrameManager;
.end method

.method public abstract getFrameProcessingFormat()I
.end method

.method public abstract getFrameProcessingMaxHeight()I
.end method

.method public abstract getFrameProcessingMaxWidth()I
.end method

.method public abstract getFrameProcessingPoolSize()I
.end method

.method public abstract getHdr()Lcom/otaliastudios/cameraview/controls/Hdr;
.end method

.method public abstract getLocation()Landroid/location/Location;
.end method

.method public abstract getMode()Lcom/otaliastudios/cameraview/controls/Mode;
.end method

.method protected final getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->mOrchestrator:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    return-object v0
.end method

.method public abstract getOverlay()Lcom/otaliastudios/cameraview/overlay/Overlay;
.end method

.method public abstract getPictureFormat()Lcom/otaliastudios/cameraview/controls/PictureFormat;
.end method

.method public abstract getPictureMetering()Z
.end method

.method public abstract getPictureSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;
.end method

.method public abstract getPictureSizeSelector()Lcom/otaliastudios/cameraview/size/SizeSelector;
.end method

.method public abstract getPictureSnapshotMetering()Z
.end method

.method public abstract getPreview()Lcom/otaliastudios/cameraview/preview/CameraPreview;
.end method

.method public abstract getPreviewFrameRate()F
.end method

.method public abstract getPreviewFrameRateExact()Z
.end method

.method public abstract getPreviewStreamSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;
.end method

.method public abstract getPreviewStreamSizeSelector()Lcom/otaliastudios/cameraview/size/SizeSelector;
.end method

.method public abstract getSnapshotMaxHeight()I
.end method

.method public abstract getSnapshotMaxWidth()I
.end method

.method public final getState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->mOrchestrator:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->getCurrentState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object v0

    return-object v0
.end method

.method public final getTargetState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->mOrchestrator:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->getTargetState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUncroppedSnapshotSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;
.end method

.method public abstract getVideoBitRate()I
.end method

.method public abstract getVideoCodec()Lcom/otaliastudios/cameraview/controls/VideoCodec;
.end method

.method public abstract getVideoMaxDuration()I
.end method

.method public abstract getVideoMaxSize()J
.end method

.method public abstract getVideoSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;
.end method

.method public abstract getVideoSizeSelector()Lcom/otaliastudios/cameraview/size/SizeSelector;
.end method

.method public abstract getWhiteBalance()Lcom/otaliastudios/cameraview/controls/WhiteBalance;
.end method

.method public abstract getZoomValue()F
.end method

.method public abstract hasFrameProcessors()Z
.end method

.method public final isChangingState()Z
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->mOrchestrator:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->hasPendingStateChange()Z

    move-result v0

    return v0
.end method

.method public abstract isTakingPicture()Z
.end method

.method public abstract isTakingVideo()Z
.end method

.method protected abstract onStartBind()Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract onStartEngine()Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/otaliastudios/cameraview/CameraOptions;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract onStartPreview()Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract onStopBind()Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract onStopEngine()Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract onStopPreview()Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public final onSurfaceAvailable()V
    .locals 4

    .line 570
    sget-object v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onSurfaceAvailable:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Size is"

    aput-object v3, v1, v2

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getPreview()Lcom/otaliastudios/cameraview/preview/CameraPreview;

    move-result-object v2

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->getSurfaceSize()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 571
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->startBind()Lcom/google/android/gms/tasks/Task;

    .line 572
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->startPreview()Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final onSurfaceDestroyed()V
    .locals 4

    .line 577
    sget-object v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onSurfaceDestroyed"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 578
    invoke-direct {p0, v3}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->stopPreview(Z)Lcom/google/android/gms/tasks/Task;

    .line 579
    invoke-direct {p0, v3}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->stopBind(Z)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public restart()V
    .locals 5

    .line 335
    sget-object v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RESTART:"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "scheduled. State:"

    aput-object v4, v1, v2

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 336
    invoke-virtual {p0, v3}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->stop(Z)Lcom/google/android/gms/tasks/Task;

    .line 337
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->start()Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method protected restartBind()Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 360
    sget-object v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RESTART BIND:"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "scheduled. State:"

    aput-object v4, v1, v2

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 361
    invoke-direct {p0, v3}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->stopPreview(Z)Lcom/google/android/gms/tasks/Task;

    .line 362
    invoke-direct {p0, v3}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->stopBind(Z)Lcom/google/android/gms/tasks/Task;

    .line 363
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->startBind()Lcom/google/android/gms/tasks/Task;

    .line 364
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->startPreview()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method protected restartPreview()Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 370
    sget-object v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RESTART PREVIEW:"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "scheduled. State:"

    aput-object v4, v1, v2

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 371
    invoke-direct {p0, v3}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->stopPreview(Z)Lcom/google/android/gms/tasks/Task;

    .line 372
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->startPreview()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public abstract setAudio(Lcom/otaliastudios/cameraview/controls/Audio;)V
.end method

.method public abstract setAudioBitRate(I)V
.end method

.method public abstract setAudioCodec(Lcom/otaliastudios/cameraview/controls/AudioCodec;)V
.end method

.method public abstract setAutoFocusResetDelay(J)V
.end method

.method public abstract setExposureCorrection(F[F[Landroid/graphics/PointF;Z)V
.end method

.method public abstract setFacing(Lcom/otaliastudios/cameraview/controls/Facing;)V
.end method

.method public abstract setFlash(Lcom/otaliastudios/cameraview/controls/Flash;)V
.end method

.method public abstract setFrameProcessingFormat(I)V
.end method

.method public abstract setFrameProcessingMaxHeight(I)V
.end method

.method public abstract setFrameProcessingMaxWidth(I)V
.end method

.method public abstract setFrameProcessingPoolSize(I)V
.end method

.method public abstract setHasFrameProcessors(Z)V
.end method

.method public abstract setHdr(Lcom/otaliastudios/cameraview/controls/Hdr;)V
.end method

.method public abstract setLocation(Landroid/location/Location;)V
.end method

.method public abstract setMode(Lcom/otaliastudios/cameraview/controls/Mode;)V
.end method

.method public abstract setOverlay(Lcom/otaliastudios/cameraview/overlay/Overlay;)V
.end method

.method public abstract setPictureFormat(Lcom/otaliastudios/cameraview/controls/PictureFormat;)V
.end method

.method public abstract setPictureMetering(Z)V
.end method

.method public abstract setPictureSizeSelector(Lcom/otaliastudios/cameraview/size/SizeSelector;)V
.end method

.method public abstract setPictureSnapshotMetering(Z)V
.end method

.method public abstract setPlaySounds(Z)V
.end method

.method public abstract setPreview(Lcom/otaliastudios/cameraview/preview/CameraPreview;)V
.end method

.method public abstract setPreviewFrameRate(F)V
.end method

.method public abstract setPreviewFrameRateExact(Z)V
.end method

.method public abstract setPreviewStreamSizeSelector(Lcom/otaliastudios/cameraview/size/SizeSelector;)V
.end method

.method public abstract setSnapshotMaxHeight(I)V
.end method

.method public abstract setSnapshotMaxWidth(I)V
.end method

.method public abstract setVideoBitRate(I)V
.end method

.method public abstract setVideoCodec(Lcom/otaliastudios/cameraview/controls/VideoCodec;)V
.end method

.method public abstract setVideoMaxDuration(I)V
.end method

.method public abstract setVideoMaxSize(J)V
.end method

.method public abstract setVideoSizeSelector(Lcom/otaliastudios/cameraview/size/SizeSelector;)V
.end method

.method public abstract setWhiteBalance(Lcom/otaliastudios/cameraview/controls/WhiteBalance;)V
.end method

.method public abstract setZoom(F[Landroid/graphics/PointF;Z)V
.end method

.method public start()Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 342
    sget-object v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "START:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "scheduled. State:"

    aput-object v3, v1, v2

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 343
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->startEngine()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 344
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->startBind()Lcom/google/android/gms/tasks/Task;

    .line 345
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->startPreview()Lcom/google/android/gms/tasks/Task;

    return-object v0
.end method

.method public abstract startAutoFocus(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/metering/MeteringRegions;Landroid/graphics/PointF;)V
.end method

.method public stop(Z)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 351
    sget-object v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "STOP:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "scheduled. State:"

    aput-object v3, v1, v2

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 352
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->stopPreview(Z)Lcom/google/android/gms/tasks/Task;

    .line 353
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->stopBind(Z)Lcom/google/android/gms/tasks/Task;

    .line 354
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->stopEngine(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public abstract stopVideo()V
.end method

.method public abstract takePicture(Lcom/otaliastudios/cameraview/PictureResult$Stub;)V
.end method

.method public abstract takePictureSnapshot(Lcom/otaliastudios/cameraview/PictureResult$Stub;)V
.end method

.method public abstract takeVideo(Lcom/otaliastudios/cameraview/VideoResult$Stub;Ljava/io/File;Ljava/io/FileDescriptor;)V
.end method

.method public abstract takeVideoSnapshot(Lcom/otaliastudios/cameraview/VideoResult$Stub;Ljava/io/File;)V
.end method
