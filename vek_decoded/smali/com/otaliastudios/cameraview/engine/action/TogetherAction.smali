.class Lcom/otaliastudios/cameraview/engine/action/TogetherAction;
.super Lcom/otaliastudios/cameraview/engine/action/BaseAction;
.source "TogetherAction.java"


# instance fields
.field private final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/cameraview/engine/action/BaseAction;",
            ">;"
        }
    .end annotation
.end field

.field private final runningActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/cameraview/engine/action/BaseAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/otaliastudios/cameraview/engine/action/BaseAction;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/action/TogetherAction;->actions:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/action/TogetherAction;->runningActions:Ljava/util/List;

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    .line 28
    new-instance v1, Lcom/otaliastudios/cameraview/engine/action/TogetherAction$1;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/engine/action/TogetherAction$1;-><init>(Lcom/otaliastudios/cameraview/engine/action/TogetherAction;)V

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->addCallback(Lcom/otaliastudios/cameraview/engine/action/ActionCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/otaliastudios/cameraview/engine/action/TogetherAction;)Ljava/util/List;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/action/TogetherAction;->runningActions:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected onAbort(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 3

    .line 53
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onAbort(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    .line 54
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/action/TogetherAction;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    .line 55
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onAbort(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCaptureCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onCaptureCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 82
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/action/TogetherAction;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    .line 83
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onCaptureCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCaptureProgressed(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 3

    .line 71
    invoke-super {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onCaptureProgressed(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 72
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/action/TogetherAction;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    .line 73
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onCaptureProgressed(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCaptureStarted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 3

    .line 61
    invoke-super {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onCaptureStarted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;)V

    .line 62
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/action/TogetherAction;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    .line 63
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onCaptureStarted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 3

    .line 45
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    .line 46
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/action/TogetherAction;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    .line 47
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    goto :goto_0

    :cond_1
    return-void
.end method
