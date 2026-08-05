.class public Lcom/txdriver/socket/ResponseHandler;
.super Ljava/lang/Object;
.source "ResponseHandler.java"


# static fields
.field private static final PENDING_TIME:J = 0x2710L


# instance fields
.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private handler:Landroid/os/Handler;

.field private pendingQueue:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private pendingStartedAt:J

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/txdriver/socket/ResponseHandler;->pendingQueue:Ljava/util/Set;

    .line 21
    new-instance v0, Lcom/txdriver/socket/ResponseHandler$1;

    invoke-direct {v0, p0}, Lcom/txdriver/socket/ResponseHandler$1;-><init>(Lcom/txdriver/socket/ResponseHandler;)V

    iput-object v0, p0, Lcom/txdriver/socket/ResponseHandler;->runnable:Ljava/lang/Runnable;

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/txdriver/socket/ResponseHandler;->handler:Landroid/os/Handler;

    .line 30
    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/socket/ResponseHandler;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/socket/ResponseHandler;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/txdriver/socket/ResponseHandler;->cancelPending()V

    return-void
.end method

.method private cancelPending()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/txdriver/socket/ResponseHandler;->pendingQueue:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/txdriver/socket/ResponseHandler;->pendingQueue:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 57
    iget-object v0, p0, Lcom/txdriver/socket/ResponseHandler;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/txdriver/socket/SocketEvents$PendingResponseEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/txdriver/socket/SocketEvents$PendingResponseEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onDisconnected()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/txdriver/socket/ResponseHandler;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/txdriver/socket/ResponseHandler;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    invoke-direct {p0}, Lcom/txdriver/socket/ResponseHandler;->cancelPending()V

    return-void
.end method

.method public onRead(Lcom/txdriver/socket/packet/ServerPacket;)V
    .locals 7

    .line 34
    iget-object v0, p0, Lcom/txdriver/socket/ResponseHandler;->pendingQueue:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/txdriver/socket/packet/ServerPacket;->getCode()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/txdriver/socket/ResponseHandler;->pendingStartedAt:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_rtt

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-object v0, p0, Lcom/txdriver/socket/ResponseHandler;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/txdriver/socket/SocketEvents$RttEvent;

    invoke-direct {v1, v2, v3}, Lcom/txdriver/socket/SocketEvents$RttEvent;-><init>(J)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_rtt

    iget-object p1, p0, Lcom/txdriver/socket/ResponseHandler;->pendingQueue:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/txdriver/socket/ResponseHandler;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/txdriver/socket/SocketEvents$PendingResponseEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/txdriver/socket/SocketEvents$PendingResponseEvent;-><init>(Z)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lcom/txdriver/socket/ResponseHandler;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/txdriver/socket/ResponseHandler;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onWrite(Lcom/txdriver/socket/packet/ClientPacket;)V
    .locals 5

    .line 41
    invoke-virtual {p1}, Lcom/txdriver/socket/packet/ClientPacket;->onWrite()V

    .line 42
    invoke-virtual {p1}, Lcom/txdriver/socket/packet/ClientPacket;->isResponseRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/socket/ResponseHandler;->pendingStartedAt:J

    .line 43
    iget-object v0, p0, Lcom/txdriver/socket/ResponseHandler;->pendingQueue:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/txdriver/socket/packet/ClientPacket;->getCode()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object p1, p0, Lcom/txdriver/socket/ResponseHandler;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/txdriver/socket/SocketEvents$PendingResponseEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/txdriver/socket/SocketEvents$PendingResponseEvent;-><init>(Z)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lcom/txdriver/socket/ResponseHandler;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/txdriver/socket/ResponseHandler;->runnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
