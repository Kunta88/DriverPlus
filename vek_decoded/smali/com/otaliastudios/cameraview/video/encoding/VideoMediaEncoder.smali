.class abstract Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;
.super Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;
.source "VideoMediaEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;",
        ">",
        "Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;"
    }
.end annotation


# static fields
.field private static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field private static final TAG:Ljava/lang/String; = "VideoMediaEncoder"


# instance fields
.field protected mConfig:Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field protected mFrameNumber:I

.field protected mSurface:Landroid/view/Surface;

.field private mSyncFrameFound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method constructor <init>(Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    const-string v0, "VideoEncoder"

    .line 50
    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mFrameNumber:I

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mSyncFrameFound:Z

    .line 51
    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;

    return-void
.end method


# virtual methods
.method protected getEncodedBitRate()I
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;

    iget v0, v0, Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;->bitRate:I

    return v0
.end method

.method protected onPrepare(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;J)V
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;

    iget-object p1, p1, Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;->mimeType:Ljava/lang/String;

    iget-object p2, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;

    iget p2, p2, Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;->width:I

    iget-object p3, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;

    iget p3, p3, Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;->height:I

    invoke-static {p1, p2, p3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    const-string p2, "color-format"

    const p3, 0x7f000789

    .line 66
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 68
    iget-object p2, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;

    iget p2, p2, Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;->bitRate:I

    const-string p3, "bitrate"

    invoke-virtual {p1, p3, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 69
    iget-object p2, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;

    iget p2, p2, Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;->frameRate:I

    const-string p3, "frame-rate"

    invoke-virtual {p1, p3, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "i-frame-interval"

    const/4 p3, 0x1

    .line 70
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 71
    iget-object p2, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;

    iget p2, p2, Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;->rotation:I

    const-string v0, "rotation-degrees"

    invoke-virtual {p1, v0, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 74
    :try_start_0
    iget-object p2, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;

    iget-object p2, p2, Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;->encoder:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 75
    iget-object p2, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;

    iget-object p2, p2, Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;->encoder:Ljava/lang/String;

    invoke-static {p2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    iput-object p2, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    goto :goto_0

    .line 77
    :cond_0
    iget-object p2, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mConfig:Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;

    iget-object p2, p2, Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;->mimeType:Ljava/lang/String;

    invoke-static {p2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    iput-object p2, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    iget-object p2, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, v0, p3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 83
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mSurface:Landroid/view/Surface;

    .line 84
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    return-void

    :catch_0
    move-exception p1

    .line 80
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected onStart()V
    .locals 1

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mFrameNumber:I

    return-void
.end method

.method protected onStop()V
    .locals 4

    .line 97
    sget-object v0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onStop"

    aput-object v3, v1, v2

    const-string v2, "setting mFrameNumber to 1 and signaling the end of input stream."

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mFrameNumber:I

    .line 102
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 103
    invoke-virtual {p0, v3}, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->drainOutput(Z)V

    return-void
.end method

.method protected onWriteOutput(Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool;Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;)V
    .locals 7

    .line 119
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mSyncFrameFound:Z

    if-nez v0, :cond_3

    .line 120
    sget-object v0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "onWriteOutput:"

    aput-object v4, v2, v3

    const-string v5, "sync frame not found yet. Checking."

    const/4 v6, 0x1

    aput-object v5, v2, v6

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    iget-object v2, p2, Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    const-string v2, "SYNC FRAME FOUND!"

    aput-object v2, v1, v6

    .line 124
    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    iput-boolean v6, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mSyncFrameFound:Z

    .line 126
    invoke-super {p0, p1, p2}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->onWriteOutput(Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool;Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;)V

    goto :goto_1

    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    const-string v2, "DROPPING FRAME and requesting a sync frame soon."

    aput-object v2, v1, v6

    .line 128
    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "request-sync"

    .line 131
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 134
    :cond_2
    invoke-virtual {p1, p2}, Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool;->recycle(Ljava/lang/Object;)V

    goto :goto_1

    .line 137
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->onWriteOutput(Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool;Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;)V

    :goto_1
    return-void
.end method

.method protected shouldRenderFrame(J)Z
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return v0

    .line 149
    :cond_0
    iget p1, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mFrameNumber:I

    if-gez p1, :cond_1

    return v0

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->hasReachedMaxLength()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 151
    :cond_2
    iget p1, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mFrameNumber:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;->mFrameNumber:I

    return p2
.end method
