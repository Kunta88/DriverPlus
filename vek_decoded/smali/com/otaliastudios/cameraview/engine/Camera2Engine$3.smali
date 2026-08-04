.class Lcom/otaliastudios/cameraview/engine/Camera2Engine$3;
.super Ljava/lang/Object;
.source "Camera2Engine.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/Camera2Engine;->onStartBind()Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

.field final synthetic val$output:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Ljava/lang/Object;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$3;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$3;->val$output:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 492
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    .line 495
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$3;->val$output:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$3;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreviewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 496
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$3;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-object v2, v2, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->mPreviewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 497
    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v2

    .line 495
    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    const/4 v0, 0x0

    return-object v0
.end method
