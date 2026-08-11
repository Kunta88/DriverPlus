.class Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$1;
.super Ljava/lang/Object;
.source "Camera1Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 892
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$1;->this$1:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 895
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$1;->this$1:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getCallback()Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$1;->this$1:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->val$gesture:Lcom/otaliastudios/cameraview/gesture/Gesture;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$1;->this$1:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;

    iget-object v2, v2, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->val$legacyPoint:Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->dispatchOnFocusEnd(Lcom/otaliastudios/cameraview/gesture/Gesture;ZLandroid/graphics/PointF;)V

    return-void
.end method
