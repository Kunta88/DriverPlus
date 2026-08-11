.class public interface abstract Lcom/otaliastudios/cameraview/engine/action/Action;
.super Ljava/lang/Object;
.source "Action.java"


# static fields
.field public static final STATE_COMPLETED:I = 0x7fffffff


# virtual methods
.method public abstract abort(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
.end method

.method public abstract addCallback(Lcom/otaliastudios/cameraview/engine/action/ActionCallback;)V
.end method

.method public abstract getState()I
.end method

.method public abstract onCaptureCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
.end method

.method public abstract onCaptureProgressed(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
.end method

.method public abstract onCaptureStarted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;)V
.end method

.method public abstract removeCallback(Lcom/otaliastudios/cameraview/engine/action/ActionCallback;)V
.end method

.method public abstract start(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
.end method
