.class Lcom/otaliastudios/cameraview/engine/CameraEngine$5;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/CameraEngine;->startEngine()Lcom/google/android/gms/tasks/Task;
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
        "Lcom/otaliastudios/cameraview/CameraOptions;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$5;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/otaliastudios/cameraview/CameraOptions;",
            ">;"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$5;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getFacing()Lcom/otaliastudios/cameraview/controls/Facing;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->collectCameraInfo(Lcom/otaliastudios/cameraview/controls/Facing;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$5;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->onStartEngine()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 388
    :cond_0
    sget-object v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onStartEngine:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "No camera available for facing"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$5;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->getFacing()Lcom/otaliastudios/cameraview/controls/Facing;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 389
    new-instance v0, Lcom/otaliastudios/cameraview/CameraException;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/otaliastudios/cameraview/CameraException;-><init>(I)V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 384
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$5;->call()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
