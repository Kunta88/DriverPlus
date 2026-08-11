.class Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$6;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->dispatchOnFocusStart(Lcom/otaliastudios/cameraview/gesture/Gesture;Landroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

.field final synthetic val$gesture:Lcom/otaliastudios/cameraview/gesture/Gesture;

.field final synthetic val$point:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;Landroid/graphics/PointF;Lcom/otaliastudios/cameraview/gesture/Gesture;)V
    .locals 0

    .line 2265
    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$6;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$6;->val$point:Landroid/graphics/PointF;

    iput-object p3, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$6;->val$gesture:Lcom/otaliastudios/cameraview/gesture/Gesture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2268
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$6;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView;->mMarkerLayout:Lcom/otaliastudios/cameraview/markers/MarkerLayout;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$6;->val$point:Landroid/graphics/PointF;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/cameraview/markers/MarkerLayout;->onEvent(I[Landroid/graphics/PointF;)V

    .line 2269
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$6;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraView;->access$600(Lcom/otaliastudios/cameraview/CameraView;)Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2270
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$6;->val$gesture:Lcom/otaliastudios/cameraview/gesture/Gesture;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/otaliastudios/cameraview/markers/AutoFocusTrigger;->GESTURE:Lcom/otaliastudios/cameraview/markers/AutoFocusTrigger;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/otaliastudios/cameraview/markers/AutoFocusTrigger;->METHOD:Lcom/otaliastudios/cameraview/markers/AutoFocusTrigger;

    .line 2272
    :goto_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$6;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/CameraView;->access$600(Lcom/otaliastudios/cameraview/CameraView;)Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;

    move-result-object v1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$6;->val$point:Landroid/graphics/PointF;

    invoke-interface {v1, v0, v2}, Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;->onAutoFocusStart(Lcom/otaliastudios/cameraview/markers/AutoFocusTrigger;Landroid/graphics/PointF;)V

    .line 2275
    :cond_1
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$6;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/CameraListener;

    .line 2276
    iget-object v2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$6;->val$point:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Lcom/otaliastudios/cameraview/CameraListener;->onAutoFocusStart(Landroid/graphics/PointF;)V

    goto :goto_1

    :cond_2
    return-void
.end method
