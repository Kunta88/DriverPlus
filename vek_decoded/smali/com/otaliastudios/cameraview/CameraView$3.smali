.class Lcom/otaliastudios/cameraview/CameraView$3;
.super Lcom/otaliastudios/cameraview/CameraListener;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/CameraView;->takeVideo(Ljava/io/File;Ljava/io/FileDescriptor;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/CameraView;

.field final synthetic val$old:I


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/CameraView;I)V
    .locals 0

    .line 1820
    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$3;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    iput p2, p0, Lcom/otaliastudios/cameraview/CameraView$3;->val$old:I

    invoke-direct {p0}, Lcom/otaliastudios/cameraview/CameraListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraError(Lcom/otaliastudios/cameraview/CameraException;)V
    .locals 1

    .line 1829
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/CameraListener;->onCameraError(Lcom/otaliastudios/cameraview/CameraException;)V

    .line 1830
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/CameraException;->getReason()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1831
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$3;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    iget v0, p0, Lcom/otaliastudios/cameraview/CameraView$3;->val$old:I

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/CameraView;->setVideoMaxDuration(I)V

    .line 1832
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$3;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {p1, p0}, Lcom/otaliastudios/cameraview/CameraView;->removeCameraListener(Lcom/otaliastudios/cameraview/CameraListener;)V

    :cond_0
    return-void
.end method

.method public onVideoTaken(Lcom/otaliastudios/cameraview/VideoResult;)V
    .locals 1

    .line 1823
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$3;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    iget v0, p0, Lcom/otaliastudios/cameraview/CameraView$3;->val$old:I

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/CameraView;->setVideoMaxDuration(I)V

    .line 1824
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$3;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {p1, p0}, Lcom/otaliastudios/cameraview/CameraView;->removeCameraListener(Lcom/otaliastudios/cameraview/CameraListener;)V

    return-void
.end method
