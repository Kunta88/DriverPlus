.class Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$7;
.super Ljava/lang/Object;
.source "CameraBaseEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->stopVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)V
    .locals 0

    .line 642
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$7;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 645
    sget-object v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "stopVideo"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "running. isTakingVideo?"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$7;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->isTakingVideo()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 646
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$7;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->onStopVideo()V

    return-void
.end method
