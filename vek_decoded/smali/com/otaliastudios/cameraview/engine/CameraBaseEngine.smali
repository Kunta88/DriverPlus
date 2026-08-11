.class public abstract Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;
.super Lcom/otaliastudios/cameraview/engine/CameraEngine;
.source "CameraBaseEngine.java"


# instance fields
.field private final mAngles:Lcom/otaliastudios/cameraview/engine/offset/Angles;

.field private mAudio:Lcom/otaliastudios/cameraview/controls/Audio;

.field private mAudioBitRate:I

.field protected mAudioCodec:Lcom/otaliastudios/cameraview/controls/AudioCodec;

.field private mAutoFocusResetDelayMillis:J

.field protected mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

.field protected mCaptureSize:Lcom/otaliastudios/cameraview/size/Size;

.field mExposureCorrectionTask:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected mExposureCorrectionValue:F

.field private mFacing:Lcom/otaliastudios/cameraview/controls/Facing;

.field protected mFlash:Lcom/otaliastudios/cameraview/controls/Flash;

.field mFlashTask:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameManager:Lcom/otaliastudios/cameraview/frame/FrameManager;

.field protected mFrameProcessingFormat:I

.field private mFrameProcessingMaxHeight:I

.field private mFrameProcessingMaxWidth:I

.field private mFrameProcessingPoolSize:I

.field protected mFrameProcessingSize:Lcom/otaliastudios/cameraview/size/Size;

.field protected mHasFrameProcessors:Z

.field protected mHdr:Lcom/otaliastudios/cameraview/controls/Hdr;

.field mHdrTask:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected mLocation:Landroid/location/Location;

.field mLocationTask:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:Lcom/otaliastudios/cameraview/controls/Mode;

.field private mOverlay:Lcom/otaliastudios/cameraview/overlay/Overlay;

.field protected mPictureFormat:Lcom/otaliastudios/cameraview/controls/PictureFormat;

.field protected mPictureMetering:Z

.field protected mPictureRecorder:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

.field private mPictureSizeSelector:Lcom/otaliastudios/cameraview/size/SizeSelector;

.field protected mPictureSnapshotMetering:Z

.field protected mPlaySounds:Z

.field mPlaySoundsTask:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

.field protected mPreviewFrameRate:F

.field private mPreviewFrameRateExact:Z

.field mPreviewFrameRateTask:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreviewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

.field private mPreviewStreamSizeSelector:Lcom/otaliastudios/cameraview/size/SizeSelector;

.field private mSnapshotMaxHeight:I

.field private mSnapshotMaxWidth:I

.field private mVideoBitRate:I

.field protected mVideoCodec:Lcom/otaliastudios/cameraview/controls/VideoCodec;

.field private mVideoMaxDuration:I

.field private mVideoMaxSize:J

.field protected mVideoRecorder:Lcom/otaliastudios/cameraview/video/VideoRecorder;

.field private mVideoSizeSelector:Lcom/otaliastudios/cameraview/size/SizeSelector;

.field protected mWhiteBalance:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

.field mWhiteBalanceTask:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field mZoomTask:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected mZoomValue:F


