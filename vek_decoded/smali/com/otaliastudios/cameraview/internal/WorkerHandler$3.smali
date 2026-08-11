.class Lcom/otaliastudios/cameraview/internal/WorkerHandler$3;
.super Ljava/lang/Object;
.source "WorkerHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/internal/WorkerHandler;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler$3;->this$0:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
