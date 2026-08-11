.class public Lcom/otaliastudios/cameraview/engine/lock/LockAction;
.super Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;
.source "LockAction.java"


# instance fields
.field private final action:Lcom/otaliastudios/cameraview/engine/action/BaseAction;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 13
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    .line 15
    new-instance v1, Lcom/otaliastudios/cameraview/engine/lock/ExposureLock;

    invoke-direct {v1}, Lcom/otaliastudios/cameraview/engine/lock/ExposureLock;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/otaliastudios/cameraview/engine/lock/FocusLock;

    invoke-direct {v1}, Lcom/otaliastudios/cameraview/engine/lock/FocusLock;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/otaliastudios/cameraview/engine/lock/WhiteBalanceLock;

    invoke-direct {v1}, Lcom/otaliastudios/cameraview/engine/lock/WhiteBalanceLock;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/action/Actions;->together([Lcom/otaliastudios/cameraview/engine/action/BaseAction;)Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/lock/LockAction;->action:Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    return-void
.end method


# virtual methods
.method public getAction()Lcom/otaliastudios/cameraview/engine/action/BaseAction;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/lock/LockAction;->action:Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    return-object v0
.end method
