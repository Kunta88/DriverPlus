.class Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;
.super Ljava/lang/Object;
.source "Camera1Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/Camera1Engine;->startAutoFocus(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/metering/MeteringRegions;Landroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

.field final synthetic val$gesture:Lcom/otaliastudios/cameraview/gesture/Gesture;

.field final synthetic val$legacyPoint:Landroid/graphics/PointF;

.field final synthetic val$regions:Lcom/otaliastudios/cameraview/metering/MeteringRegions;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Lcom/otaliastudios/cameraview/metering/MeteringRegions;Lcom/otaliastudios/cameraview/gesture/Gesture;Landroid/graphics/PointF;)V
    .locals 0

    .line 870
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->val$regions:Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    iput-object p3, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->val$gesture:Lcom/otaliastudios/cameraview/gesture/Gesture;

    iput-object p4, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->val$legacyPoint:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 873
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/CameraOptions;->isAutoFocusSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 874
    :cond_0
    new-instance v0, Lcom/otaliastudios/cameraview/engine/metering/Camera1MeteringTransform;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    .line 875
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    .line 876
    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getPreview()Lcom/otaliastudios/cameraview/preview/CameraPreview;

    move-result-object v2

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->getSurfaceSize()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/metering/Camera1MeteringTransform;-><init>(Lcom/otaliastudios/cameraview/engine/offset/Angles;Lcom/otaliastudios/cameraview/size/Size;)V

    .line 877
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->val$regions:Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    invoke-virtual {v1, v0}, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->transform(Lcom/otaliastudios/cameraview/metering/MeteringTransform;)Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    move-result-object v1

    .line 879
    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-static {v2}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->access$000(Lcom/otaliastudios/cameraview/engine/Camera1Engine;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 880
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v3

    .line 881
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v4

    if-lez v3, :cond_1

    .line 882
    invoke-virtual {v1, v3, v0}, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->get(ILcom/otaliastudios/cameraview/metering/MeteringTransform;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    :cond_1
    if-lez v4, :cond_2

    .line 883
    invoke-virtual {v1, v4, v0}, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->get(ILcom/otaliastudios/cameraview/metering/MeteringTransform;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    :cond_2
    const-string v0, "auto"

    .line 884
    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 885
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->access$000(Lcom/otaliastudios/cameraview/engine/Camera1Engine;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 886
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getCallback()Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->val$gesture:Lcom/otaliastudios/cameraview/gesture/Gesture;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->val$legacyPoint:Landroid/graphics/PointF;

    invoke-interface {v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->dispatchOnFocusStart(Lcom/otaliastudios/cameraview/gesture/Gesture;Landroid/graphics/PointF;)V

    .line 890
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v0

    const-string v1, "focus end"

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->remove(Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v0

    const-wide/16 v2, 0x9c4

    new-instance v4, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$1;

    invoke-direct {v4, p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$1;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleDelayed(Ljava/lang/String;JLjava/lang/Runnable;)V

    .line 902
    :try_start_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->access$000(Lcom/otaliastudios/cameraview/engine/Camera1Engine;)Landroid/hardware/Camera;

    move-result-object v0

    new-instance v1, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 930
    sget-object v1, Lcom/otaliastudios/cameraview/engine/CameraEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "startAutoFocus:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Error calling autoFocus"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    :goto_0
    return-void
.end method
