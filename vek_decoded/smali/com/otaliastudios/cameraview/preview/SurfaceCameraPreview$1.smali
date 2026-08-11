.class Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview$1;
.super Ljava/lang/Object;
.source "SurfaceCameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;->onCreateView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview$1;->this$0:Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    .line 53
    invoke-static {}, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;->access$100()Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object p1

    const/16 p2, 0x8

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "callback:"

    aput-object v1, p2, v0

    const-string v0, "surfaceChanged"

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const/4 v0, 0x2

    const-string v2, "w:"

    aput-object v2, p2, v0

    .line 54
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, p2, v2

    const/4 v0, 0x4

    const-string v2, "h:"

    aput-object v2, p2, v0

    .line 55
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, p2, v2

    const/4 v0, 0x6

    const-string v2, "dispatched:"

    aput-object v2, p2, v0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview$1;->this$0:Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;

    .line 56
    invoke-static {v0}, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;->access$000(Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x7

    aput-object v0, p2, v2

    .line 53
    invoke-virtual {p1, p2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview$1;->this$0:Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;->access$000(Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview$1;->this$0:Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;

    invoke-virtual {p1, p3, p4}, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;->dispatchOnSurfaceAvailable(II)V

    .line 59
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview$1;->this$0:Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;

    invoke-static {p1, v1}, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;->access$002(Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;Z)Z

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview$1;->this$0:Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;

    invoke-virtual {p1, p3, p4}, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;->dispatchOnSurfaceSizeChanged(II)V

    :goto_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 67
    invoke-static {}, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;->access$100()Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "callback:"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "surfaceDestroyed"

    aput-object v3, v0, v1

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview$1;->this$0:Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;->dispatchOnSurfaceDestroyed()V

    .line 69
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview$1;->this$0:Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;

    invoke-static {p1, v2}, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;->access$002(Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;Z)Z

    return-void
.end method
