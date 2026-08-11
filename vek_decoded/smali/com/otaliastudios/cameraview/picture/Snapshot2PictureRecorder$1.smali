.class Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$1;
.super Lcom/otaliastudios/cameraview/engine/action/CompletionCallback;
.source "Snapshot2PictureRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;-><init>(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;Lcom/otaliastudios/cameraview/size/AspectRatio;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;

    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/action/CompletionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActionCompleted(Lcom/otaliastudios/cameraview/engine/action/Action;)V
    .locals 3

    .line 121
    sget-object p1, Lcom/otaliastudios/cameraview/picture/SnapshotPictureRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Taking picture with super.take()."

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    iget-object p1, p0, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$1;->this$0:Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;->access$301(Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;)V

    return-void
.end method
