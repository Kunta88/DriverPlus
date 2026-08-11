.class Lcom/otaliastudios/cameraview/internal/WorkerHandler$2;
.super Ljava/lang/Object;
.source "WorkerHandler.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/internal/WorkerHandler;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/internal/WorkerHandler;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/internal/WorkerHandler;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler$2;->this$0:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler$2;->this$0:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->run(Ljava/lang/Runnable;)V

    return-void
.end method
