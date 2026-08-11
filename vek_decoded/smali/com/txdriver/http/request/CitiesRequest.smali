.class public Lcom/txdriver/http/request/CitiesRequest;
.super Lcom/txdriver/http/request/HttpRequest;
.source "CitiesRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/http/request/HttpRequest<",
        "[",
        "Lcom/txdriver/json/City;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 14
    const-class v0, [Lcom/txdriver/json/City;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/http/request/HttpRequest;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 19
    iget-object v1, p0, Lcom/txdriver/http/request/CitiesRequest;->app:Lcom/txdriver/App;

    const v2, 0x7f100092

    invoke-virtual {v1, v2}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s/city/"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/txdriver/http/request/HttpRequest$RequestResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/http/request/HttpRequest$RequestResult<",
            "[",
            "Lcom/txdriver/json/City;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcom/txdriver/http/request/HttpRequest;->onPostExecute(Lcom/txdriver/http/request/HttpRequest$RequestResult;)V

    .line 31
    iget-object p1, p0, Lcom/txdriver/http/request/CitiesRequest;->app:Lcom/txdriver/App;

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

    .line 12
    check-cast p1, Lcom/txdriver/http/request/HttpRequest$RequestResult;

    invoke-virtual {p0, p1}, Lcom/txdriver/http/request/CitiesRequest;->onPostExecute(Lcom/txdriver/http/request/HttpRequest$RequestResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 24
    invoke-super {p0}, Lcom/txdriver/http/request/HttpRequest;->onPreExecute()V

    .line 25
    iget-object v0, p0, Lcom/txdriver/http/request/CitiesRequest;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/txdriver/socket/SocketEvents$PendingResponseEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/txdriver/socket/SocketEvents$PendingResponseEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void
.end method
