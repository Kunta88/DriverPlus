.class Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;
.super Ljava/lang/Thread;
.source "AudioMediaEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioEncodingThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;


# direct methods
.method private constructor <init>(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$1;)V
    .locals 0

    .line 350
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;-><init>(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)V

    return-void
.end method

.method private encode(Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;)V
    .locals 8

    .line 412
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 414
    invoke-static {}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$400()Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "encoding thread - performing pending operation for timestamp:"

    aput-object v4, v2, v3

    iget-wide v5, p1, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;->timestamp:J

    .line 415
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const-string v5, "- encoding."

    const/4 v7, 0x2

    aput-object v5, v2, v7

    .line 414
    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->v([Ljava/lang/Object;)Ljava/lang/String;

    .line 417
    iget-object v0, p1, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 418
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$500(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/ByteBufferPool;

    move-result-object v0

    iget-object v2, p1, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;->source:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/video/encoding/ByteBufferPool;->recycle(Ljava/lang/Object;)V

    .line 419
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$900(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 420
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->encodeInputBuffer(Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;)V

    .line 421
    iget-boolean v0, p1, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;->isEndOfStream:Z

    .line 422
    iget-object v2, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-static {v2}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$800(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/InputBufferPool;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/otaliastudios/cameraview/video/encoding/InputBufferPool;->recycle(Ljava/lang/Object;)V

    .line 423
    invoke-static {}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$400()Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    iget-wide v3, p1, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;->timestamp:J

    .line 424
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v6

    const-string p1, "- draining."

    aput-object p1, v1, v7

    .line 423
    invoke-virtual {v2, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->v([Ljava/lang/Object;)Ljava/lang/String;

    .line 428
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->drainOutput(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 361
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$900(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-static {v0, v1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$600(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;I)V

    goto :goto_0

    .line 364
    :cond_1
    invoke-static {}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$400()Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "encoding thread - performing"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-static {v4}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$900(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "pending operations."

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->v([Ljava/lang/Object;)Ljava/lang/String;

    .line 367
    :goto_1
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$900(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;

    if-eqz v0, :cond_0

    .line 386
    iget-boolean v2, v0, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;->isEndOfStream:Z

    if-eqz v2, :cond_2

    .line 387
    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-virtual {v1, v0}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->acquireInputBuffer(Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;)V

    .line 388
    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;->encode(Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;)V

    .line 399
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$800(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/InputBufferPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/video/encoding/InputBufferPool;->clear()V

    return-void

    .line 390
    :cond_2
    iget-object v2, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-virtual {v2, v0}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->tryAcquireInputBuffer(Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 391
    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;->encode(Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;)V

    goto :goto_1

    .line 393
    :cond_3
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-static {v0, v1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$600(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;I)V

    goto :goto_1
.end method
