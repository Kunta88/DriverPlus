.class public abstract Lcom/otaliastudios/cameraview/engine/lock/BaseLock;
.super Lcom/otaliastudios/cameraview/engine/action/BaseAction;
.source "BaseLock.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract checkIsSupported(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)Z
.end method

.method protected abstract checkShouldSkip(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)Z
.end method

.method protected final onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 2

    .line 17
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/lock/BaseLock;->checkShouldSkip(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)Z

    move-result v0

    .line 19
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/lock/BaseLock;->checkIsSupported(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/lock/BaseLock;->onStarted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    .line 23
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/lock/BaseLock;->setState(I)V

    :goto_0
    return-void
.end method

.method protected abstract onStarted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
.end method
