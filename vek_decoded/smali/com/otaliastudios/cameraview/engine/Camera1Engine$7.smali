.class Lcom/otaliastudios/cameraview/engine/Camera1Engine$7;
.super Ljava/lang/Object;
.source "Camera1Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/Camera1Engine;->setPlaySounds(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

.field final synthetic val$old:Z


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Z)V
    .locals 0

    .line 708
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$7;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iput-boolean p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$7;->val$old:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 711
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$7;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-boolean v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$7;->val$old:Z

    invoke-static {v0, v1}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->access$700(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Z)Z

    return-void
.end method
