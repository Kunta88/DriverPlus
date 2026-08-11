.class public Lcom/otaliastudios/cameraview/engine/action/Actions;
.super Ljava/lang/Object;
.source "Actions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs sequence([Lcom/otaliastudios/cameraview/engine/action/BaseAction;)Lcom/otaliastudios/cameraview/engine/action/BaseAction;
    .locals 1

    .line 39
    new-instance v0, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static timeout(JLcom/otaliastudios/cameraview/engine/action/BaseAction;)Lcom/otaliastudios/cameraview/engine/action/BaseAction;
    .locals 1

    .line 53
    new-instance v0, Lcom/otaliastudios/cameraview/engine/action/TimeoutAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/action/TimeoutAction;-><init>(JLcom/otaliastudios/cameraview/engine/action/BaseAction;)V

    return-object v0
.end method

.method public static varargs together([Lcom/otaliastudios/cameraview/engine/action/BaseAction;)Lcom/otaliastudios/cameraview/engine/action/BaseAction;
    .locals 1

    .line 26
    new-instance v0, Lcom/otaliastudios/cameraview/engine/action/TogetherAction;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/engine/action/TogetherAction;-><init>(Ljava/util/List;)V

    return-object v0
.end method
