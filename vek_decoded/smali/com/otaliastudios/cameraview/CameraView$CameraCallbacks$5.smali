.class Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$5;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->dispatchOnVideoTaken(Lcom/otaliastudios/cameraview/VideoResult$Stub;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

.field final synthetic val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;Lcom/otaliastudios/cameraview/VideoResult$Stub;)V
    .locals 0

    .line 2250
    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$5;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$5;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2253
    new-instance v0, Lcom/otaliastudios/cameraview/VideoResult;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$5;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    invoke-direct {v0, v1}, Lcom/otaliastudios/cameraview/VideoResult;-><init>(Lcom/otaliastudios/cameraview/VideoResult$Stub;)V

    .line 2254
    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$5;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->this$0:Lcom/otaliastudios/cameraview/CameraView;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/CameraView;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/otaliastudios/cameraview/CameraListener;

    .line 2255
    invoke-virtual {v2, v0}, Lcom/otaliastudios/cameraview/CameraListener;->onVideoTaken(Lcom/otaliastudios/cameraview/VideoResult;)V

    goto :goto_0

    :cond_0
    return-void
.end method
