.class Lcom/otaliastudios/cameraview/engine/action/SequenceAction$1;
.super Ljava/lang/Object;
.source "SequenceAction.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/engine/action/ActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/action/SequenceAction;->increaseRunningAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/action/SequenceAction;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/action/SequenceAction;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/action/SequenceAction$1;->this$0:Lcom/otaliastudios/cameraview/engine/action/SequenceAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionStateChanged(Lcom/otaliastudios/cameraview/engine/action/Action;I)V
    .locals 1

    const v0, 0x7fffffff

    if-ne p2, v0, :cond_0

    .line 40
    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/Action;->removeCallback(Lcom/otaliastudios/cameraview/engine/action/ActionCallback;)V

    .line 41
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/action/SequenceAction$1;->this$0:Lcom/otaliastudios/cameraview/engine/action/SequenceAction;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/engine/action/SequenceAction;->access$000(Lcom/otaliastudios/cameraview/engine/action/SequenceAction;)V

    :cond_0
    return-void
.end method
