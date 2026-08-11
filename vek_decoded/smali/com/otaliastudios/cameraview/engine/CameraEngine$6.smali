.class Lcom/otaliastudios/cameraview/engine/CameraEngine$6;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/CameraEngine;->stopEngine(Z)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$6;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 416
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine$6;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 0

    .line 421
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$6;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->access$200(Lcom/otaliastudios/cameraview/engine/CameraEngine;)Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    move-result-object p1

    invoke-interface {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->dispatchOnCameraClosed()V

    return-void
.end method
