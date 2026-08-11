.class public Lcom/otaliastudios/cameraview/controls/ControlParser;
.super Ljava/lang/Object;
.source "ControlParser.java"


# instance fields
.field private audio:I

.field private audioCodec:I

.field private engine:I

.field private facing:I

.field private flash:I

.field private grid:I

.field private hdr:I

.field private mode:I

.field private pictureFormat:I

.field private preview:I

.field private videoCodec:I

.field private whiteBalance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget v0, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraPreview:I

    sget-object v1, Lcom/otaliastudios/cameraview/controls/Preview;->DEFAULT:Lcom/otaliastudios/cameraview/controls/Preview;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/controls/Preview;->value()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->preview:I

    .line 31
    sget v0, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraFacing:I

    .line 32
    invoke-static {p1}, Lcom/otaliastudios/cameraview/controls/Facing;->DEFAULT(Landroid/content/Context;)Lcom/otaliastudios/cameraview/controls/Facing;

    move-result-object p1

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/controls/Facing;->value()I

    move-result p1

    .line 31
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->facing:I

    .line 33
    sget p1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraFlash:I

    sget-object v0, Lcom/otaliastudios/cameraview/controls/Flash;->DEFAULT:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/controls/Flash;->value()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->flash:I

    .line 34
    sget p1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraGrid:I

    sget-object v0, Lcom/otaliastudios/cameraview/controls/Grid;->DEFAULT:Lcom/otaliastudios/cameraview/controls/Grid;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/controls/Grid;->value()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->grid:I

    .line 35
    sget p1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraWhiteBalance:I

    sget-object v0, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->DEFAULT:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    .line 36
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->value()I

    move-result v0

    .line 35
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->whiteBalance:I

    .line 37
    sget p1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraMode:I

    sget-object v0, Lcom/otaliastudios/cameraview/controls/Mode;->DEFAULT:Lcom/otaliastudios/cameraview/controls/Mode;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/controls/Mode;->value()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->mode:I

    .line 38
    sget p1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraHdr:I

    sget-object v0, Lcom/otaliastudios/cameraview/controls/Hdr;->DEFAULT:Lcom/otaliastudios/cameraview/controls/Hdr;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/controls/Hdr;->value()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->hdr:I

    .line 39
    sget p1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraAudio:I

    sget-object v0, Lcom/otaliastudios/cameraview/controls/Audio;->DEFAULT:Lcom/otaliastudios/cameraview/controls/Audio;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/controls/Audio;->value()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->audio:I

    .line 40
    sget p1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraVideoCodec:I

    sget-object v0, Lcom/otaliastudios/cameraview/controls/VideoCodec;->DEFAULT:Lcom/otaliastudios/cameraview/controls/VideoCodec;

    .line 41
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/controls/VideoCodec;->value()I

    move-result v0

    .line 40
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->videoCodec:I

    .line 42
    sget p1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraAudioCodec:I

    sget-object v0, Lcom/otaliastudios/cameraview/controls/AudioCodec;->DEFAULT:Lcom/otaliastudios/cameraview/controls/AudioCodec;

    .line 43
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/controls/AudioCodec;->value()I

    move-result v0

    .line 42
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->audioCodec:I

    .line 44
    sget p1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraEngine:I

    sget-object v0, Lcom/otaliastudios/cameraview/controls/Engine;->DEFAULT:Lcom/otaliastudios/cameraview/controls/Engine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/controls/Engine;->value()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->engine:I

    .line 45
    sget p1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraPictureFormat:I

    sget-object v0, Lcom/otaliastudios/cameraview/controls/PictureFormat;->DEFAULT:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    .line 46
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/controls/PictureFormat;->value()I

    move-result v0

    .line 45
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->pictureFormat:I

    return-void
.end method


# virtual methods
.method public getAudio()Lcom/otaliastudios/cameraview/controls/Audio;
    .locals 1

    .line 87
    iget v0, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->audio:I

    invoke-static {v0}, Lcom/otaliastudios/cameraview/controls/Audio;->fromValue(I)Lcom/otaliastudios/cameraview/controls/Audio;

    move-result-object v0

    return-object v0
