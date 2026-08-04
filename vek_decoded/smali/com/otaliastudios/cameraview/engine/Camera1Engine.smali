.class public Lcom/otaliastudios/cameraview/engine/Camera1Engine;
.super Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;
.source "Camera1Engine.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/hardware/Camera$ErrorCallback;
.implements Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager$BufferCallback;


# static fields
.field static final AUTOFOCUS_END_DELAY_MILLIS:I = 0x9c4

.field private static final JOB_FOCUS_END:Ljava/lang/String; = "focus end"

.field private static final JOB_FOCUS_RESET:Ljava/lang/String; = "focus reset"

.field private static final PREVIEW_FORMAT:I = 0x11


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field mCameraId:I

.field private final mMapper:Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;)V

    .line 69
    invoke-static {}, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->get()Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mMapper:Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;

    return-void
.end method

.method static synthetic access$000(Lcom/otaliastudios/cameraview/engine/Camera1Engine;)Landroid/hardware/Camera;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic access$100(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Landroid/hardware/Camera$Parameters;Lcom/otaliastudios/cameraview/controls/Flash;)Z
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->applyFlash(Landroid/hardware/Camera$Parameters;Lcom/otaliastudios/cameraview/controls/Flash;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Landroid/hardware/Camera$Parameters;Landroid/location/Location;)Z
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->applyLocation(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Landroid/hardware/Camera$Parameters;Lcom/otaliastudios/cameraview/controls/WhiteBalance;)Z
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->applyWhiteBalance(Landroid/hardware/Camera$Parameters;Lcom/otaliastudios/cameraview/controls/WhiteBalance;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Landroid/hardware/Camera$Parameters;Lcom/otaliastudios/cameraview/controls/Hdr;)Z
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->applyHdr(Landroid/hardware/Camera$Parameters;Lcom/otaliastudios/cameraview/controls/Hdr;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Landroid/hardware/Camera$Parameters;F)Z
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->applyZoom(Landroid/hardware/Camera$Parameters;F)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Landroid/hardware/Camera$Parameters;F)Z
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->applyExposureCorrection(Landroid/hardware/Camera$Parameters;F)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Z)Z
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->applyPlaySounds(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Landroid/hardware/Camera$Parameters;F)Z
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->applyPreviewFrameRate(Landroid/hardware/Camera$Parameters;F)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Landroid/hardware/Camera$Parameters;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->applyDefaultFocus(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method private applyAllParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    .line 479
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getMode()Lcom/otaliastudios/cameraview/controls/Mode;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/controls/Mode;->VIDEO:Lcom/otaliastudios/cameraview/controls/Mode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 480
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->applyDefaultFocus(Landroid/hardware/Camera$Parameters;)V

    .line 481
    sget-object v0, Lcom/otaliastudios/cameraview/controls/Flash;->OFF:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->applyFlash(Landroid/hardware/Camera$Parameters;Lcom/otaliastudios/cameraview/controls/Flash;)Z

    const/4 v0, 0x0

    .line 482
    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->applyLocation(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)Z

    .line 483
    sget-object v0, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->AUTO:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->applyWhiteBalance(Landroid/hardware/Camera$Parameters;Lcom/otaliastudios/cameraview/controls/WhiteBalance;)Z

    .line 484
    sget-object v0, Lcom/otaliastudios/cameraview/controls/Hdr;->OFF:Lcom/otaliastudios/cameraview/controls/Hdr;

    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->applyHdr(Landroid/hardware/Camera$Parameters;Lcom/otaliastudios/cameraview/controls/Hdr;)Z

    const/4 v0, 0x0

    .line 485
    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->applyZoom(Landroid/hardware/Camera$Parameters;F)Z

    .line 486
    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->applyExposureCorrection(Landroid/hardware/Camera$Parameters;F)Z

    .line 487
    iget-boolean v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPlaySounds:Z

    invoke-direct {p0, v1}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->applyPlaySounds(Z)Z

    .line 488
    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->applyPreviewFrameRate(Landroid/hardware/Camera$Parameters;F)Z

    return-void
.end method

.method private applyDefaultFocus(Landroid/hardware/Camera$Parameters;)V
    .locals 3

    .line 492
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 494
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getMode()Lcom/otaliastudios/cameraview/controls/Mode;

    move-result-object v1

    sget-object v2, Lcom/otaliastudios/cameraview/controls/Mode;->VIDEO:Lcom/otaliastudios/cameraview/controls/Mode;

    if-ne v1, v2, :cond_0

    const-string v1, "continuous-video"

    .line 495
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "continuous-picture"

    .line 500
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 501
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "infinity"

    .line 505
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 506
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v1, "fixed"

    .line 510
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 511
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private applyExposureCorrection(Landroid/hardware/Camera$Parameters;F)Z
    .locals 3

    .line 684
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/CameraOptions;->isExposureCorrectionSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 686
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    invoke-virtual {p2}, Lcom/otaliastudios/cameraview/CameraOptions;->getExposureCorrectionMaxValue()F

    move-result p2

    .line 687
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/CameraOptions;->getExposureCorrectionMinValue()F

    move-result v0

    .line 688
    iget v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mExposureCorrectionValue:F

    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    cmpl-float v0, v1, p2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    .line 690
    :goto_0
    iput p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mExposureCorrectionValue:F

    .line 692
    iget p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mExposureCorrectionValue:F

    .line 693
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    div-float/2addr p2, v0

    float-to-int p2, p2

    .line 694
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    const/4 p1, 0x1

    return p1

    .line 697
    :cond_2
    iput p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mExposureCorrectionValue:F

    const/4 p1, 0x0

    return p1
.end method

.method private applyFlash(Landroid/hardware/Camera$Parameters;Lcom/otaliastudios/cameraview/controls/Flash;)Z
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mFlash:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraOptions;->supports(Lcom/otaliastudios/cameraview/controls/Control;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mMapper:Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mFlash:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {p2, v0}, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->mapFlash(Lcom/otaliastudios/cameraview/controls/Flash;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 537
    :cond_0
    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mFlash:Lcom/otaliastudios/cameraview/controls/Flash;

    const/4 p1, 0x0

    return p1
.end method

.method private applyHdr(Landroid/hardware/Camera$Parameters;Lcom/otaliastudios/cameraview/controls/Hdr;)Z
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mHdr:Lcom/otaliastudios/cameraview/controls/Hdr;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraOptions;->supports(Lcom/otaliastudios/cameraview/controls/Control;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mMapper:Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mHdr:Lcom/otaliastudios/cameraview/controls/Hdr;

    invoke-virtual {p2, v0}, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->mapHdr(Lcom/otaliastudios/cameraview/controls/Hdr;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 618
    :cond_0
    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mHdr:Lcom/otaliastudios/cameraview/controls/Hdr;

    const/4 p1, 0x0

    return p1
.end method

.method private applyLocation(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)Z
    .locals 2

    .line 558
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mLocation:Landroid/location/Location;

    if-eqz p2, :cond_0

    .line 559
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mLocation:Landroid/location/Location;

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 560
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mLocation:Landroid/location/Location;

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 561
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mLocation:Landroid/location/Location;

    invoke-virtual {p2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 562
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mLocation:Landroid/location/Location;

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 563
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mLocation:Landroid/location/Location;

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private applyPlaySounds(Z)Z
    .locals 3

    .line 719
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 720
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 721
    iget v2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCameraId:I

    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 722
    iget-boolean v0, v0, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z

    if-eqz v0, :cond_0

    .line 725
    :try_start_0
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPlaySounds:Z

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1

    .line 731
    :cond_0
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPlaySounds:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 734
    :cond_1
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPlaySounds:Z

    return v1
.end method

.method private applyPreviewFrameRate(Landroid/hardware/Camera$Parameters;F)Z
    .locals 9

    .line 756
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 757
    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->sortRanges(Ljava/util/List;)V

    .line 758
    iget v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreviewFrameRate:F

    const/high16 v2, 0x447a0000    # 1000.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-nez v1, :cond_3

    .line 760
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 761
    aget v5, v1, v3

    int-to-float v5, v5

    div-float/2addr v5, v2

    .line 762
    aget v6, v1, v4

    int-to-float v6, v6

    div-float/2addr v6, v2

    const/high16 v7, 0x41f00000    # 30.0f

    cmpg-float v8, v5, v7

    if-gtz v8, :cond_1

    cmpg-float v7, v7, v6

    if-lez v7, :cond_2

    :cond_1
    const/high16 v7, 0x41c00000    # 24.0f

    cmpg-float v5, v5, v7

    if-gtz v5, :cond_0

    cmpg-float v5, v7, v6

    if-gtz v5, :cond_0

    .line 764
    :cond_2
    aget p2, v1, v3

    aget v0, v1, v4

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    return v4

    .line 770
    :cond_3
    iget v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreviewFrameRate:F

    iget-object v5, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    .line 771
    invoke-virtual {v5}, Lcom/otaliastudios/cameraview/CameraOptions;->getPreviewFrameRateMaxValue()F

    move-result v5

    .line 770
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreviewFrameRate:F

    .line 772
    iget v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreviewFrameRate:F

    iget-object v5, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    .line 773
    invoke-virtual {v5}, Lcom/otaliastudios/cameraview/CameraOptions;->getPreviewFrameRateMinValue()F

    move-result v5

    .line 772
    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreviewFrameRate:F

    .line 774
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 775
    aget v5, v1, v3

    int-to-float v5, v5

    div-float/2addr v5, v2

    .line 776
    aget v6, v1, v4

    int-to-float v6, v6

    div-float/2addr v6, v2

    .line 777
    iget v7, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreviewFrameRate:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    cmpg-float v5, v5, v7

    if-gtz v5, :cond_4

    cmpg-float v5, v7, v6

    if-gtz v5, :cond_4

    .line 779
    aget p2, v1, v3

    aget v0, v1, v4

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    return v4

    .line 784
    :cond_5
    iput p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreviewFrameRate:F

    return v3
.end method

.method private applyWhiteBalance(Landroid/hardware/Camera$Parameters;Lcom/otaliastudios/cameraview/controls/WhiteBalance;)Z
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mWhiteBalance:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraOptions;->supports(Lcom/otaliastudios/cameraview/controls/Control;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mMapper:Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mWhiteBalance:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    invoke-virtual {p2, v0}, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->mapWhiteBalance(Lcom/otaliastudios/cameraview/controls/WhiteBalance;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    const-string p2, "auto-whitebalance-lock"

    .line 591
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 594
    :cond_0
    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mWhiteBalance:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    const/4 p1, 0x0

    return p1
.end method

.method private applyZoom(Landroid/hardware/Camera$Parameters;F)Z
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/CameraOptions;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result p2

    int-to-float p2, p2

    .line 648
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mZoomValue:F

    mul-float v0, v0, p2

    float-to-int p2, v0

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 649
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    const/4 p1, 0x1

    return p1

    .line 652
    :cond_0
    iput p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mZoomValue:F

    const/4 p1, 0x0

    return p1
.end method

.method private sortRanges(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[I>;)V"
        }
    .end annotation

    .line 789
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getPreviewFrameRateExact()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreviewFrameRate:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 790
    new-instance v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$9;

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$9;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 797
    :cond_0
    new-instance v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$10;

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$10;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected collectCameraInfo(Lcom/otaliastudios/cameraview/controls/Facing;)Z
    .locals 7

    .line 137
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mMapper:Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/mappers/Camera1Mapper;->mapFacing(Lcom/otaliastudios/cameraview/controls/Facing;)I

    move-result v0

    .line 138
    sget-object v1, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "collectCameraInfo"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Facing:"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    const-string v6, "Internal:"

    aput-object v6, v2, v3

    .line 140
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x4

    aput-object v3, v2, v6

    const/4 v3, 0x5

    const-string v6, "Cameras:"

    aput-object v6, v2, v3

    .line 141
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x6

    aput-object v3, v2, v6

    .line 138
    invoke-virtual {v1, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 142
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 143
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 144
    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 145
    iget v6, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v6, v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v0

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v0, p1, v1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->setSensorOffset(Lcom/otaliastudios/cameraview/controls/Facing;I)V

    .line 147
    iput v3, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCameraId:I

    return v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public getFrameManager()Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;
    .locals 1

    .line 827
    invoke-super {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getFrameManager()Lcom/otaliastudios/cameraview/frame/FrameManager;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;

    return-object v0
.end method

.method public bridge synthetic getFrameManager()Lcom/otaliastudios/cameraview/frame/FrameManager;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getFrameManager()Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;

    move-result-object v0

    return-object v0
.end method

.method protected getFrameProcessingAvailableSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/otaliastudios/cameraview/size/Size;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreviewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getPreviewStreamAvailableSizes()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/otaliastudios/cameraview/size/Size;",
            ">;"
        }
    .end annotation

    const-string v0, "getPreviewStreamAvailableSizes:"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 105
    :try_start_0
    iget-object v4, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 112
    new-instance v7, Lcom/otaliastudios/cameraview/size/Size;

    iget v8, v6, Landroid/hardware/Camera$Size;->width:I

    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v7, v8, v6}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    .line 113
    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_1
    sget-object v4, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    aput-object v5, v3, v1

    invoke-virtual {v4, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    return-object v5

    :catch_0
    move-exception v4

    .line 107
    sget-object v5, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v2

    const-string v0, "Failed to compute preview size. Camera params is empty"

    aput-object v0, v6, v1

    invoke-virtual {v5, v6}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    new-instance v0, Lcom/otaliastudios/cameraview/CameraException;

    invoke-direct {v0, v4, v3}, Lcom/otaliastudios/cameraview/CameraException;-><init>(Ljava/lang/Throwable;I)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method protected instantiateFrameManager(I)Lcom/otaliastudios/cameraview/frame/FrameManager;
    .locals 1

    .line 821
    new-instance v0, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;

    invoke-direct {v0, p1, p0}, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;-><init>(ILcom/otaliastudios/cameraview/frame/ByteBufferFrameManager$BufferCallback;)V

    return-object v0
.end method

.method public onBufferAvailable([B)V
    .locals 2

    .line 844
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->isAtLeast(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getTargetState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->isAtLeast(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_0
    return-void
.end method

.method public onError(ILandroid/hardware/Camera;)V
    .locals 5

    .line 81
    sget-object p2, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Internal Camera1 error."

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p2, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 82
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x3

    if-eq p1, v4, :cond_0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    .line 92
    :goto_0
    new-instance p1, Lcom/otaliastudios/cameraview/CameraException;

    invoke-direct {p1, v1, v3}, Lcom/otaliastudios/cameraview/CameraException;-><init>(Ljava/lang/Throwable;I)V

    throw p1
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 856
    :cond_0
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getFrameManager()Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->getFrame(Ljava/lang/Object;J)Lcom/otaliastudios/cameraview/frame/Frame;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 858
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getCallback()Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->dispatchFrame(Lcom/otaliastudios/cameraview/frame/Frame;)V

    :cond_1
    return-void
.end method

.method protected onPreviewStreamSizeChanged()V
    .locals 0

    .line 131
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->restartPreview()Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method protected onStartBind()Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 201
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "onStartBind:"

    aput-object v4, v2, v3

    const-string v5, "Started"

    const/4 v6, 0x1

    aput-object v5, v2, v6

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->getOutputClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Landroid/view/SurfaceHolder;

    if-ne v0, v2, :cond_0

    .line 204
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->getOutput()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->getOutputClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Landroid/graphics/SurfaceTexture;

    if-ne v0, v2, :cond_1

    .line 206
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->getOutput()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->computeCaptureSize()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCaptureSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 216
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->computePreviewStreamSize()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreviewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    const/4 v0, 0x0

    .line 217
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 208
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Unknown CameraPreview output class."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 211
    sget-object v2, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v3

    const-string v3, "Failed to bind."

    aput-object v3, v5, v6

    aput-object v0, v5, v1

    invoke-virtual {v2, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 212
    new-instance v2, Lcom/otaliastudios/cameraview/CameraException;

    invoke-direct {v2, v0, v1}, Lcom/otaliastudios/cameraview/CameraException;-><init>(Ljava/lang/Throwable;I)V

    throw v2
.end method

.method protected onStartEngine()Lcom/google/android/gms/tasks/Task;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/otaliastudios/cameraview/CameraOptions;",
            ">;"
        }
    .end annotation

    const-string v0, "onStartEngine:"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 163
    :try_start_0
    iget v4, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCameraId:I

    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v4, :cond_0

    .line 172
    invoke-virtual {v4, p0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 175
    sget-object v4, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    const-string v6, "Applying default parameters."

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    :try_start_1
    iget-object v4, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 178
    new-instance v5, Lcom/otaliastudios/cameraview/engine/options/Camera1Options;

    iget v6, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCameraId:I

    .line 179
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v7

    sget-object v8, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v9, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v7, v8, v9}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->flip(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Z

    move-result v7

    invoke-direct {v5, v4, v6, v7}, Lcom/otaliastudios/cameraview/engine/options/Camera1Options;-><init>(Landroid/hardware/Camera$Parameters;IZ)V

    iput-object v5, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    .line 180
    invoke-direct {p0, v4}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->applyAllParameters(Landroid/hardware/Camera$Parameters;)V

    .line 181
    iget-object v5, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    :try_start_2
    iget-object v4, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v5

    sget-object v6, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v7, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v8, Lcom/otaliastudios/cameraview/engine/offset/Axis;->ABSOLUTE:Lcom/otaliastudios/cameraview/engine/offset/Axis;

    invoke-virtual {v5, v6, v7, v8}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->offset(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Axis;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 193
    sget-object v4, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "Ended"

    aput-object v0, v2, v3

    invoke-virtual {v4, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 190
    :catch_0
    sget-object v4, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "Failed to connect. Can\'t set display orientation, maybe preview already exists?"

    aput-object v0, v2, v3

    invoke-virtual {v4, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 191
    new-instance v0, Lcom/otaliastudios/cameraview/CameraException;

    invoke-direct {v0, v3}, Lcom/otaliastudios/cameraview/CameraException;-><init>(I)V

    throw v0

    :catch_1
    move-exception v4

    .line 183
    sget-object v5, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "Failed to connect. Problem with camera params"

    aput-object v0, v2, v3

    invoke-virtual {v5, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    new-instance v0, Lcom/otaliastudios/cameraview/CameraException;

    invoke-direct {v0, v4, v3}, Lcom/otaliastudios/cameraview/CameraException;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    .line 169
    :cond_0
    sget-object v4, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "Failed to connect. Camera is null, maybe in use by another app or already released?"

    aput-object v0, v2, v3

    invoke-virtual {v4, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    new-instance v0, Lcom/otaliastudios/cameraview/CameraException;

    invoke-direct {v0, v3}, Lcom/otaliastudios/cameraview/CameraException;-><init>(I)V

    throw v0

    :catch_2
    move-exception v4

    .line 165
    sget-object v5, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "Failed to connect. Maybe in use by another app?"

    aput-object v0, v2, v3

    invoke-virtual {v5, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    new-instance v0, Lcom/otaliastudios/cameraview/CameraException;

    invoke-direct {v0, v4, v3}, Lcom/otaliastudios/cameraview/CameraException;-><init>(Ljava/lang/Throwable;I)V

    throw v0
.end method

.method protected onStartPreview()Lcom/google/android/gms/tasks/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "onStartPreview:"

    .line 224
    sget-object v1, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "onStartPreview"

    aput-object v5, v3, v4

    const-string v6, "Dispatching onCameraPreviewStreamSizeChanged."

    const/4 v7, 0x1

    aput-object v6, v3, v7

    invoke-virtual {v1, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 225
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getCallback()Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    move-result-object v1

    invoke-interface {v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->onCameraPreviewStreamSizeChanged()V

    .line 227
    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {p0, v1}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getPreviewStreamSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 231
    iget-object v3, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v1

    invoke-virtual {v3, v6, v1}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->setStreamSize(II)V

    .line 232
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {v1, v4}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->setDrawRotation(I)V

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v3, 0x11

    .line 243
    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 245
    iget-object v6, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreviewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v6}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v6

    iget-object v8, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreviewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v8}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v8

    invoke-virtual {v1, v6, v8}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 246
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getMode()Lcom/otaliastudios/cameraview/controls/Mode;

    move-result-object v6

    sget-object v8, Lcom/otaliastudios/cameraview/controls/Mode;->PICTURE:Lcom/otaliastudios/cameraview/controls/Mode;

    if-ne v6, v8, :cond_0

    .line 248
    iget-object v6, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCaptureSize:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v6}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v6

    iget-object v8, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCaptureSize:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v8}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v8

    invoke-virtual {v1, v6, v8}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto :goto_0

    .line 255
    :cond_0
    sget-object v6, Lcom/otaliastudios/cameraview/controls/Mode;->PICTURE:Lcom/otaliastudios/cameraview/controls/Mode;

    invoke-virtual {p0, v6}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->computeCaptureSize(Lcom/otaliastudios/cameraview/controls/Mode;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v6

    .line 256
    invoke-virtual {v6}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v6

    invoke-virtual {v1, v8, v6}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 259
    :goto_0
    :try_start_1
    iget-object v6, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 265
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 266
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 267
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getFrameManager()Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;

    move-result-object v0

    iget-object v6, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreviewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v8

    invoke-virtual {v0, v3, v6, v8}, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->setUp(ILcom/otaliastudios/cameraview/size/Size;Lcom/otaliastudios/cameraview/engine/offset/Angles;)V

    .line 269
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v5, v3, v4

    const-string v6, "Starting preview with startPreview()."

    aput-object v6, v3, v7

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 271
    :try_start_2
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 276
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v4

    const-string v3, "Started preview."

    aput-object v3, v2, v7

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 277
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 273
    sget-object v1, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v4

    const-string v4, "Failed to start preview."

    aput-object v4, v3, v7

    aput-object v0, v3, v2

    invoke-virtual {v1, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 274
    new-instance v1, Lcom/otaliastudios/cameraview/CameraException;

    invoke-direct {v1, v0, v2}, Lcom/otaliastudios/cameraview/CameraException;-><init>(Ljava/lang/Throwable;I)V

    throw v1

    :catch_1
    move-exception v1

    .line 261
    sget-object v3, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v4

    const-string v0, "Failed to set params for camera. Maybe incorrect parameter put in params?"

    aput-object v0, v5, v7

    invoke-virtual {v3, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 262
    new-instance v0, Lcom/otaliastudios/cameraview/CameraException;

    invoke-direct {v0, v1, v2}, Lcom/otaliastudios/cameraview/CameraException;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :catch_2
    move-exception v1

    .line 238
    sget-object v3, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v4

    const-string v0, "Failed to get params from camera. Maybe low level problem with camera or camera has already released?"

    aput-object v0, v5, v7

    invoke-virtual {v3, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 239
    new-instance v0, Lcom/otaliastudios/cameraview/CameraException;

    invoke-direct {v0, v1, v2}, Lcom/otaliastudios/cameraview/CameraException;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    .line 229
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "previewStreamSize should not be null at this point."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onStopBind()Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 311
    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreviewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 312
    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCaptureSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->getOutputClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/view/SurfaceHolder;

    if-ne v1, v2, :cond_0

    .line 315
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->getOutputClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/graphics/SurfaceTexture;

    if-ne v1, v2, :cond_1

    .line 317
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 319
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown CameraPreview output class."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 324
    sget-object v2, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "onStopBind"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Could not release surface"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 326
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method protected onStopEngine()Lcom/google/android/gms/tasks/Task;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 333
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "onStopEngine:"

    aput-object v4, v2, v3

    const-string v5, "About to clean up."

    const/4 v6, 0x1

    aput-object v5, v2, v6

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 334
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v0

    const-string v2, "focus reset"

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->remove(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v0

    const-string v2, "focus end"

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->remove(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    const-string v2, "Clean up."

    const/4 v5, 0x3

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    .line 338
    :try_start_0
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v4, v8, v3

    aput-object v2, v8, v6

    const-string v9, "Releasing camera."

    aput-object v9, v8, v1

    invoke-virtual {v0, v8}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 354
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v4, v8, v3

    aput-object v2, v8, v6

    const-string v9, "Released camera."

    aput-object v9, v8, v1

    invoke-virtual {v0, v8}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 356
    sget-object v8, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v3

    aput-object v2, v9, v6

    const-string v10, "Exception while releasing camera."

    aput-object v10, v9, v1

    aput-object v0, v9, v5

    invoke-virtual {v8, v9}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 358
    :goto_0
    iput-object v7, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    .line 359
    iput-object v7, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    .line 361
    :cond_0
    iput-object v7, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mVideoRecorder:Lcom/otaliastudios/cameraview/video/VideoRecorder;

    .line 362
    iput-object v7, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    .line 363
    iput-object v7, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    .line 364
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v3

    aput-object v2, v5, v6

    const-string v2, "Returning."

    aput-object v2, v5, v1

    invoke-virtual {v0, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 365
    invoke-static {v7}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method protected onStopPreview()Lcom/google/android/gms/tasks/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 288
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "onStopPreview:"

    aput-object v4, v2, v3

    const-string v5, "Started."

    const/4 v6, 0x1

    aput-object v5, v2, v6

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 289
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mVideoRecorder:Lcom/otaliastudios/cameraview/video/VideoRecorder;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mVideoRecorder:Lcom/otaliastudios/cameraview/video/VideoRecorder;

    invoke-virtual {v0, v6}, Lcom/otaliastudios/cameraview/video/VideoRecorder;->stop(Z)V

    .line 291
    iput-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mVideoRecorder:Lcom/otaliastudios/cameraview/video/VideoRecorder;

    .line 293
    :cond_0
    iput-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPictureRecorder:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

    .line 294
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getFrameManager()Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->release()V

    .line 295
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v3

    const-string v7, "Releasing preview buffers."

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 298
    :try_start_0
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v3

    const-string v7, "Stopping preview."

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 300
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v3

    const-string v4, "Stopped preview."

    aput-object v4, v5, v6

    invoke-virtual {v0, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 302
    sget-object v4, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, "stopPreview"

    aput-object v7, v5, v3

    const-string v3, "Could not stop preview"

    aput-object v3, v5, v6

    aput-object v0, v5, v1

    invoke-virtual {v4, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 304
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method protected onTakePicture(Lcom/otaliastudios/cameraview/PictureResult$Stub;Z)V
    .locals 7

    .line 375
    sget-object p2, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onTakePicture:"

    aput-object v3, v1, v2

    const-string v4, "executing."

    const/4 v5, 0x1

    aput-object v4, v1, v5

    invoke-virtual {p2, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 376
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object p2

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v4, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v6, Lcom/otaliastudios/cameraview/engine/offset/Axis;->RELATIVE_TO_SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Axis;

    invoke-virtual {p2, v1, v4, v6}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->offset(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Axis;)I

    move-result p2

    iput p2, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->rotation:I

    .line 378
    sget-object p2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {p0, p2}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getPictureSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object p2

    iput-object p2, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    .line 379
    new-instance p2, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    invoke-direct {p2, p1, p0, v1}, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;-><init>(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/engine/Camera1Engine;Landroid/hardware/Camera;)V

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPictureRecorder:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

    .line 380
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPictureRecorder:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->take()V

    .line 381
    sget-object p1, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array p2, v0, [Ljava/lang/Object;

    aput-object v3, p2, v2

    const-string v0, "executed."

    aput-object v0, p2, v5

    invoke-virtual {p1, p2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method protected onTakePictureSnapshot(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/size/AspectRatio;Z)V
    .locals 12

    .line 389
    sget-object p3, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onTakePictureSnapshot:"

    aput-object v3, v1, v2

    const-string v4, "executing."

    const/4 v5, 0x1

    aput-object v4, v1, v5

    invoke-virtual {p3, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 391
    sget-object p3, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {p0, p3}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getUncroppedSnapshotSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object p3

    iput-object p3, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    .line 392
    iget-object p3, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    instance-of p3, p3, Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;

    if-eqz p3, :cond_0

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt p3, v1, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object p3

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v4, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v6, Lcom/otaliastudios/cameraview/engine/offset/Axis;->ABSOLUTE:Lcom/otaliastudios/cameraview/engine/offset/Axis;

    invoke-virtual {p3, v1, v4, v6}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->offset(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Axis;)I

    move-result p3

    iput p3, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->rotation:I

    .line 394
    new-instance p3, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    move-object v9, v1

    check-cast v9, Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;

    .line 395
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getOverlay()Lcom/otaliastudios/cameraview/overlay/Overlay;

    move-result-object v11

    move-object v6, p3

    move-object v7, p1

    move-object v8, p0

    move-object v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;-><init>(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/picture/PictureRecorder$PictureResultListener;Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;Lcom/otaliastudios/cameraview/size/AspectRatio;Lcom/otaliastudios/cameraview/overlay/Overlay;)V

    iput-object p3, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPictureRecorder:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

    goto :goto_0

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object p3

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v4, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v6, Lcom/otaliastudios/cameraview/engine/offset/Axis;->RELATIVE_TO_SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Axis;

    invoke-virtual {p3, v1, v4, v6}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->offset(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Axis;)I

    move-result p3

    iput p3, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->rotation:I

    .line 398
    new-instance p3, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    invoke-direct {p3, p1, p0, v1, p2}, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;-><init>(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/engine/Camera1Engine;Landroid/hardware/Camera;Lcom/otaliastudios/cameraview/size/AspectRatio;)V

    iput-object p3, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPictureRecorder:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

    .line 400
    :goto_0
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPictureRecorder:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->take()V

    .line 401
    sget-object p1, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array p2, v0, [Ljava/lang/Object;

    aput-object v3, p2, v2

    const-string p3, "executed."

    aput-object p3, p2, v5

    invoke-virtual {p1, p2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method protected onTakeVideo(Lcom/otaliastudios/cameraview/VideoResult$Stub;)V
    .locals 4

    .line 411
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v3, Lcom/otaliastudios/cameraview/engine/offset/Axis;->RELATIVE_TO_SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Axis;

    invoke-virtual {v0, v1, v2, v3}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->offset(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Axis;)I

    move-result v0

    iput v0, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->rotation:I

    .line 413
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->flip(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCaptureSize:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/Size;->flip()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCaptureSize:Lcom/otaliastudios/cameraview/size/Size;

    :goto_0
    iput-object v0, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    new-instance v0, Lcom/otaliastudios/cameraview/video/Full1VideoRecorder;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    iget v2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCameraId:I

    invoke-direct {v0, p0, v1, v2}, Lcom/otaliastudios/cameraview/video/Full1VideoRecorder;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Landroid/hardware/Camera;I)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mVideoRecorder:Lcom/otaliastudios/cameraview/video/VideoRecorder;

    .line 425
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mVideoRecorder:Lcom/otaliastudios/cameraview/video/VideoRecorder;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/video/VideoRecorder;->start(Lcom/otaliastudios/cameraview/VideoResult$Stub;)V

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 421
    invoke-virtual {p0, v0, p1}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->onVideoResult(Lcom/otaliastudios/cameraview/VideoResult$Stub;Ljava/lang/Exception;)V

    return-void
.end method

.method protected onTakeVideoSnapshot(Lcom/otaliastudios/cameraview/VideoResult$Stub;Lcom/otaliastudios/cameraview/size/AspectRatio;)V
    .locals 4

    .line 433
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    instance-of v0, v0, Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;

    if-eqz v0, :cond_2

    .line 436
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 439
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    check-cast v0, Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;

    .line 440
    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {p0, v1}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getUncroppedSnapshotSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 444
    invoke-static {v1, p2}, Lcom/otaliastudios/cameraview/internal/CropHelper;->computeCrop(Lcom/otaliastudios/cameraview/size/Size;Lcom/otaliastudios/cameraview/size/AspectRatio;)Landroid/graphics/Rect;

    move-result-object p2

    .line 445
    new-instance v1, Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-direct {v1, v2, p2}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    .line 446
    iput-object v1, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    .line 456
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object p2

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v3, Lcom/otaliastudios/cameraview/engine/offset/Axis;->ABSOLUTE:Lcom/otaliastudios/cameraview/engine/offset/Axis;

    invoke-virtual {p2, v1, v2, v3}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->offset(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Axis;)I

    move-result p2

    iput p2, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->rotation:I

    .line 457
    iget p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreviewFrameRate:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoFrameRate:I

    .line 458
    sget-object p2, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onTakeVideoSnapshot"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "rotation:"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->rotation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "size:"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    aput-object v3, v1, v2

    invoke-virtual {p2, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 461
    new-instance p2, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getOverlay()Lcom/otaliastudios/cameraview/overlay/Overlay;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;Lcom/otaliastudios/cameraview/overlay/Overlay;)V

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mVideoRecorder:Lcom/otaliastudios/cameraview/video/VideoRecorder;

    .line 462
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mVideoRecorder:Lcom/otaliastudios/cameraview/video/VideoRecorder;

    invoke-virtual {p2, p1}, Lcom/otaliastudios/cameraview/video/VideoRecorder;->start(Lcom/otaliastudios/cameraview/VideoResult$Stub;)V

    return-void

    .line 442
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "outputSize should not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 437
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Video snapshots are only supported on API 18+."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 434
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Video snapshots are only supported with GL_SURFACE."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onVideoResult(Lcom/otaliastudios/cameraview/VideoResult$Stub;Ljava/lang/Exception;)V
    .locals 0

    .line 467
    invoke-super {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->onVideoResult(Lcom/otaliastudios/cameraview/VideoResult$Stub;Ljava/lang/Exception;)V

    if-nez p1, :cond_0

    .line 470
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->lock()V

    :cond_0
    return-void
.end method

.method public setExposureCorrection(F[F[Landroid/graphics/PointF;Z)V
    .locals 9

    .line 659
    iget v2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mExposureCorrectionValue:F

    .line 660
    iput p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mExposureCorrectionValue:F

    .line 663
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object p1

    const-string v6, "exposure correction"

    invoke-virtual {p1, v6}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->remove(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object p1

    sget-object v7, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v8, Lcom/otaliastudios/cameraview/engine/Camera1Engine$6;

    move-object v0, v8

    move-object v1, p0

    move v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$6;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;FZ[F[Landroid/graphics/PointF;)V

    invoke-virtual {p1, v6, v7, v8}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mExposureCorrectionTask:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setFlash(Lcom/otaliastudios/cameraview/controls/Flash;)V
    .locals 4

    .line 519
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mFlash:Lcom/otaliastudios/cameraview/controls/Flash;

    .line 520
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mFlash:Lcom/otaliastudios/cameraview/controls/Flash;

    .line 521
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flash ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v3, Lcom/otaliastudios/cameraview/engine/Camera1Engine$1;

    invoke-direct {v3, p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$1;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Lcom/otaliastudios/cameraview/controls/Flash;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mFlashTask:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setFrameProcessingFormat(I)V
    .locals 0

    const/16 p1, 0x11

    .line 839
    iput p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mFrameProcessingFormat:I

    return-void
.end method

.method public setHasFrameProcessors(Z)V
    .locals 0

    .line 833
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mHasFrameProcessors:Z

    return-void
.end method

.method public setHdr(Lcom/otaliastudios/cameraview/controls/Hdr;)V
    .locals 4

    .line 600
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mHdr:Lcom/otaliastudios/cameraview/controls/Hdr;

    .line 601
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mHdr:Lcom/otaliastudios/cameraview/controls/Hdr;

    .line 602
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hdr ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v3, Lcom/otaliastudios/cameraview/engine/Camera1Engine$4;

    invoke-direct {v3, p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$4;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Lcom/otaliastudios/cameraview/controls/Hdr;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mHdrTask:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mLocation:Landroid/location/Location;

    .line 544
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mLocation:Landroid/location/Location;

    .line 545
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object p1

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v2, Lcom/otaliastudios/cameraview/engine/Camera1Engine$2;

    invoke-direct {v2, p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$2;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Landroid/location/Location;)V

    const-string v0, "location"

    invoke-virtual {p1, v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mLocationTask:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setPictureFormat(Lcom/otaliastudios/cameraview/controls/PictureFormat;)V
    .locals 3

    .line 808
    sget-object v0, Lcom/otaliastudios/cameraview/controls/PictureFormat;->JPEG:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    if-ne p1, v0, :cond_0

    .line 811
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPictureFormat:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    return-void

    .line 809
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported picture format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPlaySounds(Z)V
    .locals 4

    .line 703
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPlaySounds:Z

    .line 704
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPlaySounds:Z

    .line 705
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play sounds ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v3, Lcom/otaliastudios/cameraview/engine/Camera1Engine$7;

    invoke-direct {v3, p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$7;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Z)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPlaySoundsTask:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setPreviewFrameRate(F)V
    .locals 4

    .line 741
    iput p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreviewFrameRate:F

    .line 742
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preview fps ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v3, Lcom/otaliastudios/cameraview/engine/Camera1Engine$8;

    invoke-direct {v3, p0, p1}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$8;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;F)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mPreviewFrameRateTask:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setWhiteBalance(Lcom/otaliastudios/cameraview/controls/WhiteBalance;)V
    .locals 4

    .line 570
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mWhiteBalance:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    .line 571
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mWhiteBalance:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    .line 572
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "white balance ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v3, Lcom/otaliastudios/cameraview/engine/Camera1Engine$3;

    invoke-direct {v3, p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$3;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Lcom/otaliastudios/cameraview/controls/WhiteBalance;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mWhiteBalanceTask:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setZoom(F[Landroid/graphics/PointF;Z)V
    .locals 4

    .line 624
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mZoomValue:F

    .line 625
    iput p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mZoomValue:F

    .line 628
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object p1

    const-string v1, "zoom"

    invoke-virtual {p1, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->remove(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object p1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v3, Lcom/otaliastudios/cameraview/engine/Camera1Engine$5;

    invoke-direct {v3, p0, v0, p3, p2}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$5;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;FZ[Landroid/graphics/PointF;)V

    invoke-virtual {p1, v1, v2, v3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->mZoomTask:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public startAutoFocus(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/metering/MeteringRegions;Landroid/graphics/PointF;)V
    .locals 3

    .line 870
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v2, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Lcom/otaliastudios/cameraview/metering/MeteringRegions;Lcom/otaliastudios/cameraview/gesture/Gesture;Landroid/graphics/PointF;)V

    const-string p1, "auto focus"

    invoke-virtual {v0, p1, v1, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
