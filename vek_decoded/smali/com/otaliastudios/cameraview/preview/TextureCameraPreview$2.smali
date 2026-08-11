.class Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;
.super Ljava/lang/Object;
.source "TextureCameraPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->crop(Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

.field final synthetic val$callback:Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;->val$callback:Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 97
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    iget v0, v0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->mInputStreamHeight:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    iget v0, v0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->mInputStreamWidth:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    iget v0, v0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->mOutputSurfaceHeight:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    iget v0, v0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->mOutputSurfaceWidth:I

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    iget v0, v0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->mOutputSurfaceWidth:I

    iget-object v1, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    iget v1, v1, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->mOutputSurfaceHeight:I

    invoke-static {v0, v1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->of(II)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    iget v1, v1, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->mInputStreamWidth:I

    iget-object v2, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    iget v2, v2, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->mInputStreamHeight:I

    invoke-static {v1, v2}, Lcom/otaliastudios/cameraview/size/AspectRatio;->of(II)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v1

    .line 105
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result v2

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 107
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result v0

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result v1

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result v0

    div-float/2addr v1, v0

    move v4, v1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    invoke-virtual {v1, v4}, Landroid/view/TextureView;->setScaleX(F)V

    .line 114
    iget-object v1, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setScaleY(F)V

    .line 116
    iget-object v1, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    const v2, 0x3f828f5c    # 1.02f

    const/4 v3, 0x0

    const/4 v5, 0x1

    cmpl-float v6, v4, v2

    if-gtz v6, :cond_3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, v1, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->mCropping:Z

    .line 117
    sget-object v1, Lcom/otaliastudios/cameraview/preview/CameraPreview;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "crop:"

    aput-object v7, v6, v3

    const-string v8, "applied scaleX="

    aput-object v8, v6, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v8, 0x2

    aput-object v4, v6, v8

    invoke-virtual {v1, v6}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    sget-object v1, Lcom/otaliastudios/cameraview/preview/CameraPreview;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v3

    const-string v3, "applied scaleY="

    aput-object v3, v2, v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-virtual {v1, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;->val$callback:Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;->onCrop()V

    :cond_4
    return-void

    .line 99
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;->val$callback:Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;->onCrop()V

    :cond_6
    return-void
.end method
