.class Lcom/otaliastudios/cameraview/engine/action/SequenceAction;
.super Lcom/otaliastudios/cameraview/engine/action/BaseAction;
.source "SequenceAction.java"


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

.field private runningAction:I


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/otaliastudios/cameraview/engine/action/BaseAction;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;->runningAction:I

    .line 24
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;->actions:Ljava/util/List;

    .line 25
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;->increaseRunningAction()V

    return-void
.end method

.method static synthetic access$000(Lcom/otaliastudios/cameraview/engine/action/SequenceAction;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;->increaseRunningAction()V

    return-void
.end method

.method private increaseRunningAction()V
    .locals 5

    .line 29
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;->runningAction:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 30
    :goto_0
    iget-object v4, p0, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;->actions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v0, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    const v0, 0x7fffffff

    .line 33
    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;->setState(I)V

    goto :goto_1

    .line 35
    :cond_2
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;->runningAction:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;->runningAction:I

    .line 36
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;->actions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    new-instance v1, Lcom/otaliastudios/cameraview/engine/action/SequenceAction$1;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/engine/action/SequenceAction$1;-><init>(Lcom/otaliastudios/cameraview/engine/action/SequenceAction;)V

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->addCallback(Lcom/otaliastudios/cameraview/engine/action/ActionCallback;)V

    if-nez v3, :cond_3

    .line 46
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;->actions:Ljava/util/List;

    iget v1, p0, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;->runningAction:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;->getHolder()Lcom/otaliastudios/cameraview/engine/action/ActionHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected onAbort(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 2

    .line 61
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onAbort(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    .line 62
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;->runningAction:I

    if-ltz v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;->actions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onAbort(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    :cond_0
    return-void
.end method

.method public onCaptureCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onCaptureCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 92
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;->runningAction:I

    if-ltz v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;->actions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    invoke-virtual {v0, p1, p2, p3}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onCaptureCompleted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    :cond_0
    return-void
.end method

.method public onCaptureProgressed(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onCaptureProgressed(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 82
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;->runningAction:I

    if-ltz v0, :cond_0

    .line 83
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;->actions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    invoke-virtual {v0, p1, p2, p3}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onCaptureProgressed(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    :cond_0
    return-void
.end method

.method public onCaptureStarted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 2

    .line 71
    invoke-super {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onCaptureStarted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;)V

    .line 72
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;->runningAction:I

    if-ltz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;->actions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    invoke-virtual {v0, p1, p2}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onCaptureStarted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;)V

    :cond_0
    return-void
.end method

.method protected onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    .line 54
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;->runningAction:I

    if-ltz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;->actions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    :cond_0
    return-void
.end method
