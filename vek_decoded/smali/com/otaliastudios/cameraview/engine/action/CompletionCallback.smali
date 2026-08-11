.class public abstract Lcom/otaliastudios/cameraview/engine/action/CompletionCallback;
.super Ljava/lang/Object;
.source "CompletionCallback.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/engine/action/ActionCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract onActionCompleted(Lcom/otaliastudios/cameraview/engine/action/Action;)V
.end method

.method public final onActionStateChanged(Lcom/otaliastudios/cameraview/engine/action/Action;I)V
    .locals 1

    const v0, 0x7fffffff

    if-ne p2, v0, :cond_0

    .line 18
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/action/CompletionCallback;->onActionCompleted(Lcom/otaliastudios/cameraview/engine/action/Action;)V

    :cond_0
    return-void
.end method
