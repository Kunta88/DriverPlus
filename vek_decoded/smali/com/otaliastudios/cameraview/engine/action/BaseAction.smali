.class public abstract Lcom/otaliastudios/cameraview/engine/action/BaseAction;
.super Ljava/lang/Object;
.source "BaseAction.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/engine/action/Action;


# instance fields
.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/cameraview/engine/action/ActionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private holder:Lcom/otaliastudios/cameraview/engine/action/ActionHolder;

.field private needsOnStart:Z

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->callbacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final abort(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 1

    .line 53
    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->removeAction(Lcom/otaliastudios/cameraview/engine/action/Action;)V

    .line 54
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onAbort(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    const p1, 0x7fffffff

    .line 56
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->setState(I)V

    :cond_0
    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->needsOnStart:Z

    return-void
.end method

.method public addCallback(Lcom/otaliastudios/cameraview/engine/action/ActionCallback;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->getState()I

    move-result v0

    invoke-interface {p1, p0, v0}, Lcom/otaliastudios/cameraview/engine/action/ActionCallback;->onActionStateChanged(Lcom/otaliastudios/cameraview/engine/action/Action;I)V

    :cond_0
    return-void
.end method

.method protected getHolder()Lcom/otaliastudios/cameraview/engine/action/ActionHolder;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->holder:Lcom/otaliastudios/cameraview/engine/action/ActionHolder;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->state:I

    return v0
.end method

.method public isCompleted()Z
    .locals 2

    .line 130
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->state:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAbort(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 0

    return-void
.end method

.method public onCaptureCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    return-void
.end method

.method public onCaptureProgressed(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public onCaptureStarted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    .line 87
    iget-boolean p2, p0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->needsOnStart:Z

    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    const/4 p1, 0x0

    .line 89
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->needsOnStart:Z

    :cond_0
    return-void
.end method

.method protected onCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 0

    return-void
.end method

.method protected onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->holder:Lcom/otaliastudios/cameraview/engine/action/ActionHolder;

    return-void
.end method

.method protected readCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->holder:Lcom/otaliastudios/cameraview/engine/action/ActionHolder;

    invoke-interface {v0, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->getCharacteristics(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    return-object p2
.end method

.method public removeCallback(Lcom/otaliastudios/cameraview/engine/action/ActionCallback;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final setState(I)V
    .locals 2

    .line 113
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->state:I

    if-eq p1, v0, :cond_1

    .line 114
    iput p1, p0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->state:I

    .line 115
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->callbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/engine/action/ActionCallback;

    .line 116
    iget v1, p0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->state:I

    invoke-interface {v0, p0, v1}, Lcom/otaliastudios/cameraview/engine/action/ActionCallback;->onActionStateChanged(Lcom/otaliastudios/cameraview/engine/action/Action;I)V

    goto :goto_0

    .line 118
    :cond_0
    iget p1, p0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->state:I

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_1

    .line 119
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->holder:Lcom/otaliastudios/cameraview/engine/action/ActionHolder;

    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->removeAction(Lcom/otaliastudios/cameraview/engine/action/Action;)V

    .line 120
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->holder:Lcom/otaliastudios/cameraview/engine/action/ActionHolder;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    :cond_1
    return-void
.end method

.method public final start(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 1

    .line 42
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->holder:Lcom/otaliastudios/cameraview/engine/action/ActionHolder;

    .line 43
    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->addAction(Lcom/otaliastudios/cameraview/engine/action/Action;)V

    .line 44
    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->getLastResult(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->needsOnStart:Z

    :goto_0
    return-void
.end method
