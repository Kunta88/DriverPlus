.class Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$1;
.super Ljava/lang/Object;
.source "MediaEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->prepare(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;

.field final synthetic val$controller:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;

.field final synthetic val$maxLengthUs:J


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;J)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$1;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$1;->val$controller:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;

    iput-wide p3, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$1;->val$maxLengthUs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 189
    invoke-static {}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->access$100()Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$1;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;

    invoke-static {v3}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->access$000(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Prepare was called. Executing."

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$1;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;

    invoke-static {v0, v4}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->access$200(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;I)V

    .line 191
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$1;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$1;->val$controller:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;

    iget-wide v3, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$1;->val$maxLengthUs:J

    invoke-virtual {v0, v2, v3, v4}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->onPrepare(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;J)V

    .line 192
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$1;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;

    invoke-static {v0, v1}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->access$200(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;I)V

    return-void
.end method
