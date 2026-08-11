.class public abstract Lcom/otaliastudios/cameraview/preview/CameraPreview;
.super Ljava/lang/Object;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;,
        Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Output:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;


# instance fields
.field mCropCallback:Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;

.field protected mCropping:Z

.field protected mDrawRotation:I

.field protected mInputStreamHeight:I

.field protected mInputStreamWidth:I

.field protected mOutputSurfaceHeight:I

.field protected mOutputSurfaceWidth:I

.field private mSurfaceCallback:Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;

.field private mView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/otaliastudios/cameraview/preview/CameraPreview;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->onCreateView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected crop(Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 306
    invoke-interface {p1}, Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;->onCrop()V

    :cond_0
    return-void
.end method

.method protected final dispatchOnSurfaceAvailable(II)V
    .locals 4

    .line 201
    sget-object v0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "dispatchOnSurfaceAvailable:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "w="

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    const-string v3, "h="

    aput-object v3, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    iput p1, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mOutputSurfaceWidth:I

    .line 203
    iput p2, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mOutputSurfaceHeight:I

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 205
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mCropCallback:Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->crop(Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;)V

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mSurfaceCallback:Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;

    if-eqz p1, :cond_1

    .line 208
    invoke-interface {p1}, Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;->onSurfaceAvailable()V

    :cond_1
    return-void
.end method

.method protected final dispatchOnSurfaceDestroyed()V
    .locals 1

    const/4 v0, 0x0

    .line 237
    iput v0, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mOutputSurfaceWidth:I

    .line 238
    iput v0, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mOutputSurfaceHeight:I

    .line 239
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mSurfaceCallback:Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;

    if-eqz v0, :cond_0

    .line 240
    invoke-interface {v0}, Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;->onSurfaceDestroyed()V

    :cond_0
    return-void
.end method

.method protected final dispatchOnSurfaceSizeChanged(II)V
    .locals 4

    .line 219
    sget-object v0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "dispatchOnSurfaceSizeChanged:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "w="

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    const-string v3, "h="

    aput-object v3, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    iget v0, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mOutputSurfaceWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mOutputSurfaceHeight:I

    if-eq p2, v0, :cond_2

    .line 221
    :cond_0
    iput p1, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mOutputSurfaceWidth:I

    .line 222
    iput p2, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mOutputSurfaceHeight:I

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 224
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mCropCallback:Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->crop(Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;)V

    .line 226
    :cond_1
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mSurfaceCallback:Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;

    if-eqz p1, :cond_2

    .line 227
    invoke-interface {p1}, Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;->onSurfaceChanged()V

    :cond_2
    return-void
.end method

.method public abstract getOutput()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOutput;"
        }
    .end annotation
.end method

.method public abstract getOutputClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TOutput;>;"
        }
    .end annotation
.end method

.method public abstract getRootView()Landroid/view/View;
.end method

.method final getStreamSize()Lcom/otaliastudios/cameraview/size/Size;
    .locals 3

    .line 174
    new-instance v0, Lcom/otaliastudios/cameraview/size/Size;

    iget v1, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mInputStreamWidth:I

    iget v2, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mInputStreamHeight:I

    invoke-direct {v0, v1, v2}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    return-object v0
.end method

.method public final getSurfaceSize()Lcom/otaliastudios/cameraview/size/Size;
    .locals 3

    .line 183
    new-instance v0, Lcom/otaliastudios/cameraview/size/Size;

    iget v1, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mOutputSurfaceWidth:I

    iget v2, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mOutputSurfaceHeight:I

    invoke-direct {v0, v1, v2}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mView:Landroid/view/View;

    return-object v0
.end method

.method public final hasSurface()Z
    .locals 1

    .line 191
    iget v0, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mOutputSurfaceWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mOutputSurfaceHeight:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCropping()Z
    .locals 1

    .line 324
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mCropping:Z

    return v0
.end method

.method protected abstract onCreateView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            ")TT;"
        }
    .end annotation
.end method

.method public onDestroy()V
    .locals 3

    .line 262
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->onDestroyView()V

    goto :goto_0

    .line 266
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 267
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 268
    new-instance v2, Lcom/otaliastudios/cameraview/preview/CameraPreview$1;

    invoke-direct {v2, p0, v1}, Lcom/otaliastudios/cameraview/preview/CameraPreview$1;-><init>(Lcom/otaliastudios/cameraview/preview/CameraPreview;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method protected onDestroyView()V
    .locals 3

    .line 287
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 289
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 290
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public setDrawRotation(I)V
    .locals 0

    .line 347
    iput p1, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mDrawRotation:I

    return-void
.end method

.method public setStreamSize(II)V
    .locals 4

    .line 159
    sget-object v0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "setStreamSize:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "desiredW="

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    const-string v3, "desiredH="

    aput-object v3, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    iput p1, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mInputStreamWidth:I

    .line 161
    iput p2, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mInputStreamHeight:I

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 163
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mCropCallback:Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->crop(Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;)V

    :cond_0
    return-void
.end method

.method public setSurfaceCallback(Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;)V
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mSurfaceCallback:Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0}, Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;->onSurfaceDestroyed()V

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mSurfaceCallback:Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;

    .line 103
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->hasSurface()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->mSurfaceCallback:Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;

    if-eqz p1, :cond_1

    .line 104
    invoke-interface {p1}, Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;->onSurfaceAvailable()V

    :cond_1
    return-void
.end method

.method public supportsCropping()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
