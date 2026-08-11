.class Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;
.super Ljava/lang/Object;
.source "CameraBaseEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->takePicture(Lcom/otaliastudios/cameraview/PictureResult$Stub;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

.field final synthetic val$metering:Z

.field final synthetic val$stub:Lcom/otaliastudios/cameraview/PictureResult$Stub;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;Lcom/otaliastudios/cameraview/PictureResult$Stub;Z)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;->val$stub:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iput-boolean p3, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;->val$metering:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 513
    sget-object v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "takePicture:"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "running. isTakingPicture:"

    aput-object v4, v1, v2

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->isTakingPicture()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 514
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->isTakingPicture()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->access$100(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)Lcom/otaliastudios/cameraview/controls/Mode;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/controls/Mode;->VIDEO:Lcom/otaliastudios/cameraview/controls/Mode;

    if-eq v0, v1, :cond_1

    .line 518
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;->val$stub:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iput-boolean v3, v0, Lcom/otaliastudios/cameraview/PictureResult$Stub;->isSnapshot:Z

    .line 519
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;->val$stub:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mLocation:Landroid/location/Location;

    iput-object v1, v0, Lcom/otaliastudios/cameraview/PictureResult$Stub;->location:Landroid/location/Location;

    .line 520
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;->val$stub:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->access$000(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)Lcom/otaliastudios/cameraview/controls/Facing;

    move-result-object v1

    iput-object v1, v0, Lcom/otaliastudios/cameraview/PictureResult$Stub;->facing:Lcom/otaliastudios/cameraview/controls/Facing;

    .line 521
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;->val$stub:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPictureFormat:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    iput-object v1, v0, Lcom/otaliastudios/cameraview/PictureResult$Stub;->format:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    .line 522
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;->val$stub:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget-boolean v2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;->val$metering:Z

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->onTakePicture(Lcom/otaliastudios/cameraview/PictureResult$Stub;Z)V

    return-void

    .line 516
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t take hq pictures while in VIDEO mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
