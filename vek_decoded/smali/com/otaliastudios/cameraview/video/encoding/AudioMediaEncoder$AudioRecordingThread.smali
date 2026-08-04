.class Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;
.super Ljava/lang/Thread;
.source "AudioMediaEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRecordingThread"
.end annotation


# instance fields
.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mCurrentBuffer:Ljava/nio/ByteBuffer;

.field private mCurrentReadBytes:I

.field private mFirstTimeUs:J

.field private mLastTimeUs:J

.field final synthetic this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;


# direct methods
.method private constructor <init>(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)V
    .locals 8

    .line 146
    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 144
    iput-wide v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->mFirstTimeUs:J

    const/16 v0, 0xa

    .line 147
    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->setPriority(I)V

    .line 149
    invoke-static {p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$200(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    move-result-object v0

    iget v0, v0, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->samplingFrequency:I

    .line 150
    invoke-static {p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$200(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->audioFormatChannels()I

    move-result v1

    .line 151
    invoke-static {p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$200(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    .line 148
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    .line 156
    invoke-static {p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$200(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->frameSize()I

    move-result v1

    invoke-static {p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$200(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->audioRecordBufferFrames()I

    move-result v2

    mul-int v1, v1, v2

    move v7, v1

    :goto_0
    if-ge v7, v0, :cond_0

    .line 158
    invoke-static {p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$200(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->frameSize()I

    move-result v1

    add-int/2addr v7, v1

    goto :goto_0

    .line 160
    :cond_0
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v3, 0x5

    .line 161
    invoke-static {p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$200(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    move-result-object v1

    iget v4, v1, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->samplingFrequency:I

    .line 162
    invoke-static {p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$200(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->audioFormatChannels()I

    move-result v5

    .line 163
    invoke-static {p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$200(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->mAudioRecord:Landroid/media/AudioRecord;

    return-void
.end method

.method synthetic constructor <init>(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$1;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;-><init>(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)V

    return-void
.end method

.method private enqueue(Ljava/nio/ByteBuffer;JZ)V
    .locals 2

    .line 290
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 291
    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$800(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/InputBufferPool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/video/encoding/InputBufferPool;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;

    .line 293
    iput-object p1, v1, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;->source:Ljava/nio/ByteBuffer;

    .line 294
    iput-wide p2, v1, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;->timestamp:J

    .line 295
    iput v0, v1, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;->length:I

    .line 296
    iput-boolean p4, v1, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;->isEndOfStream:Z

    .line 297
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$900(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private increaseTime(IZ)V
    .locals 7

    .line 262
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$700(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;->increaseUs(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->mLastTimeUs:J

    .line 263
    iget-wide v2, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->mFirstTimeUs:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 264
    iput-wide v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->mFirstTimeUs:J

    .line 266
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, p1

    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    .line 267
    invoke-static {p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$200(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->byteRate()I

    move-result p1

    invoke-static {v3, v4, p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;->bytesToMillis(JI)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 266
    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->notifyFirstFrameMillis(J)V

    .line 271
    :cond_0
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->hasReachedMaxLength()Z

    move-result p1

    if-nez p1, :cond_2

    .line 272
    iget-wide v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->mLastTimeUs:J

    iget-wide v2, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->mFirstTimeUs:J

    sub-long/2addr v0, v2

    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->getMaxLengthUs()J

    move-result-wide v2

    const/4 p1, 0x1

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 274
    invoke-static {}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$400()Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "read thread - this frame reached the maxLength! deltaUs:"

    aput-object v1, v0, v4

    iget-wide v1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->mLastTimeUs:J

    iget-wide v3, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->mFirstTimeUs:J

    sub-long/2addr v1, v3

    .line 275
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, p1

    .line 274
    invoke-virtual {p2, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 276
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->notifyMaxLengthReached()V

    .line 281
    :cond_2
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->maybeAddNoise()V

    return-void
.end method

.method private maybeAddNoise()V
    .locals 12

    .line 320
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$700(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$200(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->frameSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;->getGapCount(I)I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$700(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;

    move-result-object v1

    iget-wide v2, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->mLastTimeUs:J

    invoke-virtual {v1, v2, v3}, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;->getGapStartUs(J)J

    move-result-wide v1

    .line 324
    iget-object v3, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-static {v3}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$200(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->frameSize()I

    move-result v3

    int-to-long v3, v3

    iget-object v5, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-static {v5}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$200(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->byteRate()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;->bytesToUs(JI)J

    move-result-wide v3

    .line 325
    invoke-static {}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$400()Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "read thread - GAPS: trying to add"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const/4 v7, 0x2

    const-string v10, "noise buffers. PERFORMANCE_MAX_GAPS:"

    aput-object v10, v6, v7

    const/4 v7, 0x3

    const/16 v10, 0x8

    .line 326
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v7

    .line 325
    invoke-virtual {v5, v6}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    const/4 v5, 0x0

    .line 327
    :goto_0
    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 328
    iget-object v6, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-static {v6}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$500(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/ByteBufferPool;

    move-result-object v6

    invoke-virtual {v6}, Lcom/otaliastudios/cameraview/video/encoding/ByteBufferPool;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    if-nez v6, :cond_1

    .line 330
    invoke-static {}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$400()Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "read thread - GAPS: aborting because we have no free buffer."

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    .line 333
    :cond_1
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 334
    iget-object v7, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-static {v7}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$1000(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/AudioNoise;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/otaliastudios/cameraview/video/encoding/AudioNoise;->fill(Ljava/nio/ByteBuffer;)V

    .line 335
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 336
    invoke-direct {p0, v6, v1, v2, v8}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->enqueue(Ljava/nio/ByteBuffer;JZ)V

    add-long/2addr v1, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private read(Z)Z
    .locals 9

    .line 201
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$500(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/ByteBufferPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/video/encoding/ByteBufferPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->mCurrentBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 210
    invoke-static {}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$400()Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "read thread - eos: true - No buffer, retrying."

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->v([Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    .line 212
    :cond_0
    invoke-static {}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$400()Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "read thread - eos: false - Skipping audio frame,"

    aput-object v1, v0, v3

    const-string v1, "encoding is too slow."

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 214
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$600(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;I)V

    :goto_0
    return v3

    .line 218
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 232
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->mAudioRecord:Landroid/media/AudioRecord;

    iget-object v4, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->mCurrentBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-static {v5}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$200(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->frameSize()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->mCurrentReadBytes:I

    .line 234
    invoke-static {}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$400()Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "read thread - eos:"

    aput-object v6, v5, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v2

    const-string v7, "- Read new audio frame. Bytes:"

    aput-object v7, v5, v1

    iget v7, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->mCurrentReadBytes:I

    .line 235
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v5, v8

    .line 234
    invoke-virtual {v0, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->v([Ljava/lang/Object;)Ljava/lang/String;

    .line 236
    iget v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->mCurrentReadBytes:I

    if-lez v0, :cond_2

    .line 237
    invoke-direct {p0, v0, p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->increaseTime(IZ)V

    .line 238
    invoke-static {}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$400()Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v2

    const-string v3, "- mLastTimeUs:"

    aput-object v3, v4, v1

    iget-wide v5, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->mLastTimeUs:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-virtual {v0, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->v([Ljava/lang/Object;)Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->mCurrentBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->mCurrentReadBytes:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 240
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->mCurrentBuffer:Ljava/nio/ByteBuffer;

    iget-wide v3, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->mLastTimeUs:J

    invoke-direct {p0, v0, v3, v4, p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->enqueue(Ljava/nio/ByteBuffer;JZ)V

    goto :goto_1

    :cond_2
    const/4 v4, -0x3

    if-ne v0, v4, :cond_3

    .line 242
    invoke-static {}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$400()Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v6, v4, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v2

    const-string p1, "- Got AudioRecord.ERROR_INVALID_OPERATION"

    aput-object p1, v4, v1

    invoke-virtual {v0, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v4, -0x2

    if-ne v0, v4, :cond_4

    .line 245
    invoke-static {}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$400()Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v6, v4, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v2

    const-string p1, "- Got AudioRecord.ERROR_BAD_VALUE"

    aput-object p1, v4, v1

    invoke-virtual {v0, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    :cond_4
    :goto_1
    return v2
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 169
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 170
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$300(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->this$0:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->hasReachedMaxLength()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-direct {p0, v1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->read(Z)Z

    goto :goto_0

    .line 182
    :cond_1
    invoke-static {}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->access$400()Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Stop was requested. We\'re out of the loop. Will post an endOfStream."

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    :goto_1
    if-nez v1, :cond_2

    .line 187
    invoke-direct {p0, v2}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->read(Z)Z

    move-result v1

    goto :goto_1

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 190
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->mAudioRecord:Landroid/media/AudioRecord;

    return-void
.end method
