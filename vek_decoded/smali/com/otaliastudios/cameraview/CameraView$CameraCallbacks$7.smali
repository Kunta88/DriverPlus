.class Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$7;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->dispatchOnFocusEnd(Lcom/otaliastudios/cameraview/gesture/Gesture;ZLandroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

.field final synthetic val$gesture:Lcom/otaliastudios/cameraview/gesture/Gesture;

.field final synthetic val$point:Landroid/graphics/PointF;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;ZLcom/otaliastudios/cameraview/gesture/Gesture;Landroid/graphics/PointF;)V
    .locals 0

    .line 2287
    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$7;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iput-boolean p2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$7;->val$success:Z

    iput-object p3, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$7;->val$gesture:Lcom/otaliastudios/cameraview/gesture/Gesture;

    iput-object p4, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$7;->val$point:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2290
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$7;->val$success:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$7;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraView;->access$400(Lcom/otaliastudios/cameraview/CameraView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2291
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$7;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/otaliastudios/cameraview/CameraView;->access$500(Lcom/otaliastudios/cameraview/CameraView;I)V

    .line 2294
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$7;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraView;->access$600(Lcom/otaliastudios/cameraview/CameraView;)Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2295
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$7;->val$gesture:Lcom/otaliastudios/cameraview/gesture/Gesture;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/otaliastudios/cameraview/markers/AutoFocusTrigger;->GESTURE:Lcom/otaliastudios/cameraview/markers/AutoFocusTrigger;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/otaliastudios/cameraview/markers/AutoFocusTrigger;->METHOD:Lcom/otaliastudios/cameraview/markers/AutoFocusTrigger;

    .line 2297
    :goto_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$7;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/CameraView;->access$600(Lcom/otaliastudios/cameraview/CameraView;)Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;

    move-result-object v1

    iget-boolean v2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$7;->val$success:Z

    iget-object v3, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$7;->val$point:Landroid/graphics/PointF;

    invoke-interface {v1, v0, v2, v3}, Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;->onAutoFocusEnd(Lcom/otaliastudios/cameraview/markers/AutoFocusTrigger;ZLandroid/graphics/PointF;)V

    .line 2300
    :cond_2
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$7;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/CameraListener;

    .line 2301
    iget-boolean v2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$7;->val$success:Z

    iget-object v3, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$7;->val$point:Landroid/graphics/PointF;

    invoke-virtual {v1, v2, v3}, Lcom/otaliastudios/cameraview/CameraListener;->onAutoFocusEnd(ZLandroid/graphics/PointF;)V

    goto :goto_1

    :cond_3
    return-void
.end method
