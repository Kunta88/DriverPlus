.class Lcom/otaliastudios/cameraview/engine/CameraEngine$4;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


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
        "Lcom/google/android/gms/tasks/SuccessContinuation<",
        "Lcom/otaliastudios/cameraview/CameraOptions;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$4;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/otaliastudios/cameraview/CameraOptions;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/cameraview/CameraOptions;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$4;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->access$200(Lcom/otaliastudios/cameraview/engine/CameraEngine;)Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->dispatchOnCameraOpened(Lcom/otaliastudios/cameraview/CameraOptions;)V

    const/4 p1, 0x0

    .line 401
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 399
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Null options!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 393
    check-cast p1, Lcom/otaliastudios/cameraview/CameraOptions;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine$4;->then(Lcom/otaliastudios/cameraview/CameraOptions;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
