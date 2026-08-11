.class Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder$1;
.super Lcom/otaliastudios/cameraview/engine/action/BaseAction;
.source "Full2PictureRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;-><init>(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/engine/Camera2Engine;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/media/ImageReader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;

    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 89
    invoke-super {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onCaptureCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 90
    iget-object p2, p0, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;

    iget-object p2, p2, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget-object p2, p2, Lcom/otaliastudios/cameraview/PictureResult$Stub;->format:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    sget-object v0, Lcom/otaliastudios/cameraview/controls/PictureFormat;->DNG:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    if-ne p2, v0, :cond_0

    .line 91
    iget-object p2, p0, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;

    new-instance v0, Landroid/hardware/camera2/DngCreator;

    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->getCharacteristics(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    invoke-direct {v0, p1, p3}, Landroid/hardware/camera2/DngCreator;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V

    invoke-static {p2, v0}, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;->access$202(Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;Landroid/hardware/camera2/DngCreator;)Landroid/hardware/camera2/DngCreator;

    .line 92
    iget-object p1, p0, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;->access$200(Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;)Landroid/hardware/camera2/DngCreator;

    move-result-object p1

    iget-object p2, p0, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;

    iget-object p2, p2, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget p2, p2, Lcom/otaliastudios/cameraview/PictureResult$Stub;->rotation:I

    invoke-static {p2}, Lcom/otaliastudios/cameraview/internal/ExifHelper;->getExifOrientation(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/DngCreator;->setOrientation(I)Landroid/hardware/camera2/DngCreator;

    .line 93
    iget-object p1, p0, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;

    iget-object p1, p1, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget-object p1, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->location:Landroid/location/Location;

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;->access$200(Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;)Landroid/hardware/camera2/DngCreator;

    move-result-object p1

    iget-object p2, p0, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;

    iget-object p2, p2, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget-object p2, p2, Lcom/otaliastudios/cameraview/PictureResult$Stub;->location:Landroid/location/Location;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/DngCreator;->setLocation(Landroid/location/Location;)Landroid/hardware/camera2/DngCreator;

    :cond_0
    return-void
.end method

.method public onCaptureStarted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 3

    .line 77
    invoke-super {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onCaptureStarted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;)V

    .line 78
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 79
    sget-object p1, Lcom/otaliastudios/cameraview/picture/FullPictureRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "onCaptureStarted:"

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    const-string v2, "Dispatching picture shutter."

    aput-object v2, p2, v0

    invoke-virtual {p1, p2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    iget-object p1, p0, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;

    invoke-virtual {p1, v1}, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;->dispatchOnShutter(Z)V

    const p1, 0x7fffffff

    .line 81
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder$1;->setState(I)V

    :cond_0
    return-void
.end method

.method protected onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 3

    .line 58
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    .line 59
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;->access$100(Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;->access$000(Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;)Landroid/media/ImageReader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 60
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/PictureResult$Stub;->format:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    sget-object v1, Lcom/otaliastudios/cameraview/controls/PictureFormat;->JPEG:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    if-ne v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;->access$100(Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;

    iget-object v2, v2, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget v2, v2, Lcom/otaliastudios/cameraview/PictureResult$Stub;->rotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;->access$100(Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;->access$100(Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->applyBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    .line 68
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;

    iput-object p1, v0, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;->mError:Ljava/lang/Exception;

    .line 69
    iget-object p1, p0, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;->dispatchResult()V

    const p1, 0x7fffffff

    .line 70
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder$1;->setState(I)V

    :goto_0
    return-void
.end method
