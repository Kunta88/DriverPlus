.class public Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;
.super Ljava/lang/Object;
.source "AudioConfig.java"


# instance fields
.field public bitRate:I

.field final byteRatePerChannel:I

.field public channels:I

.field public encoder:Ljava/lang/String;

.field final encoding:I

.field public mimeType:Ljava/lang/String;

.field final sampleSizePerChannel:I

.field public samplingFrequency:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->channels:I

    const-string v0, "audio/mp4a-latm"

    .line 18
    iput-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->mimeType:Ljava/lang/String;

    const v0, 0xac44

    .line 19
    iput v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->samplingFrequency:I

    const/4 v1, 0x2

    .line 22
    iput v1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->encoding:I

    .line 25
    iput v1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->sampleSizePerChannel:I

    mul-int/lit8 v0, v0, 0x2

    .line 26
    iput v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->byteRatePerChannel:I

    return-void
.end method


# virtual methods
.method audioFormatChannels()I
    .locals 3

    .line 49
    iget v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->channels:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    return v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/16 v0, 0xc

    return v0

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid number of channels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->channels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method audioRecordBufferFrames()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method bitRate()I
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->byteRate()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method bufferPoolMaxSize()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method byteRate()I
    .locals 2

    .line 40
    iget v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->byteRatePerChannel:I

    iget v1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->channels:I

    mul-int v0, v0, v1

    return v0
.end method

.method copy()Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;
    .locals 2

    .line 30
    new-instance v0, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    invoke-direct {v0}, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;-><init>()V

    .line 31
    iget v1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->bitRate:I

    iput v1, v0, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->bitRate:I

    .line 32
    iget v1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->channels:I

    iput v1, v0, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->channels:I

    .line 33
    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->encoder:Ljava/lang/String;

    iput-object v1, v0, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->encoder:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->mimeType:Ljava/lang/String;

    iput-object v1, v0, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->mimeType:Ljava/lang/String;

    .line 35
    iget v1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->samplingFrequency:I

    iput v1, v0, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->samplingFrequency:I

    return-object v0
.end method

.method frameSize()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->channels:I

    mul-int/lit16 v0, v0, 0x400

    return v0
.end method
