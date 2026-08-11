.class Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;
.super Ljava/lang/Object;
.source "CameraBaseEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->takeVideoSnapshot(Lcom/otaliastudios/cameraview/VideoResult$Stub;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;Lcom/otaliastudios/cameraview/VideoResult$Stub;Ljava/io/File;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iput-object p3, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 621
    sget-object v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "takeVideoSnapshot:"

    aput-object v3, v1, v2

    const-string v2, "running. isTakingVideo:"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->isTakingVideo()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 622
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->val$file:Ljava/io/File;

    iput-object v1, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->file:Ljava/io/File;

    .line 623
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iput-boolean v3, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->isSnapshot:Z

    .line 624
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mVideoCodec:Lcom/otaliastudios/cameraview/controls/VideoCodec;

    iput-object v1, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoCodec:Lcom/otaliastudios/cameraview/controls/VideoCodec;

    .line 625
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mAudioCodec:Lcom/otaliastudios/cameraview/controls/AudioCodec;

    iput-object v1, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audioCodec:Lcom/otaliastudios/cameraview/controls/AudioCodec;

    .line 626
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mLocation:Landroid/location/Location;

    iput-object v1, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->location:Landroid/location/Location;

    .line 627
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->access$000(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)Lcom/otaliastudios/cameraview/controls/Facing;

    move-result-object v1

    iput-object v1, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->facing:Lcom/otaliastudios/cameraview/controls/Facing;

    .line 628
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->access$600(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)I

    move-result v1

    iput v1, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoBitRate:I

    .line 629
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->access$700(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)I

    move-result v1

    iput v1, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audioBitRate:I

    .line 630
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->access$300(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)Lcom/otaliastudios/cameraview/controls/Audio;

    move-result-object v1

    iput-object v1, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audio:Lcom/otaliastudios/cameraview/controls/Audio;

    .line 631
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->access$400(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->maxSize:J

    .line 632
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->access$500(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)I

    move-result v1

    iput v1, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->maxDuration:I

    .line 634
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-static {v0, v1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->access$200(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    invoke-static {v0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->of(Lcom/otaliastudios/cameraview/size/Size;)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v0

    .line 635
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    invoke-virtual {v1, v2, v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->onTakeVideoSnapshot(Lcom/otaliastudios/cameraview/VideoResult$Stub;Lcom/otaliastudios/cameraview/size/AspectRatio;)V

    return-void
.end method
