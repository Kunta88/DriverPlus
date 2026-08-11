.class Lcom/otaliastudios/cameraview/engine/Camera1Engine$4;
.super Ljava/lang/Object;
.source "Camera1Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/Camera1Engine;->setHdr(Lcom/otaliastudios/cameraview/controls/Hdr;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

.field final synthetic val$old:Lcom/otaliastudios/cameraview/controls/Hdr;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Lcom/otaliastudios/cameraview/controls/Hdr;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$4;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$4;->val$old:Lcom/otaliastudios/cameraview/controls/Hdr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 607
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$4;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->access$000(Lcom/otaliastudios/cameraview/engine/Camera1Engine;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 608
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$4;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$4;->val$old:Lcom/otaliastudios/cameraview/controls/Hdr;

    invoke-static {v1, v0, v2}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->access$400(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Landroid/hardware/Camera$Parameters;Lcom/otaliastudios/cameraview/controls/Hdr;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$4;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->access$000(Lcom/otaliastudios/cameraview/engine/Camera1Engine;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method
