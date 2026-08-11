.class Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2$1;
.super Ljava/lang/Object;
.source "Camera1Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;->onAutoFocus(ZLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;)V
    .locals 0

    .line 913
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2$1;->this$2:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 916
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2$1;->this$2:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;->this$1:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->access$000(Lcom/otaliastudios/cameraview/engine/Camera1Engine;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 917
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2$1;->this$2:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;->this$1:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->access$000(Lcom/otaliastudios/cameraview/engine/Camera1Engine;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 918
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    .line 919
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v2

    const/4 v3, 0x0

    if-lez v1, :cond_0

    .line 920
    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    :cond_0
    if-lez v2, :cond_1

    .line 921
    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 922
    :cond_1
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2$1;->this$2:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;->this$1:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-static {v1, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->access$900(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Landroid/hardware/Camera$Parameters;)V

    .line 923
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2$1;->this$2:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;->this$1:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->access$000(Lcom/otaliastudios/cameraview/engine/Camera1Engine;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method
