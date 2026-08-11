.class public Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;
.super Lcom/otaliastudios/cameraview/picture/SnapshotPictureRecorder;
.source "Snapshot1PictureRecorder.java"


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mEngine1:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

.field private mFormat:I

.field private mOutputRatio:Lcom/otaliastudios/cameraview/size/AspectRatio;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/engine/Camera1Engine;Landroid/hardware/Camera;Lcom/otaliastudios/cameraview/size/AspectRatio;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/cameraview/picture/SnapshotPictureRecorder;-><init>(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/picture/PictureRecorder$PictureResultListener;)V

    .line 36
    iput-object p2, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->mEngine1:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    .line 37
    iput-object p3, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->mCamera:Landroid/hardware/Camera;

    .line 38
    iput-object p4, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->mOutputRatio:Lcom/otaliastudios/cameraview/size/AspectRatio;

    .line 39
    invoke-virtual {p3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->mFormat:I

    return-void
.end method

.method static synthetic access$000(Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;)Lcom/otaliastudios/cameraview/engine/Camera1Engine;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->mEngine1:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    return-object p0
.end method

.method static synthetic access$100(Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->mFormat:I

    return p0
.end method

.method static synthetic access$200(Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;)Lcom/otaliastudios/cameraview/size/AspectRatio;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->mOutputRatio:Lcom/otaliastudios/cameraview/size/AspectRatio;

    return-object p0
.end method


# virtual methods
.method protected dispatchResult()V
    .locals 1

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->mEngine1:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    .line 92
    iput-object v0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->mCamera:Landroid/hardware/Camera;

    .line 93
    iput-object v0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->mOutputRatio:Lcom/otaliastudios/cameraview/size/AspectRatio;

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->mFormat:I

    .line 95
    invoke-super {p0}, Lcom/otaliastudios/cameraview/picture/SnapshotPictureRecorder;->dispatchResult()V

    return-void
.end method

.method public take()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->mCamera:Landroid/hardware/Camera;

    new-instance v1, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;-><init>(Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    return-void
.end method
