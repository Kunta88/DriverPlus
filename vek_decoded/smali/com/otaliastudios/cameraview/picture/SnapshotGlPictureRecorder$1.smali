.class Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$1;
.super Ljava/lang/Object;
.source "SnapshotGlPictureRecorder.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->take()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRendererFilterChanged(Lcom/otaliastudios/cameraview/filter/Filter;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->onRendererFilterChanged(Lcom/otaliastudios/cameraview/filter/Filter;)V

    return-void
.end method

.method public onRendererFrame(Landroid/graphics/SurfaceTexture;IFF)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->access$000(Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;)Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;->removeRendererFrameCallback(Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;)V

    .line 98
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->onRendererFrame(Landroid/graphics/SurfaceTexture;IFF)V

    return-void
.end method

.method public onRendererTextureCreated(I)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->onRendererTextureCreated(I)V

    return-void
.end method
