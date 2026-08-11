.class public Lcom/txdriver/driver/DriversStatesManager;
.super Ljava/lang/Object;
.source "DriversStatesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/driver/DriversStatesManager$FetchStatesTask;
    }
.end annotation


# instance fields
.field private app:Lcom/txdriver/App;

.field private final timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/txdriver/driver/DriversStatesManager;->app:Lcom/txdriver/App;

    .line 26
    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 27
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/txdriver/driver/DriversStatesManager;->timer:Ljava/util/Timer;

    return-void
.end method

.method private scheduleFetchStates()V
    .locals 6

    .line 35
    invoke-virtual {p0}, Lcom/txdriver/driver/DriversStatesManager;->cancelFetchStates()V

    .line 36
    new-instance v1, Lcom/txdriver/driver/DriversStatesManager$FetchStatesTask;

    iget-object v0, p0, Lcom/txdriver/driver/DriversStatesManager;->app:Lcom/txdriver/App;

    invoke-direct {v1, v0}, Lcom/txdriver/driver/DriversStatesManager$FetchStatesTask;-><init>(Lcom/txdriver/App;)V

    iput-object v1, p0, Lcom/txdriver/driver/DriversStatesManager;->timerTask:Ljava/util/TimerTask;

    .line 37
    iget-object v0, p0, Lcom/txdriver/driver/DriversStatesManager;->timer:Ljava/util/Timer;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/txdriver/utils/TimeUtils;->secondsToMilliseconds(I)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x1e

    invoke-static {v4}, Lcom/txdriver/utils/TimeUtils;->secondsToMilliseconds(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method public cancelFetchStates()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/txdriver/driver/DriversStatesManager;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_0
    return-void
.end method

.method public onEvent(Lcom/txdriver/socket/SocketEvents$AuthEvent;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/txdriver/driver/DriversStatesManager;->scheduleFetchStates()V

    return-void
.end method

.method public onEvent(Lcom/txdriver/socket/SocketEvents$ConnectionStateEvent;)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/txdriver/driver/DriversStatesManager;->cancelFetchStates()V

    return-void
.end method
