.class Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;
.super Ljava/lang/Object;
.source "MediaCodecBuffers.java"


# instance fields
.field private final mInputBuffers:[Ljava/nio/ByteBuffer;

.field private final mMediaCodec:Landroid/media/MediaCodec;

.field private mOutputBuffers:[Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Landroid/media/MediaCodec;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;->mMediaCodec:Landroid/media/MediaCodec;

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 25
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 26
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;->mInputBuffers:[Ljava/nio/ByteBuffer;

    :goto_0
    return-void
.end method


# virtual methods
.method getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;->mInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object p1, v0, p1

    .line 37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object p1
.end method

.method getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method onOutputBuffersChanged()V
    .locals 2

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaCodecBuffers;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method
