.class Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$9;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->dispatchOnZoomChanged(F[Landroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

.field final synthetic val$fingers:[Landroid/graphics/PointF;

.field final synthetic val$newValue:F


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;F[Landroid/graphics/PointF;)V
    .locals 0

    .line 2346
    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$9;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iput p2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$9;->val$newValue:F

    iput-object p3, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$9;->val$fingers:[Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2349
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$9;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

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

    .line 2350
    iget v2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$9;->val$newValue:F

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    iget-object v4, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$9;->val$fingers:[Landroid/graphics/PointF;

    invoke-virtual {v1, v2, v3, v4}, Lcom/otaliastudios/cameraview/CameraListener;->onZoomChanged(F[F[Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