# direct methods
.method protected constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;)V
    .locals 1

    .line 117
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;)V

    .line 78
    new-instance p1, Lcom/otaliastudios/cameraview/engine/offset/Angles;

    invoke-direct {p1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mAngles:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    const/4 p1, 0x0

    .line 99
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mZoomTask:Lcom/google/android/gms/tasks/Task;

    .line 101
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mExposureCorrectionTask:Lcom/google/android/gms/tasks/Task;

    .line 103
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mFlashTask:Lcom/google/android/gms/tasks/Task;

    .line 105
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mWhiteBalanceTask:Lcom/google/android/gms/tasks/Task;

    .line 107
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mHdrTask:Lcom/google/android/gms/tasks/Task;

    .line 109
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mLocationTask:Lcom/google/android/gms/tasks/Task;

    .line 111
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPlaySoundsTask:Lcom/google/android/gms/tasks/Task;

    .line 113
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPreviewFrameRateTask:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method static synthetic access$000(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)Lcom/otaliastudios/cameraview/controls/Facing;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mFacing:Lcom/otaliastudios/cameraview/controls/Facing;

    return-object p0
.end method

.method static synthetic access$002(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;Lcom/otaliastudios/cameraview/controls/Facing;)Lcom/otaliastudios/cameraview/controls/Facing;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mFacing:Lcom/otaliastudios/cameraview/controls/Facing;

    return-object p1
.end method

.method static synthetic access$100(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)Lcom/otaliastudios/cameraview/controls/Mode;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mMode:Lcom/otaliastudios/cameraview/controls/Mode;

    return-object p0
.end method

.method static synthetic access$200(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getPreviewSurfaceSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)Lcom/otaliastudios/cameraview/controls/Audio;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mAudio:Lcom/otaliastudios/cameraview/controls/Audio;

    return-object p0
.end method

.method static synthetic access$400(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mVideoMaxSize:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mVideoMaxDuration:I

    return p0
.end method

.method static synthetic access$600(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mVideoBitRate:I

    return p0
.end method

.method static synthetic access$700(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mAudioBitRate:I

    return p0
.end method

.method private getPreviewSurfaceSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;
    .locals 3

    .line 762
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 764
    :cond_0
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v1, v2, p1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->flip(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->getSurfaceSize()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object p1

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->flip()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object p1

    goto :goto_0

    .line 765
    :cond_1
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->getSurfaceSize()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method protected final computeCaptureSize()Lcom/otaliastudios/cameraview/size/Size;
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mMode:Lcom/otaliastudios/cameraview/controls/Mode;

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->computeCaptureSize(Lcom/otaliastudios/cameraview/controls/Mode;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    return-object v0
.end method

.method protected final computeCaptureSize(Lcom/otaliastudios/cameraview/controls/Mode;)Lcom/otaliastudios/cameraview/size/Size;
    .locals 8

    .line 836
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->flip(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Z

    move-result v0

    .line 839
    sget-object v1, Lcom/otaliastudios/cameraview/controls/Mode;->PICTURE:Lcom/otaliastudios/cameraview/controls/Mode;

    if-ne p1, v1, :cond_0

    .line 840
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPictureSizeSelector:Lcom/otaliastudios/cameraview/size/SizeSelector;

    .line 841
    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/CameraOptions;->getSupportedPictureSizes()Ljava/util/Collection;

    move-result-object v2

    goto :goto_0

    .line 843
    :cond_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mVideoSizeSelector:Lcom/otaliastudios/cameraview/size/SizeSelector;

    .line 844
    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/CameraOptions;->getSupportedVideoSizes()Ljava/util/Collection;

    move-result-object v2

    :goto_0
    const/4 v3, 0x2

    new-array v4, v3, [Lcom/otaliastudios/cameraview/size/SizeSelector;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 846
    invoke-static {}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->biggest()Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v4, v6

    invoke-static {v4}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->or([Lcom/otaliastudios/cameraview/size/SizeSelector;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v1

    .line 847
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 848
    invoke-interface {v1, v4}, Lcom/otaliastudios/cameraview/size/SizeSelector;->select(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/size/Size;

    .line 849
    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 853
    sget-object v2, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const-string v7, "computeCaptureSize:"

    aput-object v7, v4, v5

    const-string v5, "result:"

    aput-object v5, v4, v6

    aput-object v1, v4, v3

    const/4 v3, 0x3

    const-string v5, "flip:"

    aput-object v5, v4, v3

    const/4 v3, 0x4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x5

    const-string v5, "mode:"

    aput-object v5, v4, v3

    const/4 v3, 0x6

    aput-object p1, v4, v3

    invoke-virtual {v2, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 854
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/Size;->flip()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v1

    :cond_1
    return-object v1

    .line 850
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "SizeSelectors must not return Sizes other than those in the input list."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final computeFrameProcessingSize()Lcom/otaliastudios/cameraview/size/Size;
    .locals 13

    .line 937
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getFrameProcessingAvailableSizes()Ljava/util/List;

    move-result-object v0

    .line 940
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v3, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v1, v2, v3}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->flip(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Z

    move-result v1

    .line 941
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 942
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/otaliastudios/cameraview/size/Size;

    if-eqz v1, :cond_0

    .line 943
    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/size/Size;->flip()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v3

    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 945
    :cond_1
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPreviewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 946
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPreviewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 947
    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v3

    .line 945
    invoke-static {v0, v3}, Lcom/otaliastudios/cameraview/size/AspectRatio;->of(II)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v0

    if-eqz v1, :cond_2

    .line 948
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->flip()Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v0

    .line 949
    :cond_2
    iget v3, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mFrameProcessingMaxWidth:I

    .line 950
    iget v4, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mFrameProcessingMaxHeight:I

    const v5, 0x7fffffff

    const/16 v6, 0x280

    if-lez v3, :cond_3

    if-ne v3, v5, :cond_4

    :cond_3
    const/16 v3, 0x280

    :cond_4
    if-lez v4, :cond_5

    if-ne v4, v5, :cond_6

    :cond_5
    const/16 v4, 0x280

    .line 953
    :cond_6
    new-instance v5, Lcom/otaliastudios/cameraview/size/Size;

    invoke-direct {v5, v3, v4}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    .line 954
    sget-object v3, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v4, 0x5

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "computeFrameProcessingSize:"

    aput-object v8, v6, v7

    const-string v9, "targetRatio:"

    const/4 v10, 0x1

    aput-object v9, v6, v10

    const/4 v9, 0x2

    aput-object v0, v6, v9

    const-string v11, "targetMaxSize:"

    const/4 v12, 0x3

    aput-object v11, v6, v12

    const/4 v11, 0x4

    aput-object v5, v6, v11

    invoke-virtual {v3, v6}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    const/4 v3, 0x0

    .line 957
    invoke-static {v0, v3}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->aspectRatio(Lcom/otaliastudios/cameraview/size/AspectRatio;F)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v0

    new-array v3, v12, [Lcom/otaliastudios/cameraview/size/SizeSelector;

    .line 959
    invoke-virtual {v5}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v6

    invoke-static {v6}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->maxHeight(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v6

    aput-object v6, v3, v7

    .line 960
    invoke-virtual {v5}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v5

    invoke-static {v5}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->maxWidth(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v5

    aput-object v5, v3, v10

    .line 961
    invoke-static {}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->biggest()Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v5

    aput-object v5, v3, v9

    .line 958
    invoke-static {v3}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->and([Lcom/otaliastudios/cameraview/size/SizeSelector;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v3

    new-array v5, v12, [Lcom/otaliastudios/cameraview/size/SizeSelector;

    new-array v6, v9, [Lcom/otaliastudios/cameraview/size/SizeSelector;

    aput-object v0, v6, v7

    aput-object v3, v6, v10

    .line 963
    invoke-static {v6}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->and([Lcom/otaliastudios/cameraview/size/SizeSelector;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v0

    aput-object v0, v5, v7

    aput-object v3, v5, v10

    .line 965
    invoke-static {}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->smallest()Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v0

    aput-object v0, v5, v9

    .line 962
    invoke-static {v5}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->or([Lcom/otaliastudios/cameraview/size/SizeSelector;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v0

    .line 967
    invoke-interface {v0, v2}, Lcom/otaliastudios/cameraview/size/SizeSelector;->select(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/size/Size;

    .line 968
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v1, :cond_7

    .line 972
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/Size;->flip()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    .line 973
    :cond_7
    sget-object v2, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v8, v3, v7

    const-string v4, "result:"

    aput-object v4, v3, v10

    aput-object v0, v3, v9

    const-string v4, "flip:"

    aput-object v4, v3, v12

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v11

    invoke-virtual {v2, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    return-object v0

    .line 969
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SizeSelectors must not return Sizes other than those in the input list."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method protected final computePreviewStreamSize()Lcom/otaliastudios/cameraview/size/Size;
    .locals 13

    .line 872
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getPreviewStreamAvailableSizes()Ljava/util/List;

    move-result-object v0

    .line 875
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v3, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v1, v2, v3}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->flip(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Z

    move-result v1

    .line 876
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 877
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/otaliastudios/cameraview/size/Size;

    if-eqz v1, :cond_0

    .line 878
    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/size/Size;->flip()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v3

    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 883
    :cond_1
    sget-object v0, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getPreviewSurfaceSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 887
    iget-object v3, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mCaptureSize:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mCaptureSize:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v4}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/otaliastudios/cameraview/size/AspectRatio;->of(II)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v3

    if-eqz v1, :cond_2

    .line 888
    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/size/AspectRatio;->flip()Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v3

    .line 889
    :cond_2
    sget-object v4, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v5, 0x5

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "computePreviewStreamSize:"

    aput-object v8, v6, v7

    const-string v9, "targetRatio:"

    const/4 v10, 0x1

    aput-object v9, v6, v10

    const/4 v9, 0x2

    aput-object v3, v6, v9

    const-string v11, "targetMinSize:"

    const/4 v12, 0x3

    aput-object v11, v6, v12

    const/4 v11, 0x4

    aput-object v0, v6, v11

    invoke-virtual {v4, v6}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    new-array v4, v9, [Lcom/otaliastudios/cameraview/size/SizeSelector;

    const/4 v6, 0x0

    .line 893
    invoke-static {v3, v6}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->aspectRatio(Lcom/otaliastudios/cameraview/size/AspectRatio;F)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v3

    aput-object v3, v4, v7

    .line 894
    invoke-static {}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->biggest()Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v3

    aput-object v3, v4, v10

    .line 892
    invoke-static {v4}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->and([Lcom/otaliastudios/cameraview/size/SizeSelector;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v3

    new-array v4, v12, [Lcom/otaliastudios/cameraview/size/SizeSelector;

    .line 896
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v6

    invoke-static {v6}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->minHeight(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v6

    aput-object v6, v4, v7

    .line 897
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->minWidth(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v0

    aput-object v0, v4, v10

    .line 898
    invoke-static {}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->smallest()Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v0

    aput-object v0, v4, v9

    .line 895
    invoke-static {v4}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->and([Lcom/otaliastudios/cameraview/size/SizeSelector;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v0

    new-array v4, v11, [Lcom/otaliastudios/cameraview/size/SizeSelector;

    new-array v6, v9, [Lcom/otaliastudios/cameraview/size/SizeSelector;

    aput-object v3, v6, v7

    aput-object v0, v6, v10

    .line 900
    invoke-static {v6}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->and([Lcom/otaliastudios/cameraview/size/SizeSelector;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v6

    aput-object v6, v4, v7

    aput-object v0, v4, v10

    aput-object v3, v4, v9

    .line 903
    invoke-static {}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->biggest()Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v0

    aput-object v0, v4, v12

    .line 899
    invoke-static {v4}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->or([Lcom/otaliastudios/cameraview/size/SizeSelector;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v0

    .line 909
    iget-object v3, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPreviewStreamSizeSelector:Lcom/otaliastudios/cameraview/size/SizeSelector;

    if-eqz v3, :cond_3

    new-array v4, v9, [Lcom/otaliastudios/cameraview/size/SizeSelector;

    aput-object v3, v4, v7

    aput-object v0, v4, v10

    .line 910
    invoke-static {v4}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->or([Lcom/otaliastudios/cameraview/size/SizeSelector;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v0

    .line 914
    :cond_3
    invoke-interface {v0, v2}, Lcom/otaliastudios/cameraview/size/SizeSelector;->select(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/size/Size;

    .line 915
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    .line 919
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/Size;->flip()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    .line 920
    :cond_4
    sget-object v2, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v8, v3, v7

    const-string v4, "result:"

    aput-object v4, v3, v10

    aput-object v0, v3, v9

    const-string v4, "flip:"

    aput-object v4, v3, v12

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v11

    invoke-virtual {v2, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    return-object v0

    .line 916
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SizeSelectors must not return Sizes other than those in the input list."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 885
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "targetMinSize should not be null here."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mAngles:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    return-object v0
.end method

.method public final getAudio()Lcom/otaliastudios/cameraview/controls/Audio;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mAudio:Lcom/otaliastudios/cameraview/controls/Audio;

    return-object v0
.end method

.method public final getAudioBitRate()I
    .locals 1

    .line 266
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mAudioBitRate:I

    return v0
.end method

.method public final getAudioCodec()Lcom/otaliastudios/cameraview/controls/AudioCodec;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mAudioCodec:Lcom/otaliastudios/cameraview/controls/AudioCodec;

    return-object v0
.end method

.method public final getAutoFocusResetDelay()J
    .locals 2

    .line 331
    iget-wide v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mAutoFocusResetDelayMillis:J

    return-wide v0
.end method

.method public final getCameraOptions()Lcom/otaliastudios/cameraview/CameraOptions;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mCameraOptions:Lcom/otaliastudios/cameraview/CameraOptions;

    return-object v0
.end method

.method public final getExposureCorrectionValue()F
    .locals 1

    .line 425
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mExposureCorrectionValue:F

    return v0
.end method

.method public final getFacing()Lcom/otaliastudios/cameraview/controls/Facing;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mFacing:Lcom/otaliastudios/cameraview/controls/Facing;

    return-object v0
.end method

.method public final getFlash()Lcom/otaliastudios/cameraview/controls/Flash;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mFlash:Lcom/otaliastudios/cameraview/controls/Flash;

    return-object v0
.end method

.method public getFrameManager()Lcom/otaliastudios/cameraview/frame/FrameManager;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mFrameManager:Lcom/otaliastudios/cameraview/frame/FrameManager;

    if-nez v0, :cond_0

    .line 139
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mFrameProcessingPoolSize:I

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->instantiateFrameManager(I)Lcom/otaliastudios/cameraview/frame/FrameManager;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mFrameManager:Lcom/otaliastudios/cameraview/frame/FrameManager;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mFrameManager:Lcom/otaliastudios/cameraview/frame/FrameManager;

    return-object v0
.end method

.method protected abstract getFrameProcessingAvailableSizes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/otaliastudios/cameraview/size/Size;",
            ">;"
        }
    .end annotation
.end method

.method public final getFrameProcessingFormat()I
    .locals 1

    .line 311
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mFrameProcessingFormat:I

    return v0
.end method

.method public final getFrameProcessingMaxHeight()I
    .locals 1

    .line 306
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mFrameProcessingMaxHeight:I

    return v0
.end method

.method public final getFrameProcessingMaxWidth()I
    .locals 1

    .line 296
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mFrameProcessingMaxWidth:I

    return v0
.end method

.method public final getFrameProcessingPoolSize()I
    .locals 1

    .line 321
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mFrameProcessingPoolSize:I

    return v0
.end method

.method public final getHdr()Lcom/otaliastudios/cameraview/controls/Hdr;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mHdr:Lcom/otaliastudios/cameraview/controls/Hdr;

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public final getMode()Lcom/otaliastudios/cameraview/controls/Mode;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mMode:Lcom/otaliastudios/cameraview/controls/Mode;

    return-object v0
.end method

.method public final getOverlay()Lcom/otaliastudios/cameraview/overlay/Overlay;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mOverlay:Lcom/otaliastudios/cameraview/overlay/Overlay;

    return-object v0
.end method

.method public final getPictureFormat()Lcom/otaliastudios/cameraview/controls/PictureFormat;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPictureFormat:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    return-object v0
.end method

.method public final getPictureMetering()Z
    .locals 1

    .line 485
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPictureMetering:Z

    return v0
.end method

.method public final getPictureSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;
    .locals 3

    .line 738
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mCaptureSize:Lcom/otaliastudios/cameraview/size/Size;

    if-eqz v0, :cond_2

    .line 739
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mMode:Lcom/otaliastudios/cameraview/controls/Mode;

    sget-object v2, Lcom/otaliastudios/cameraview/controls/Mode;->VIDEO:Lcom/otaliastudios/cameraview/controls/Mode;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 740
    :cond_0
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v1, v2, p1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->flip(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/Size;->flip()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getPictureSizeSelector()Lcom/otaliastudios/cameraview/size/SizeSelector;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPictureSizeSelector:Lcom/otaliastudios/cameraview/size/SizeSelector;

    return-object v0
.end method

.method public final getPictureSnapshotMetering()Z
    .locals 1

    .line 495
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPictureSnapshotMetering:Z

    return v0
.end method

.method public final getPreview()Lcom/otaliastudios/cameraview/preview/CameraPreview;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    return-object v0
.end method

.method public final getPreviewFrameRate()F
    .locals 1

    .line 470
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPreviewFrameRate:F

    return v0
.end method

.method public final getPreviewFrameRateExact()Z
    .locals 1

    .line 465
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPreviewFrameRateExact:Z

    return v0
.end method

.method protected abstract getPreviewStreamAvailableSizes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/otaliastudios/cameraview/size/Size;",
            ">;"
        }
    .end annotation
.end method

.method public final getPreviewStreamSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;
    .locals 3

    .line 754
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPreviewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 756
    :cond_0
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v1, v2, p1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->flip(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/Size;->flip()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getPreviewStreamSizeSelector()Lcom/otaliastudios/cameraview/size/SizeSelector;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPreviewStreamSizeSelector:Lcom/otaliastudios/cameraview/size/SizeSelector;

    return-object v0
.end method

.method public final getSnapshotMaxHeight()I
    .locals 1

    .line 286
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mSnapshotMaxHeight:I

    return v0
.end method

.method public final getSnapshotMaxWidth()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mSnapshotMaxWidth:I

    return v0
.end method

.method public final getUncroppedSnapshotSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;
    .locals 4

    .line 794
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getPreviewStreamSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 796
    :cond_0
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v1, p1, v2}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->flip(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 797
    iget v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mSnapshotMaxHeight:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mSnapshotMaxWidth:I

    :goto_0
    if-eqz p1, :cond_2

    .line 798
    iget p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mSnapshotMaxWidth:I

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mSnapshotMaxHeight:I

    :goto_1
    const v2, 0x7fffffff

    if-gtz v1, :cond_3

    const v1, 0x7fffffff

    :cond_3
    if-gtz p1, :cond_4

    const p1, 0x7fffffff

    .line 801
    :cond_4
    invoke-static {v0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->of(Lcom/otaliastudios/cameraview/size/Size;)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v2

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result v2

    .line 802
    invoke-static {v1, p1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->of(II)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v3

    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result v3

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_5

    .line 805
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float v0, p1

    mul-float v0, v0, v2

    float-to-double v0, v0

    .line 806
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 807
    new-instance v1, Lcom/otaliastudios/cameraview/size/Size;

    invoke-direct {v1, v0, p1}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    return-object v1

    .line 810
    :cond_5
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float v0, p1

    div-float/2addr v0, v2

    float-to-double v0, v0

    .line 811
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 812
    new-instance v1, Lcom/otaliastudios/cameraview/size/Size;

    invoke-direct {v1, p1, v0}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    return-object v1
.end method

.method public final getVideoBitRate()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mVideoBitRate:I

    return v0
.end method

.method public final getVideoCodec()Lcom/otaliastudios/cameraview/controls/VideoCodec;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mVideoCodec:Lcom/otaliastudios/cameraview/controls/VideoCodec;

    return-object v0
.end method

.method public final getVideoMaxDuration()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mVideoMaxDuration:I

    return v0
.end method

.method public final getVideoMaxSize()J
    .locals 2

    .line 214
    iget-wide v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mVideoMaxSize:J

    return-wide v0
.end method

.method public final getVideoSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;
    .locals 3

    .line 746
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mCaptureSize:Lcom/otaliastudios/cameraview/size/Size;

    if-eqz v0, :cond_2

    .line 747
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mMode:Lcom/otaliastudios/cameraview/controls/Mode;

    sget-object v2, Lcom/otaliastudios/cameraview/controls/Mode;->PICTURE:Lcom/otaliastudios/cameraview/controls/Mode;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 748
    :cond_0
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getAngles()Lcom/otaliastudios/cameraview/engine/offset/Angles;

    move-result-object v1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v1, v2, p1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->flip(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/Size;->flip()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getVideoSizeSelector()Lcom/otaliastudios/cameraview/size/SizeSelector;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mVideoSizeSelector:Lcom/otaliastudios/cameraview/size/SizeSelector;

    return-object v0
.end method

.method public final getWhiteBalance()Lcom/otaliastudios/cameraview/controls/WhiteBalance;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mWhiteBalance:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    return-object v0
.end method

.method public final getZoomValue()F
    .locals 1

    .line 420
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mZoomValue:F

    return v0
.end method

.method public final hasFrameProcessors()Z
    .locals 1

    .line 475
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mHasFrameProcessors:Z

    return v0
.end method

.method protected abstract instantiateFrameManager(I)Lcom/otaliastudios/cameraview/frame/FrameManager;
.end method

.method public final isTakingPicture()Z
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPictureRecorder:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isTakingVideo()Z
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mVideoRecorder:Lcom/otaliastudios/cameraview/video/VideoRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/video/VideoRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPictureResult(Lcom/otaliastudios/cameraview/PictureResult$Stub;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    .line 561
    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPictureRecorder:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

    if-eqz p1, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getCallback()Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->dispatchOnPictureTaken(Lcom/otaliastudios/cameraview/PictureResult$Stub;)V

    goto :goto_0

    .line 565
    :cond_0
    sget-object p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onPictureResult"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "result is null: something went wrong."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 566
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getCallback()Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    move-result-object p1

    new-instance v0, Lcom/otaliastudios/cameraview/CameraException;

    const/4 v1, 0x4

    invoke-direct {v0, p2, v1}, Lcom/otaliastudios/cameraview/CameraException;-><init>(Ljava/lang/Throwable;I)V

    invoke-interface {p1, v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->dispatchError(Lcom/otaliastudios/cameraview/CameraException;)V

    :goto_0
    return-void
.end method

.method public onPictureShutter(Z)V
    .locals 1

    .line 556
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getCallback()Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->onShutter(Z)V

    return-void
.end method

.method protected abstract onPreviewStreamSizeChanged()V
.end method

.method protected onStopVideo()V
    .locals 2

    .line 654
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mVideoRecorder:Lcom/otaliastudios/cameraview/video/VideoRecorder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 655
    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/video/VideoRecorder;->stop(Z)V

    :cond_0
    return-void
.end method

.method public final onSurfaceChanged()V
    .locals 4

    .line 706
    sget-object v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onSurfaceChanged:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Size is"

    aput-object v3, v1, v2

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-direct {p0, v2}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getPreviewSurfaceSize(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 707
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v2, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$8;

    invoke-direct {v2, p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$8;-><init>(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)V

    const-string v3, "surface changed"

    invoke-virtual {v0, v3, v1, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method protected abstract onTakePicture(Lcom/otaliastudios/cameraview/PictureResult$Stub;Z)V
.end method

.method protected abstract onTakePictureSnapshot(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/size/AspectRatio;Z)V
.end method

.method protected abstract onTakeVideo(Lcom/otaliastudios/cameraview/VideoResult$Stub;)V
.end method

.method protected abstract onTakeVideoSnapshot(Lcom/otaliastudios/cameraview/VideoResult$Stub;Lcom/otaliastudios/cameraview/size/AspectRatio;)V
.end method

.method public onVideoRecordingEnd()V
    .locals 1

    .line 682
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getCallback()Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->dispatchOnVideoRecordingEnd()V

    return-void
.end method

.method public onVideoRecordingStart()V
    .locals 1

    .line 677
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getCallback()Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->dispatchOnVideoRecordingStart()V

    return-void
.end method

.method public onVideoResult(Lcom/otaliastudios/cameraview/VideoResult$Stub;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    .line 665
    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mVideoRecorder:Lcom/otaliastudios/cameraview/video/VideoRecorder;

    if-eqz p1, :cond_0

    .line 667
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getCallback()Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->dispatchOnVideoTaken(Lcom/otaliastudios/cameraview/VideoResult$Stub;)V

    goto :goto_0

    .line 669
    :cond_0
    sget-object p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onVideoResult"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "result is null: something went wrong."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 670
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getCallback()Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    move-result-object p1

    new-instance v0, Lcom/otaliastudios/cameraview/CameraException;

    const/4 v1, 0x5

    invoke-direct {v0, p2, v1}, Lcom/otaliastudios/cameraview/CameraException;-><init>(Ljava/lang/Throwable;I)V

    invoke-interface {p1, v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->dispatchError(Lcom/otaliastudios/cameraview/CameraException;)V

    :goto_0
    return-void
.end method

.method public final setAudio(Lcom/otaliastudios/cameraview/controls/Audio;)V
    .locals 4

    .line 379
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mAudio:Lcom/otaliastudios/cameraview/controls/Audio;

    if-eq v0, p1, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->isTakingVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    sget-object v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Audio setting was changed while recording. Changes will take place starting from next video"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 384
    :cond_0
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mAudio:Lcom/otaliastudios/cameraview/controls/Audio;

    :cond_1
    return-void
.end method

.method public final setAudioBitRate(I)V
    .locals 0

    .line 261
    iput p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mAudioBitRate:I

    return-void
.end method

.method public final setAudioCodec(Lcom/otaliastudios/cameraview/controls/AudioCodec;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mAudioCodec:Lcom/otaliastudios/cameraview/controls/AudioCodec;

    return-void
.end method

.method public final setAutoFocusResetDelay(J)V
    .locals 0

    .line 326
    iput-wide p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mAutoFocusResetDelayMillis:J

    return-void
.end method

.method public final setFacing(Lcom/otaliastudios/cameraview/controls/Facing;)V
    .locals 4

    .line 350
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mFacing:Lcom/otaliastudios/cameraview/controls/Facing;

    if-eq p1, v0, :cond_0

    .line 352
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mFacing:Lcom/otaliastudios/cameraview/controls/Facing;

    .line 353
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v3, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$1;-><init>(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;Lcom/otaliastudios/cameraview/controls/Facing;Lcom/otaliastudios/cameraview/controls/Facing;)V

    const-string p1, "facing"

    invoke-virtual {v1, p1, v2, v3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method public final setFrameProcessingMaxHeight(I)V
    .locals 0

    .line 301
    iput p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mFrameProcessingMaxHeight:I

    return-void
.end method

.method public final setFrameProcessingMaxWidth(I)V
    .locals 0

    .line 291
    iput p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mFrameProcessingMaxWidth:I

    return-void
.end method

.method public final setFrameProcessingPoolSize(I)V
    .locals 0

    .line 316
    iput p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mFrameProcessingPoolSize:I

    return-void
.end method

.method public final setMode(Lcom/otaliastudios/cameraview/controls/Mode;)V
    .locals 3

    .line 400
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mMode:Lcom/otaliastudios/cameraview/controls/Mode;

    if-eq p1, v0, :cond_0

    .line 401
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mMode:Lcom/otaliastudios/cameraview/controls/Mode;

    .line 402
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object p1

    sget-object v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$2;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$2;-><init>(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)V

    const-string v2, "mode"

    invoke-virtual {p1, v2, v0, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method public final setOverlay(Lcom/otaliastudios/cameraview/overlay/Overlay;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mOverlay:Lcom/otaliastudios/cameraview/overlay/Overlay;

    return-void
.end method

.method public final setPictureMetering(Z)V
    .locals 0

    .line 480
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPictureMetering:Z

    return-void
.end method

.method public final setPictureSizeSelector(Lcom/otaliastudios/cameraview/size/SizeSelector;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPictureSizeSelector:Lcom/otaliastudios/cameraview/size/SizeSelector;

    return-void
.end method

.method public final setPictureSnapshotMetering(Z)V
    .locals 0

    .line 490
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPictureSnapshotMetering:Z

    return-void
.end method

.method public final setPreview(Lcom/otaliastudios/cameraview/preview/CameraPreview;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->setSurfaceCallback(Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;)V

    .line 153
    :cond_0
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPreview:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    .line 154
    invoke-virtual {p1, p0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->setSurfaceCallback(Lcom/otaliastudios/cameraview/preview/CameraPreview$SurfaceCallback;)V

    return-void
.end method

.method public final setPreviewFrameRateExact(Z)V
    .locals 0

    .line 460
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPreviewFrameRateExact:Z

    return-void
.end method

.method public final setPreviewStreamSizeSelector(Lcom/otaliastudios/cameraview/size/SizeSelector;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPreviewStreamSizeSelector:Lcom/otaliastudios/cameraview/size/SizeSelector;

    return-void
.end method

.method public final setSnapshotMaxHeight(I)V
    .locals 0

    .line 281
    iput p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mSnapshotMaxHeight:I

    return-void
.end method

.method public final setSnapshotMaxWidth(I)V
    .locals 0

    .line 271
    iput p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mSnapshotMaxWidth:I

    return-void
.end method

.method public final setVideoBitRate(I)V
    .locals 0

    .line 240
    iput p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mVideoBitRate:I

    return-void
.end method

.method public final setVideoCodec(Lcom/otaliastudios/cameraview/controls/VideoCodec;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mVideoCodec:Lcom/otaliastudios/cameraview/controls/VideoCodec;

    return-void
.end method

.method public final setVideoMaxDuration(I)V
    .locals 0

    .line 219
    iput p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mVideoMaxDuration:I

    return-void
.end method

.method public final setVideoMaxSize(J)V
    .locals 0

    .line 209
    iput-wide p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mVideoMaxSize:J

    return-void
.end method

.method public final setVideoSizeSelector(Lcom/otaliastudios/cameraview/size/SizeSelector;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mVideoSizeSelector:Lcom/otaliastudios/cameraview/size/SizeSelector;

    return-void
.end method

.method protected final shouldResetAutoFocus()Z
    .locals 5

    .line 340
    iget-wide v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mAutoFocusResetDelayMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final stopVideo()V
    .locals 4

    .line 642
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v0

    new-instance v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$7;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$7;-><init>(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)V

    const-string v2, "stop video"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->schedule(Ljava/lang/String;ZLjava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public takePicture(Lcom/otaliastudios/cameraview/PictureResult$Stub;)V
    .locals 4

    .line 508
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPictureMetering:Z

    .line 509
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v3, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;

    invoke-direct {v3, p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;-><init>(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;Lcom/otaliastudios/cameraview/PictureResult$Stub;Z)V

    const-string p1, "take picture"

    invoke-virtual {v1, p1, v2, v3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public takePictureSnapshot(Lcom/otaliastudios/cameraview/PictureResult$Stub;)V
    .locals 4

    .line 535
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->mPictureSnapshotMetering:Z

    .line 536
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v3, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;

    invoke-direct {v3, p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;-><init>(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;Lcom/otaliastudios/cameraview/PictureResult$Stub;Z)V

    const-string p1, "take picture snapshot"

    invoke-virtual {v1, p1, v2, v3}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final takeVideo(Lcom/otaliastudios/cameraview/VideoResult$Stub;Ljava/io/File;Ljava/io/FileDescriptor;)V
    .locals 3

    .line 580
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v2, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$5;-><init>(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;Ljava/io/File;Lcom/otaliastudios/cameraview/VideoResult$Stub;Ljava/io/FileDescriptor;)V

    const-string p1, "take video"

    invoke-virtual {v0, p1, v1, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final takeVideoSnapshot(Lcom/otaliastudios/cameraview/VideoResult$Stub;Ljava/io/File;)V
    .locals 3

    .line 617
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->getOrchestrator()Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v2, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;

    invoke-direct {v2, p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$6;-><init>(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;Lcom/otaliastudios/cameraview/VideoResult$Stub;Ljava/io/File;)V

    const-string p1, "take video snapshot"

    invoke-virtual {v0, p1, v1, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->scheduleStateful(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
