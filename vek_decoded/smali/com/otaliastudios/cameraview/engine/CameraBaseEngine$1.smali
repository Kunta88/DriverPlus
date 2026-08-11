.class Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$1;
.super Ljava/lang/Object;
.source "CameraBaseEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->setFacing(Lcom/otaliastudios/cameraview/controls/Facing;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

.field final synthetic val$facing:Lcom/otaliastudios/cameraview/controls/Facing;

.field final synthetic val$old:Lcom/otaliastudios/cameraview/controls/Facing;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;Lcom/otaliastudios/cameraview/controls/Facing;Lcom/otaliastudios/cameraview/controls/Facing;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$1;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$1;->val$facing:Lcom/otaliastudios/cameraview/controls/Facing;

    iput-object p3, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$1;->val$old:Lcom/otaliastudios/cameraview/controls/Facing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$1;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$1;->val$facing:Lcom/otaliastudios/cameraview/controls/Facing;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->collectCameraInfo(Lcom/otaliastudios/cameraview/controls/Facing;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$1;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->restart()V

    goto :goto_0

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$1;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$1;->val$old:Lcom/otaliastudios/cameraview/controls/Facing;

    invoke-static {v0, v1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->access$002(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;Lcom/otaliastudios/cameraview/controls/Facing;)Lcom/otaliastudios/cameraview/controls/Facing;

    :goto_0
    return-void
.end method
