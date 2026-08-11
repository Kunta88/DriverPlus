.class Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$8;
.super Ljava/lang/Object;
.source "CameraBaseEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->onSurfaceChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)V
    .locals 0

    .line 708
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$8;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 712
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$8;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->computePreviewStreamSize()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    .line 713
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$8;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPreviewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/size/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "onSurfaceChanged:"

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_0

    .line 714
    sget-object v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v3, v1, v4

    const-string v3, "The computed preview size is identical. No op."

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    .line 717
    :cond_0
    sget-object v1, Lcom/otaliastudios/cameraview/engine/CameraEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v4

    const-string v3, "Computed a new preview size. Calling onPreviewStreamSizeChanged()."

    aput-object v3, v5, v2

    invoke-virtual {v1, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 719
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$8;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput-object v0, v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPreviewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 720
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$8;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->onPreviewStreamSizeChanged()V

    :goto_0
    return-void
.end method
