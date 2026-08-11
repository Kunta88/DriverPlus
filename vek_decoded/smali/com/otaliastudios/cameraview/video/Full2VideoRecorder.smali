.class public Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;
.super Lcom/otaliastudios/cameraview/video/FullVideoRecorder;
.source "Full2VideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/cameraview/video/Full2VideoRecorder$PrepareException;
    }
.end annotation


# instance fields
.field private final mCameraId:Ljava/lang/String;

.field private mHolder:Lcom/otaliastudios/cameraview/engine/action/ActionHolder;

.field private mInputSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;-><init>(Lcom/otaliastudios/cameraview/video/VideoRecorder$VideoResultListener;)V

    .line 35
    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;->mHolder:Lcom/otaliastudios/cameraview/engine/action/ActionHolder;

    .line 36
    iput-object p2, p0, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$001(Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;)V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->onStart()V

    return-void
.end method


# virtual methods
.method protected applyVideoSource(Lcom/otaliastudios/cameraview/VideoResult$Stub;Landroid/media/MediaRecorder;)V
    .locals 0

    const/4 p1, 0x2

    .line 68
    invoke-virtual {p2, p1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    return-void
.end method

.method public createInputSurface(Lcom/otaliastudios/cameraview/VideoResult$Stub;)Landroid/view/Surface;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/otaliastudios/cameraview/video/Full2VideoRecorder$PrepareException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;->prepareMediaRecorder(Lcom/otaliastudios/cameraview/VideoResult$Stub;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;->mInputSurface:Landroid/view/Surface;

    return-object p1

    .line 93
    :cond_0
    new-instance p1, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder$PrepareException;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;->mError:Ljava/lang/Exception;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder$PrepareException;-><init>(Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;Ljava/lang/Throwable;Lcom/otaliastudios/cameraview/video/Full2VideoRecorder$1;)V

    throw p1
.end method

.method protected getCamcorderProfile(Lcom/otaliastudios/cameraview/VideoResult$Stub;)Landroid/media/CamcorderProfile;
    .locals 1

    .line 79
    iget v0, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->rotation:I

    rem-int/lit16 v0, v0, 0xb4

    iget-object p1, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->flip()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object p1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/otaliastudios/cameraview/internal/CamcorderProfiles;->get(Ljava/lang/String;Lcom/otaliastudios/cameraview/size/Size;)Landroid/media/CamcorderProfile;

    move-result-object p1

    return-object p1
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;->mInputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method protected onStart()V
    .locals 2

    .line 45
    new-instance v0, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder$1;

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder$1;-><init>(Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;)V

    .line 56
    new-instance v1, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder$2;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder$2;-><init>(Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;)V

    invoke-interface {v0, v1}, Lcom/otaliastudios/cameraview/engine/action/Action;->addCallback(Lcom/otaliastudios/cameraview/engine/action/ActionCallback;)V

    .line 62
    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;->mHolder:Lcom/otaliastudios/cameraview/engine/action/ActionHolder;

    invoke-interface {v0, v1}, Lcom/otaliastudios/cameraview/engine/action/Action;->start(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    return-void
.end method
