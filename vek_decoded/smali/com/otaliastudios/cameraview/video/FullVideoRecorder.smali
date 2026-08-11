.class public abstract Lcom/otaliastudios/cameraview/video/FullVideoRecorder;
.super Lcom/otaliastudios/cameraview/video/VideoRecorder;
.source "FullVideoRecorder.java"


# static fields
.field protected static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field private static final TAG:Ljava/lang/String; = "FullVideoRecorder"


# instance fields
.field protected mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderPrepared:Z

.field private mProfile:Landroid/media/CamcorderProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method constructor <init>(Lcom/otaliastudios/cameraview/video/VideoRecorder$VideoResultListener;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/video/VideoRecorder;-><init>(Lcom/otaliastudios/cameraview/video/VideoRecorder$VideoResultListener;)V

    return-void
.end method

.method private prepareMediaRecorder(Lcom/otaliastudios/cameraview/VideoResult$Stub;Z)Z
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 82
    sget-object v0, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "prepareMediaRecorder:"

    aput-object v6, v4, v5

    const-string v7, "Preparing on thread"

    const/4 v8, 0x1

    aput-object v7, v4, v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    const/4 v9, 0x2

    aput-object v7, v4, v9

    invoke-virtual {v0, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 85
    invoke-virtual/range {p0 .. p1}, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->getCamcorderProfile(Lcom/otaliastudios/cameraview/VideoResult$Stub;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    .line 88
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2, v0}, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->applyVideoSource(Lcom/otaliastudios/cameraview/VideoResult$Stub;Landroid/media/MediaRecorder;)V

    .line 90
    iget-object v0, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audio:Lcom/otaliastudios/cameraview/controls/Audio;

    sget-object v4, Lcom/otaliastudios/cameraview/controls/Audio;->ON:Lcom/otaliastudios/cameraview/controls/Audio;

    if-ne v0, v4, :cond_0

    .line 91
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->audioChannels:I

    move v4, v0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audio:Lcom/otaliastudios/cameraview/controls/Audio;

    sget-object v4, Lcom/otaliastudios/cameraview/controls/Audio;->MONO:Lcom/otaliastudios/cameraview/controls/Audio;

    if-ne v0, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audio:Lcom/otaliastudios/cameraview/controls/Audio;

    sget-object v4, Lcom/otaliastudios/cameraview/controls/Audio;->STEREO:Lcom/otaliastudios/cameraview/controls/Audio;

    if-ne v0, v4, :cond_2

    const/4 v4, 0x2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-lez v4, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_4

    .line 99
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v5}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 104
    :cond_4
    iget-object v0, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoCodec:Lcom/otaliastudios/cameraview/controls/VideoCodec;

    sget-object v10, Lcom/otaliastudios/cameraview/controls/VideoCodec;->H_264:Lcom/otaliastudios/cameraview/controls/VideoCodec;

    if-ne v0, v10, :cond_5

    .line 105
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iput v9, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 106
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iput v9, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    goto :goto_2

    .line 107
    :cond_5
    iget-object v0, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoCodec:Lcom/otaliastudios/cameraview/controls/VideoCodec;

    sget-object v10, Lcom/otaliastudios/cameraview/controls/VideoCodec;->H_263:Lcom/otaliastudios/cameraview/controls/VideoCodec;

    if-ne v0, v10, :cond_6

    .line 108
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iput v8, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 109
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iput v9, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 112
    :cond_6
    :goto_2
    iget-object v0, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audioCodec:Lcom/otaliastudios/cameraview/controls/AudioCodec;

    sget-object v10, Lcom/otaliastudios/cameraview/controls/AudioCodec;->AAC:Lcom/otaliastudios/cameraview/controls/AudioCodec;

    const/4 v11, 0x5

    const/4 v12, 0x4

    if-ne v0, v10, :cond_7

    .line 113
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iput v3, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    goto :goto_3

    .line 114
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v0, v10, :cond_8

    iget-object v0, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audioCodec:Lcom/otaliastudios/cameraview/controls/AudioCodec;

    sget-object v13, Lcom/otaliastudios/cameraview/controls/AudioCodec;->HE_AAC:Lcom/otaliastudios/cameraview/controls/AudioCodec;

    if-ne v0, v13, :cond_8

    .line 116
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iput v12, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    goto :goto_3

    .line 117
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v10, :cond_9

    iget-object v0, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audioCodec:Lcom/otaliastudios/cameraview/controls/AudioCodec;

    sget-object v10, Lcom/otaliastudios/cameraview/controls/AudioCodec;->AAC_ELD:Lcom/otaliastudios/cameraview/controls/AudioCodec;

    if-ne v0, v10, :cond_9

    .line 119
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iput v11, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 121
    :cond_9
    :goto_3
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v10, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v0, v10}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 125
    iget v0, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoFrameRate:I

    if-gtz v0, :cond_a

    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iput v0, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoFrameRate:I

    .line 126
    :cond_a
    iget v0, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoBitRate:I

    if-gtz v0, :cond_b

    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    iput v0, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoBitRate:I

    .line 127
    :cond_b
    iget v0, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audioBitRate:I

    if-gtz v0, :cond_c

    if-eqz v7, :cond_c

    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->audioBitRate:I

    iput v0, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audioBitRate:I

    :cond_c
    if-eqz p2, :cond_16

    .line 135
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    const-string v13, "audio/3gpp"

    packed-switch v0, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    const-string v13, "audio/vorbis"

    goto :goto_4

    :pswitch_1
    const-string v13, "audio/mp4a-latm"

    goto :goto_4

    :pswitch_2
    const-string v13, "audio/amr-wb"

    .line 149
    :goto_4
    :pswitch_3
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    const-string v14, "video/avc"

    if-eq v0, v8, :cond_11

    if-eq v0, v9, :cond_d

    if-eq v0, v3, :cond_10

    if-eq v0, v12, :cond_f

    if-eq v0, v11, :cond_e

    :cond_d
    :goto_5
    move-object v15, v14

    goto :goto_6

    :cond_e
    const-string v14, "video/hevc"

    goto :goto_5

    :cond_f
    const-string v14, "video/x-vnd.on2.vp8"

    goto :goto_5

    :cond_10
    const-string v14, "video/mp4v-es"

    goto :goto_5

    :cond_11
    const-string v14, "video/3gpp"

    goto :goto_5

    .line 159
    :goto_6
    iget v0, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->rotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_12

    const/16 v20, 0x1

    goto :goto_7

    :cond_12
    const/16 v20, 0x0

    :goto_7
    if-eqz v20, :cond_13

    .line 160
    iget-object v0, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/Size;->flip()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    iput-object v0, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    :cond_13
    const/4 v10, 0x0

    const/4 v14, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_8
    if-nez v21, :cond_15

    .line 169
    sget-object v0, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v6, v11, v5

    const-string v16, "Checking DeviceEncoders..."

    aput-object v16, v11, v8

    const-string v16, "videoOffset:"

    aput-object v16, v11, v9

    .line 170
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v11, v3

    const-string v16, "audioOffset:"

    aput-object v16, v11, v12

    .line 171
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x5

    aput-object v16, v11, v17

    .line 169
    invoke-virtual {v0, v11}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 174
    :try_start_0
    new-instance v0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;

    const/4 v11, 0x0

    move-object v12, v14

    move-object v14, v0

    move-object/from16 p2, v15

    move v15, v11

    move-object/from16 v16, p2

    move-object/from16 v17, v13

    move/from16 v18, v24

    move/from16 v19, v25

    invoke-direct/range {v14 .. v19}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;-><init>(ILjava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_8

    .line 182
    :try_start_1
    iget-object v11, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v0, v11}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->getSupportedVideoSize(Lcom/otaliastudios/cameraview/size/Size;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v14
    :try_end_1
    .catch Lcom/otaliastudios/cameraview/internal/DeviceEncoders$VideoException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/otaliastudios/cameraview/internal/DeviceEncoders$AudioException; {:try_start_1 .. :try_end_1} :catch_6

    .line 183
    :try_start_2
    iget v11, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoBitRate:I

    invoke-virtual {v0, v11}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->getSupportedVideoBitRate(I)I

    move-result v10

    .line 184
    iget v11, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoFrameRate:I

    invoke-virtual {v0, v14, v11}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->getSupportedVideoFrameRate(Lcom/otaliastudios/cameraview/size/Size;I)I

    move-result v11
    :try_end_2
    .catch Lcom/otaliastudios/cameraview/internal/DeviceEncoders$VideoException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/otaliastudios/cameraview/internal/DeviceEncoders$AudioException; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v15, p2

    .line 186
    :try_start_3
    invoke-virtual {v0, v15, v14, v11, v10}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->tryConfigureVideo(Ljava/lang/String;Lcom/otaliastudios/cameraview/size/Size;II)V

    if-eqz v7, :cond_14

    .line 189
    iget v12, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audioBitRate:I

    invoke-virtual {v0, v12}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->getSupportedAudioBitRate(I)I

    move-result v12
    :try_end_3
    .catch Lcom/otaliastudios/cameraview/internal/DeviceEncoders$VideoException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/otaliastudios/cameraview/internal/DeviceEncoders$AudioException; {:try_start_3 .. :try_end_3} :catch_2

    .line 190
    :try_start_4
    iget-object v9, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v0, v13, v12, v9, v4}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->tryConfigureAudio(Ljava/lang/String;III)V
    :try_end_4
    .catch Lcom/otaliastudios/cameraview/internal/DeviceEncoders$VideoException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/otaliastudios/cameraview/internal/DeviceEncoders$AudioException; {:try_start_4 .. :try_end_4} :catch_0

    move/from16 v22, v12

    goto :goto_9

    :catch_0
    move-exception v0

    move/from16 v23, v11

    move/from16 v22, v12

    goto :goto_a

    :catch_1
    move-exception v0

    move/from16 v23, v11

    move/from16 v22, v12

    goto :goto_b

    :cond_14
    :goto_9
    move/from16 v23, v11

    const/16 v21, 0x1

    goto :goto_c

    :catch_2
    move-exception v0

    move/from16 v23, v11

    goto :goto_a

    :catch_3
    move-exception v0

    move/from16 v23, v11

    goto :goto_b

    :catch_4
    move-exception v0

    move-object/from16 v15, p2

    goto :goto_a

    :catch_5
    move-exception v0

    move-object/from16 v15, p2

    goto :goto_b

    :catch_6
    move-exception v0

    move-object/from16 v15, p2

    move-object v14, v12

    .line 199
    :goto_a
    sget-object v9, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v6, v11, v5

    const-string v12, "Got AudioException:"

    aput-object v12, v11, v8

    .line 200
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders$AudioException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x2

    aput-object v0, v11, v12

    .line 199
    invoke-virtual {v9, v11}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    add-int/lit8 v25, v25, 0x1

    goto :goto_c

    :catch_7
    move-exception v0

    move-object/from16 v15, p2

    move-object v14, v12

    .line 195
    :goto_b
    sget-object v9, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v6, v11, v5

    const-string v12, "Got VideoException:"

    aput-object v12, v11, v8

    .line 196
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders$VideoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x2

    aput-object v0, v11, v12

    .line 195
    invoke-virtual {v9, v11}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    add-int/lit8 v24, v24, 0x1

    :goto_c
    const/4 v9, 0x2

    const/4 v11, 0x5

    const/4 v12, 0x4

    goto/16 :goto_8

    .line 177
    :catch_8
    sget-object v0, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v5

    const-string v4, "Could not respect encoders parameters."

    aput-object v4, v3, v8

    const-string v4, "Trying again without checking encoders."

    const/4 v6, 0x2

    aput-object v4, v3, v6

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    invoke-direct {v1, v2, v5}, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->prepareMediaRecorder(Lcom/otaliastudios/cameraview/VideoResult$Stub;Z)Z

    move-result v0

    return v0

    :cond_15
    move-object v12, v14

    .line 205
    iput-object v12, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    .line 206
    iput v10, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoBitRate:I

    move/from16 v9, v22

    .line 207
    iput v9, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audioBitRate:I

    move/from16 v9, v23

    .line 208
    iput v9, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoFrameRate:I

    if-eqz v20, :cond_16

    .line 209
    iget-object v0, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/Size;->flip()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    iput-object v0, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    .line 213
    :cond_16
    iget v0, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->rotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_d

    :cond_17
    const/4 v0, 0x0

    .line 214
    :goto_d
    iget-object v9, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_18

    iget-object v10, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    .line 215
    invoke-virtual {v10}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v10

    goto :goto_e

    :cond_18
    iget-object v10, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v10}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v10

    :goto_e
    if-eqz v0, :cond_19

    iget-object v0, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    .line 216
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v0

    goto :goto_f

    :cond_19
    iget-object v0, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v0

    .line 214
    :goto_f
    invoke-virtual {v9, v10, v0}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 217
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v9, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoFrameRate:I

    invoke-virtual {v0, v9}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 218
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v0, v9}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 219
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v9, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoBitRate:I

    invoke-virtual {v0, v9}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    if-eqz v7, :cond_1a

    .line 223
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 224
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 225
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 226
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audioBitRate:I

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 230
    :cond_1a
    iget-object v0, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->location:Landroid/location/Location;

    if-eqz v0, :cond_1b

    .line 231
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->location:Landroid/location/Location;

    .line 232
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    double-to-float v4, v9

    iget-object v7, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->location:Landroid/location/Location;

    .line 233
    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    double-to-float v7, v9

    .line 231
    invoke-virtual {v0, v4, v7}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 236
    :cond_1b
    iget-object v0, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->file:Ljava/io/File;

    if-eqz v0, :cond_1c

    .line 237
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_10

    .line 238
    :cond_1c
    iget-object v0, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->fileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1e

    .line 239
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->fileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 244
    :goto_10
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->rotation:I

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 250
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-wide v9, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->maxSize:J

    const-wide/16 v11, 0x0

    const-wide v13, 0x3feccccccccccccdL    # 0.9

    cmp-long v4, v9, v11

    iget-wide v9, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->maxSize:J

    if-gtz v4, :cond_1d

    goto :goto_11

    :cond_1d
    long-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v13

    .line 251
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    .line 250
    :goto_11
    invoke-virtual {v0, v9, v10}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 252
    sget-object v0, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v5

    const-string v7, "Increased max size from"

    aput-object v7, v4, v8

    iget-wide v9, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->maxSize:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v9, 0x2

    aput-object v7, v4, v9

    const-string v7, "to"

    aput-object v7, v4, v3

    iget-wide v9, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->maxSize:J

    long-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v13

    .line 253
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v9, 0x4

    aput-object v7, v4, v9

    .line 252
    invoke-virtual {v0, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 254
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, v2, Lcom/otaliastudios/cameraview/VideoResult$Stub;->maxDuration:I

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 255
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    new-instance v2, Lcom/otaliastudios/cameraview/video/FullVideoRecorder$1;

    invoke-direct {v2, v1}, Lcom/otaliastudios/cameraview/video/FullVideoRecorder$1;-><init>(Lcom/otaliastudios/cameraview/video/FullVideoRecorder;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 280
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    new-instance v2, Lcom/otaliastudios/cameraview/video/FullVideoRecorder$2;

    invoke-direct {v2, v1}, Lcom/otaliastudios/cameraview/video/FullVideoRecorder$2;-><init>(Lcom/otaliastudios/cameraview/video/FullVideoRecorder;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 293
    :try_start_5
    iget-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 294
    iput-boolean v8, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorderPrepared:Z

    const/4 v2, 0x0

    .line 295
    iput-object v2, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mError:Ljava/lang/Exception;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    return v8

    :catch_9
    move-exception v0

    .line 298
    sget-object v2, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v5

    const-string v4, "Error while preparing media recorder."

    aput-object v4, v3, v8

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 299
    iput-boolean v5, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorderPrepared:Z

    .line 300
    iput-object v0, v1, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mError:Ljava/lang/Exception;

    return v5

    .line 241
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "file and fileDescriptor are both null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_13

    :goto_12
    throw v0

    :goto_13
    goto :goto_12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected abstract applyVideoSource(Lcom/otaliastudios/cameraview/VideoResult$Stub;Landroid/media/MediaRecorder;)V
.end method

.method protected abstract getCamcorderProfile(Lcom/otaliastudios/cameraview/VideoResult$Stub;)Landroid/media/CamcorderProfile;
.end method

.method protected onStart()V
    .locals 7

    .line 307
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->prepareMediaRecorder(Lcom/otaliastudios/cameraview/VideoResult$Stub;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 308
    iput-object v1, p0, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    .line 309
    invoke-virtual {p0, v2}, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->stop(Z)V

    return-void

    .line 314
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 315
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->dispatchVideoRecordingStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 317
    sget-object v3, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "start:"

    aput-object v5, v4, v2

    const/4 v5, 0x1

    const-string v6, "Error while starting media recorder."

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 318
    iput-object v1, p0, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    .line 319
    iput-object v0, p0, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mError:Ljava/lang/Exception;

    .line 320
    invoke-virtual {p0, v2}, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->stop(Z)V

    :goto_0
    return-void
.end method

.method protected onStop(Z)V
    .locals 9

    const-string p1, "stop:"

    .line 326
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->dispatchVideoRecordingEnd()V

    const/4 v0, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    .line 329
    :try_start_0
    sget-object v5, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v2

    const-string v7, "Stopping MediaRecorder..."

    aput-object v7, v6, v3

    invoke-virtual {v5, v6}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 331
    iget-object v6, p0, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6}, Landroid/media/MediaRecorder;->stop()V

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v2

    const-string v7, "Stopped MediaRecorder."

    aput-object v7, v6, v3

    .line 332
    invoke-virtual {v5, v6}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 338
    iput-object v1, p0, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    .line 339
    iget-object v6, p0, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mError:Ljava/lang/Exception;

    if-nez v6, :cond_0

    .line 340
    sget-object v6, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v7, v0, [Ljava/lang/Object;

    aput-object p1, v7, v2

    const-string v8, "Error while closing media recorder."

    aput-object v8, v7, v3

    aput-object v5, v7, v4

    invoke-virtual {v6, v7}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 341
    iput-object v5, p0, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mError:Ljava/lang/Exception;

    .line 345
    :cond_0
    :goto_0
    :try_start_1
    sget-object v5, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v2

    const-string v7, "Releasing MediaRecorder..."

    aput-object v7, v6, v3

    invoke-virtual {v5, v6}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 346
    iget-object v6, p0, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6}, Landroid/media/MediaRecorder;->release()V

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v2

    const-string v7, "Released MediaRecorder."

    aput-object v7, v6, v3

    .line 347
    invoke-virtual {v5, v6}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    .line 349
    iput-object v1, p0, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mResult:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    .line 350
    iget-object v6, p0, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mError:Ljava/lang/Exception;

    if-nez v6, :cond_1

    .line 351
    sget-object v6, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Error while releasing media recorder."

    aput-object p1, v0, v3

    aput-object v5, v0, v4

    invoke-virtual {v6, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 352
    iput-object v5, p0, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mError:Ljava/lang/Exception;

    .line 356
    :cond_1
    :goto_1
    iput-object v1, p0, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    .line 357
    iput-object v1, p0, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 358
    iput-boolean v2, p0, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorderPrepared:Z

    .line 359
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->dispatchResult()V

    return-void
.end method

.method protected final prepareMediaRecorder(Lcom/otaliastudios/cameraview/VideoResult$Stub;)Z
    .locals 2

    .line 68
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->mMediaRecorderPrepared:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 76
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->prepareMediaRecorder(Lcom/otaliastudios/cameraview/VideoResult$Stub;Z)Z

    move-result p1

    return p1
.end method
