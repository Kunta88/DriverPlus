.class public Lcom/otaliastudios/cameraview/engine/Camera2Engine;
.super Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;
.source "Camera2Engine.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;
.implements Lcom/otaliastudios/cameraview/engine/action/ActionHolder;


# static fields
.field private static final FRAME_PROCESSING_FORMAT:I = 0x23

.field static final METER_TIMEOUT:J = 0x1388L

.field private static final METER_TIMEOUT_SHORT:J = 0x9c4L


# instance fields
.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/cameraview/engine/action/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mCamera:Landroid/hardware/camera2/CameraDevice;

.field private mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mCameraId:Ljava/lang/String;

.field private mFrameProcessingReader:Landroid/media/ImageReader;

.field private mFrameProcessingSurface:Landroid/view/Surface;

.field private mFullVideoPendingStub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

.field private mLastRepeatingResult:Landroid/hardware/camera2/TotalCaptureResult;

.field private final mManager:Landroid/hardware/camera2/CameraManager;

.field private final mMapper:Lcom/otaliastudios/cameraview/engine/mappers/Camera2Mapper;

.field private mMeterAction:Lcom/otaliastudios/cameraview/engine/meter/MeterAction;

.field private final mPictureCaptureStopsPreview:Z

.field private mPictureReader:Landroid/media/ImageReader;

.field private mPreviewStreamSurface:Landroid/view/Surface;

