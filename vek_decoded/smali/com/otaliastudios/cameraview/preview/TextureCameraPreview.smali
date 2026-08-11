.class public Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;
.super Lcom/otaliastudios/cameraview/preview/CameraPreview;
.source "TextureCameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/otaliastudios/cameraview/preview/CameraPreview<",
        "Landroid/view/TextureView;",
        "Landroid/graphics/SurfaceTexture;",
        ">;"
    }
.end annotation


# instance fields
.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/cameraview/preview/CameraPreview;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method protected crop(Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;)V
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    new-instance v1, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;

    invoke-direct {v1, p0, p1}, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;-><init>(Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getOutput()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOutput()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->getOutput()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method public getOutputClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/SurfaceTexture;",
            ">;"
        }
    .end annotation

    .line 78
    const-class v0, Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method protected onCreateView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/TextureView;
    .locals 2

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/otaliastudios/cameraview/R$layout;->cameraview_texture_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 41
    invoke-virtual {p2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 42
    sget p2, Lcom/otaliastudios/cameraview/R$id;->texture_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    .line 43
    new-instance v0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$1;

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$1;-><init>(Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;)V

    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 65
    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->mRootView:Landroid/view/View;

    return-object p2
.end method

.method protected bridge synthetic onCreateView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->onCreateView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/TextureView;

    move-result-object p1

    return-object p1
.end method

.method public setDrawRotation(I)V
    .locals 3

    .line 126
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->setDrawRotation(I)V

    .line 127
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 128
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    new-instance v2, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$3;-><init>(Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;ILcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    .line 148
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public supportsCropping()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
