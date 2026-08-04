.class Lcom/otaliastudios/cameraview/engine/action/TimeoutAction;
.super Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;
.source "TimeoutAction.java"


# instance fields
.field private action:Lcom/otaliastudios/cameraview/engine/action/BaseAction;

.field private startMillis:J

.field private timeoutMillis:J


# direct methods
.method constructor <init>(JLcom/otaliastudios/cameraview/engine/action/BaseAction;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/otaliastudios/cameraview/engine/action/TimeoutAction;->timeoutMillis:J

    .line 23
    iput-object p3, p0, Lcom/otaliastudios/cameraview/engine/action/TimeoutAction;->action:Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    return-void
.end method


# virtual methods
.method public getAction()Lcom/otaliastudios/cameraview/engine/action/BaseAction;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/action/TimeoutAction;->action:Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    return-object v0
.end method

.method public onCaptureCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4

    .line 42
    invoke-super {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;->onCaptureCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 43
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/action/TimeoutAction;->isCompleted()Z

    move-result p2

    if-nez p2, :cond_0

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/otaliastudios/cameraview/engine/action/TimeoutAction;->startMillis:J

    iget-wide v2, p0, Lcom/otaliastudios/cameraview/engine/action/TimeoutAction;->timeoutMillis:J

    add-long/2addr v0, v2

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/action/TimeoutAction;->getAction()Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->abort(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    :cond_0
    return-void
.end method

.method protected onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 2

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/otaliastudios/cameraview/engine/action/TimeoutAction;->startMillis:J

    .line 35
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;->onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    return-void
.end method