.field private mRepeatingRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private final mRepeatingRequestCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mSession:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;)V
    .locals 1

    .line 120
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;)V

    .line 97
    invoke-static {}, Lcom/otaliastudios/cameraview/engine/mappers/Camera2Mapper;->get()Lcom/otaliastudios/cameraview/engine/mappers/Camera2Mapper;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mMapper:Lcom/otaliastudios/cameraview/engine/mappers/Camera2Mapper;

    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPictureCaptureStopsPreview:Z

    .line 116
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mActions:Ljava/util/List;

    .line 267
    new-instance p1, Lcom/otaliastudios/cameraview/engine/Camera2Engine$1;

    invoke-direct {p1, p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$1;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mRepeatingRequestCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 121
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getCallback()Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    move-result-object p1

    invoke-interface {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "camera"

    .line 122
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mManager:Landroid/hardware/camera2/CameraManager;

    .line 123
    new-instance p1, Lcom/otaliastudios/cameraview/engine/action/LogAction;

    invoke-direct {p1}, Lcom/otaliastudios/cameraview/engine/action/LogAction;-><init>()V

    invoke-virtual {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/LogAction;->start(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    return-void
.end method

.method static synthetic access$000(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)Ljava/util/List;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mActions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/otaliastudios/cameraview/VideoResult$Stub;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->doTakeVideo(Lcom/otaliastudios/cameraview/VideoResult$Stub;)V

    return-void
.end method

.method static synthetic access$102(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mLastRepeatingResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->unlockAndResetMetering()V

    return-void
.end method

.method static synthetic access$1200(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->maybeRestorePreviewTemplateAfterVideo()V

    return-void
.end method

.method static synthetic access$1300(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mRepeatingRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/otaliastudios/cameraview/metering/MeteringRegions;)Lcom/otaliastudios/cameraview/engine/meter/MeterAction;
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->createMeterAction(Lcom/otaliastudios/cameraview/metering/MeteringRegions;)Lcom/otaliastudios/cameraview/engine/meter/MeterAction;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$202(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCamera:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$302(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object p1
.end method

.method static synthetic access$400(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)Landroid/hardware/camera2/CameraManager;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mManager:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/otaliastudios/cameraview/engine/Camera2Engine;I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->createRepeatingRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Landroid/hardware/camera2/CameraAccessException;)Lcom/otaliastudios/cameraview/CameraException;
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->createCameraException(Landroid/hardware/camera2/CameraAccessException;)Lcom/otaliastudios/cameraview/CameraException;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/otaliastudios/cameraview/engine/Camera2Engine;I)Lcom/otaliastudios/cameraview/CameraException;
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->createCameraException(I)Lcom/otaliastudios/cameraview/CameraException;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static synthetic access$902(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method private varargs addRepeatingRequestBuilderSurfaces([Landroid/view/Surface;)V
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mRepeatingRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreviewStreamSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 210
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFrameProcessingSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mRepeatingRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 213
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    .line 217
    iget-object v3, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mRepeatingRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Should not add a null surface."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method private applyAllParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 5

    .line 997
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "applyAllParameters:"

    aput-object v3, v1, v2

    const-string v2, "called for tag"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 998
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 999
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyDefaultFocus(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1000
    sget-object v0, Lcom/otaliastudios/cameraview/controls/Flash;->OFF:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/otaliastudios/cameraview/controls/Flash;)Z

    const/4 v0, 0x0

    .line 1001
    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyLocation(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/location/Location;)Z

    .line 1002
    sget-object v0, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->AUTO:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyWhiteBalance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/otaliastudios/cameraview/controls/WhiteBalance;)Z

    .line 1003
    sget-object v0, Lcom/otaliastudios/cameraview/controls/Hdr;->OFF:Lcom/otaliastudios/cameraview/controls/Hdr;

    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyHdr(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/otaliastudios/cameraview/controls/Hdr;)Z

    const/4 v0, 0x0

    .line 1004
    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyZoom(Landroid/hardware/camera2/CaptureRequest$Builder;F)Z

    .line 1005
    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyExposureCorrection(Landroid/hardware/camera2/CaptureRequest$Builder;F)Z

    .line 1006
    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyPreviewFrameRate(Landroid/hardware/camera2/CaptureRequest$Builder;F)Z

    if-eqz p2, :cond_0

    .line 1012
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1013
    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    .line 1012
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1014
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1015
    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    .line 1014
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1016
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1017
    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    .line 1016
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1018
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1019
    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p2

    .line 1018
    invoke-virtual {p1, v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private applyRepeatingRequestBuilder(ZI)V
    .locals 4

    .line 247
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->PREVIEW:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->isChangingState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    .line 249
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mRepeatingRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mRepeatingRequestCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 257
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "applyRepeatingRequestBuilder: session is invalid!"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 p2, 0x2

    const-string v2, "checkStarted:"

    aput-object v2, v1, p2

    .line 258
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    const/4 p1, 0x4

    const-string v2, "currentThread:"

    aput-object v2, v1, p1

    const/4 p1, 0x5

    .line 259
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    const/4 p1, 0x6

    const-string v2, "state:"

    aput-object v2, v1, p1

    const/4 p1, 0x7

    .line 260
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object v2

    aput-object v2, v1, p1

    const/16 p1, 0x8

    const-string v2, "targetState:"

    aput-object v2, v1, p1

    const/16 p1, 0x9

    .line 261
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getTargetState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object v2

    aput-object v2, v1, p1

    .line 257
    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 262
    new-instance p1, Lcom/otaliastudios/cameraview/CameraException;

    invoke-direct {p1, p2}, Lcom/otaliastudios/cameraview/CameraException;-><init>(I)V

    throw p1

    :catch_1
    move-exception p1

    .line 252
    new-instance v0, Lcom/otaliastudios/cameraview/CameraException;

    invoke-direct {v0, p1, p2}, Lcom/otaliastudios/cameraview/CameraException;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method private createCameraException(I)Lcom/otaliastudios/cameraview/CameraException;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    .line 184
    :cond_0
    new-instance p1, Lcom/otaliastudios/cameraview/CameraException;

    invoke-direct {p1, v0}, Lcom/otaliastudios/cameraview/CameraException;-><init>(I)V

    return-object p1
.end method

.method private createCameraException(Landroid/hardware/camera2/CameraAccessException;)Lcom/otaliastudios/cameraview/CameraException;
    .locals 4

    .line 146
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 163
    :cond_1
    :goto_0
    new-instance v0, Lcom/otaliastudios/cameraview/CameraException;

    invoke-direct {v0, p1, v1}, Lcom/otaliastudios/cameraview/CameraException;-><init>(Ljava/lang/Throwable;I)V

    return-object v0
.end method

.method private createMeterAction(Lcom/otaliastudios/cameraview/metering/MeteringRegions;)Lcom/otaliastudios/cameraview/engine/meter/MeterAction;
    .locals 2

    .line 1570
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mMeterAction:Lcom/otaliastudios/cameraview/engine/meter/MeterAction;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->abort(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    .line 1577
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mRepeatingRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyFocusForMetering(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1578
    new-instance v0, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, p0, p1, v1}, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;Lcom/otaliastudios/cameraview/metering/MeteringRegions;Z)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mMeterAction:Lcom/otaliastudios/cameraview/engine/meter/MeterAction;

    return-object v0
.end method

.method private createRepeatingRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mRepeatingRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 198
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCamera:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mRepeatingRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 199
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 200
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mRepeatingRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyAllParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 201
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mRepeatingRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p1
.end method

.method private doTakeVideo(Lcom/otaliastudios/cameraview/VideoResult$Stub;)V
    .locals 6

    .line 889
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mVideoRecorder:Lcom/otaliastudios/cameraview/video/VideoRecorder;

    instance-of v0, v0, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mVideoRecorder:Lcom/otaliastudios/cameraview/video/VideoRecorder;

    check-cast v0, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 895
    :try_start_0
    invoke-direct {p0, v2}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->createRepeatingRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/view/Surface;

    const/4 v5, 0x0

    .line 896
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-direct {p0, v4}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->addRepeatingRequestBuilderSurfaces([Landroid/view/Surface;)V

    .line 897
    invoke-direct {p0, v3, v2}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyRepeatingRequestBuilder(ZI)V

    .line 898
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mVideoRecorder:Lcom/otaliastudios/cameraview/video/VideoRecorder;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/video/VideoRecorder;->start(Lcom/otaliastudios/cameraview/VideoResult$Stub;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/otaliastudios/cameraview/CameraException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 903
    invoke-virtual {p0, v1, p1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->onVideoResult(Lcom/otaliastudios/cameraview/VideoResult$Stub;Ljava/lang/Exception;)V

    .line 904
    throw p1

    :catch_1
    move-exception p1

    .line 900
    invoke-virtual {p0, v1, p1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->onVideoResult(Lcom/otaliastudios/cameraview/VideoResult$Stub;Ljava/lang/Exception;)V

    .line 901
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->createCameraException(Landroid/hardware/camera2/CameraAccessException;)Lcom/otaliastudios/cameraview/CameraException;

    move-result-object p1

    throw p1

    .line 890
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doTakeVideo called, but video recorder is not a Full2VideoRecorder! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mVideoRecorder:Lcom/otaliastudios/cameraview/video/VideoRecorder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getZoomRect(FF)Landroid/graphics/Rect;
    .locals 4

    .line 1286
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->readCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1288
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p2

    float-to-int v1, v1

    .line 1289
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p2

    float-to-int v2, v2

    .line 1290
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v1

    .line 1291
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v1, v2

    int-to-float v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr p1, v3

    mul-float v2, v2, p1

    sub-float/2addr p2, v3

    div-float/2addr v2, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v1, v1

    mul-float v1, v1, p1

    div-float/2addr v1, p2

    div-float/2addr v1, v3

    float-to-int p1, v1

    .line 1297
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, v2

    .line 1298
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-direct {p2, v2, p1, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method private maybeRestorePreviewTemplateAfterVideo()V
    .locals 2

    .line 979
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mRepeatingRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 982
    :try_start_0
    invoke-direct {p0, v1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->createRepeatingRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/Surface;

    .line 983
    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->addRepeatingRequestBuilderSurfaces([Landroid/view/Surface;)V

    .line 984
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyRepeatingRequestBuilder()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 986
    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->createCameraException(Landroid/hardware/camera2/CameraAccessException;)Lcom/otaliastudios/cameraview/CameraException;

    move-result-object v0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private readCharacteristic(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 139
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p1

    :goto_0
    return-object p3
.end method

.method private removeRepeatingRequestBuilderSurfaces()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mRepeatingRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreviewStreamSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 226
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFrameProcessingSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 227
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mRepeatingRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private sortRanges([Landroid/util/Range;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1401
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getPreviewFrameRateExact()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreviewFrameRate:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1402
    new-instance v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$18;

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$18;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0

    .line 1410
    :cond_0
    new-instance v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$19;

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$19;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :goto_0
    return-void
.end method

.method private unlockAndResetMetering()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    .line 1585
    new-instance v1, Lcom/otaliastudios/cameraview/engine/Camera2Engine$24;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$24;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/otaliastudios/cameraview/engine/meter/MeterResetAction;

    invoke-direct {v1}, Lcom/otaliastudios/cameraview/engine/meter/MeterResetAction;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/action/Actions;->sequence([Lcom/otaliastudios/cameraview/engine/action/BaseAction;)Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object v0

    .line 1601
    invoke-virtual {v0, p0}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->start(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    return-void
.end method


# virtual methods
.method public addAction(Lcom/otaliastudios/cameraview/engine/action/Action;)V
    .locals 1

    .line 1610
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1611
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public applyBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;)V
    .locals 0

    .line 1644
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyRepeatingRequestBuilder()V

    return-void
.end method

.method public applyBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1651
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object p1

    sget-object v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->PREVIEW:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->isChangingState()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1652
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mRepeatingRequestCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    :cond_0
    return-void
.end method

.method protected applyDefaultFocus(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6

    .line 1026
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v1, 0x0

    .line 1048
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v1, [I

    .line 1026
    invoke-virtual {p0, v0, v3}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->readCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1028
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1029
    array-length v4, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1030
    :cond_0
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getMode()Lcom/otaliastudios/cameraview/controls/Mode;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/controls/Mode;->VIDEO:Lcom/otaliastudios/cameraview/controls/Mode;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 1031
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1032
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1033
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1032
    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x4

    .line 1037
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1038
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1039
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1038
    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 1043
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1044
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    .line 1048
    :cond_3
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1049
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1050
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method protected applyExposureCorrection(Landroid/hardware/camera2/CaptureRequest$Builder;F)Z
    .locals 2

    .line 1330
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/CameraOptions;->isExposureCorrectionSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1331
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Landroid/util/Rational;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {p0, p2, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->readCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Rational;

    .line 1334
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mExposureCorrectionValue:F

    .line 1335
    invoke-virtual {p2}, Landroid/util/Rational;->floatValue()F

    move-result p2

    mul-float v0, v0, p2

    .line 1334
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 1336
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v1

    .line 1339
    :cond_0
    iput p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mExposureCorrectionValue:F

    const/4 p1, 0x0

    return p1
.end method

.method protected applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/otaliastudios/cameraview/controls/Flash;)Z
    .locals 6

    .line 1143
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFlash:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraOptions;->supports(Lcom/otaliastudios/cameraview/controls/Control;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1144
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-array v2, v1, [I

    invoke-virtual {p0, v0, v2}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->readCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mMapper:Lcom/otaliastudios/cameraview/engine/mappers/Camera2Mapper;

    iget-object v3, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFlash:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/engine/mappers/Camera2Mapper;->mapFlash(Lcom/otaliastudios/cameraview/controls/Flash;)Ljava/util/List;

    move-result-object v0

    .line 1150
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1151
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1152
    sget-object p2, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v4, "applyFlash: setting CONTROL_AE_MODE to"

    aput-object v4, v2, v1

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-virtual {p2, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 1153
    sget-object p2, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "applyFlash: setting FLASH_MODE to"

    aput-object v2, v0, v1

    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v1, v0, v5

    invoke-virtual {p2, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 1154
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1155
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v5

    .line 1160
    :cond_2
    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFlash:Lcom/otaliastudios/cameraview/controls/Flash;

    return v1
.end method

.method protected applyFocusForMetering(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 5

    .line 1066
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-virtual {p0, v0, v2}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->readCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1068
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1069
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1070
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1071
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    .line 1074
    :cond_1
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getMode()Lcom/otaliastudios/cameraview/controls/Mode;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/controls/Mode;->VIDEO:Lcom/otaliastudios/cameraview/controls/Mode;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 1075
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1076
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1077
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1076
    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v0, 0x4

    .line 1081
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1082
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1083
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1082
    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method protected applyHdr(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/otaliastudios/cameraview/controls/Hdr;)Z
    .locals 2

    .line 1236
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mHdr:Lcom/otaliastudios/cameraview/controls/Hdr;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraOptions;->supports(Lcom/otaliastudios/cameraview/controls/Control;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1237
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mMapper:Lcom/otaliastudios/cameraview/engine/mappers/Camera2Mapper;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mHdr:Lcom/otaliastudios/cameraview/controls/Hdr;

    invoke-virtual {p2, v0}, Lcom/otaliastudios/cameraview/engine/mappers/Camera2Mapper;->mapHdr(Lcom/otaliastudios/cameraview/controls/Hdr;)I

    move-result p2

    .line 1238
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 1241
    :cond_0
    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mHdr:Lcom/otaliastudios/cameraview/controls/Hdr;

    const/4 p1, 0x0

    return p1
.end method

.method protected applyLocation(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/location/Location;)Z
    .locals 1

    .line 1183
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mLocation:Landroid/location/Location;

    if-eqz p2, :cond_0

    .line 1184
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mLocation:Landroid/location/Location;

    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected applyPreviewFrameRate(Landroid/hardware/camera2/CaptureRequest$Builder;F)Z
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/util/Range;

    .line 1371
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2, v1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->readCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Range;

    .line 1374
    invoke-direct {p0, v1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->sortRanges([Landroid/util/Range;)V

    .line 1375
    iget v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreviewFrameRate:F

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    .line 1377
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    const/16 v6, 0x1e

    .line 1378
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x18

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1379
    :cond_1
    :goto_1
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p2, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v3

    .line 1385
    :cond_2
    iget v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreviewFrameRate:F

    iget-object v4, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    .line 1386
    invoke-virtual {v4}, Lcom/otaliastudios/cameraview/CameraOptions;->getPreviewFrameRateMaxValue()F

    move-result v4

    .line 1385
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreviewFrameRate:F

    .line 1387
    iget v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreviewFrameRate:F

    iget-object v4, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    .line 1388
    invoke-virtual {v4}, Lcom/otaliastudios/cameraview/CameraOptions;->getPreviewFrameRateMinValue()F

    move-result v4

    .line 1387
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreviewFrameRate:F

    .line 1389
    array-length v2, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 1390
    iget v6, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreviewFrameRate:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1391
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p2, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1396
    :cond_4
    iput p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreviewFrameRate:F

    return v0
.end method

.method protected applyRepeatingRequestBuilder()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 242
    invoke-direct {p0, v0, v1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyRepeatingRequestBuilder(ZI)V

    return-void
.end method

.method protected applyWhiteBalance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/otaliastudios/cameraview/controls/WhiteBalance;)Z
    .locals 2

    .line 1209
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mWhiteBalance:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraOptions;->supports(Lcom/otaliastudios/cameraview/controls/Control;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1210
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mMapper:Lcom/otaliastudios/cameraview/engine/mappers/Camera2Mapper;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mWhiteBalance:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    invoke-virtual {p2, v0}, Lcom/otaliastudios/cameraview/engine/mappers/Camera2Mapper;->mapWhiteBalance(Lcom/otaliastudios/cameraview/controls/WhiteBalance;)I

    move-result p2

    .line 1211
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 1214
    :cond_0
    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mWhiteBalance:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    const/4 p1, 0x0

    return p1
.end method

.method protected applyZoom(Landroid/hardware/camera2/CaptureRequest$Builder;F)Z
    .locals 3

    .line 1270
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/CameraOptions;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1272
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 1271
    invoke-virtual {p0, p2, v1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->readCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 1275
    iget v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mZoomValue:F

    sub-float v2, p2, v0

    mul-float v1, v1, v2

    add-float/2addr v1, v0

    .line 1276
    invoke-direct {p0, v1, p2}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getZoomRect(FF)Landroid/graphics/Rect;

    move-result-object p2

    .line 1277
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 1280
    :cond_0
    iput p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mZoomValue:F

    const/4 p1, 0x0

    return p1
.end method

.method protected final collectCameraInfo(Lcom/otaliastudios/cameraview/controls/Facing;)Z
    .locals 10

    .line 361
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mMapper:Lcom/otaliastudios/cameraview/engine/mappers/Camera2Mapper;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/mappers/Camera2Mapper;->mapFacing(Lcom/otaliastudios/cameraview/controls/Facing;)I

    move-result v0

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 370
    sget-object v2, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "collectCameraInfo"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Facing:"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    const-string v7, "Internal:"

    aput-object v7, v3, v4

    const/4 v4, 0x4

    .line 371
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x5

    const-string v7, "Cameras:"

    aput-object v7, v3, v4

    const/4 v4, 0x6

    array-length v7, v1

    .line 372
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    .line 370
    invoke-virtual {v2, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 373
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 375
    :try_start_1
    iget-object v7, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v7, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v7

    .line 376
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v9, -0x63

    .line 377
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 376
    invoke-direct {p0, v7, v8, v9}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->readCharacteristic(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v0, v8, :cond_0

    .line 378
    iput-object v4, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCameraId:Ljava/lang/String;

    .line 379
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 380
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 379
    invoke-direct {p0, v7, v4, v8}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->readCharacteristic(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 381
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v7

    invoke-virtual {v7, p1, v4}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->setSensorOffset(Lcom/otaliastudios/cameraview/controls/Facing;I)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    return v6

    :catch_0
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v5

    :catch_1
    move-exception p1

    .line 368
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->createCameraException(Landroid/hardware/camera2/CameraAccessException;)Lcom/otaliastudios/cameraview/CameraException;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 1635
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mRepeatingRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p1
.end method

.method public getCharacteristics(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 0

    .line 1623
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object p1
.end method

.method protected getFrameProcessingAvailableSizes()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/otaliastudios/cameraview/size/Size;",
            ">;"
        }
    .end annotation

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 334
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 335
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v0, :cond_2

    .line 339
    iget v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFrameProcessingFormat:I

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    .line 340
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 341
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 342
    new-instance v5, Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v5, v6, v4}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    .line 343
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    .line 337
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "StreamConfigurationMap is null. Should not happen."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 347
    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->createCameraException(Landroid/hardware/camera2/CameraAccessException;)Lcom/otaliastudios/cameraview/CameraException;

    move-result-object v0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getLastResult(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0

    .line 1629
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mLastRepeatingResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p1
.end method

.method protected getPreviewStreamAvailableSizes()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/otaliastudios/cameraview/size/Size;",
            ">;"
        }
    .end annotation

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 309
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 310
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v0, :cond_2

    .line 316
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->getOutputClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    .line 317
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 318
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 319
    new-instance v5, Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v5, v6, v4}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    .line 320
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    .line 312
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "StreamConfigurationMap is null. Should not happen."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 324
    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->createCameraException(Landroid/hardware/camera2/CameraAccessException;)Lcom/otaliastudios/cameraview/CameraException;

    move-result-object v0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method protected instantiateFrameManager(I)Lcom/otaliastudios/cameraview/frame/FrameManager;
    .locals 1

    .line 1442
    new-instance v0, Lcom/otaliastudios/cameraview/frame/ImageFrameManager;

    invoke-direct {v0, p1}, Lcom/otaliastudios/cameraview/frame/ImageFrameManager;-><init>(I)V

    return-object v0
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 9

    .line 1448
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "onImageAvailable:"

    aput-object v4, v2, v3

    const-string v5, "trying to acquire Image."

    const/4 v6, 0x1

    aput-object v5, v2, v6

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->v([Ljava/lang/Object;)Ljava/lang/String;

    .line 1451
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    .line 1454
    sget-object p1, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v4, v0, v3

    const-string v1, "failed to acquire Image!"

    aput-object v1, v0, v6

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    .line 1455
    :cond_0
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getState()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    move-result-object v0

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->PREVIEW:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->isChangingState()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1458
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getFrameManager()Lcom/otaliastudios/cameraview/frame/FrameManager;

    move-result-object v0

    .line 1459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1458
    invoke-virtual {v0, p1, v7, v8}, Lcom/otaliastudios/cameraview/frame/FrameManager;->getFrame(Ljava/lang/Object;J)Lcom/otaliastudios/cameraview/frame/Frame;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1461
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    const-string v2, "Image acquired, dispatching."

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->v([Ljava/lang/Object;)Ljava/lang/String;

    .line 1462
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getCallback()Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->dispatchFrame(Lcom/otaliastudios/cameraview/frame/Frame;)V

    goto :goto_1

    .line 1464
    :cond_1
    sget-object p1, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v4, v0, v3

    const-string v1, "Image acquired, but no free frames. DROPPING."

    aput-object v1, v0, v6

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    .line 1467
    :cond_2
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    const-string v2, "Image acquired in wrong state. Closing it now."

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 1468
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :goto_1
    return-void
.end method

.method public onPictureResult(Lcom/otaliastudios/cameraview/PictureResult$Stub;Ljava/lang/Exception;)V
    .locals 2

    .line 847
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPictureRecorder:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

    instance-of v0, v0, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;

    .line 848
    invoke-super {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->onPictureResult(Lcom/otaliastudios/cameraview/PictureResult$Stub;Ljava/lang/Exception;)V

    if-eqz v0, :cond_0

    .line 855
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getPictureMetering()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    .line 856
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getPictureSnapshotMetering()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 858
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object p1

    sget-object p2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->PREVIEW:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$9;

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$9;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)V

    const-string v1, "reset metering after picture"

    invoke-virtual {p1, v1, p2, v0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    :cond_3
    return-void
.end method

.method protected onPreviewStreamSizeChanged()V
    .locals 4

    .line 354
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onPreviewStreamSizeChanged:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Calling restartBind()."

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 355
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->restartBind()Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method protected onStartBind()Lcom/google/android/gms/tasks/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 467
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "onStartBind:"

    aput-object v4, v2, v3

    const-string v3, "Started"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 468
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 477
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->computeCaptureSize()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v2

    iput-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCaptureSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 478
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->computePreviewStreamSize()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v2

    iput-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreviewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 483
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 487
    iget-object v3, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->getOutputClass()Ljava/lang/Class;

    move-result-object v3

    .line 488
    iget-object v5, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {v5}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->getOutput()Ljava/lang/Object;

    move-result-object v5

    .line 489
    const-class v6, Landroid/view/SurfaceHolder;

    if-ne v3, v6, :cond_0

    .line 492
    :try_start_0
    new-instance v3, Lcom/otaliastudios/cameraview/engine/Camera2Engine$3;

    invoke-direct {v3, p0, v5}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$3;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    check-cast v5, Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    iput-object v3, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreviewStreamSurface:Landroid/view/Surface;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 502
    :goto_0
    new-instance v1, Lcom/otaliastudios/cameraview/CameraException;

    invoke-direct {v1, v0, v4}, Lcom/otaliastudios/cameraview/CameraException;-><init>(Ljava/lang/Throwable;I)V

    throw v1

    .line 505
    :cond_0
    const-class v6, Landroid/graphics/SurfaceTexture;

    if-ne v3, v6, :cond_6

    .line 506
    check-cast v5, Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreviewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 507
    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v3

    iget-object v6, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreviewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 508
    invoke-virtual {v6}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v6

    .line 506
    invoke-virtual {v5, v3, v6}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 509
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v5}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v3, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreviewStreamSurface:Landroid/view/Surface;

    .line 513
    :goto_1
    iget-object v3, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreviewStreamSurface:Landroid/view/Surface;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getMode()Lcom/otaliastudios/cameraview/controls/Mode;

    move-result-object v3

    sget-object v5, Lcom/otaliastudios/cameraview/controls/Mode;->VIDEO:Lcom/otaliastudios/cameraview/controls/Mode;

    if-ne v3, v5, :cond_1

    .line 517
    iget-object v3, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFullVideoPendingStub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    if-eqz v3, :cond_1

    .line 518
    new-instance v3, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;

    iget-object v5, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCameraId:Ljava/lang/String;

    invoke-direct {v3, p0, v5}, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Ljava/lang/String;)V

    .line 520
    :try_start_1
    iget-object v5, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFullVideoPendingStub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    invoke-virtual {v3, v5}, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;->createInputSurface(Lcom/otaliastudios/cameraview/VideoResult$Stub;)Landroid/view/Surface;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/otaliastudios/cameraview/video/Full2VideoRecorder$PrepareException; {:try_start_1 .. :try_end_1} :catch_2

    .line 524
    iput-object v3, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mVideoRecorder:Lcom/otaliastudios/cameraview/video/VideoRecorder;

    goto :goto_2

    :catch_2
    move-exception v0

    .line 522
    new-instance v1, Lcom/otaliastudios/cameraview/CameraException;

    invoke-direct {v1, v0, v4}, Lcom/otaliastudios/cameraview/CameraException;-><init>(Ljava/lang/Throwable;I)V

    throw v1

    .line 530
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getMode()Lcom/otaliastudios/cameraview/controls/Mode;

    move-result-object v3

    sget-object v5, Lcom/otaliastudios/cameraview/controls/Mode;->PICTURE:Lcom/otaliastudios/cameraview/controls/Mode;

    if-ne v3, v5, :cond_4

    .line 532
    sget-object v3, Lcom/otaliastudios/cameraview/engine/Camera2Engine$25;->$SwitchMap$com$otaliastudios$cameraview$controls$PictureFormat:[I

    iget-object v5, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPictureFormat:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    invoke-virtual {v5}, Lcom/otaliastudios/cameraview/controls/PictureFormat;->ordinal()I

    move-result v5

    aget v3, v3, v5

    if-eq v3, v4, :cond_3

    if-ne v3, v1, :cond_2

    const/16 v3, 0x20

    goto :goto_3

    .line 535
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPictureFormat:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/16 v3, 0x100

    .line 537
    :goto_3
    iget-object v5, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCaptureSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 538
    invoke-virtual {v5}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCaptureSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 539
    invoke-virtual {v6}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v6

    .line 537
    invoke-static {v5, v6, v3, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPictureReader:Landroid/media/ImageReader;

    .line 541
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_4
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->hasFrameProcessors()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 546
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->computeFrameProcessingSize()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFrameProcessingSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 555
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFrameProcessingSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 556
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v1

    iget-object v5, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFrameProcessingSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 557
    invoke-virtual {v5}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFrameProcessingFormat:I

    .line 559
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getFrameProcessingPoolSize()I

    move-result v7

    add-int/2addr v7, v4

    .line 555
    invoke-static {v1, v5, v6, v7}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFrameProcessingReader:Landroid/media/ImageReader;

    .line 560
    invoke-virtual {v1, p0, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 562
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFrameProcessingReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFrameProcessingSurface:Landroid/view/Surface;

    .line 563
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 565
    :cond_5
    iput-object v3, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFrameProcessingReader:Landroid/media/ImageReader;

    .line 566
    iput-object v3, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFrameProcessingSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 567
    iput-object v3, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFrameProcessingSurface:Landroid/view/Surface;

    .line 572
    :goto_4
    :try_start_2
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCamera:Landroid/hardware/camera2/CameraDevice;

    new-instance v4, Lcom/otaliastudios/cameraview/engine/Camera2Engine$4;

    invoke-direct {v4, p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$4;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v1, v2, v4, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_3

    .line 596
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :catch_3
    move-exception v0

    .line 594
    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->createCameraException(Landroid/hardware/camera2/CameraAccessException;)Lcom/otaliastudios/cameraview/CameraException;

    move-result-object v0

    throw v0

    .line 511
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown CameraPreview output class."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onStartEngine()Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/otaliastudios/cameraview/CameraOptions;",
            ">;"
        }
    .end annotation

    .line 401
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCameraId:Ljava/lang/String;

    new-instance v3, Lcom/otaliastudios/cameraview/engine/Camera2Engine$2;

    invoke-direct {v3, p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$2;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 458
    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->createCameraException(Landroid/hardware/camera2/CameraAccessException;)Lcom/otaliastudios/cameraview/CameraException;

    move-result-object v0

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

    .line 603
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "onStartPreview:"

    aput-object v4, v2, v3

    const-string v5, "Dispatching onCameraPreviewStreamSizeChanged."

    const/4 v6, 0x1

    aput-object v5, v2, v6

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 604
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getCallback()Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->onCameraPreviewStreamSizeChanged()V

    .line 606
    sget-object v0, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getPreviewStreamSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 610
    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v0

    invoke-virtual {v2, v5, v0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->setStreamSize(II)V

    .line 611
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v2

    sget-object v5, Lcom/otaliastudios/cameraview/engine/offset/Reference;->BASE:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v7, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v8, Lcom/otaliastudios/cameraview/engine/offset/Axis;->ABSOLUTE:Lcom/otaliastudios/cameraview/engine/offset/Axis;

    invoke-virtual {v2, v5, v7, v8}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->offset(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Axis;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->setDrawRotation(I)V

    .line 612
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->hasFrameProcessors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getFrameManager()Lcom/otaliastudios/cameraview/frame/FrameManager;

    move-result-object v0

    iget v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFrameProcessingFormat:I

    iget-object v5, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFrameProcessingSize:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v7

    invoke-virtual {v0, v2, v5, v7}, Lcom/otaliastudios/cameraview/frame/FrameManager;->setUp(ILcom/otaliastudios/cameraview/size/Size;Lcom/otaliastudios/cameraview/engine/offset/Angles;)V

    .line 616
    :cond_0
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v4, v2, v3

    const-string v5, "Starting preview."

    aput-object v5, v2, v6

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    new-array v0, v3, [Landroid/view/Surface;

    .line 617
    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->addRepeatingRequestBuilderSurfaces([Landroid/view/Surface;)V

    .line 618
    invoke-direct {p0, v3, v1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyRepeatingRequestBuilder(ZI)V

    .line 620
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    const-string v2, "Started preview."

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 623
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFullVideoPendingStub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 627
    iput-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFullVideoPendingStub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    .line 628
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->PREVIEW:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v3, Lcom/otaliastudios/cameraview/engine/Camera2Engine$5;

    invoke-direct {v3, p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$5;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/otaliastudios/cameraview/VideoResult$Stub;)V

    const-string v0, "do take video"

    invoke-virtual {v1, v0, v2, v3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    .line 638
    :cond_1
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 639
    new-instance v1, Lcom/otaliastudios/cameraview/engine/Camera2Engine$6;

    invoke-direct {v1, p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$6;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 648
    invoke-virtual {v1, p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$6;->start(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    .line 649
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 608
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "previewStreamSize should not be null at this point."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onStopBind()Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 701
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "onStopBind:"

    aput-object v4, v2, v3

    const-string v5, "About to clean up."

    const/4 v6, 0x1

    aput-object v5, v2, v6

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 702
    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFrameProcessingSurface:Landroid/view/Surface;

    .line 703
    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreviewStreamSurface:Landroid/view/Surface;

    .line 704
    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreviewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 705
    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCaptureSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 706
    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFrameProcessingSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 707
    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFrameProcessingReader:Landroid/media/ImageReader;

    if-eqz v2, :cond_0

    .line 710
    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    .line 711
    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFrameProcessingReader:Landroid/media/ImageReader;

    .line 713
    :cond_0
    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPictureReader:Landroid/media/ImageReader;

    if-eqz v2, :cond_1

    .line 714
    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    .line 715
    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPictureReader:Landroid/media/ImageReader;

    .line 717
    :cond_1
    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 718
    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 719
    sget-object v2, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    const-string v3, "Returning."

    aput-object v3, v1, v6

    invoke-virtual {v2, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 720
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method protected onStopEngine()Lcom/google/android/gms/tasks/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "Clean up."

    const-string v1, "onStopEngine:"

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 728
    :try_start_0
    sget-object v6, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v1, v7, v5

    aput-object v0, v7, v4

    const-string v8, "Releasing camera."

    aput-object v8, v7, v3

    invoke-virtual {v6, v7}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 741
    iget-object v6, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCamera:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v6}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 742
    sget-object v6, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v1, v7, v5

    aput-object v0, v7, v4

    const-string v8, "Released camera."

    aput-object v8, v7, v3

    invoke-virtual {v6, v7}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 744
    sget-object v7, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v5

    aput-object v0, v8, v4

    const-string v0, "Exception while releasing camera."

    aput-object v0, v8, v3

    aput-object v6, v8, v2

    invoke-virtual {v7, v8}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    :goto_0
    const/4 v0, 0x0

    .line 746
    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCamera:Landroid/hardware/camera2/CameraDevice;

    .line 751
    sget-object v2, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v5

    const-string v7, "Aborting actions."

    aput-object v7, v6, v4

    invoke-virtual {v2, v6}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 752
    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/otaliastudios/cameraview/engine/action/Action;

    .line 753
    invoke-interface {v6, p0}, Lcom/otaliastudios/cameraview/engine/action/Action;->abort(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    goto :goto_1

    .line 756
    :cond_0
    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 757
    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    .line 758
    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mVideoRecorder:Lcom/otaliastudios/cameraview/video/VideoRecorder;

    .line 759
    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mRepeatingRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 760
    sget-object v2, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    const-string v1, "Returning."

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 761
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method protected onStopPreview()Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 660
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "onStopPreview:"

    aput-object v4, v2, v3

    const-string v5, "Started."

    const/4 v6, 0x1

    aput-object v5, v2, v6

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 661
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mVideoRecorder:Lcom/otaliastudios/cameraview/video/VideoRecorder;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mVideoRecorder:Lcom/otaliastudios/cameraview/video/VideoRecorder;

    invoke-virtual {v0, v6}, Lcom/otaliastudios/cameraview/video/VideoRecorder;->stop(Z)V

    .line 665
    iput-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mVideoRecorder:Lcom/otaliastudios/cameraview/video/VideoRecorder;

    .line 667
    :cond_0
    iput-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPictureRecorder:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

    .line 668
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->hasFrameProcessors()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getFrameManager()Lcom/otaliastudios/cameraview/frame/FrameManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/frame/FrameManager;->release()V

    .line 691
    :cond_1
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->removeRepeatingRequestBuilderSurfaces()V

    .line 692
    iput-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mLastRepeatingResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 693
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    const-string v3, "Returning."

    aput-object v3, v1, v6

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 694
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method protected onTakePicture(Lcom/otaliastudios/cameraview/PictureResult$Stub;Z)V
    .locals 5

    const/4 v0, 0x1

    const-string v1, "onTakePicture:"

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p2, :cond_0

    .line 806
    sget-object p2, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v1, "doMetering is true. Delaying."

    aput-object v1, v3, v0

    invoke-virtual {p2, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    const-wide/16 v0, 0x9c4

    const/4 p2, 0x0

    .line 807
    invoke-direct {p0, p2}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->createMeterAction(Lcom/otaliastudios/cameraview/metering/MeteringRegions;)Lcom/otaliastudios/cameraview/engine/meter/MeterAction;

    move-result-object p2

    invoke-static {v0, v1, p2}, Lcom/otaliastudios/cameraview/engine/action/Actions;->timeout(JLcom/otaliastudios/cameraview/engine/action/BaseAction;)Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object p2

    .line 808
    new-instance v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$8;

    invoke-direct {v0, p0, p1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$8;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/otaliastudios/cameraview/PictureResult$Stub;)V

    invoke-interface {p2, v0}, Lcom/otaliastudios/cameraview/engine/action/Action;->addCallback(Lcom/otaliastudios/cameraview/engine/action/ActionCallback;)V

    .line 817
    invoke-interface {p2, p0}, Lcom/otaliastudios/cameraview/engine/action/Action;->start(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    goto :goto_0

    .line 819
    :cond_0
    sget-object p2, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const-string v1, "doMetering is false. Performing."

    aput-object v1, v4, v0

    invoke-virtual {p2, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 820
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object p2

    sget-object v0, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Axis;->RELATIVE_TO_SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Axis;

    invoke-virtual {p2, v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->offset(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Axis;)I

    move-result p2

    iput p2, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->rotation:I

    .line 822
    sget-object p2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {p0, p2}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getPictureSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object p2

    iput-object p2, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    .line 833
    :try_start_0
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCamera:Landroid/hardware/camera2/CameraDevice;

    .line 834
    invoke-virtual {p2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p2

    .line 835
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mRepeatingRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p2, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->applyAllParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 836
    new-instance v0, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPictureReader:Landroid/media/ImageReader;

    invoke-direct {v0, p1, p0, p2, v1}, Lcom/otaliastudios/cameraview/picture/Full2PictureRecorder;-><init>(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/engine/Camera2Engine;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/media/ImageReader;)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPictureRecorder:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

    .line 838
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPictureRecorder:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->take()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 840
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->createCameraException(Landroid/hardware/camera2/CameraAccessException;)Lcom/otaliastudios/cameraview/CameraException;

    move-result-object p1

    throw p1
.end method

.method protected onTakePictureSnapshot(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/size/AspectRatio;Z)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "onTakePictureSnapshot:"

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p3, :cond_0

    .line 774
    sget-object p2, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array p3, v3, [Ljava/lang/Object;

    aput-object v1, p3, v2

    const-string v1, "doMetering is true. Delaying."

    aput-object v1, p3, v0

    invoke-virtual {p2, p3}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    const-wide/16 p2, 0x9c4

    const/4 v0, 0x0

    .line 775
    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->createMeterAction(Lcom/otaliastudios/cameraview/metering/MeteringRegions;)Lcom/otaliastudios/cameraview/engine/meter/MeterAction;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/otaliastudios/cameraview/engine/action/Actions;->timeout(JLcom/otaliastudios/cameraview/engine/action/BaseAction;)Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object p2

    .line 776
    new-instance p3, Lcom/otaliastudios/cameraview/engine/Camera2Engine$7;

    invoke-direct {p3, p0, p1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$7;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/otaliastudios/cameraview/PictureResult$Stub;)V

    invoke-interface {p2, p3}, Lcom/otaliastudios/cameraview/engine/action/Action;->addCallback(Lcom/otaliastudios/cameraview/engine/action/ActionCallback;)V

    .line 785
    invoke-interface {p2, p0}, Lcom/otaliastudios/cameraview/engine/action/Action;->start(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    goto :goto_0

    .line 787
    :cond_0
    sget-object p3, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v1, "doMetering is false. Performing."

    aput-object v1, v3, v0

    invoke-virtual {p3, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 788
    iget-object p3, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    instance-of p3, p3, Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;

    if-eqz p3, :cond_1

    .line 794
    sget-object p3, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {p0, p3}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getUncroppedSnapshotSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object p3

    iput-object p3, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    .line 795
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object p3

    sget-object v0, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Axis;->ABSOLUTE:Lcom/otaliastudios/cameraview/engine/offset/Axis;

    invoke-virtual {p3, v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->offset(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Axis;)I

    move-result p3

    iput p3, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->rotation:I

    .line 796
    new-instance p3, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    check-cast v0, Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;

    invoke-direct {p3, p1, p0, v0, p2}, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;-><init>(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;Lcom/otaliastudios/cameraview/size/AspectRatio;)V

    iput-object p3, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPictureRecorder:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

    .line 798
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPictureRecorder:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->take()V

    :goto_0
    return-void

    .line 789
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "takePictureSnapshot with Camera2 is only supported with Preview.GL_SURFACE"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onTakeVideo(Lcom/otaliastudios/cameraview/VideoResult$Stub;)V
    .locals 8

    .line 876
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "onTakeVideo"

    aput-object v4, v2, v3

    const-string v5, "called."

    const/4 v6, 0x1

    aput-object v5, v2, v6

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 877
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v0

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v5, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v7, Lcom/otaliastudios/cameraview/engine/offset/Axis;->RELATIVE_TO_SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Axis;

    invoke-virtual {v0, v2, v5, v7}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->offset(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Axis;)I

    move-result v0

    iput v0, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->rotation:I

    .line 879
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v0

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v5, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v0, v2, v5}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->flip(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCaptureSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 880
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/Size;->flip()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCaptureSize:Lcom/otaliastudios/cameraview/size/Size;

    :goto_0
    iput-object v0, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    .line 883
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    const-string v2, "calling restartBind."

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 884
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFullVideoPendingStub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    .line 885
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->restartBind()Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method protected onTakeVideoSnapshot(Lcom/otaliastudios/cameraview/VideoResult$Stub;Lcom/otaliastudios/cameraview/size/AspectRatio;)V
    .locals 4

    .line 912
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    instance-of v0, v0, Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;

    if-eqz v0, :cond_1

    .line 915
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    check-cast v0, Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;

    .line 916
    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {p0, v1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getUncroppedSnapshotSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 920
    invoke-static {v1, p2}, Lcom/otaliastudios/cameraview/internal/CropHelper;->computeCrop(Lcom/otaliastudios/cameraview/size/Size;Lcom/otaliastudios/cameraview/size/AspectRatio;)Landroid/graphics/Rect;

    move-result-object p2

    .line 921
    new-instance v1, Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-direct {v1, v2, p2}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    .line 922
    iput-object v1, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    .line 923
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object p2

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v3, Lcom/otaliastudios/cameraview/engine/offset/Axis;->ABSOLUTE:Lcom/otaliastudios/cameraview/engine/offset/Axis;

    invoke-virtual {p2, v1, v2, v3}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->offset(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Axis;)I

    move-result p2

    iput p2, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->rotation:I

    .line 924
    iget p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreviewFrameRate:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoFrameRate:I

    .line 925
    sget-object p2, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

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

    .line 926
    new-instance p2, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getOverlay()Lcom/otaliastudios/cameraview/overlay/Overlay;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;Lcom/otaliastudios/cameraview/overlay/Overlay;)V

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mVideoRecorder:Lcom/otaliastudios/cameraview/video/VideoRecorder;

    .line 927
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mVideoRecorder:Lcom/otaliastudios/cameraview/video/VideoRecorder;

    invoke-virtual {p2, p1}, Lcom/otaliastudios/cameraview/video/VideoRecorder;->start(Lcom/otaliastudios/cameraview/VideoResult$Stub;)V

    return-void

    .line 918
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "outputSize should not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 913
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Video snapshots are only supported with GL_SURFACE."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onVideoRecordingEnd()V
    .locals 5

    .line 939
    invoke-super {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->onVideoRecordingEnd()V

    .line 942
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mVideoRecorder:Lcom/otaliastudios/cameraview/video/VideoRecorder;

    instance-of v0, v0, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v4, -0x1

    .line 943
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->readCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 946
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "Applying the Issue549 workaround."

    aput-object v4, v1, v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 947
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->maybeRestorePreviewTemplateAfterVideo()V

    .line 948
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v4, "Applied the Issue549 workaround. Sleeping..."

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    const-wide/16 v0, 0x258

    .line 949
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    :catch_0
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Applied the Issue549 workaround. Slept!"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onVideoResult(Lcom/otaliastudios/cameraview/VideoResult$Stub;Ljava/lang/Exception;)V
    .locals 2

    .line 956
    invoke-super {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->onVideoResult(Lcom/otaliastudios/cameraview/VideoResult$Stub;Ljava/lang/Exception;)V

    .line 960
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object p1

    sget-object p2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$10;

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$10;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)V

    const-string v1, "restore preview template"

    invoke-virtual {p1, v1, p2, v0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method readCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {p0, v0, p1, p2}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->readCharacteristic(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeAction(Lcom/otaliastudios/cameraview/engine/action/Action;)V
    .locals 1

    .line 1617
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setExposureCorrection(F[F[Landroid/graphics/PointF;Z)V
    .locals 11

    .line 1306
    iget v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mExposureCorrectionValue:F

    .line 1307
    iput p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mExposureCorrectionValue:F

    .line 1310
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v0

    const-string v7, "exposure correction"

    invoke-virtual {v0, v7}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->remove(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v8

    sget-object v9, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v10, Lcom/otaliastudios/cameraview/engine/Camera2Engine$16;

    move-object v0, v10

    move-object v1, p0

    move v3, p4

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$16;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;FZF[F[Landroid/graphics/PointF;)V

    invoke-virtual {v8, v7, v9, v10}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mExposureCorrectionTask:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setFlash(Lcom/otaliastudios/cameraview/controls/Flash;)V
    .locals 5

    .line 1091
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFlash:Lcom/otaliastudios/cameraview/controls/Flash;

    .line 1092
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFlash:Lcom/otaliastudios/cameraview/controls/Flash;

    .line 1093
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flash ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v4, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;

    invoke-direct {v4, p0, v0, p1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/otaliastudios/cameraview/controls/Flash;Lcom/otaliastudios/cameraview/controls/Flash;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFlashTask:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setFrameProcessingFormat(I)V
    .locals 4

    .line 1498
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFrameProcessingFormat:I

    if-nez v0, :cond_0

    const/16 v0, 0x23

    iput v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mFrameProcessingFormat:I

    .line 1501
    :cond_0
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frame processing format ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;

    invoke-direct {v3, p0, p1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->schedule(Ljava/lang/String;ZLjava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setHasFrameProcessors(Z)V
    .locals 3

    .line 1476
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has frame processors ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/otaliastudios/cameraview/engine/Camera2Engine$21;

    invoke-direct {v2, p0, p1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$21;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Z)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->schedule(Ljava/lang/String;ZLjava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setHdr(Lcom/otaliastudios/cameraview/controls/Hdr;)V
    .locals 4

    .line 1220
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mHdr:Lcom/otaliastudios/cameraview/controls/Hdr;

    .line 1221
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mHdr:Lcom/otaliastudios/cameraview/controls/Hdr;

    .line 1222
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

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

    new-instance v3, Lcom/otaliastudios/cameraview/engine/Camera2Engine$14;

    invoke-direct {v3, p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$14;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/otaliastudios/cameraview/controls/Hdr;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mHdrTask:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 3

    .line 1166
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mLocation:Landroid/location/Location;

    .line 1167
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mLocation:Landroid/location/Location;

    .line 1168
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object p1

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v2, Lcom/otaliastudios/cameraview/engine/Camera2Engine$12;

    invoke-direct {v2, p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$12;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Landroid/location/Location;)V

    const-string v0, "location"

    invoke-virtual {p1, v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mLocationTask:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setPictureFormat(Lcom/otaliastudios/cameraview/controls/PictureFormat;)V
    .locals 3

    .line 1422
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPictureFormat:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    if-eq p1, v0, :cond_0

    .line 1423
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPictureFormat:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    .line 1424
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "picture format ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v2, Lcom/otaliastudios/cameraview/engine/Camera2Engine$20;

    invoke-direct {v2, p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$20;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method public setPlaySounds(Z)V
    .locals 0

    .line 1345
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPlaySounds:Z

    const/4 p1, 0x0

    .line 1346
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPlaySoundsTask:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setPreviewFrameRate(F)V
    .locals 4

    .line 1351
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreviewFrameRate:F

    .line 1352
    iput p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreviewFrameRate:F

    .line 1353
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preview fps ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v3, Lcom/otaliastudios/cameraview/engine/Camera2Engine$17;

    invoke-direct {v3, p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$17;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;F)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreviewFrameRateTask:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setWhiteBalance(Lcom/otaliastudios/cameraview/controls/WhiteBalance;)V
    .locals 4

    .line 1191
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mWhiteBalance:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    .line 1192
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mWhiteBalance:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    .line 1193
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

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

    new-instance v3, Lcom/otaliastudios/cameraview/engine/Camera2Engine$13;

    invoke-direct {v3, p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$13;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/otaliastudios/cameraview/controls/WhiteBalance;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mWhiteBalanceTask:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setZoom(F[Landroid/graphics/PointF;Z)V
    .locals 10

    .line 1247
    iget v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mZoomValue:F

    .line 1248
    iput p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mZoomValue:F

    .line 1251
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v0

    const-string v6, "zoom"

    invoke-virtual {v0, v6}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->remove(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v7

    sget-object v8, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v9, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;

    move-object v0, v9

    move-object v1, p0

    move v3, p3

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;FZF[Landroid/graphics/PointF;)V

    invoke-virtual {v7, v6, v8, v9}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mZoomTask:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public startAutoFocus(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/metering/MeteringRegions;Landroid/graphics/PointF;)V
    .locals 4

    .line 1530
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autofocus ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->PREVIEW:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v3, Lcom/otaliastudios/cameraview/engine/Camera2Engine$23;

    invoke-direct {v3, p0, p1, p3, p2}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$23;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/otaliastudios/cameraview/gesture/Gesture;Landroid/graphics/PointF;Lcom/otaliastudios/cameraview/metering/MeteringRegions;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
