.class Lcom/otaliastudios/cameraview/engine/CameraEngine$1;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/engine/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$1;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJobWorker(Ljava/lang/String;)Lcom/otaliastudios/cameraview/internal/WorkerHandler;
    .locals 0

    .line 146
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$1;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->access$000(Lcom/otaliastudios/cameraview/engine/CameraEngine;)Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    move-result-object p1

    return-object p1
.end method

.method public handleJobException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 151
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$1;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->access$100(Lcom/otaliastudios/cameraview/engine/CameraEngine;Ljava/lang/Throwable;Z)V

    return-void
.end method
