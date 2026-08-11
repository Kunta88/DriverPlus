.class Lcom/otaliastudios/cameraview/engine/CameraEngine$8;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/CameraEngine;->startBind()Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/tasks/Task<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$8;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$8;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getPreview()Lcom/otaliastudios/cameraview/preview/CameraPreview;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$8;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getPreview()Lcom/otaliastudios/cameraview/preview/CameraPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$8;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->onStartBind()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 472
    :cond_0
    invoke-static {}, Lcom/google/android/gms/tasks/Tasks;->forCanceled()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 466
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$8;->call()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
