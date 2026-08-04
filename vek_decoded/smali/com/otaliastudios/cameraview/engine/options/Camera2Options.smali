.class public Lcom/otaliastudios/cameraview/engine/options/Camera2Options;
.super Lcom/otaliastudios/cameraview/CameraOptions;
.source "Camera2Options.java"


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;ZI)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/CameraOptions;-><init>()V

    .line 39
    invoke-static {}, Lcom/otaliastudios/cameraview/engine/mappers/Camera2Mapper;->get()Lcom/otaliastudios/cameraview/engine/mappers/Camera2Mapper;

    move-result-object v0

    .line 40
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 43
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 45
    invoke-virtual {p1, v6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    .line 46
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_0

    .line 48
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/otaliastudios/cameraview/engine/mappers/Camera2Mapper;->unmapFacing(I)Lcom/otaliastudios/cameraview/controls/Facing;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 49
    iget-object v7, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->supportedFacing:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 54
    :cond_1
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 56
    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget v5, p1, v3

    .line 57
    invoke-virtual {v0, v5}, Lcom/otaliastudios/cameraview/engine/mappers/Camera2Mapper;->unmapWhiteBalance(I)Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 58
    iget-object v6, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->supportedWhiteBalance:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 62
    :cond_3
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->supportedFlash:Ljava/util/Set;

    sget-object v2, Lcom/otaliastudios/cameraview/controls/Flash;->OFF:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    .line 64
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 65
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 67
    array-length v2, p1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_4

    aget v5, p1, v3

    .line 68
    invoke-virtual {v0, v5}, Lcom/otaliastudios/cameraview/engine/mappers/Camera2Mapper;->unmapFlash(I)Ljava/util/Set;

    move-result-object v5

    .line 69
    iget-object v6, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->supportedFlash:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 74
    :cond_4
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->supportedHdr:Ljava/util/Set;

    sget-object v2, Lcom/otaliastudios/cameraview/controls/Hdr;->OFF:Lcom/otaliastudios/cameraview/controls/Hdr;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 77
    array-length v2, p1

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_6

    aget v5, p1, v3

    .line 78
    invoke-virtual {v0, v5}, Lcom/otaliastudios/cameraview/engine/mappers/Camera2Mapper;->unmapHdr(I)Lcom/otaliastudios/cameraview/controls/Hdr;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 79
    iget-object v6, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->supportedHdr:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 83
    :cond_6
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    .line 85
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    :goto_4
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->zoomSupported:Z

    .line 94
    :cond_8
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 95
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 96
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz p1, :cond_9

    .line 97
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gtz p1, :cond_b

    :cond_9
    if-eqz v2, :cond_a

    .line 98
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gtz p1, :cond_b

    :cond_a
    if-eqz v3, :cond_c

    .line 99
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_c

    :cond_b
    const/4 p1, 0x1

    goto :goto_5

    :cond_c
    const/4 p1, 0x0

    :goto_5
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->autoFocusSupported:Z

    .line 102
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Range;

    .line 103
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Rational;

    const/4 v3, 0x0

    if-eqz p1, :cond_d

    if-eqz v2, :cond_d

    .line 104
    invoke-virtual {v2}, Landroid/util/Rational;->floatValue()F

    move-result v5

    cmpl-float v5, v5, v3

    if-eqz v5, :cond_d

    .line 105
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/util/Rational;->floatValue()F

    move-result v6

    div-float/2addr v5, v6

    iput v5, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->exposureCorrectionMinValue:F

    .line 106
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v2}, Landroid/util/Rational;->floatValue()F

    move-result v2

    div-float/2addr p1, v2

    iput p1, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->exposureCorrectionMaxValue:F

    .line 108
    :cond_d
    iget p1, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->exposureCorrectionMinValue:F

    cmpl-float p1, p1, v3

    if-eqz p1, :cond_e

    iget p1, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->exposureCorrectionMaxValue:F

    cmpl-float p1, p1, v3

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_6

    :cond_e
    const/4 p1, 0x0

    :goto_6
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->exposureCorrectionSupported:Z

    .line 113
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz p1, :cond_1f

    .line 118
    invoke-virtual {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v2

    .line 120
    array-length v5, v2

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_10

    aget v7, v2, v6

    if-ne v7, p4, :cond_f

    goto :goto_8

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_1e

    .line 129
    invoke-virtual {p1, p4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p4

    .line 130
    array-length v0, p4

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_13

    aget-object v5, p4, v2

    if-eqz p3, :cond_11

    .line 131
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v6

    goto :goto_a

    :cond_11
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    :goto_a
    if-eqz p3, :cond_12

    .line 132
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    goto :goto_b

    :cond_12
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 133
    :goto_b
    iget-object v7, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->supportedPictureSizes:Ljava/util/Set;

    new-instance v8, Lcom/otaliastudios/cameraview/size/Size;

    invoke-direct {v8, v6, v5}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v7, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->supportedPictureAspectRatio:Ljava/util/Set;

    invoke-static {v6, v5}, Lcom/otaliastudios/cameraview/size/AspectRatio;->of(II)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 139
    :cond_13
    new-instance p4, Lcom/otaliastudios/cameraview/size/Size;

    const v0, 0x7fffffff

    invoke-direct {p4, v0, v0}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    invoke-static {p2, p4}, Lcom/otaliastudios/cameraview/internal/CamcorderProfiles;->get(Ljava/lang/String;Lcom/otaliastudios/cameraview/size/Size;)Landroid/media/CamcorderProfile;

    move-result-object p2

    .line 141
    new-instance p4, Lcom/otaliastudios/cameraview/size/Size;

    iget v0, p2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget p2, p2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {p4, v0, p2}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    .line 142
    const-class p2, Landroid/media/MediaRecorder;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p2

    .line 143
    array-length v0, p2

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_17

    aget-object v5, p2, v2

    .line 144
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {p4}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v7

    if-gt v6, v7, :cond_16

    .line 145
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {p4}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v7

    if-gt v6, v7, :cond_16

    if-eqz p3, :cond_14

    .line 146
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v6

    goto :goto_d

    :cond_14
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    :goto_d
    if-eqz p3, :cond_15

    .line 147
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    goto :goto_e

    :cond_15
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 148
    :goto_e
    iget-object v7, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->supportedVideoSizes:Ljava/util/Set;

    new-instance v8, Lcom/otaliastudios/cameraview/size/Size;

    invoke-direct {v8, v6, v5}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v7, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->supportedVideoAspectRatio:Ljava/util/Set;

    invoke-static {v6, v5}, Lcom/otaliastudios/cameraview/size/AspectRatio;->of(II)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 154
    :cond_17
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/util/Range;

    if-eqz p2, :cond_18

    const p3, 0x7f7fffff    # Float.MAX_VALUE

    .line 156
    iput p3, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->previewFrameRateMinValue:F

    const p3, -0x800001

    .line 157
    iput p3, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->previewFrameRateMaxValue:F

    .line 158
    array-length p3, p2

    const/4 p4, 0x0

    :goto_f
    if-ge p4, p3, :cond_19

    aget-object v0, p2, p4

    .line 159
    iget v2, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->previewFrameRateMinValue:F

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->previewFrameRateMinValue:F

    .line 160
    iget v2, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->previewFrameRateMaxValue:F

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->previewFrameRateMaxValue:F

    add-int/lit8 p4, p4, 0x1

    goto :goto_f

    .line 163
    :cond_18
    iput v3, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->previewFrameRateMinValue:F

    .line 164
    iput v3, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->previewFrameRateMaxValue:F

    .line 168
    :cond_19
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->supportedPictureFormats:Ljava/util/Set;

    sget-object p3, Lcom/otaliastudios/cameraview/controls/PictureFormat;->JPEG:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    if-eqz p2, :cond_1b

    .line 171
    array-length p3, p2

    const/4 p4, 0x0

    :goto_10
    if-ge p4, p3, :cond_1b

    aget v0, p2, p4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    .line 173
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->supportedPictureFormats:Ljava/util/Set;

    sget-object v1, Lcom/otaliastudios/cameraview/controls/PictureFormat;->DNG:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 p4, p4, 0x1

    goto :goto_10

    .line 179
    :cond_1b
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->supportedFrameProcessingFormats:Ljava/util/Set;

    const/16 p3, 0x23

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object p1

    .line 181
    array-length p2, p1

    :goto_11
    if-ge v4, p2, :cond_1d

    aget p3, p1, v4

    .line 183
    invoke-static {p3}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result p4

    if-lez p4, :cond_1c

    .line 184
    iget-object p4, p0, Lcom/otaliastudios/cameraview/engine/options/Camera2Options;->supportedFrameProcessingFormats:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_1d
    return-void

    .line 127
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Picture format not supported: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_1f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "StreamConfigurationMap is null. Should not happen."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_13

    :goto_12
    throw p1

    :goto_13
    goto :goto_12
.end method
