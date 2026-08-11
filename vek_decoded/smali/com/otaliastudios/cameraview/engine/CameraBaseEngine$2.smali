.class Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$2;
.super Ljava/lang/Object;
.source "CameraBaseEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->setMode(Lcom/otaliastudios/cameraview/controls/Mode;)V
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

    .line 403
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$2;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$2;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->restart()V

    return-void
.end method
