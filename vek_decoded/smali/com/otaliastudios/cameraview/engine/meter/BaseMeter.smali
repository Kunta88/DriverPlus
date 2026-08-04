.class public abstract Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;
.super Lcom/otaliastudios/cameraview/engine/action/BaseAction;
.source "BaseMeter.java"


# static fields
.field private static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field private static final TAG:Ljava/lang/String; = "BaseMeter"


# instance fields
.field private final areas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation
.end field

.field private isSuccessful:Z

.field private skipIfPossible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;Z)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;->areas:Ljava/util/List;

    .line 28
    iput-boolean p2, p0, Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;->skipIfPossible:Z

    return-void
.end method


# virtual methods
.method protected abstract checkIsSupported(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)Z
.end method

.method protected abstract checkShouldSkip(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)Z
.end method

.method public isSuccessful()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;->isSuccessful:Z

    return v0
.end method

.method protected final onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 6

    .line 33
    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    .line 34
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;->skipIfPossible:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;->checkShouldSkip(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;->checkIsSupported(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)Z

    move-result v3

    const-string v4, "onStart:"

    const/4 v5, 0x2

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 37
    sget-object v0, Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v4, v3, v1

    const-string v1, "supported and not skipped. Dispatching onStarted."

    aput-object v1, v3, v2

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;->areas:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;->onStarted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Ljava/util/List;)V

    goto :goto_1

    .line 40
    :cond_1
    sget-object p1, Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v4, v0, v1

    const-string v1, "not supported or skipped. Dispatching COMPLETED state."

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    invoke-virtual {p0, v2}, Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;->setSuccessful(Z)V

    const p1, 0x7fffffff

    .line 42
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;->setState(I)V

    :goto_1
    return-void
.end method

.method protected abstract onStarted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/cameraview/engine/action/ActionHolder;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;)V"
        }
    .end annotation
.end method

.method protected setSuccessful(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;->isSuccessful:Z

    return-void
.end method
