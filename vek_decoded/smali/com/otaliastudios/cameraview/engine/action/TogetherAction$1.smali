.class Lcom/otaliastudios/cameraview/engine/action/TogetherAction$1;
.super Ljava/lang/Object;
.source "TogetherAction.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/engine/action/ActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/action/TogetherAction;-><init>(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/action/TogetherAction;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/action/TogetherAction;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/action/TogetherAction$1;->this$0:Lcom/otaliastudios/cameraview/engine/action/TogetherAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionStateChanged(Lcom/otaliastudios/cameraview/engine/action/Action;I)V
    .locals 1

    const v0, 0x7fffffff

    if-ne p2, v0, :cond_0

    .line 33
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/action/TogetherAction$1;->this$0:Lcom/otaliastudios/cameraview/engine/action/TogetherAction;

    invoke-static {p2}, Lcom/otaliastudios/cameraview/engine/action/TogetherAction;->access$000(Lcom/otaliastudios/cameraview/engine/action/TogetherAction;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/action/TogetherAction$1;->this$0:Lcom/otaliastudios/cameraview/engine/action/TogetherAction;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/engine/action/TogetherAction;->access$000(Lcom/otaliastudios/cameraview/engine/action/TogetherAction;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 36
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/action/TogetherAction$1;->this$0:Lcom/otaliastudios/cameraview/engine/action/TogetherAction;

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/engine/action/TogetherAction;->setState(I)V

    :cond_1
    return-void
.end method
