.class Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$3;
.super Ljava/lang/Object;
.source "MediaEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->notify(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;

.field final synthetic val$data:Ljava/lang/Object;

.field final synthetic val$event:Ljava/lang/String;

.field final synthetic val$pendingEvents:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$3;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$3;->val$pendingEvents:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$3;->val$event:Ljava/lang/String;

    iput-object p4, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$3;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 242
    invoke-static {}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->access$100()Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$3;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;

    invoke-static {v2}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->access$000(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "Notify was called. Executing. pendingEvents:"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$3;->val$pendingEvents:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 243
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 242
    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->v([Ljava/lang/Object;)Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$3;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$3;->val$event:Ljava/lang/String;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$3;->val$data:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->onEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$3;->val$pendingEvents:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method
