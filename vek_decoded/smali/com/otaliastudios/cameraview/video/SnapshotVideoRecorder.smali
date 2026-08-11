.class public Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;
.super Lcom/otaliastudios/cameraview/video/VideoRecorder;
.source "SnapshotVideoRecorder.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;
.implements Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Listener;


# static fields
.field private static final DEFAULT_AUDIO_BITRATE:I = 0xfa00

.field private static final DEFAULT_VIDEO_FRAMERATE:I = 0x1e

.field private static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field private static final STATE_NOT_RECORDING:I = 0x1

.field private static final STATE_RECORDING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SnapshotVideoRecorder"


# instance fields
.field private mCurrentFilter:Lcom/otaliastudios/cameraview/filter/Filter;

.field private mCurrentState:I

.field private mDesiredState:I

.field private mEncoderEngine:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

.field private final mEncoderEngineLock:Ljava/lang/Object;

.field private mHasOverlay:Z

.field private mOverlay:Lcom/otaliastudios/cameraview/overlay/Overlay;

.field private mOverlayDrawer:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

.field private mPreview:Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;

.field private mTextureId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;Lcom/otaliastudios/cameraview/overlay/Overlay;)V
    .locals 1

    .line 73
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/video/VideoRecorder;-><init>(Lcom/otaliastudios/cameraview/video/VideoRecorder$VideoResultListener;)V

    .line 57
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mEncoderEngineLock:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 60
    iput p1, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mCurrentState:I

    .line 61
    iput p1, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mDesiredState:I

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mTextureId:I

    .line 74
    iput-object p2, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mPreview:Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;

    .line 75
    iput-object p3, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mOverlay:Lcom/otaliastudios/cameraview/overlay/Overlay;

    if-eqz p3, :cond_0

    .line 76
    sget-object p2, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;->VIDEO_SNAPSHOT:Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    invoke-interface {p3, p2}, Lcom/otaliastudios/cameraview/overlay/Overlay;->drawsOn(Lcom/otaliastudios/cameraview/overlay/Overlay$Target;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mHasOverlay:Z

    return-void
.end method

.method private static estimateVideoBitRate(Lcom/otaliastudios/cameraview/size/Size;I)I
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3d8f5c29    # 0.07f

    mul-float v0, v0, v1

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float v0, v0, p0

    int-to-float p0, p1

    mul-float v0, v0, p0

    float-to-int p0, v0

    return p0
.end method


# virtual methods
.method public onEncodingEnd(ILjava/lang/Exception;)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    .line 321
    sget-object p1, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "Error onEncodingEnd"

    aput-object v4, v0, v2

    aput-object p2, v0, v3

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 322
    iput-object v1, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    .line 323
    iput-object p2, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mError:Ljava/lang/Exception;

    goto :goto_0

    :cond_0
    if-ne p1, v3, :cond_1

    .line 326
    sget-object p1, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array p2, v3, [Ljava/lang/Object;

    const-string v4, "onEncodingEnd because of max duration."

    aput-object v4, p2, v2

    invoke-virtual {p1, p2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 327
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iput v0, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->endReason:I

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 329
    sget-object p1, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array p2, v3, [Ljava/lang/Object;

    const-string v0, "onEncodingEnd because of max size."

    aput-object v0, p2, v2

    invoke-virtual {p1, p2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 330
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iput v3, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->endReason:I

    goto :goto_0

    .line 332
    :cond_2
    sget-object p1, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array p2, v3, [Ljava/lang/Object;

    const-string v0, "onEncodingEnd because of user."

    aput-object v0, p2, v2

    invoke-virtual {p1, p2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 336
    :goto_0
    iput v3, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mCurrentState:I

    .line 337
    iput v3, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mDesiredState:I

    .line 338
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mPreview:Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;

    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;->removeRendererFrameCallback(Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;)V

    .line 339
    iput-object v1, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mPreview:Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;

    .line 340
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mOverlayDrawer:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    if-eqz p1, :cond_3

    .line 341
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->release()V

    .line 342
    iput-object v1, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mOverlayDrawer:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    .line 344
    :cond_3
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mEncoderEngineLock:Ljava/lang/Object;

    monitor-enter p1

    .line 345
    :try_start_0
    iput-object v1, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mEncoderEngine:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    .line 346
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->dispatchResult()V

    return-void

    :catchall_0
    move-exception p2

    .line 346
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public onEncodingStart()V
    .locals 0

    return-void
.end method

.method public onEncodingStop()V
    .locals 0

    .line 312
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->dispatchVideoRecordingEnd()V

    return-void
.end method

.method public onRendererFilterChanged(Lcom/otaliastudios/cameraview/filter/Filter;)V
    .locals 3

    .line 118
    invoke-interface {p1}, Lcom/otaliastudios/cameraview/filter/Filter;->copy()Lcom/otaliastudios/cameraview/filter/Filter;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mCurrentFilter:Lcom/otaliastudios/cameraview/filter/Filter;

    .line 119
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/otaliastudios/cameraview/filter/Filter;->setSize(II)V

    .line 120
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mEncoderEngineLock:Ljava/lang/Object;

    monitor-enter p1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mEncoderEngine:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    if-eqz v0, :cond_0

    const-string v1, "filter"

    .line 122
    iget-object v2, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mCurrentFilter:Lcom/otaliastudios/cameraview/filter/Filter;

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->notify(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onRendererFrame(Landroid/graphics/SurfaceTexture;IFF)V
    .locals 27

    move-object/from16 v9, p0

    .line 131
    iget v0, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mCurrentState:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ne v0, v12, :cond_10

    iget v0, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mDesiredState:I

    if-nez v0, :cond_10

    .line 132
    sget-object v0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v1, v12, [Ljava/lang/Object;

    const-string v2, "Starting the encoder engine."

    aput-object v2, v1, v11

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    iget-object v0, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget v0, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoFrameRate:I

    if-gtz v0, :cond_0

    iget-object v0, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    const/16 v1, 0x1e

    iput v1, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoFrameRate:I

    .line 136
    :cond_0
    iget-object v0, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget v0, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoBitRate:I

    if-gtz v0, :cond_1

    iget-object v0, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v1, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    iget-object v2, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget v2, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoFrameRate:I

    .line 137
    invoke-static {v1, v2}, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->estimateVideoBitRate(Lcom/otaliastudios/cameraview/size/Size;I)I

    move-result v1

    iput v1, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoBitRate:I

    .line 138
    :cond_1
    iget-object v0, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget v0, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audioBitRate:I

    if-gtz v0, :cond_2

    iget-object v0, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    const v1, 0xfa00

    iput v1, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audioBitRate:I

    :cond_2
    const-string v0, ""

    .line 142
    sget-object v1, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder$1;->$SwitchMap$com$otaliastudios$cameraview$controls$VideoCodec:[I

    iget-object v2, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v2, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoCodec:Lcom/otaliastudios/cameraview/controls/VideoCodec;

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/controls/VideoCodec;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v1, v12, :cond_5

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_3
    const-string v0, "video/avc"

    goto :goto_0

    :cond_4
    const-string v0, "video/avc"

    goto :goto_0

    :cond_5
    const-string v0, "video/3gpp"

    goto :goto_0

    :goto_1
    const-string v0, ""

    .line 148
    sget-object v4, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder$1;->$SwitchMap$com$otaliastudios$cameraview$controls$AudioCodec:[I

    iget-object v5, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v5, v5, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audioCodec:Lcom/otaliastudios/cameraview/controls/AudioCodec;

    invoke-virtual {v5}, Lcom/otaliastudios/cameraview/controls/AudioCodec;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x4

    if-eq v4, v12, :cond_7

    if-eq v4, v3, :cond_7

    if-eq v4, v2, :cond_7

    if-eq v4, v5, :cond_6

    :goto_2
    move-object v4, v0

    goto :goto_3

    :cond_6
    const-string v0, "audio/mp4a-latm"

    goto :goto_2

    :cond_7
    const-string v0, "audio/mp4a-latm"

    goto :goto_2

    .line 155
    :goto_3
    new-instance v6, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;

    invoke-direct {v6}, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;-><init>()V

    .line 156
    new-instance v7, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;

    invoke-direct {v7}, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;-><init>()V

    .line 160
    iget-object v0, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audio:Lcom/otaliastudios/cameraview/controls/Audio;

    sget-object v8, Lcom/otaliastudios/cameraview/controls/Audio;->ON:Lcom/otaliastudios/cameraview/controls/Audio;

    if-ne v0, v8, :cond_8

    .line 161
    iget v0, v7, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->channels:I

    move v8, v0

    goto :goto_4

    .line 162
    :cond_8
    iget-object v0, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audio:Lcom/otaliastudios/cameraview/controls/Audio;

    sget-object v8, Lcom/otaliastudios/cameraview/controls/Audio;->MONO:Lcom/otaliastudios/cameraview/controls/Audio;

    if-ne v0, v8, :cond_9

    const/4 v8, 0x1

    goto :goto_4

    .line 164
    :cond_9
    iget-object v0, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audio:Lcom/otaliastudios/cameraview/controls/Audio;

    sget-object v8, Lcom/otaliastudios/cameraview/controls/Audio;->STEREO:Lcom/otaliastudios/cameraview/controls/Audio;

    if-ne v0, v8, :cond_a

    const/4 v8, 0x2

    goto :goto_4

    :cond_a
    const/4 v8, 0x0

    :goto_4
    if-lez v8, :cond_b

    const/16 v19, 0x1

    goto :goto_5

    :cond_b
    const/16 v19, 0x0

    :goto_5
    move-object v0, v10

    move-object/from16 v23, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_6
    if-nez v20, :cond_d

    .line 179
    sget-object v13, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    const-string v15, "Checking DeviceEncoders..."

    aput-object v15, v14, v11

    const-string v15, "videoOffset:"

    aput-object v15, v14, v12

    .line 180
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v3

    const-string v15, "audioOffset:"

    aput-object v15, v14, v2

    .line 181
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v5

    .line 179
    invoke-virtual {v13, v14}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    :try_start_0
    new-instance v13, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;

    const/4 v14, 0x0

    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v21

    move/from16 v18, v22

    invoke-direct/range {v13 .. v18}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;-><init>(ILjava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_a

    .line 194
    new-instance v15, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;

    const/4 v14, 0x1

    move-object v13, v15

    move-object v2, v15

    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v21

    move/from16 v18, v22

    invoke-direct/range {v13 .. v18}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    .line 197
    :try_start_1
    iget-object v0, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v2, v0}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->getSupportedVideoSize(Lcom/otaliastudios/cameraview/size/Size;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v13
    :try_end_1
    .catch Lcom/otaliastudios/cameraview/internal/DeviceEncoders$VideoException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lcom/otaliastudios/cameraview/internal/DeviceEncoders$AudioException; {:try_start_1 .. :try_end_1} :catch_8

    .line 198
    :try_start_2
    iget-object v0, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget v0, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoBitRate:I

    invoke-virtual {v2, v0}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->getSupportedVideoBitRate(I)I

    move-result v14
    :try_end_2
    .catch Lcom/otaliastudios/cameraview/internal/DeviceEncoders$VideoException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/otaliastudios/cameraview/internal/DeviceEncoders$AudioException; {:try_start_2 .. :try_end_2} :catch_6

    .line 199
    :try_start_3
    iget-object v0, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget v0, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoFrameRate:I

    invoke-virtual {v2, v13, v0}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->getSupportedVideoFrameRate(Lcom/otaliastudios/cameraview/size/Size;I)I

    move-result v15
    :try_end_3
    .catch Lcom/otaliastudios/cameraview/internal/DeviceEncoders$VideoException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/otaliastudios/cameraview/internal/DeviceEncoders$AudioException; {:try_start_3 .. :try_end_3} :catch_4

    .line 201
    :try_start_4
    invoke-virtual {v2, v1, v13, v15, v14}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->tryConfigureVideo(Ljava/lang/String;Lcom/otaliastudios/cameraview/size/Size;II)V

    if-eqz v19, :cond_c

    .line 204
    iget-object v0, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget v0, v0, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audioBitRate:I

    .line 205
    invoke-virtual {v2, v0}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->getSupportedAudioBitRate(I)I

    move-result v5
    :try_end_4
    .catch Lcom/otaliastudios/cameraview/internal/DeviceEncoders$VideoException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/otaliastudios/cameraview/internal/DeviceEncoders$AudioException; {:try_start_4 .. :try_end_4} :catch_2

    .line 206
    :try_start_5
    iget v0, v7, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->samplingFrequency:I

    invoke-virtual {v2, v4, v5, v0, v8}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->tryConfigureAudio(Ljava/lang/String;III)V
    :try_end_5
    .catch Lcom/otaliastudios/cameraview/internal/DeviceEncoders$VideoException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/otaliastudios/cameraview/internal/DeviceEncoders$AudioException; {:try_start_5 .. :try_end_5} :catch_0

    move/from16 v25, v5

    goto :goto_7

    :catch_0
    move-exception v0

    move/from16 v25, v5

    goto :goto_8

    :catch_1
    move-exception v0

    move/from16 v25, v5

    goto :goto_9

    :cond_c
    :goto_7
    move-object v0, v2

    move-object/from16 v23, v13

    move/from16 v24, v14

    move/from16 v26, v15

    const/4 v2, 0x3

    const/4 v5, 0x4

    const/16 v20, 0x1

    goto :goto_6

    :catch_2
    move-exception v0

    :goto_8
    move-object/from16 v23, v13

    move/from16 v24, v14

    move/from16 v26, v15

    goto :goto_a

    :catch_3
    move-exception v0

    :goto_9
    move-object/from16 v23, v13

    move/from16 v24, v14

    move/from16 v26, v15

    goto :goto_b

    :catch_4
    move-exception v0

    move-object/from16 v23, v13

    move/from16 v24, v14

    goto :goto_a

    :catch_5
    move-exception v0

    move-object/from16 v23, v13

    move/from16 v24, v14

    goto :goto_b

    :catch_6
    move-exception v0

    move-object/from16 v23, v13

    goto :goto_a

    :catch_7
    move-exception v0

    move-object/from16 v23, v13

    goto :goto_b

    :catch_8
    move-exception v0

    .line 214
    :goto_a
    sget-object v5, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v13, v3, [Ljava/lang/Object;

    const-string v14, "Got AudioException:"

    aput-object v14, v13, v11

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders$AudioException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v13, v12

    invoke-virtual {v5, v13}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    add-int/lit8 v22, v22, 0x1

    goto :goto_c

    :catch_9
    move-exception v0

    .line 211
    :goto_b
    sget-object v5, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v13, v3, [Ljava/lang/Object;

    const-string v14, "Got VideoException:"

    aput-object v14, v13, v11

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders$VideoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v13, v12

    invoke-virtual {v5, v13}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    add-int/lit8 v21, v21, 0x1

    :goto_c
    move-object v0, v2

    const/4 v2, 0x3

    const/4 v5, 0x4

    goto/16 :goto_6

    .line 186
    :catch_a
    sget-object v2, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Could not respect encoders parameters."

    aput-object v4, v3, v11

    const-string v4, "Going on again without checking encoders, possibly failing."

    aput-object v4, v3, v12

    invoke-virtual {v2, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 188
    iget-object v2, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v2, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    .line 189
    iget-object v3, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget v3, v3, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoBitRate:I

    .line 190
    iget-object v4, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget v4, v4, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoFrameRate:I

    .line 191
    iget-object v5, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget v5, v5, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audioBitRate:I

    goto :goto_d

    :cond_d
    move-object/from16 v2, v23

    move/from16 v3, v24

    move/from16 v5, v25

    move/from16 v4, v26

    .line 218
    :goto_d
    iget-object v13, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iput-object v2, v13, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    .line 219
    iget-object v2, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iput v3, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoBitRate:I

    .line 220
    iget-object v2, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iput v5, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audioBitRate:I

    .line 221
    iget-object v2, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iput v4, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoFrameRate:I

    .line 224
    iget-object v2, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v2, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v2

    iput v2, v6, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->width:I

    .line 225
    iget-object v2, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v2, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v2

    iput v2, v6, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->height:I

    .line 226
    iget-object v2, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget v2, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoBitRate:I

    iput v2, v6, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->bitRate:I

    .line 227
    iget-object v2, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget v2, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoFrameRate:I

    iput v2, v6, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->frameRate:I

    .line 228
    iget-object v2, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget v2, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->rotation:I

    add-int v2, p2, v2

    iput v2, v6, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->rotation:I

    .line 229
    iput-object v1, v6, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->mimeType:Ljava/lang/String;

    .line 230
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->getVideoEncoder()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->encoder:Ljava/lang/String;

    .line 231
    iget v1, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mTextureId:I

    iput v1, v6, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->textureId:I

    move/from16 v1, p3

    .line 232
    iput v1, v6, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->scaleX:F

    move/from16 v1, p4

    .line 233
    iput v1, v6, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->scaleY:F

    .line 237
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    iput-object v1, v6, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->eglContext:Landroid/opengl/EGLContext;

    .line 238
    iget-boolean v1, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mHasOverlay:Z

    if-eqz v1, :cond_e

    .line 239
    sget-object v1, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;->VIDEO_SNAPSHOT:Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    iput-object v1, v6, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->overlayTarget:Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    .line 240
    iget-object v1, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mOverlayDrawer:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    iput-object v1, v6, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->overlayDrawer:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    .line 241
    iget-object v1, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget v1, v1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->rotation:I

    iput v1, v6, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->overlayRotation:I

    .line 244
    :cond_e
    new-instance v3, Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder;

    invoke-direct {v3, v6}, Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder;-><init>(Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;)V

    .line 247
    iget-object v1, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iput v11, v1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->rotation:I

    .line 248
    iget-object v1, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mCurrentFilter:Lcom/otaliastudios/cameraview/filter/Filter;

    iget-object v2, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v2, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v2

    iget-object v4, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v4, v4, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v4}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v4

    invoke-interface {v1, v2, v4}, Lcom/otaliastudios/cameraview/filter/Filter;->setSize(II)V

    if-eqz v19, :cond_f

    .line 253
    iget-object v1, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget v1, v1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audioBitRate:I

    iput v1, v7, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->bitRate:I

    .line 254
    iput v8, v7, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->channels:I

    .line 255
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->getAudioEncoder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;->encoder:Ljava/lang/String;

    .line 256
    new-instance v0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    invoke-direct {v0, v7}, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;-><init>(Lcom/otaliastudios/cameraview/video/encoding/AudioConfig;)V

    move-object v4, v0

    goto :goto_e

    :cond_f
    move-object v4, v10

    .line 260
    :goto_e
    iget-object v13, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mEncoderEngineLock:Ljava/lang/Object;

    monitor-enter v13

    .line 261
    :try_start_6
    new-instance v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    iget-object v1, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v2, v1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->file:Ljava/io/File;

    iget-object v1, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget v5, v1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->maxDuration:I

    iget-object v1, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-wide v6, v1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->maxSize:J

    move-object v1, v0

    move-object/from16 v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;-><init>(Ljava/io/File;Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;IJLcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Listener;)V

    iput-object v0, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mEncoderEngine:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    const-string v1, "filter"

    .line 267
    iget-object v2, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mCurrentFilter:Lcom/otaliastudios/cameraview/filter/Filter;

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->notify(Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    iget-object v0, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mEncoderEngine:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->start()V

    .line 269
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 270
    iput v11, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mCurrentState:I

    goto :goto_f

    :catchall_0
    move-exception v0

    .line 269
    :try_start_7
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .line 273
    :cond_10
    :goto_f
    iget v0, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mCurrentState:I

    if-nez v0, :cond_12

    .line 274
    sget-object v0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v1, v12, [Ljava/lang/Object;

    const-string v2, "scheduling frame."

    aput-object v2, v1, v11

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 275
    iget-object v1, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mEncoderEngineLock:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    :try_start_8
    iget-object v2, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mEncoderEngine:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    if-eqz v2, :cond_11

    new-array v2, v12, [Ljava/lang/Object;

    const-string v3, "dispatching frame."

    aput-object v3, v2, v11

    .line 277
    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 278
    iget-object v0, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mEncoderEngine:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    .line 279
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->getVideoEncoder()Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder;

    .line 280
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder;->acquireFrame()Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder$Frame;

    move-result-object v0

    .line 281
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder$Frame;->timestampNanos:J

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder$Frame;->timestampMillis:J

    .line 284
    iget-object v2, v0, Lcom/otaliastudios/cameraview/video/encoding/TextureMediaEncoder$Frame;->transform:[F

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 285
    iget-object v2, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mEncoderEngine:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    const-string v3, "frame"

    invoke-virtual {v2, v3, v0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->notify(Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    :cond_11
    monitor-exit v1

    goto :goto_10

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    .line 290
    :cond_12
    :goto_10
    iget v0, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mCurrentState:I

    if-nez v0, :cond_14

    iget v0, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mDesiredState:I

    if-ne v0, v12, :cond_14

    .line 291
    sget-object v0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v1, v12, [Ljava/lang/Object;

    const-string v2, "Stopping the encoder engine."

    aput-object v2, v1, v11

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 292
    iput v12, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mCurrentState:I

    .line 293
    iget-object v1, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mEncoderEngineLock:Ljava/lang/Object;

    monitor-enter v1

    .line 294
    :try_start_9
    iget-object v0, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mEncoderEngine:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    if-eqz v0, :cond_13

    .line 295
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->stop()V

    .line 296
    iput-object v10, v9, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mEncoderEngine:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    .line 298
    :cond_13
    monitor-exit v1

    goto :goto_11

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :cond_14
    :goto_11
    return-void
.end method

.method public onRendererTextureCreated(I)V
    .locals 2

    .line 109
    iput p1, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mTextureId:I

    .line 110
    iget-boolean p1, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mHasOverlay:Z

    if-eqz p1, :cond_0

    .line 111
    new-instance p1, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mOverlay:Lcom/otaliastudios/cameraview/overlay/Overlay;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    invoke-direct {p1, v0, v1}, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;-><init>(Lcom/otaliastudios/cameraview/overlay/Overlay;Lcom/otaliastudios/cameraview/size/Size;)V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mOverlayDrawer:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mPreview:Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;

    invoke-interface {v0, p0}, Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;->addRendererFrameCallback(Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;)V

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mDesiredState:I

    .line 83
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->dispatchVideoRecordingStart()V

    return-void
.end method

.method protected onStop(Z)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 92
    sget-object p1, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Stopping the encoder engine from isCameraShutdown."

    aput-object v3, v1, v2

    invoke-virtual {p1, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    iput v0, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mDesiredState:I

    .line 94
    iput v0, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mCurrentState:I

    .line 95
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mEncoderEngineLock:Ljava/lang/Object;

    monitor-enter p1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mEncoderEngine:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->stop()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mEncoderEngine:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    .line 100
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 102
    :cond_1
    iput v0, p0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;->mDesiredState:I

    :goto_0
    return-void
.end method
