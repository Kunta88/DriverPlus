.class Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;
.super Ljava/lang/Object;
.source "Camera1Engine.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;)V
    .locals 0

    .line 902
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;->this$1:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 6

    .line 905
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;->this$1:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;

    iget-object p2, p2, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-virtual {p2}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object p2

    const-string v0, "focus end"

    invoke-virtual {p2, v0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->remove(Ljava/lang/String;)V

    .line 906
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;->this$1:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;

    iget-object p2, p2, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-virtual {p2}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object p2

    const-string v0, "focus reset"

    invoke-virtual {p2, v0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->remove(Ljava/lang/String;)V

    .line 907
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;->this$1:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;

    iget-object p2, p2, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-virtual {p2}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getCallback()Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    move-result-object p2

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;->this$1:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->val$gesture:Lcom/otaliastudios/cameraview/gesture/Gesture;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;->this$1:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->val$legacyPoint:Landroid/graphics/PointF;

    invoke-interface {p2, v0, p1, v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->dispatchOnFocusEnd(Lcom/otaliastudios/cameraview/gesture/Gesture;ZLandroid/graphics/PointF;)V

    .line 908
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;->this$1:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;

    iget-object p1, p1, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->shouldResetAutoFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 909
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;->this$1:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;

    iget-object p1, p1, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v0

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;->this$1:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;

    iget-object p1, p1, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    .line 912
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getAutoFocusResetDelay()J

    move-result-wide v3

    new-instance v5, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2$1;

    invoke-direct {v5, p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2$1;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;)V

    const-string v1, "focus reset"

    .line 909
    invoke-virtual/range {v0 .. v5}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStatefulDelayed(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;JLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method
