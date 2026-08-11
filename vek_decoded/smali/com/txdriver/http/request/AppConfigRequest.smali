.class public Lcom/txdriver/http/request/AppConfigRequest;
.super Lcom/txdriver/http/request/HttpRequest;
.source "AppConfigRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/http/request/HttpRequest<",
        "Lcom/txdriver/json/AppConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 15
    const-class v0, Lcom/txdriver/json/AppConfig;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/http/request/HttpRequest;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 6

    .line 20
    iget-object v0, p0, Lcom/txdriver/http/request/AppConfigRequest;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getCompany()Lcom/txdriver/json/Company;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 24
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/txdriver/http/request/AppConfigRequest;->app:Lcom/txdriver/App;

    const v5, 0x7f100092

    .line 26
    invoke-virtual {v4, v5}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v0, v0, Lcom/txdriver/json/Company;->id:I

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "%s/company/%d/config/app/android/"

    .line 24
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/txdriver/http/request/HttpRequest$RequestResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/http/request/HttpRequest$RequestResult<",
            "Lcom/txdriver/json/AppConfig;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-super {p0, p1}, Lcom/txdriver/http/request/HttpRequest;->onPostExecute(Lcom/txdriver/http/request/HttpRequest$RequestResult;)V

    .line 49
    iget-object p1, p0, Lcom/txdriver/http/request/AppConfigRequest;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    new-instance v0, Lcom/txdriver/socket/SocketEvents$PendingResponseEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/txdriver/socket/SocketEvents$PendingResponseEvent;-><init>(Z)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/txdriver/http/request/HttpRequest$RequestResult;

    invoke-virtual {p0, p1}, Lcom/txdriver/http/request/AppConfigRequest;->onPostExecute(Lcom/txdriver/http/request/HttpRequest$RequestResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 42
    invoke-super {p0}, Lcom/txdriver/http/request/HttpRequest;->onPreExecute()V

    .line 43
    iget-object v0, p0, Lcom/txdriver/http/request/AppConfigRequest;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/txdriver/socket/SocketEvents$PendingResponseEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/txdriver/socket/SocketEvents$PendingResponseEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/AppConfig;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/txdriver/http/request/AppConfigRequest;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget-object v1, p1, Lcom/txdriver/json/AppConfig;->server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setPrimaryServerAddress(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/txdriver/http/request/AppConfigRequest;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget v1, p1, Lcom/txdriver/json/AppConfig;->port:I

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setPrimaryServerPort(I)V

    .line 35
    iget-object v0, p0, Lcom/txdriver/http/request/AppConfigRequest;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget-object v1, p1, Lcom/txdriver/json/AppConfig;->webServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setWebServer(Ljava/lang/String;)V

    .line 37
    :cond_0
    invoke-super {p0, p1}, Lcom/txdriver/http/request/HttpRequest;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/txdriver/json/AppConfig;

    invoke-virtual {p0, p1}, Lcom/txdriver/http/request/AppConfigRequest;->onResponse(Lcom/txdriver/json/AppConfig;)V

    return-void
.end method
