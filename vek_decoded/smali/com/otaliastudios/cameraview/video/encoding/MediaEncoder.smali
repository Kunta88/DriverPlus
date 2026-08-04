.class public abstract Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;
.super Ljava/lang/Object;
.source "MediaEncoder.java"


# static fields
.field private static final INPUT_TIMEOUT_US:I = 0x0

.field private static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field private static final OUTPUT_TIMEOUT_US:I = 0x0

.field private static final STATE_LIMIT_REACHED:I = 0x5

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final STATE_STARTED:I = 0x4

.field private static final STATE_STARTING:I = 0x3

.field private static final STATE_STOPPED:I = 0x7

.field private static final STATE_STOPPING:I = 0x6

.field private static final TAG:Ljava/lang/String; = "MediaEncoder"


# instance fields
.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mBuffers:Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;

.field private mController:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;

.field private mDebugSetStateTimestamp:J

.field private mFirstTimeUs:J

.field private mLastTimeUs:J

.field private mMaxLengthReached:Z

.field private mMaxLengthUs:J

.field protected mMediaCodec:Landroid/media/MediaCodec;

.field private final mName:Ljava/lang/String;

.field private mOutputBufferPool:Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool;

.field private final mPendingEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTimeMillis:J

.field private mState:I

.field private mTrackIndex:I

.field protected mWorker:Lcom/otaliastudios/cameraview/internal/WorkerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    const-class v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mState:I

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mPendingEvents:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 128
    iput-wide v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mStartTimeMillis:J

    const-wide/high16 v2, -0x8000000000000000L

    .line 129
    iput-wide v2, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mFirstTimeUs:J

    .line 130
    iput-wide v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mLastTimeUs:J

    .line 132
    iput-wide v2, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mDebugSetStateTimestamp:J

    .line 140
    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;)Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Lcom/otaliastudios/cameraview/CameraLogger;
    .locals 1

    .line 80
    sget-object v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->setState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;)I
    .locals 0

    .line 80
    iget p0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mState:I

    return p0
.end method

