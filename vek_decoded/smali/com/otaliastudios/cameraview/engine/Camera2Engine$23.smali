.class Lcom/otaliastudios/cameraview/engine/Camera2Engine$23;
.super Ljava/lang/Object;
.source "Camera2Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/Camera2Engine;->startAutoFocus(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/metering/MeteringRegions;Landroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

.field final synthetic val$gesture:Lcom/otaliastudios/cameraview/gesture/Gesture;

.field final synthetic val$legacyPoint:Landroid/graphics/PointF;

.field final synthetic val$regions:Lcom/otaliastudios/cameraview/metering/MeteringRegions;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/otaliastudios/cameraview/gesture/Gesture;Landroid/graphics/PointF;Lcom/otaliastudios/cameraview/metering/MeteringRegions;)V
    .locals 0

    .line 1532
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$23;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$23;->val$gesture:Lcom/otaliastudios/cameraview/gesture/Gesture;

    iput-object p3, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$23;->val$legacyPoint:Landroid/graphics/PointF;

    iput-object p4, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$23;->val$regions:Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1537
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$23;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/CameraOptions;->isAutoFocusSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$23;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getCallback()Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$23;->val$gesture:Lcom/otaliastudios/cameraview/gesture/Gesture;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$23;->val$legacyPoint:Landroid/graphics/PointF;

    invoke-interface {v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->dispatchOnFocusStart(Lcom/otaliastudios/cameraview/gesture/Gesture;Landroid/graphics/PointF;)V

    .line 1541
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$23;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$23;->val$regions:Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    invoke-static {v0, v1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->access$1400(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/otaliastudios/cameraview/metering/MeteringRegions;)Lcom/otaliastudios/cameraview/engine/meter/MeterAction;

    move-result-object v0

    const-wide/16 v1, 0x1388

    .line 1542
    invoke-static {v1, v2, v0}, Lcom/otaliastudios/cameraview/engine/action/Actions;->timeout(JLcom/otaliastudios/cameraview/engine/action/BaseAction;)Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object v1

    .line 1543
    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$23;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-interface {v1, v2}, Lcom/otaliastudios/cameraview/engine/action/Action;->start(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    .line 1544
    new-instance v2, Lcom/otaliastudios/cameraview/engine/Camera2Engine$23$1;

    invoke-direct {v2, p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$23$1;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine$23;Lcom/otaliastudios/cameraview/engine/meter/MeterAction;)V

    invoke-interface {v1, v2}, Lcom/otaliastudios/cameraview/engine/action/Action;->addCallback(Lcom/otaliastudios/cameraview/engine/action/ActionCallback;)V

    return-void
.end method
