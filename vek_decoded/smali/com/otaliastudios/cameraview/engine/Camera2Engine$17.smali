.class Lcom/otaliastudios/cameraview/engine/Camera2Engine$17;
.super Ljava/lang/Object;
.source "Camera2Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/Camera2Engine;->setPreviewFrameRate(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

.field final synthetic val$oldPreviewFrameRate:F


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;F)V
    .locals 0

    .line 1356
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$17;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iput p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$17;->val$oldPreviewFrameRate:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1359
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$17;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->access$1300(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iget v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$17;->val$oldPreviewFrameRate:F

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyPreviewFrameRate(Landroid/hardware/camera2/CaptureRequest$Builder;F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1360
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$17;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyRepeatingRequestBuilder()V

    :cond_0
    return-void
.end method
