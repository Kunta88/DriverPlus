.class Lcom/otaliastudios/cameraview/engine/Camera2Engine$23$1$1;
.super Ljava/lang/Object;
.source "Camera2Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/Camera2Engine$23$1;->onActionCompleted(Lcom/otaliastudios/cameraview/engine/action/Action;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/otaliastudios/cameraview/engine/Camera2Engine$23$1;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine$23$1;)V
    .locals 0

    .line 1554
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$23$1$1;->this$2:Lcom/otaliastudios/cameraview/engine/Camera2Engine$23$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1557
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$23$1$1;->this$2:Lcom/otaliastudios/cameraview/engine/Camera2Engine$23$1;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$23$1;->this$1:Lcom/otaliastudios/cameraview/engine/Camera2Engine$23;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$23;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->access$1100(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)V

    return-void
.end method
