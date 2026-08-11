.class public Lcom/txdriver/socket/handler/AuthHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "AuthHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/AuthData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 19
    const-class v0, Lcom/txdriver/socket/data/AuthData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/AuthData;)V
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/txdriver/socket/handler/AuthHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget v1, p1, Lcom/txdriver/socket/data/AuthData;->driverId:I

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setDriverId(I)V

    .line 25
    iget-object v0, p0, Lcom/txdriver/socket/handler/AuthHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->isSessionOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/txdriver/socket/handler/AuthHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/txdriver/preferences/Preferences;->setCurrentOrderId(J)V

    .line 27
    invoke-static {}, Lcom/txdriver/db/Order;->deleteCurrentOrder()V

    .line 29
    :cond_0
    iget v0, p1, Lcom/txdriver/socket/data/AuthData;->resultCode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/txdriver/socket/handler/AuthHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/txdriver/service/MainService$StopEvent;

    invoke-direct {v1}, Lcom/txdriver/service/MainService$StopEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/txdriver/socket/handler/AuthHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/event/EventBus;->removeAllStickyEvents()V

    .line 47
    iget-object v0, p0, Lcom/txdriver/socket/handler/AuthHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/socket/Client;->close()V

    .line 48
    new-instance v0, Lcom/txdriver/socket/handler/AuthHandler$2;

    invoke-direct {v0, p0}, Lcom/txdriver/socket/handler/AuthHandler$2;-><init>(Lcom/txdriver/socket/handler/AuthHandler;)V

    invoke-virtual {p0, v0}, Lcom/txdriver/socket/handler/AuthHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/txdriver/socket/handler/AuthHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/txdriver/service/MainService$StopEvent;

    invoke-direct {v1}, Lcom/txdriver/service/MainService$StopEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/txdriver/socket/handler/AuthHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/event/EventBus;->removeAllStickyEvents()V

    .line 36
    iget-object v0, p0, Lcom/txdriver/socket/handler/AuthHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/socket/Client;->close()V

    .line 37
    new-instance v0, Lcom/txdriver/socket/handler/AuthHandler$1;

    invoke-direct {v0, p0}, Lcom/txdriver/socket/handler/AuthHandler$1;-><init>(Lcom/txdriver/socket/handler/AuthHandler;)V

    invoke-virtual {p0, v0}, Lcom/txdriver/socket/handler/AuthHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 31
    :cond_3
    iget-object v0, p0, Lcom/txdriver/socket/handler/AuthHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/txdriver/socket/SocketEvents$AuthEvent;

    invoke-direct {v1}, Lcom/txdriver/socket/SocketEvents$AuthEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/txdriver/socket/handler/AuthHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getPrefDriverUuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/txdriver/socket/handler/AuthHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getPrefDriverUuid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/txdriver/socket/data/AuthData;->driverUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 57
    :cond_4
    iget-object v0, p0, Lcom/txdriver/socket/handler/AuthHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget-object p1, p1, Lcom/txdriver/socket/data/AuthData;->driverUuid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/txdriver/preferences/Preferences;->setPrefDriverUuid(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/txdriver/socket/data/AuthData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/AuthHandler;->handle(Lcom/txdriver/socket/data/AuthData;)V

    return-void
.end method
