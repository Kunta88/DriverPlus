.class public Lru/yandex/core/CoreApplication$KDTimer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field callerThread:Ljava/lang/Thread;

.field callerThreadId:J

.field delayTimeMs:J

.field eventuserptr:J

.field handler:Landroid/os/Handler;

.field isCancelled:Z

.field isPeriodic:Z


# direct methods
.method constructor <init>(ZJJJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lru/yandex/core/CoreApplication$KDTimer;->callerThread:Ljava/lang/Thread;

    iput-wide p6, p0, Lru/yandex/core/CoreApplication$KDTimer;->callerThreadId:J

    iput-boolean p1, p0, Lru/yandex/core/CoreApplication$KDTimer;->isPeriodic:Z

    const-wide/32 p6, 0xf4240

    div-long/2addr p2, p6

    iput-wide p2, p0, Lru/yandex/core/CoreApplication$KDTimer;->delayTimeMs:J

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lru/yandex/core/CoreApplication$KDTimer;->handler:Landroid/os/Handler;

    iput-wide p4, p0, Lru/yandex/core/CoreApplication$KDTimer;->eventuserptr:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lru/yandex/core/CoreApplication$KDTimer;->isCancelled:Z

    invoke-virtual {p0}, Lru/yandex/core/CoreApplication$KDTimer;->shoot()V

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/core/CoreApplication$KDTimer;->isCancelled:Z

    return-void
.end method

.method public run()V
    .locals 2

    iget-boolean v0, p0, Lru/yandex/core/CoreApplication$KDTimer;->isCancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lru/yandex/core/CoreApplication$KDTimer;->isPeriodic:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lru/yandex/core/CoreApplication$KDTimer;->shoot()V

    :cond_1
    iget-wide v0, p0, Lru/yandex/core/CoreApplication$KDTimer;->eventuserptr:J

    invoke-static {v0, v1}, Lru/yandex/core/CoreApplication;->access$100(J)V

    return-void
.end method

.method shoot()V
    .locals 3

    iget-object v0, p0, Lru/yandex/core/CoreApplication$KDTimer;->handler:Landroid/os/Handler;

    iget-wide v1, p0, Lru/yandex/core/CoreApplication$KDTimer;->delayTimeMs:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
