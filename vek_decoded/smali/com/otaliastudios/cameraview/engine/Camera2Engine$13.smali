.class Lcom/otaliastudios/cameraview/engine/Camera2Engine$13;
.super Ljava/lang/Object;
.source "Camera2Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/Camera2Engine;->setWhiteBalance(Lcom/otaliastudios/cameraview/controls/WhiteBalance;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

.field final synthetic val$old:Lcom/otaliastudios/cameraview/controls/WhiteBalance;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/otaliastudios/cameraview/controls/WhiteBalance;)V
    .locals 0

    .line 1196
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$13;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$13;->val$old:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1199
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$13;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->access$1300(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$13;->val$old:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyWhiteBalance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/otaliastudios/cameraview/controls/WhiteBalance;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$13;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyRepeatingRequestBuilder()V

    :cond_0
    return-void
.end method
