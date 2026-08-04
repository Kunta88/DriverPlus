.class public interface abstract Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;
.super Ljava/lang/Object;
.source "CameraEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/engine/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract dispatchError(Lcom/otaliastudios/cameraview/CameraException;)V
.end method

.method public abstract dispatchFrame(Lcom/otaliastudios/cameraview/frame/Frame;)V
.end method

.method public abstract dispatchOnCameraClosed()V
.end method

.method public abstract dispatchOnCameraOpened(Lcom/otaliastudios/cameraview/CameraOptions;)V
.end method

.method public abstract dispatchOnExposureCorrectionChanged(F[F[Landroid/graphics/PointF;)V
.end method

.method public abstract dispatchOnFocusEnd(Lcom/otaliastudios/cameraview/gesture/Gesture;ZLandroid/graphics/PointF;)V
.end method

.method public abstract dispatchOnFocusStart(Lcom/otaliastudios/cameraview/gesture/Gesture;Landroid/graphics/PointF;)V
.end method

.method public abstract dispatchOnPictureTaken(Lcom/otaliastudios/cameraview/PictureResult$Stub;)V
.end method

.method public abstract dispatchOnVideoRecordingEnd()V
.end method

.method public abstract dispatchOnVideoRecordingStart()V
.end method

.method public abstract dispatchOnVideoTaken(Lcom/otaliastudios/cameraview/VideoResult$Stub;)V
.end method

.method public abstract dispatchOnZoomChanged(F[Landroid/graphics/PointF;)V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract onCameraPreviewStreamSizeChanged()V
.end method

.method public abstract onShutter(Z)V
.end method
