.class Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;
.super Ljava/lang/Object;
.source "CameraBaseEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->takeVideo(Lcom/otaliastudios/cameraview/VideoResult$Stub;Ljava/io/File;Ljava/io/FileDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$fileDescriptor:Ljava/io/FileDescriptor;

.field final synthetic val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;Ljava/io/File;Lcom/otaliastudios/cameraview/VideoResult$Stub;Ljava/io/FileDescriptor;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iput-object p4, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->val$fileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 583
    sget-object v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "takeVideo:"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "running. isTakingVideo:"

    aput-object v4, v1, v2

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->isTakingVideo()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 584
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->isTakingVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->access$100(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)Lcom/otaliastudios/cameraview/controls/Mode;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/controls/Mode;->PICTURE:Lcom/otaliastudios/cameraview/controls/Mode;

    if-eq v0, v1, :cond_3

    .line 588
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->val$file:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 589
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iput-object v0, v1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->file:Ljava/io/File;

    goto :goto_0

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->val$fileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_2

    .line 591
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iput-object v0, v1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->fileDescriptor:Ljava/io/FileDescriptor;

    .line 595
    :goto_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iput-boolean v3, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->isSnapshot:Z

    .line 596
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mVideoCodec:Lcom/otaliastudios/cameraview/controls/VideoCodec;

    iput-object v1, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoCodec:Lcom/otaliastudios/cameraview/controls/VideoCodec;

    .line 597
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mAudioCodec:Lcom/otaliastudios/cameraview/controls/AudioCodec;

    iput-object v1, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audioCodec:Lcom/otaliastudios/cameraview/controls/AudioCodec;

    .line 598
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mLocation:Landroid/location/Location;

    iput-object v1, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->location:Landroid/location/Location;

    .line 599
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->access$000(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)Lcom/otaliastudios/cameraview/controls/Facing;

    move-result-object v1

    iput-object v1, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->facing:Lcom/otaliastudios/cameraview/controls/Facing;

    .line 600
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->access$300(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)Lcom/otaliastudios/cameraview/controls/Audio;

    move-result-object v1

    iput-object v1, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audio:Lcom/otaliastudios/cameraview/controls/Audio;

    .line 601
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->access$400(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->maxSize:J

    .line 602
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->access$500(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)I

    move-result v1

    iput v1, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->maxDuration:I

    .line 603
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->access$600(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)I

    move-result v1

    iput v1, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoBitRate:I

    .line 604
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->access$700(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)I

    move-result v1

    iput v1, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audioBitRate:I

    .line 605
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->onTakeVideo(Lcom/otaliastudios/cameraview/VideoResult$Stub;)V

    return-void

    .line 593
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "file and fileDescriptor are both null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t record video while in PICTURE mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
