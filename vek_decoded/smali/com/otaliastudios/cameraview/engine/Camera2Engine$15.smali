.class Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;
.super Ljava/lang/Object;
.source "Camera2Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/Camera2Engine;->setZoom(F[Landroid/graphics/PointF;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

.field final synthetic val$notify:Z

.field final synthetic val$old:F

.field final synthetic val$points:[Landroid/graphics/PointF;

.field final synthetic val$zoom:F


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;FZF[Landroid/graphics/PointF;)V
    .locals 0

    .line 1255
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iput p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;->val$old:F

    iput-boolean p3, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;->val$notify:Z

    iput p4, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;->val$zoom:F

    iput-object p5, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;->val$points:[Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1258
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->access$1300(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iget v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;->val$old:F

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyZoom(Landroid/hardware/camera2/CaptureRequest$Builder;F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyRepeatingRequestBuilder()V

    .line 1260
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;->val$notify:Z

    if-eqz v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getCallback()Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    move-result-object v0

    iget v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;->val$zoom:F

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;->val$points:[Landroid/graphics/PointF;

    invoke-interface {v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->dispatchOnZoomChanged(F[Landroid/graphics/PointF;)V

    :cond_0
    return-void
.end method
