.class Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$3;
.super Ljava/lang/Object;
.source "TextureCameraPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->setDrawRotation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

.field final synthetic val$drawRotation:I

.field final synthetic val$task:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;ILcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$3;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    iput p2, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$3;->val$drawRotation:I

    iput-object p3, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$3;->val$task:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 131
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 133
    iget-object v1, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$3;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    iget v1, v1, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->mOutputSurfaceWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 134
    iget-object v3, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$3;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    iget v3, v3, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->mOutputSurfaceHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 135
    iget v2, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$3;->val$drawRotation:I

    rem-int/lit16 v2, v2, 0xb4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 139
    iget-object v2, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$3;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    iget v2, v2, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->mOutputSurfaceHeight:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$3;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    iget v4, v4, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->mOutputSurfaceWidth:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v2

    .line 140
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 142
    :cond_1
    iget v2, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$3;->val$drawRotation:I

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 143
    iget-object v1, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$3;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 144
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$3;->val$task:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
