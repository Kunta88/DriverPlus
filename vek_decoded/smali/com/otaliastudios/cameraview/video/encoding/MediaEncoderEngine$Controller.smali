.class public Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;
.super Ljava/lang/Object;
.source "MediaEncoderEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Controller"
.end annotation


# instance fields
.field private mDebugCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->mDebugCount:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public isStarted()Z
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$000(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$100(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 320
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyStarted(Landroid/media/MediaFormat;)I
    .locals 10

    .line 284
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$000(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 285
    :try_start_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$100(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$200(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)Landroid/media/MediaMuxer;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    .line 289
    invoke-static {}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$300()Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "notifyStarted:"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Assigned track"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-string v4, "to format"

    const/4 v8, 0x3

    aput-object v4, v3, v8

    const/4 v4, 0x4

    const-string v9, "mime"

    .line 290
    invoke-virtual {p1, v9}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    .line 289
    invoke-virtual {v2, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 291
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$404(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)I

    move-result p1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    invoke-static {v2}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$500(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 292
    invoke-static {}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$300()Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object p1

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "notifyStarted:"

    aput-object v3, v2, v5

    const-string v3, "All encoders have started."

    aput-object v3, v2, v6

    const-string v3, "Starting muxer and dispatching onEncodingStart()."

    aput-object v3, v2, v7

    invoke-virtual {p1, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 296
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$700(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    move-result-object p1

    new-instance v2, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller$1;

    invoke-direct {v2, p0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller$1;-><init>(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;)V

    invoke-virtual {p1, v2}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->run(Ljava/lang/Runnable;)V

    .line 307
    :cond_0
    monitor-exit v0

    return v1

    .line 286
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to start but muxer started already"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 308
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public notifyStopped(I)V
    .locals 7

    .line 401
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$000(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 402
    :try_start_0
    invoke-static {}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$300()Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "notifyStopped:"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Called for track"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 403
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$1004(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)I

    move-result p1

    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$500(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 404
    invoke-static {}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$300()Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "requestStop:"

    aput-object v2, v1, v5

    const-string v2, "All encoders have been stopped."

    aput-object v2, v1, v6

    const-string v2, "Stopping the muxer."

    aput-object v2, v1, v4

    invoke-virtual {p1, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 408
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$700(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    move-result-object p1

    new-instance v1, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller$3;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller$3;-><init>(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;)V

    invoke-virtual {p1, v1}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->run(Ljava/lang/Runnable;)V

    .line 415
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public requestStop(I)V
    .locals 7

    .line 376
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$000(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 377
    :try_start_0
    invoke-static {}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$300()Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "requestStop:"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Called for track"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 378
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$406(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)I

    move-result p1

    if-nez p1, :cond_0

    .line 379
    invoke-static {}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$300()Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "requestStop:"

    aput-object v2, v1, v5

    const-string v2, "All encoders have requested a stop."

    aput-object v2, v1, v6

    const-string v2, "Stopping them."

    aput-object v2, v1, v4

    invoke-virtual {p1, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 381
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$900(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$802(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;I)I

    .line 384
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$700(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    move-result-object p1

    new-instance v1, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller$2;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller$2;-><init>(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;)V

    invoke-virtual {p1, v1}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->run(Ljava/lang/Runnable;)V

    .line 391
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public write(Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool;Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;)V
    .locals 8

    .line 347
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->mDebugCount:Ljava/util/Map;

    iget v1, p2, Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;->trackIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 348
    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->mDebugCount:Ljava/util/Map;

    iget v2, p2, Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;->trackIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 350
    iget-object v2, p2, Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 351
    invoke-static {}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$300()Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v2

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "write:"

    aput-object v6, v4, v5

    const-string v5, "Writing into muxer -"

    aput-object v5, v4, v3

    const/4 v3, 0x2

    const-string v5, "track:"

    aput-object v5, v4, v3

    const/4 v3, 0x3

    iget v5, p2, Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;->trackIndex:I

    .line 352
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x4

    const-string v5, "presentation:"

    aput-object v5, v4, v3

    const/4 v3, 0x5

    iget-object v5, p2, Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 353
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x6

    const-string v5, "readable:"

    aput-object v5, v4, v3

    const/4 v3, 0x7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0xd

    .line 354
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xe

    .line 355
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    const/16 v1, 0x8

    const-string v3, "count:"

    aput-object v3, v4, v1

    const/16 v1, 0x9

    aput-object v0, v4, v1

    .line 351
    invoke-virtual {v2, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->v([Ljava/lang/Object;)Ljava/lang/String;

    .line 362
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$200(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)Landroid/media/MediaMuxer;

    move-result-object v0

    iget v1, p2, Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;->trackIndex:I

    iget-object v2, p2, Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v3, p2, Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;->info:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 363
    invoke-virtual {p1, p2}, Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool;->recycle(Ljava/lang/Object;)V

    return-void
.end method
