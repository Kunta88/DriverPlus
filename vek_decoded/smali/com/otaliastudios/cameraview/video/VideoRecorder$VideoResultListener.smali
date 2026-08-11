.class public interface abstract Lcom/otaliastudios/cameraview/video/VideoRecorder$VideoResultListener;
.super Ljava/lang/Object;
.source "VideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/video/VideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoResultListener"
.end annotation


# virtual methods
.method public abstract onVideoRecordingEnd()V
.end method

.method public abstract onVideoRecordingStart()V
.end method

.method public abstract onVideoResult(Lcom/otaliastudios/cameraview/VideoResult$Stub;Ljava/lang/Exception;)V
.end method