.end method

.method public getAudioCodec()Lcom/otaliastudios/cameraview/controls/AudioCodec;
    .locals 1

    .line 92
    iget v0, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->audioCodec:I

    invoke-static {v0}, Lcom/otaliastudios/cameraview/controls/AudioCodec;->fromValue(I)Lcom/otaliastudios/cameraview/controls/AudioCodec;

    move-result-object v0

    return-object v0
.end method

.method public getEngine()Lcom/otaliastudios/cameraview/controls/Engine;
    .locals 1

    .line 102
    iget v0, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->engine:I

    invoke-static {v0}, Lcom/otaliastudios/cameraview/controls/Engine;->fromValue(I)Lcom/otaliastudios/cameraview/controls/Engine;

    move-result-object v0

    return-object v0
.end method

.method public getFacing()Lcom/otaliastudios/cameraview/controls/Facing;
    .locals 1

    .line 57
    iget v0, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->facing:I

    invoke-static {v0}, Lcom/otaliastudios/cameraview/controls/Facing;->fromValue(I)Lcom/otaliastudios/cameraview/controls/Facing;

    move-result-object v0

    return-object v0
.end method

.method public getFlash()Lcom/otaliastudios/cameraview/controls/Flash;
    .locals 1

    .line 62
    iget v0, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->flash:I

    invoke-static {v0}, Lcom/otaliastudios/cameraview/controls/Flash;->fromValue(I)Lcom/otaliastudios/cameraview/controls/Flash;

    move-result-object v0

    return-object v0
.end method

.method public getGrid()Lcom/otaliastudios/cameraview/controls/Grid;
    .locals 1

    .line 67
    iget v0, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->grid:I

    invoke-static {v0}, Lcom/otaliastudios/cameraview/controls/Grid;->fromValue(I)Lcom/otaliastudios/cameraview/controls/Grid;

    move-result-object v0

    return-object v0
.end method

.method public getHdr()Lcom/otaliastudios/cameraview/controls/Hdr;
    .locals 1

    .line 82
    iget v0, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->hdr:I

    invoke-static {v0}, Lcom/otaliastudios/cameraview/controls/Hdr;->fromValue(I)Lcom/otaliastudios/cameraview/controls/Hdr;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Lcom/otaliastudios/cameraview/controls/Mode;
    .locals 1

    .line 72
    iget v0, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->mode:I

    invoke-static {v0}, Lcom/otaliastudios/cameraview/controls/Mode;->fromValue(I)Lcom/otaliastudios/cameraview/controls/Mode;

    move-result-object v0

    return-object v0
.end method

.method public getPictureFormat()Lcom/otaliastudios/cameraview/controls/PictureFormat;
    .locals 1

    .line 107
    iget v0, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->pictureFormat:I

    invoke-static {v0}, Lcom/otaliastudios/cameraview/controls/PictureFormat;->fromValue(I)Lcom/otaliastudios/cameraview/controls/PictureFormat;

    move-result-object v0

    return-object v0
.end method

.method public getPreview()Lcom/otaliastudios/cameraview/controls/Preview;
    .locals 1

    .line 51
    iget v0, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->preview:I

    invoke-static {v0}, Lcom/otaliastudios/cameraview/controls/Preview;->fromValue(I)Lcom/otaliastudios/cameraview/controls/Preview;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCodec()Lcom/otaliastudios/cameraview/controls/VideoCodec;
    .locals 1

    .line 97
    iget v0, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->videoCodec:I

    invoke-static {v0}, Lcom/otaliastudios/cameraview/controls/VideoCodec;->fromValue(I)Lcom/otaliastudios/cameraview/controls/VideoCodec;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteBalance()Lcom/otaliastudios/cameraview/controls/WhiteBalance;
    .locals 1

    .line 77
    iget v0, p0, Lcom/otaliastudios/cameraview/controls/ControlParser;->whiteBalance:I

    invoke-static {v0}, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->fromValue(I)Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    move-result-object v0

    return-object v0
.end method
