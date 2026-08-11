.class Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1$1;
.super Ljava/lang/Object;
.source "Snapshot1PictureRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;->onPreviewFrame([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;

.field final synthetic val$outputSize:Lcom/otaliastudios/cameraview/size/Size;

.field final synthetic val$previewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

.field final synthetic val$sensorToOutput:I

.field final synthetic val$yuv:[B


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;[BLcom/otaliastudios/cameraview/size/Size;ILcom/otaliastudios/cameraview/size/Size;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1$1;->this$1:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1$1;->val$yuv:[B

    iput-object p3, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1$1;->val$previewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    iput p4, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1$1;->val$sensorToOutput:I

    iput-object p5, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1$1;->val$outputSize:Lcom/otaliastudios/cameraview/size/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 65
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1$1;->val$yuv:[B

    iget-object v1, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1$1;->val$previewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    iget v2, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1$1;->val$sensorToOutput:I

    invoke-static {v0, v1, v2}, Lcom/otaliastudios/cameraview/internal/RotationHelper;->rotate([BLcom/otaliastudios/cameraview/size/Size;I)[B

    move-result-object v4

    .line 66
    new-instance v0, Landroid/graphics/YuvImage;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1$1;->this$1:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->access$100(Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;)I

    move-result v5

    iget-object v1, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1$1;->val$outputSize:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v6

    iget-object v1, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1$1;->val$outputSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 67
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 69
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 70
    iget-object v2, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1$1;->val$outputSize:Lcom/otaliastudios/cameraview/size/Size;

    iget-object v3, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1$1;->this$1:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;

    iget-object v3, v3, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;

    invoke-static {v3}, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->access$200(Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/otaliastudios/cameraview/internal/CropHelper;->computeCrop(Lcom/otaliastudios/cameraview/size/Size;Lcom/otaliastudios/cameraview/size/AspectRatio;)Landroid/graphics/Rect;

    move-result-object v2

    const/16 v3, 0x5a

    .line 71
    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 72
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1$1;->this$1:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iput-object v0, v1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->data:[B

    .line 75
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1$1;->this$1:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    new-instance v1, Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v1, v3, v2}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    iput-object v1, v0, Lcom/otaliastudios/cameraview/PictureResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    .line 76
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1$1;->this$1:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    const/4 v1, 0x0

    iput v1, v0, Lcom/otaliastudios/cameraview/PictureResult$Stub;->rotation:I

    .line 77
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1$1;->this$1:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->dispatchResult()V

    return-void
.end method
