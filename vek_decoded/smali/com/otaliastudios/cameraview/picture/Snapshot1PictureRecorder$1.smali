.class Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;
.super Ljava/lang/Object;
.source "Snapshot1PictureRecorder.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->take()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8

    .line 47
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->dispatchOnShutter(Z)V

    .line 52
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget v5, v0, Lcom/otaliastudios/cameraview/PictureResult$Stub;->rotation:I

    .line 53
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget-object v6, v0, Lcom/otaliastudios/cameraview/PictureResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    .line 54
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->access$000(Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;)Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getPreviewStreamSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v7, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1$1;-><init>(Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;[BLcom/otaliastudios/cameraview/size/Size;ILcom/otaliastudios/cameraview/size/Size;)V

    invoke-static {v7}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 82
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 83
    iget-object p1, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->access$000(Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;)Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 84
    iget-object p1, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->access$000(Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;)Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getFrameManager()Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;

    move-result-object p1

    iget-object p2, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;

    invoke-static {p2}, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->access$100(Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;)I

    move-result p2

    iget-object v1, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->access$000(Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;)Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->setUp(ILcom/otaliastudios/cameraview/size/Size;Lcom/otaliastudios/cameraview/engine/offset/Angles;)V

    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Preview stream size should never be null here."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
