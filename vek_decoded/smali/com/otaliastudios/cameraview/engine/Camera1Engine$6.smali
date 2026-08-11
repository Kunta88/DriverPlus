.class Lcom/otaliastudios/cameraview/engine/Camera1Engine$6;
.super Ljava/lang/Object;
.source "Camera1Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/Camera1Engine;->setExposureCorrection(F[F[Landroid/graphics/PointF;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

.field final synthetic val$bounds:[F

.field final synthetic val$notify:Z

.field final synthetic val$old:F

.field final synthetic val$points:[Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;FZ[F[Landroid/graphics/PointF;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$6;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iput p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$6;->val$old:F

    iput-boolean p3, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$6;->val$notify:Z

    iput-object p4, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$6;->val$bounds:[F

    iput-object p5, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$6;->val$points:[Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 670
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$6;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->access$000(Lcom/otaliastudios/cameraview/engine/Camera1Engine;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 671
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$6;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget v2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$6;->val$old:F

    invoke-static {v1, v0, v2}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->access$600(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Landroid/hardware/Camera$Parameters;F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$6;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->access$000(Lcom/otaliastudios/cameraview/engine/Camera1Engine;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 673
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$6;->val$notify:Z

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$6;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getCallback()Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$6;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget v1, v1, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mExposureCorrectionValue:F

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$6;->val$bounds:[F

    iget-object v3, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$6;->val$points:[Landroid/graphics/PointF;

    invoke-interface {v0, v1, v2, v3}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->dispatchOnExposureCorrectionChanged(F[F[Landroid/graphics/PointF;)V

    :cond_0
    return-void
.end method
