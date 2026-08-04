.class Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder$2;
.super Ljava/lang/Object;
.source "Full1PictureRecorder.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;->take()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder$2;->this$0:Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 5

    .line 60
    sget-object v0, Lcom/otaliastudios/cameraview/picture/FullPictureRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "take(): got picture callback."

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    :try_start_0
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string v2, "Orientation"

    .line 64
    invoke-virtual {v0, v2, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 67
    invoke-static {v0}, Lcom/otaliastudios/cameraview/internal/ExifHelper;->getOrientation(I)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 71
    :goto_0
    iget-object v2, p0, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder$2;->this$0:Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;

    iget-object v2, v2, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iput-object p1, v2, Lcom/otaliastudios/cameraview/PictureResult$Stub;->data:[B

    .line 72
    iget-object p1, p0, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder$2;->this$0:Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;

    iget-object p1, p1, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iput v0, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->rotation:I

    .line 73
    sget-object p1, Lcom/otaliastudios/cameraview/picture/FullPictureRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "take(): starting preview again. "

    aput-object v2, v0, v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    iget-object p1, p0, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder$2;->this$0:Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;->access$000(Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;)Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object p1

    sget-object v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->PREVIEW:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->isAtLeast(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder$2;->this$0:Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;->access$000(Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;)Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 79
    iget-object p1, p0, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder$2;->this$0:Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;->access$000(Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;)Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    move-result-object p1

    sget-object v0, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getPreviewStreamSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder$2;->this$0:Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;->access$000(Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;)Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getFrameManager()Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder$2;->this$0:Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;

    .line 87
    invoke-static {v1}, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;->access$000(Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;)Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getFrameProcessingFormat()I

    move-result v1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder$2;->this$0:Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;

    .line 89
    invoke-static {v2}, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;->access$000(Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;)Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v2

    .line 86
    invoke-virtual {v0, v1, p1, v2}, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->setUp(ILcom/otaliastudios/cameraview/size/Size;Lcom/otaliastudios/cameraview/engine/offset/Angles;)V

    .line 91
    invoke-virtual {p2}, Landroid/hardware/Camera;->startPreview()V

    goto :goto_1

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Preview stream size should never be null here."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder$2;->this$0:Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;->dispatchResult()V

    return-void
.end method
