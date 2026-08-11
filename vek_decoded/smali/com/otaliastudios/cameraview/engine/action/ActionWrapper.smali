.class public abstract Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;
.super Lcom/otaliastudios/cameraview/engine/action/BaseAction;
.source "ActionWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAction()Lcom/otaliastudios/cameraview/engine/action/BaseAction;
.end method

.method protected onAbort(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onAbort(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    .line 43
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;->getAction()Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onAbort(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    return-void
.end method

.method public onCaptureCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onCaptureCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 65
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;->getAction()Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onCaptureCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public onCaptureProgressed(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onCaptureProgressed(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 57
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;->getAction()Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onCaptureProgressed(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onCaptureStarted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 1

    .line 48
    invoke-super {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onCaptureStarted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;)V

    .line 49
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;->getAction()Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onCaptureStarted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method protected onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 2

    .line 27
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    .line 28
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;->getAction()Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object v0

    new-instance v1, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper$1;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper$1;-><init>(Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;)V

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->addCallback(Lcom/otaliastudios/cameraview/engine/action/ActionCallback;)V

    .line 37
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;->getAction()Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    return-void
.end method
