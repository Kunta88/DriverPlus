.class public Lcom/otaliastudios/cameraview/engine/meter/MeterResetAction;
.super Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;
.source "MeterResetAction.java"


# instance fields
.field private final action:Lcom/otaliastudios/cameraview/engine/action/BaseAction;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    .line 22
    new-instance v1, Lcom/otaliastudios/cameraview/engine/meter/ExposureReset;

    invoke-direct {v1}, Lcom/otaliastudios/cameraview/engine/meter/ExposureReset;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/otaliastudios/cameraview/engine/meter/FocusReset;

    invoke-direct {v1}, Lcom/otaliastudios/cameraview/engine/meter/FocusReset;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/otaliastudios/cameraview/engine/meter/WhiteBalanceReset;

    invoke-direct {v1}, Lcom/otaliastudios/cameraview/engine/meter/WhiteBalanceReset;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/action/Actions;->together([Lcom/otaliastudios/cameraview/engine/action/BaseAction;)Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterResetAction;->action:Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    return-void
.end method


# virtual methods
.method public getAction()Lcom/otaliastudios/cameraview/engine/action/BaseAction;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/meter/MeterResetAction;->action:Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    return-object v0
.end method
