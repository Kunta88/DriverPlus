.class Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$3;
.super Ljava/lang/Object;
.source "CameraOrchestrator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->scheduleDelayed(Ljava/lang/String;JLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$3;->this$0:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$3;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$3;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$3;->this$0:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$3;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$3;->val$runnable:Ljava/lang/Runnable;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->schedule(Ljava/lang/String;ZLjava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    .line 139
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$3;->this$0:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$3;->this$0:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->access$300(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$3;->this$0:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->access$300(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$3;->val$name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
