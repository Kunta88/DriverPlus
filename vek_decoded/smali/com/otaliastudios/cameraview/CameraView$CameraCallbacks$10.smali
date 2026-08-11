.class Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$10;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->dispatchOnExposureCorrectionChanged(F[F[Landroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

.field final synthetic val$bounds:[F

.field final synthetic val$fingers:[Landroid/graphics/PointF;

.field final synthetic val$newValue:F


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;F[F[Landroid/graphics/PointF;)V
    .locals 0

    .line 2361
    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$10;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iput p2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$10;->val$newValue:F

    iput-object p3, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$10;->val$bounds:[F

    iput-object p4, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$10;->val$fingers:[Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2364
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$10;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/CameraListener;

    .line 2365
    iget v2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$10;->val$newValue:F

    iget-object v3, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$10;->val$bounds:[F

    iget-object v4, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$10;->val$fingers:[Landroid/graphics/PointF;

    invoke-virtual {v1, v2, v3, v4}, Lcom/otaliastudios/cameraview/CameraListener;->onExposureCorrectionChanged(F[F[Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_0
    return-void
.end method
