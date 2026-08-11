.class Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;
.implements Lcom/otaliastudios/cameraview/internal/OrientationHelper$Callback;
.implements Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraCallbacks"
.end annotation


# instance fields
.field private final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/otaliastudios/cameraview/CameraView;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/CameraView;)V
    .locals 0

    .line 2152
    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2157
    const-class p1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->TAG:Ljava/lang/String;

    .line 2158
    invoke-static {p1}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method static synthetic access$900(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;)Lcom/otaliastudios/cameraview/CameraLogger;
    .locals 0

    .line 2152
    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-object p0
.end method


# virtual methods
.method public dispatchError(Lcom/otaliastudios/cameraview/CameraException;)V
    .locals 4

    .line 2401
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "dispatchError"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 2402
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraView;->access$100(Lcom/otaliastudios/cameraview/CameraView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$12;

    invoke-direct {v1, p0, p1}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$12;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;Lcom/otaliastudios/cameraview/CameraException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispatchFrame(Lcom/otaliastudios/cameraview/frame/Frame;)V
    .locals 4

    .line 2375
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "dispatchFrame:"

    aput-object v3, v1, v2

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/frame/Frame;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "processors:"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    iget-object v2, v2, Lcom/otaliastudios/cameraview/CameraView;->mFrameProcessors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->v([Ljava/lang/Object;)Ljava/lang/String;

    .line 2376
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView;->mFrameProcessors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2378
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/frame/Frame;->release()V

    goto :goto_0

    .line 2381
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraView;->access$1000(Lcom/otaliastudios/cameraview/CameraView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$11;

    invoke-direct {v1, p0, p1}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$11;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;Lcom/otaliastudios/cameraview/frame/Frame;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public dispatchOnCameraClosed()V
    .locals 4

    .line 2191
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "dispatchOnCameraClosed"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 2192
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraView;->access$100(Lcom/otaliastudios/cameraview/CameraView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$2;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$2;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispatchOnCameraOpened(Lcom/otaliastudios/cameraview/CameraOptions;)V
    .locals 4

    .line 2178
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "dispatchOnCameraOpened"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 2179
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraView;->access$100(Lcom/otaliastudios/cameraview/CameraView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$1;

    invoke-direct {v1, p0, p1}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$1;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;Lcom/otaliastudios/cameraview/CameraOptions;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispatchOnExposureCorrectionChanged(F[F[Landroid/graphics/PointF;)V
    .locals 4

    .line 2360
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "dispatchOnExposureCorrectionChanged"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 2361
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraView;->access$100(Lcom/otaliastudios/cameraview/CameraView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$10;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;F[F[Landroid/graphics/PointF;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispatchOnFocusEnd(Lcom/otaliastudios/cameraview/gesture/Gesture;ZLandroid/graphics/PointF;)V
    .locals 4

    .line 2286
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "dispatchOnFocusEnd"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 2287
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraView;->access$100(Lcom/otaliastudios/cameraview/CameraView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$7;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$7;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;ZLcom/otaliastudios/cameraview/gesture/Gesture;Landroid/graphics/PointF;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispatchOnFocusStart(Lcom/otaliastudios/cameraview/gesture/Gesture;Landroid/graphics/PointF;)V
    .locals 4

    .line 2264
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "dispatchOnFocusStart"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 2265
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraView;->access$100(Lcom/otaliastudios/cameraview/CameraView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$6;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;Landroid/graphics/PointF;Lcom/otaliastudios/cameraview/gesture/Gesture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispatchOnPictureTaken(Lcom/otaliastudios/cameraview/PictureResult$Stub;)V
    .locals 4

    .line 2235
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "dispatchOnPictureTaken"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 2236
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraView;->access$100(Lcom/otaliastudios/cameraview/CameraView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$4;

    invoke-direct {v1, p0, p1}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$4;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;Lcom/otaliastudios/cameraview/PictureResult$Stub;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispatchOnVideoRecordingEnd()V
    .locals 4

    .line 2427
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "dispatchOnVideoRecordingEnd"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 2428
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraView;->access$100(Lcom/otaliastudios/cameraview/CameraView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$14;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$14;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispatchOnVideoRecordingStart()V
    .locals 4

    .line 2414
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "dispatchOnVideoRecordingStart"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 2415
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraView;->access$100(Lcom/otaliastudios/cameraview/CameraView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$13;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$13;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispatchOnVideoTaken(Lcom/otaliastudios/cameraview/VideoResult$Stub;)V
    .locals 4

    .line 2249
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "dispatchOnVideoTaken"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 2250
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraView;->access$100(Lcom/otaliastudios/cameraview/CameraView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$5;

    invoke-direct {v1, p0, p1}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$5;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;Lcom/otaliastudios/cameraview/VideoResult$Stub;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispatchOnZoomChanged(F[Landroid/graphics/PointF;)V
    .locals 4

    .line 2345
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "dispatchOnZoomChanged"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 2346
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraView;->access$100(Lcom/otaliastudios/cameraview/CameraView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$9;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;F[Landroid/graphics/PointF;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 2163
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/CameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 2173
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/CameraView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 2168
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/CameraView;->getWidth()I

    move-result v0

    return v0
.end method

.method public onCameraPreviewStreamSizeChanged()V
    .locals 7

    .line 2208
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraView;->access$200(Lcom/otaliastudios/cameraview/CameraView;)Lcom/otaliastudios/cameraview/engine/CameraEngine;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getPreviewStreamSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2211
    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/CameraView;->access$300(Lcom/otaliastudios/cameraview/CameraView;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/size/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz v1, :cond_0

    .line 2212
    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "onCameraPreviewStreamSizeChanged:"

    aput-object v6, v5, v4

    const-string v4, "swallowing because the preview size has not changed."

    aput-object v4, v5, v3

    aput-object v0, v5, v2

    invoke-virtual {v1, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    .line 2215
    :cond_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "onCameraPreviewStreamSizeChanged: posting a requestLayout call."

    aput-object v6, v5, v4

    const-string v4, "Preview stream size:"

    aput-object v4, v5, v3

    aput-object v0, v5, v2

    invoke-virtual {v1, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 2217
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraView;->access$100(Lcom/otaliastudios/cameraview/CameraView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$3;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$3;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    .line 2210
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Preview stream size should not be null here."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDeviceOrientationChanged(I)V
    .locals 4

    .line 2309
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onDeviceOrientationChanged"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 2310
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraView;->access$700(Lcom/otaliastudios/cameraview/CameraView;)Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->getLastDisplayOffset()I

    move-result v0

    .line 2311
    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/CameraView;->access$800(Lcom/otaliastudios/cameraview/CameraView;)Z

    move-result v1

    if-nez v1, :cond_0

    rsub-int v1, v0, 0x168

    .line 2314
    rem-int/lit16 v1, v1, 0x168

    .line 2315
    iget-object v2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {v2}, Lcom/otaliastudios/cameraview/CameraView;->access$200(Lcom/otaliastudios/cameraview/CameraView;)Lcom/otaliastudios/cameraview/engine/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->setDeviceOrientation(I)V

    goto :goto_0

    .line 2317
    :cond_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/CameraView;->access$200(Lcom/otaliastudios/cameraview/CameraView;)Lcom/otaliastudios/cameraview/engine/CameraEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->setDeviceOrientation(I)V

    :goto_0
    add-int/2addr p1, v0

    .line 2319
    rem-int/lit16 p1, p1, 0x168

    .line 2320
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraView;->access$100(Lcom/otaliastudios/cameraview/CameraView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$8;

    invoke-direct {v1, p0, p1}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$8;-><init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDisplayOffsetChanged(IZ)V
    .locals 7

    .line 2332
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onDisplayOffsetChanged"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v1, v4

    const-string p1, "recreate:"

    const/4 v5, 0x2

    aput-object p1, v1, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v6, 0x3

    aput-object p1, v1, v6

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 2333
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/CameraView;->isOpened()Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 2337
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array p2, v5, [Ljava/lang/Object;

    aput-object v3, p2, v2

    const-string v0, "restarting the camera."

    aput-object v0, p2, v4

    invoke-virtual {p1, p2}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 2338
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/CameraView;->close()V

    .line 2339
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/CameraView;->open()V

    :cond_0
    return-void
.end method

.method public onShutter(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2228
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/CameraView;->access$400(Lcom/otaliastudios/cameraview/CameraView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2229
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/otaliastudios/cameraview/CameraView;->access$500(Lcom/otaliastudios/cameraview/CameraView;I)V

    :cond_0
    return-void
.end method
