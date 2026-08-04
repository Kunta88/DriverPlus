.class public Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;
.super Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;
.source "AudioMediaEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;,
        Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;
    }
.end annotation


# static fields
.field private static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field private static final PERFORMANCE_DEBUG:Z = false

.field private static final PERFORMANCE_FILL_GAPS:Z = true

.field private static final PERFORMANCE_MAX_GAPS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "AudioMediaEncoder"


# instance fields
.field private mAudioNoise:Lcom/otaliastudios/cameraview/video/encoding/AudioNoise;

.field private mByteBufferPool:Lcom/otaliastudios/cameraview/video/encoding/ByteBufferPool;

.field private mConfig:Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

.field private mDebugExecuteAvgDelay:J

.field private mDebugExecuteCount:I

.field private mDebugSendAvgDelay:J

.field private mDebugSendCount:I

.field private mDebugSendStartMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEncoder:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;

.field private mInputBufferPool:Lcom/otaliastudios/cameraview/video/encoding/InputBufferPool;

.field private final mInputBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mRecorder:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;

.field private mRequestStop:Z

.field private final mTimestamp:Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;)V
    .locals 2

    const-string v0, "AudioEncoder"

    .line 54
    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mRequestStop:Z

    .line 42
    new-instance v1, Lcom/otaliastudios/cameraview/video/encoding/InputBufferPool;

    invoke-direct {v1}, Lcom/otaliastudios/cameraview/video/encoding/InputBufferPool;-><init>()V

    iput-object v1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mInputBufferPool:Lcom/otaliastudios/cameraview/video/encoding/InputBufferPool;

    .line 43
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mInputBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 47
    iput v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mDebugSendCount:I

    .line 48
    iput v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mDebugExecuteCount:I

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mDebugSendAvgDelay:J

    .line 50
    iput-wide v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mDebugExecuteAvgDelay:J

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mDebugSendStartMap:Ljava/util/Map;

    .line 55
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->copy()Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    .line 56
    new-instance p1, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->byteRate()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;-><init>(I)V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mTimestamp:Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;

    .line 59
    new-instance p1, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;-><init>(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$1;)V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mEncoder:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;

    .line 60
    new-instance p1, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;

    invoke-direct {p1, p0, v0}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;-><init>(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$1;)V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mRecorder:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;

    return-void
.end method

.method static synthetic access$1000(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/AudioNoise;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mAudioNoise:Lcom/otaliastudios/cameraview/video/encoding/AudioNoise;

    return-object p0
.end method

.method static synthetic access$200(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    return-object p0
.end method

.method static synthetic access$300(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mRequestStop:Z

    return p0
.end method

.method static synthetic access$400()Lcom/otaliastudios/cameraview/CameraLogger;
    .locals 1

    .line 27
    sget-object v0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/ByteBufferPool;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mByteBufferPool:Lcom/otaliastudios/cameraview/video/encoding/ByteBufferPool;

    return-object p0
.end method

.method static synthetic access$600(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->skipFrames(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mTimestamp:Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;

    return-object p0
.end method

.method static synthetic access$800(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Lcom/otaliastudios/cameraview/video/encoding/InputBufferPool;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mInputBufferPool:Lcom/otaliastudios/cameraview/video/encoding/InputBufferPool;

    return-object p0
.end method

.method static synthetic access$900(Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mInputBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method private skipFrames(I)V
    .locals 2

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    .line 128
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->frameSize()I

    move-result v0

    mul-int v0, v0, p1

    int-to-long v0, v0

    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    .line 129
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->byteRate()I

    move-result p1

    .line 127
    invoke-static {v0, v1, p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;->bytesToMillis(JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method protected getEncodedBitRate()I
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    iget v0, v0, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->bitRate:I

    return v0
.end method

.method protected onPrepare(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;J)V
    .locals 1

    .line 66
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    iget-object p1, p1, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->mimeType:Ljava/lang/String;

    iget-object p2, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    iget p2, p2, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->samplingFrequency:I

    iget-object p3, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    iget p3, p3, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->channels:I

    invoke-static {p1, p2, p3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    const-string p2, "aac-profile"

    const/4 p3, 0x2

    .line 70
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 72
    iget-object p2, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    invoke-virtual {p2}, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->audioFormatChannels()I

    move-result p2

    const-string p3, "channel-mask"

    invoke-virtual {p1, p3, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 73
    iget-object p2, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    iget p2, p2, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->bitRate:I

    const-string p3, "bitrate"

    invoke-virtual {p1, p3, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 75
    :try_start_0
    iget-object p2, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    iget-object p2, p2, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->encoder:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 76
    iget-object p2, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    iget-object p2, p2, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->encoder:Ljava/lang/String;

    invoke-static {p2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    iput-object p2, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    goto :goto_0

    .line 78
    :cond_0
    iget-object p2, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    iget-object p2, p2, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->mimeType:Ljava/lang/String;

    invoke-static {p2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    iput-object p2, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    iget-object p2, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, v0, p3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 85
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 86
    new-instance p1, Lcom/otaliastudios/cameraview/video/encoding/ByteBufferPool;

    iget-object p2, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    invoke-virtual {p2}, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->frameSize()I

    move-result p2

    iget-object p3, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    invoke-virtual {p3}, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->bufferPoolMaxSize()I

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/otaliastudios/cameraview/video/encoding/ByteBufferPool;-><init>(II)V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mByteBufferPool:Lcom/otaliastudios/cameraview/video/encoding/ByteBufferPool;

    .line 87
    new-instance p1, Lcom/otaliastudios/cameraview/video/encoding/AudioNoise;

    iget-object p2, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    invoke-direct {p1, p2}, Lcom/otaliastudios/cameraview/video/encoding/AudioNoise;-><init>(Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;)V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mAudioNoise:Lcom/otaliastudios/cameraview/video/encoding/AudioNoise;

    return-void

    :catch_0
    move-exception p1

    .line 81
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected onStart()V
    .locals 1

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mRequestStop:Z

    .line 94
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mRecorder:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;->start()V

    .line 95
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mEncoder:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;->start()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mRequestStop:Z

    return-void
.end method

.method protected onStopped()V
    .locals 2

    .line 106
    invoke-super {p0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->onStopped()V

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mRequestStop:Z

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mEncoder:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioEncodingThread;

    .line 109
    iput-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mRecorder:Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder$AudioRecordingThread;

    .line 110
    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mByteBufferPool:Lcom/otaliastudios/cameraview/video/encoding/ByteBufferPool;

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/video/encoding/ByteBufferPool;->clear()V

    .line 112
    iput-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;->mByteBufferPool:Lcom/otaliastudios/cameraview/video/encoding/ByteBufferPool;

    :cond_0
    return-void
.end method
