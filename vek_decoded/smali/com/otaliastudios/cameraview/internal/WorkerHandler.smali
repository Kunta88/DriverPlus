.class public Lcom/otaliastudios/cameraview/internal/WorkerHandler;
.super Ljava/lang/Object;
.source "WorkerHandler.java"


# static fields
.field private static final FALLBACK_NAME:Ljava/lang/String; = "FallbackCameraThread"

.field private static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field private static final sCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/otaliastudios/cameraview/internal/WorkerHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sFallbackHandler:Lcom/otaliastudios/cameraview/internal/WorkerHandler;


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mHandler:Landroid/os/Handler;

.field private mName:Ljava/lang/String;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const-class v0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->sCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->mName:Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/otaliastudios/cameraview/internal/WorkerHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/otaliastudios/cameraview/internal/WorkerHandler$1;-><init>(Lcom/otaliastudios/cameraview/internal/WorkerHandler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->mThread:Landroid/os/HandlerThread;

    const/4 p1, 0x1

    .line 106
    invoke-virtual {v0, p1}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 107
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 108
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->mHandler:Landroid/os/Handler;

    .line 109
    new-instance v0, Lcom/otaliastudios/cameraview/internal/WorkerHandler$2;

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/internal/WorkerHandler$2;-><init>(Lcom/otaliastudios/cameraview/internal/WorkerHandler;)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->mExecutor:Ljava/util/concurrent/Executor;

    .line 119
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 120
    new-instance p1, Lcom/otaliastudios/cameraview/internal/WorkerHandler$3;

    invoke-direct {p1, p0, v0}, Lcom/otaliastudios/cameraview/internal/WorkerHandler$3;-><init>(Lcom/otaliastudios/cameraview/internal/WorkerHandler;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->post(Ljava/lang/Runnable;)V

    .line 127
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static destroyAll()V
    .locals 3

    .line 267
    sget-object v0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->sCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 268
    sget-object v2, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->sCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 270
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    if-eqz v2, :cond_0

    .line 271
    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->destroy()V

    .line 272
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_0

    .line 274
    :cond_1
    sget-object v0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->sCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 89
    invoke-static {}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->get()Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static get()Lcom/otaliastudios/cameraview/internal/WorkerHandler;
    .locals 1

    const-string v0, "FallbackCameraThread"

    .line 77
    invoke-static {v0}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->get(Ljava/lang/String;)Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->sFallbackHandler:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lcom/otaliastudios/cameraview/internal/WorkerHandler;
    .locals 9

    .line 45
    sget-object v0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->sCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "get:"

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-eqz v1, :cond_2

    .line 47
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->getThread()Landroid/os/HandlerThread;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->getThread()Landroid/os/HandlerThread;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/HandlerThread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_0

    .line 50
    sget-object v0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v5

    const-string v4, "Reusing cached worker handler."

    aput-object v4, v6, v3

    aput-object p0, v6, v2

    invoke-virtual {v0, v6}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    return-object v1

    .line 54
    :cond_0
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->destroy()V

    .line 55
    sget-object v1, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v5

    const-string v8, "Thread reference found, but not alive or interrupted."

    aput-object v8, v7, v3

    const-string v8, "Removing."

    aput-object v8, v7, v2

    aput-object p0, v7, v6

    invoke-virtual {v1, v7}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    :cond_1
    sget-object v1, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v4, v7, v5

    const-string v8, "Thread reference died. Removing."

    aput-object v8, v7, v3

    aput-object p0, v7, v2

    invoke-virtual {v1, v7}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_2
    :goto_0
    sget-object v1, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v5

    const-string v4, "Creating new handler."

    aput-object v4, v6, v3

    aput-object p0, v6, v2

    invoke-virtual {v1, v6}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    new-instance v1, Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 249
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->getThread()Landroid/os/HandlerThread;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 252
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 259
    :cond_0
    sget-object v0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->sCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getThread()Landroid/os/HandlerThread;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->mThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public post(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    .line 172
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 173
    new-instance v1, Lcom/otaliastudios/cameraview/internal/WorkerHandler$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/otaliastudios/cameraview/internal/WorkerHandler$4;-><init>(Lcom/otaliastudios/cameraview/internal/WorkerHandler;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/util/concurrent/Callable;)V

    invoke-virtual {p0, v1}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->post(Ljava/lang/Runnable;)V

    .line 183
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public post(JLjava/lang/Runnable;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public remove(Ljava/lang/Runnable;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    .line 148
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->getThread()Landroid/os/HandlerThread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 150
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 152
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 155
    :cond_0
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->post(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public run(Ljava/lang/Runnable;)V
    .locals 2

    .line 136
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->getThread()Landroid/os/HandlerThread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 137
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
