.class public abstract Lcom/otaliastudios/cameraview/video/VideoRecorder;
.super Ljava/lang/Object;
.source "VideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/cameraview/video/VideoRecorder$VideoResultListener;
    }
.end annotation


# static fields
.field private static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_RECORDING:I = 0x1

.field private static final STATE_STOPPING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VideoRecorder"


# instance fields
.field protected mError:Ljava/lang/Exception;

.field private final mListener:Lcom/otaliastudios/cameraview/video/VideoRecorder$VideoResultListener;

.field mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

.field private mState:I

.field private final mStateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/otaliastudios/cameraview/video/VideoRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method constructor <init>(Lcom/otaliastudios/cameraview/video/VideoRecorder$VideoResultListener;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->mStateLock:Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->mListener:Lcom/otaliastudios/cameraview/video/VideoRecorder$VideoResultListener;

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->mState:I

    return-void
.end method


# virtual methods
.method protected final dispatchResult()V
    .locals 7

    .line 127
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/video/VideoRecorder;->isRecording()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 129
    sget-object v1, Lcom/otaliastudios/cameraview/video/VideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "dispatchResult:"

    aput-object v5, v3, v4

    const-string v4, "Called, but not recording! Aborting."

    aput-object v4, v3, v2

    invoke-virtual {v1, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    monitor-exit v0

    return-void

    .line 132
    :cond_0
    sget-object v1, Lcom/otaliastudios/cameraview/video/VideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "dispatchResult:"

    aput-object v6, v5, v4

    const-string v6, "Changed state to STATE_IDLE."

    aput-object v6, v5, v2

    invoke-virtual {v1, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    iput v4, p0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->mState:I

    .line 134
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/video/VideoRecorder;->onDispatchResult()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v5, "dispatchResult:"

    aput-object v5, v0, v4

    const-string v4, "About to dispatch result:"

    aput-object v4, v0, v2

    .line 136
    iget-object v2, p0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    aput-object v2, v0, v3

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->mError:Ljava/lang/Exception;

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->mListener:Lcom/otaliastudios/cameraview/video/VideoRecorder$VideoResultListener;

    if-eqz v0, :cond_1

    .line 138
    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->mError:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lcom/otaliastudios/cameraview/video/VideoRecorder$VideoResultListener;->onVideoResult(Lcom/otaliastudios/cameraview/VideoResult$Stub;Ljava/lang/Exception;)V

    :cond_1
    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    .line 141
    iput-object v0, p0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->mError:Ljava/lang/Exception;

    return-void

    :catchall_0
    move-exception v1

    .line 134
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected dispatchVideoRecordingEnd()V
    .locals 4

    .line 171
    sget-object v0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "dispatchVideoRecordingEnd:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "About to dispatch."

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->mListener:Lcom/otaliastudios/cameraview/video/VideoRecorder$VideoResultListener;

    if-eqz v0, :cond_0

    .line 173
    invoke-interface {v0}, Lcom/otaliastudios/cameraview/video/VideoRecorder$VideoResultListener;->onVideoRecordingEnd()V

    :cond_0
    return-void
.end method

.method protected dispatchVideoRecordingStart()V
    .locals 4

    .line 158
    sget-object v0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "dispatchVideoRecordingStart:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "About to dispatch."

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->mListener:Lcom/otaliastudios/cameraview/video/VideoRecorder$VideoResultListener;

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0}, Lcom/otaliastudios/cameraview/video/VideoRecorder$VideoResultListener;->onVideoRecordingStart()V

    :cond_0
    return-void
.end method

.method public isRecording()Z
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    iget v1, p0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->mState:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 109
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onDispatchResult()V
    .locals 0

    return-void
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop(Z)V
.end method

.method public final start(Lcom/otaliastudios/cameraview/VideoResult$Stub;)V
    .locals 7

    .line 70
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    iget v1, p0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->mState:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 72
    sget-object p1, Lcom/otaliastudios/cameraview/video/VideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "start:"

    aput-object v6, v5, v2

    const-string v2, "called twice, or while stopping! Ignoring. state:"

    aput-object v2, v5, v4

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    .line 72
    invoke-virtual {p1, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    monitor-exit v0

    return-void

    .line 76
    :cond_0
    sget-object v1, Lcom/otaliastudios/cameraview/video/VideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "start:"

    aput-object v5, v3, v2

    const-string v2, "Changed state to STATE_RECORDING"

    aput-object v2, v3, v4

    invoke-virtual {v1, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    iput v4, p0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->mState:I

    .line 78
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    .line 80
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/video/VideoRecorder;->onStart()V

    return-void

    :catchall_0
    move-exception p1

    .line 78
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final stop(Z)V
    .locals 7

    .line 88
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    iget v1, p0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->mState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v1, :cond_0

    .line 91
    sget-object v1, Lcom/otaliastudios/cameraview/video/VideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "stop:"

    aput-object v6, v5, v3

    const-string v3, "called twice, or called before start! Ignoring. isCameraShutdown:"

    aput-object v3, v5, v2

    .line 92
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v5, v4

    .line 91
    invoke-virtual {v1, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    monitor-exit v0

    return-void

    .line 95
    :cond_0
    sget-object v1, Lcom/otaliastudios/cameraview/video/VideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "stop:"

    aput-object v6, v5, v3

    const-string v3, "Changed state to STATE_STOPPING"

    aput-object v3, v5, v2

    invoke-virtual {v1, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    iput v4, p0, Lcom/otaliastudios/cameraview/video/VideoRecorder;->mState:I

    .line 97
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/video/VideoRecorder;->onStop(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 97
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
