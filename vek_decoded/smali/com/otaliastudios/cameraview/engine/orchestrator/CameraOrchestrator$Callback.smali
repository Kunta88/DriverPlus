.class public interface abstract Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Callback;
.super Ljava/lang/Object;
.source "CameraOrchestrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract getJobWorker(Ljava/lang/String;)Lcom/otaliastudios/cameraview/internal/WorkerHandler;
.end method

.method public abstract handleJobException(Ljava/lang/String;Ljava/lang/Exception;)V
.end method