.method private onMaxLengthReached()V
    .locals 7

    .line 538
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mMaxLengthReached:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 539
    sget-object v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mName:Ljava/lang/String;

    aput-object v4, v2, v1

    const-string v1, "onMaxLengthReached: Called twice."

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    .line 541
    :cond_0
    iput-boolean v3, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mMaxLengthReached:Z

    .line 542
    iget v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mState:I

    const/4 v4, 0x5

    if-lt v0, v4, :cond_1

    .line 543
    sget-object v4, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mName:Ljava/lang/String;

    aput-object v6, v5, v1

    const-string v1, "onMaxLengthReached: Reached in wrong state. Aborting."

    aput-object v1, v5, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {v4, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    .line 545
    :cond_1
    sget-object v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mName:Ljava/lang/String;

    aput-object v5, v2, v1

    const-string v1, "onMaxLengthReached: Requesting a stop."

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 546
    invoke-direct {p0, v4}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->setState(I)V

    .line 547
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mController:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;

    iget v1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mTrackIndex:I

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->requestStop(I)V

    :goto_0
    return-void
.end method

.method private setState(I)V
    .locals 7

    .line 144
    iget-wide v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mDebugSetStateTimestamp:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mDebugSetStateTimestamp:J

    .line 147
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mDebugSetStateTimestamp:J

    sub-long/2addr v0, v2

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mDebugSetStateTimestamp:J

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "STOPPED"

    goto :goto_0

    :pswitch_1
    const-string v2, "STOPPING"

    goto :goto_0

    :pswitch_2
    const-string v2, "LIMIT_REACHED"

    goto :goto_0

    :pswitch_3
    const-string v2, "STARTED"

    goto :goto_0

    :pswitch_4
    const-string v2, "STARTING"

    goto :goto_0

    :pswitch_5
    const-string v2, "PREPARED"

    goto :goto_0

    :pswitch_6
    const-string v2, "PREPARING"

    goto :goto_0

    :pswitch_7
    const-string v2, "NONE"

    .line 161
    :goto_0
    sget-object v3, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "setState:"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v2, 0x3

    const-string v5, "millisSinceLastState:"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    iput p1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mState:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected acquireInputBuffer(Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;)V
    .locals 1

    .line 365
    :goto_0
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->tryAcquireInputBuffer(Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final drainOutput(Z)V
    .locals 18

    move-object/from16 v0, p0

    .line 400
    sget-object v1, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "DRAINING - EOS:"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v1, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 401
    iget-object v3, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v3, :cond_0

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "drain() was called before prepare() or after releasing."

    aput-object v3, v2, v5

    .line 402
    invoke-virtual {v1, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    return-void

    .line 405
    :cond_0
    iget-object v1, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mBuffers:Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;

    if-nez v1, :cond_1

    .line 406
    new-instance v1, Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;

    iget-object v3, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-direct {v1, v3}, Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;-><init>(Landroid/media/MediaCodec;)V

    iput-object v1, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mBuffers:Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;

    .line 409
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v3, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v8, 0x0

    invoke-virtual {v1, v3, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 410
    sget-object v3, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mName:Ljava/lang/String;

    aput-object v8, v4, v5

    const-string v8, "DRAINING - Got status:"

    aput-object v8, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual {v3, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_2
    const/4 v4, -0x3

    if-ne v1, v4, :cond_3

    .line 417
    iget-object v1, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mBuffers:Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;->onOutputBuffersChanged()V

    goto :goto_0

    :cond_3
    const/4 v4, -0x2

    const/4 v8, 0x4

    if-ne v1, v4, :cond_5

    .line 421
    iget-object v1, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mController:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->isStarted()Z

    move-result v1

    if-nez v1, :cond_4

    .line 424
    iget-object v1, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 425
    iget-object v3, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mController:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;

    invoke-virtual {v3, v1}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->notifyStarted(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mTrackIndex:I

    .line 426
    invoke-direct {v0, v8}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->setState(I)V

    .line 427
    new-instance v1, Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool;

    iget v3, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mTrackIndex:I

    invoke-direct {v1, v3}, Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool;-><init>(I)V

    iput-object v1, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mOutputBufferPool:Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool;

    goto :goto_0

    .line 422
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "MediaFormat changed twice."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    if-gez v1, :cond_6

    new-array v4, v6, [Ljava/lang/Object;

    .line 429
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected result from dequeueOutputBuffer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    .line 432
    :cond_6
    iget-object v4, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mBuffers:Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;

    invoke-virtual {v4, v1}, Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 436
    iget-object v9, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v9, v7

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    goto :goto_1

    :cond_7
    const/4 v9, 0x0

    :goto_1
    const-wide/high16 v10, -0x8000000000000000L

    if-nez v9, :cond_9

    .line 438
    iget-object v9, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mController:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;

    invoke-virtual {v9}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->isStarted()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v9, :cond_9

    .line 441
    iget-object v9, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 442
    iget-object v9, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v12, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v9, v12

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 446
    iget-wide v12, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mFirstTimeUs:J

    cmp-long v9, v12, v10

    if-nez v9, :cond_8

    .line 447
    iget-object v9, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v12, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v12, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mFirstTimeUs:J

    new-array v9, v2, [Ljava/lang/Object;

    .line 448
    iget-object v14, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mName:Ljava/lang/String;

    aput-object v14, v9, v5

    const-string v14, "DRAINING - Got the first presentation time:"

    aput-object v14, v9, v6

    .line 449
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v7

    .line 448
    invoke-virtual {v3, v9}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 451
    :cond_8
    iget-object v9, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v12, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v12, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mLastTimeUs:J

    .line 459
    iget-object v9, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v14, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mStartTimeMillis:J

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    add-long/2addr v14, v12

    iget-wide v12, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mFirstTimeUs:J

    sub-long/2addr v14, v12

    iput-wide v14, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    new-array v9, v2, [Ljava/lang/Object;

    .line 463
    iget-object v12, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mName:Ljava/lang/String;

    aput-object v12, v9, v5

    const-string v12, "DRAINING - About to write(). Adjusted presentation:"

    aput-object v12, v9, v6

    iget-object v12, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v12, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 464
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v7

    .line 463
    invoke-virtual {v3, v9}, Lcom/otaliastudios/cameraview/CameraLogger;->v([Ljava/lang/Object;)Ljava/lang/String;

    .line 465
    iget-object v9, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mOutputBufferPool:Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool;

    invoke-virtual {v9}, Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;

    .line 467
    iget-object v12, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput-object v12, v9, Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 468
    iget v12, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mTrackIndex:I

    iput v12, v9, Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;->trackIndex:I

    .line 469
    iput-object v4, v9, Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 470
    iget-object v4, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mOutputBufferPool:Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool;

    invoke-virtual {v0, v4, v9}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->onWriteOutput(Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool;Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;)V

    .line 472
    :cond_9
    iget-object v4, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v1, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-nez p1, :cond_a

    .line 476
    iget-boolean v1, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mMaxLengthReached:Z

    if-nez v1, :cond_a

    iget-wide v12, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mFirstTimeUs:J

    cmp-long v1, v12, v10

    if-eqz v1, :cond_a

    iget-wide v9, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mLastTimeUs:J

    sub-long v12, v9, v12

    iget-wide v14, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mMaxLengthUs:J

    cmp-long v1, v12, v14

    if-lez v1, :cond_a

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    .line 480
    iget-object v4, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mName:Ljava/lang/String;

    aput-object v4, v1, v5

    const-string v4, "DRAINING - Reached maxLength! mLastTimeUs:"

    aput-object v4, v1, v6

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v7

    const-string v4, "mStartTimeUs:"

    aput-object v4, v1, v2

    iget-wide v4, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mFirstTimeUs:J

    .line 481
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v4, "mDeltaUs:"

    aput-object v4, v1, v2

    const/4 v2, 0x6

    iget-wide v4, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mLastTimeUs:J

    iget-wide v6, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mFirstTimeUs:J

    sub-long/2addr v4, v6

    .line 482
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string v4, "mMaxLengthUs:"

    aput-object v4, v1, v2

    const/16 v2, 0x8

    iget-wide v4, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mMaxLengthUs:J

    .line 483
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    .line 480
    invoke-virtual {v3, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 484
    invoke-direct/range {p0 .. p0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->onMaxLengthReached()V

    goto :goto_2

    .line 489
    :cond_a
    iget-object v1, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v1, v8

    if-eqz v1, :cond_1

    new-array v1, v7, [Ljava/lang/Object;

    .line 490
    iget-object v2, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mName:Ljava/lang/String;

    aput-object v2, v1, v5

    const-string v2, "DRAINING - Got EOS. Releasing the codec."

    aput-object v2, v1, v6

    invoke-virtual {v3, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->onStopped()V

    :goto_2
    return-void
.end method

.method protected encodeInputBuffer(Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 375
    sget-object v2, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-string v5, "ENCODING - Buffer:"

    aput-object v5, v3, v4

    iget v4, v1, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/4 v4, 0x3

    const-string v5, "Bytes:"

    aput-object v5, v3, v4

    iget v4, v1, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;->length:I

    .line 376
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const/4 v4, 0x5

    const-string v5, "Presentation:"

    aput-object v5, v3, v4

    iget-wide v4, v1, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;->timestamp:J

    .line 377
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 375
    invoke-virtual {v2, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->v([Ljava/lang/Object;)Ljava/lang/String;

    .line 378
    iget-boolean v2, v1, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;->isEndOfStream:Z

    if-eqz v2, :cond_0

    .line 379
    iget-object v3, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget v4, v1, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;->index:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-wide v7, v1, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;->timestamp:J

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 382
    :cond_0
    iget-object v10, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget v11, v1, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;->index:I

    const/4 v12, 0x0

    iget v13, v1, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;->length:I

    iget-wide v14, v1, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;->timestamp:J

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :goto_0
    return-void
.end method

.method protected abstract getEncodedBitRate()I
.end method

.method protected getMaxLengthUs()J
    .locals 2

    .line 515
    iget-wide v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mMaxLengthUs:J

    return-wide v0
.end method

.method protected final getPendingEvents(Ljava/lang/String;)I
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mPendingEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result p1

    return p1
.end method

.method protected hasReachedMaxLength()Z
    .locals 1

    .line 529
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mMaxLengthReached:Z

    return v0
.end method

.method final notify(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .line 234
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mPendingEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mPendingEvents:Ljava/util/Map;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mPendingEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 237
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 238
    sget-object v2, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "Notify was called. Posting. pendingEvents:"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->v([Ljava/lang/Object;)Ljava/lang/String;

    .line 239
    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mWorker:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    new-instance v2, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$3;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$3;-><init>(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final notifyFirstFrameMillis(J)V
    .locals 0

    .line 562
    iput-wide p1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mStartTimeMillis:J

    return-void
.end method

.method protected notifyMaxLengthReached()V
    .locals 0

    .line 524
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->onMaxLengthReached()V

    return-void
.end method

.method protected onEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected abstract onPrepare(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;J)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected onStopped()V
    .locals 4

    .line 322
    sget-object v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "is being released. Notifying controller and releasing codecs."

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mController:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;

    iget v1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mTrackIndex:I

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->notifyStopped(I)V

    .line 325
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 326
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 327
    iput-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 328
    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mOutputBufferPool:Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool;->clear()V

    .line 329
    iput-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mOutputBufferPool:Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool;

    .line 330
    iput-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mBuffers:Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;

    const/4 v0, 0x7

    .line 331
    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->setState(I)V

    .line 332
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mWorker:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->destroy()V

    return-void
.end method

.method protected onWriteOutput(Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool;Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;)V
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mController:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;

    invoke-virtual {v0, p1, p2}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->write(Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool;Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;)V

    return-void
.end method

.method final prepare(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;J)V
    .locals 5

    .line 176
    iget v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    .line 177
    sget-object p1, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mName:Ljava/lang/String;

    aput-object p3, p2, v1

    const-string p3, "Wrong state while preparing. Aborting."

    aput-object p3, p2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    invoke-virtual {p1, p2}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    return-void

    .line 180
    :cond_0
    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mController:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;

    .line 181
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 182
    iput-wide p2, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mMaxLengthUs:J

    .line 183
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mName:Ljava/lang/String;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->get(Ljava/lang/String;)Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mWorker:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    .line 184
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->getThread()Landroid/os/HandlerThread;

    move-result-object v0

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 185
    sget-object v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mName:Ljava/lang/String;

    aput-object v4, v2, v1

    const-string v1, "Prepare was called. Posting."

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mWorker:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    new-instance v1, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$1;-><init>(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;J)V

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method final start()V
    .locals 4

    .line 208
    sget-object v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "Start was called. Posting."

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mWorker:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    new-instance v1, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$2;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$2;-><init>(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;)V

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method final stop()V
    .locals 7

    .line 260
    iget v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x6

    if-lt v0, v4, :cond_0

    .line 261
    sget-object v4, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mName:Ljava/lang/String;

    aput-object v6, v5, v2

    const-string v2, "Wrong state while stopping. Aborting."

    aput-object v2, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-virtual {v4, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    return-void

    .line 264
    :cond_0
    invoke-direct {p0, v4}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->setState(I)V

    .line 265
    sget-object v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mName:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v2, "Stop was called. Posting."

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mWorker:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    new-instance v1, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$4;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder$4;-><init>(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;)V

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected tryAcquireInputBuffer(Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;)Z
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mBuffers:Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-direct {v0, v1}, Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;-><init>(Landroid/media/MediaCodec;)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mBuffers:Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    if-gez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 351
    :cond_1
    iput v0, p1, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;->index:I

    .line 352
    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->mBuffers:Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;

    invoke-virtual {v1, v0}, Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;->data:Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1
.end method
