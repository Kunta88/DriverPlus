.class public interface abstract Lcom/otaliastudios/cameraview/engine/action/ActionHolder;
.super Ljava/lang/Object;
.source "ActionHolder.java"


# virtual methods
.method public abstract addAction(Lcom/otaliastudios/cameraview/engine/action/Action;)V
.end method

.method public abstract applyBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;)V
.end method

.method public abstract applyBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract getBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/CaptureRequest$Builder;
.end method

.method public abstract getCharacteristics(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/CameraCharacteristics;
.end method

.method public abstract getLastResult(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/TotalCaptureResult;
.end method

.method public abstract removeAction(Lcom/otaliastudios/cameraview/engine/action/Action;)V
.end method
