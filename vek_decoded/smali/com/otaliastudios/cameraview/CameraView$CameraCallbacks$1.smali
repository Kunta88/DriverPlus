.class Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$1;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->dispatchOnCameraOpened(Lcom/otaliastudios/cameraview/CameraOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

.field final synthetic val$options:Lcom/otaliastudios/cameraview/CameraOptions;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;Lcom/otaliastudios/cameraview/CameraOptions;)V
    .locals 0

    .line 2179
    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$1;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$1;->val$options:Lcom/otaliastudios/cameraview/CameraOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2182
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$1;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

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

    .line 2183
    iget-object v2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$1;->val$options:Lcom/otaliastudios/cameraview/CameraOptions;

    invoke-virtual {v1, v2}, Lcom/otaliastudios/cameraview/CameraListener;->onCameraOpened(Lcom/otaliastudios/cameraview/CameraOptions;)V

    goto :goto_0

    :cond_0
    return-void
.end method
