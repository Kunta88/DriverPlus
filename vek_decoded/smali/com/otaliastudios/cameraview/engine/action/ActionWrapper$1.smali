.class Lcom/otaliastudios/cameraview/engine/action/ActionWrapper$1;
.super Ljava/lang/Object;
.source "ActionWrapper.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/engine/action/ActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;->onStart(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper$1;->this$0:Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionStateChanged(Lcom/otaliastudios/cameraview/engine/action/Action;I)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper$1;->this$0:Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;

    invoke-virtual {v0, p2}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;->setState(I)V

    const v0, 0x7fffffff

    if-ne p2, v0, :cond_0

    .line 33
    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/Action;->removeCallback(Lcom/otaliastudios/cameraview/engine/action/ActionCallback;)V

    :cond_0
    return-void
.end method
