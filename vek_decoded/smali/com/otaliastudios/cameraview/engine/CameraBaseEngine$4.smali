.class Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;
.super Ljava/lang/Object;
.source "CameraBaseEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->takePictureSnapshot(Lcom/otaliastudios/cameraview/PictureResult$Stub;)V
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

    .line 537
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;->val$stub:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iput-boolean p3, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;->val$metering:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 540
    sget-object v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "takePictureSnapshot:"

    aput-object v3, v1, v2

    const-string v2, "running. isTakingPicture:"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->isTakingPicture()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 541
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->isTakingPicture()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;->val$stub:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mLocation:Landroid/location/Location;

    iput-object v1, v0, Lcom/otaliastudios/cameraview/PictureResult$Stub;->location:Landroid/location/Location;

    .line 543
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;->val$stub:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iput-boolean v3, v0, Lcom/otaliastudios/cameraview/PictureResult$Stub;->isSnapshot:Z

    .line 544
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;->val$stub:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->access$000(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)Lcom/otaliastudios/cameraview/controls/Facing;

    move-result-object v1

    iput-object v1, v0, Lcom/otaliastudios/cameraview/PictureResult$Stub;->facing:Lcom/otaliastudios/cameraview/controls/Facing;

    .line 545
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;->val$stub:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    sget-object v1, Lcom/otaliastudios/cameraview/controls/PictureFormat;->JPEG:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    iput-object v1, v0, Lcom/otaliastudios/cameraview/PictureResult$Stub;->format:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    .line 548
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-static {v0, v1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->access$200(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    invoke-static {v0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->of(Lcom/otaliastudios/cameraview/size/Size;)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v0

    .line 549
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;->val$stub:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget-boolean v3, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;->val$metering:Z

    invoke-virtual {v1, v2, v0, v3}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->onTakePictureSnapshot(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/size/AspectRatio;Z)V

    return-void
.end method
