.class public Lcom/txdriver/socket/IdleHandler;
.super Ljava/lang/Object;
.source "IdleHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/socket/IdleHandler$ReconnectTask;,
        Lcom/txdriver/socket/IdleHandler$AckTask;
    }
.end annotation


# static fields
.field private static final ACK_INTERVAL:I = 0x1388


# instance fields
.field private ackFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private app:Lcom/txdriver/App;

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private recconectFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/txdriver/socket/IdleHandler;->app:Lcom/txdriver/App;

    return-void
.end method

.method private cancelFutures()V
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcom/txdriver/socket/IdleHandler;->cancelAckFuture()V

    .line 72
    invoke-virtual {p0}, Lcom/txdriver/socket/IdleHandler;->cancelReconnectFuture()V

    return-void
.end method


# virtual methods
.method public cancelAckFuture()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/txdriver/socket/IdleHandler;->ackFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 52
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/txdriver/socket/IdleHandler;->ackFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public cancelReconnectFuture()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/txdriver/socket/IdleHandler;->recconectFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 36
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/txdriver/socket/IdleHandler;->recconectFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public onConnected(Lcom/txdriver/socket/Client;)V
    .locals 1

    .line 58
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/socket/IdleHandler;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 59
    invoke-virtual {p0, p1}, Lcom/txdriver/socket/IdleHandler;->scheduleReconnect(Lcom/txdriver/socket/Client;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/txdriver/socket/IdleHandler;->scheduleAck(Lcom/txdriver/socket/Client;)V

    return-void
.end method

.method public onDisconnected(Lcom/txdriver/socket/Client;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/txdriver/socket/IdleHandler;->cancelFutures()V

    .line 65
    iget-object p1, p0, Lcom/txdriver/socket/IdleHandler;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz p1, :cond_0

    .line 66
    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_0
    return-void
.end method

.method public onRead(Lcom/txdriver/socket/Client;)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/txdriver/socket/IdleHandler;->scheduleReconnect(Lcom/txdriver/socket/Client;)V

    return-void
.end method

.method public onWrite(Lcom/txdriver/socket/Client;)V
    .locals 0

    return-void
.end method

.method public scheduleAck(Lcom/txdriver/socket/Client;)V
    .locals 7

    .line 46
    invoke-virtual {p0}, Lcom/txdriver/socket/IdleHandler;->cancelAckFuture()V

    .line 47
    iget-object v0, p0, Lcom/txdriver/socket/IdleHandler;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/txdriver/socket/IdleHandler$AckTask;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/txdriver/socket/IdleHandler$AckTask;-><init>(Lcom/txdriver/socket/Client;Lcom/txdriver/socket/IdleHandler$1;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x1388

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/socket/IdleHandler;->ackFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public scheduleReconnect(Lcom/txdriver/socket/Client;)V
    .locals 4

    .line 30
    invoke-virtual {p0}, Lcom/txdriver/socket/IdleHandler;->cancelReconnectFuture()V

    .line 31
    iget-object v0, p0, Lcom/txdriver/socket/IdleHandler;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/txdriver/socket/IdleHandler$ReconnectTask;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/txdriver/socket/IdleHandler$ReconnectTask;-><init>(Lcom/txdriver/socket/Client;Lcom/txdriver/socket/IdleHandler$1;)V

    iget-object p1, p0, Lcom/txdriver/socket/IdleHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getIdleTimeout()I

    move-result p1

    int-to-long v2, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/socket/IdleHandler;->recconectFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
