.class public Lcom/txdriver/socket/handler/CheckUpdateHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "CheckUpdateHandler.java"


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/packet/ServerPacket;)V
    .locals 2

    .line 21
    :try_start_0
    new-instance p1, Lcom/txdriver/http/request/AppConfigRequest;

    iget-object v0, p0, Lcom/txdriver/socket/handler/CheckUpdateHandler;->app:Lcom/txdriver/App;

    invoke-direct {p1, v0}, Lcom/txdriver/http/request/AppConfigRequest;-><init>(Lcom/txdriver/App;)V

    invoke-virtual {p1}, Lcom/txdriver/http/request/AppConfigRequest;->request()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/json/AppConfig;

    .line 22
    iget-object v0, p0, Lcom/txdriver/socket/handler/CheckUpdateHandler;->app:Lcom/txdriver/App;

    iget v1, p1, Lcom/txdriver/json/AppConfig;->appVersion:I

    invoke-static {v0, v1}, Lcom/txdriver/utils/Utils;->isUpdateAvailable(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;

    iget-object v1, p0, Lcom/txdriver/socket/handler/CheckUpdateHandler;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1, p1}, Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;-><init>(Lcom/txdriver/App;Lcom/txdriver/json/AppConfig;)V

    invoke-virtual {p0, v0}, Lcom/txdriver/socket/handler/CheckUpdateHandler;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public handle(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
