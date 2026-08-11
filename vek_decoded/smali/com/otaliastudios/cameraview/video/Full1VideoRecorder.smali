.class public Lcom/otaliastudios/cameraview/video/Full1VideoRecorder;
.super Lcom/otaliastudios/cameraview/video/FullVideoRecorder;
.source "Full1VideoRecorder.java"


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field private final mCameraId:I

.field private final mEngine:Lcom/otaliastudios/cameraview/engine/Camera1Engine;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Landroid/hardware/Camera;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;-><init>(Lcom/otaliastudios/cameraview/video/VideoRecorder$VideoResultListener;)V

    .line 27
    iput-object p2, p0, Lcom/otaliastudios/cameraview/video/Full1VideoRecorder;->mCamera:Landroid/hardware/Camera;

    .line 28
    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/Full1VideoRecorder;->mEngine:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    .line 29
    iput p3, p0, Lcom/otaliastudios/cameraview/video/Full1VideoRecorder;->mCameraId:I

    return-void
.end method


# virtual methods
.method protected applyVideoSource(Lcom/otaliastudios/cameraview/VideoResult$Stub;Landroid/media/MediaRecorder;)V
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/Full1VideoRecorder;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p2, p1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    const/4 p1, 0x1

    .line 36
    invoke-virtual {p2, p1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    return-void
.end method

.method protected getCamcorderProfile(Lcom/otaliastudios/cameraview/VideoResult$Stub;)Landroid/media/CamcorderProfile;
    .locals 1

    .line 43
    iget v0, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->rotation:I

    rem-int/lit16 v0, v0, 0xb4

    iget-object p1, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->flip()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object p1

    .line 44
    :cond_0
    iget v0, p0, Lcom/otaliastudios/cameraview/video/Full1VideoRecorder;->mCameraId:I

    invoke-static {v0, p1}, Lcom/otaliastudios/cameraview/internal/CamcorderProfiles;->get(ILcom/otaliastudios/cameraview/size/Size;)Landroid/media/CamcorderProfile;

    move-result-object p1

    return-object p1
.end method

.method protected onDispatchResult()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/Full1VideoRecorder;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/Full1VideoRecorder;->mEngine:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 51
    invoke-super {p0}, Lcom/otaliastudios/cameraview/video/FullVideoRecorder;->onDispatchResult()V

    return-void
.end method
