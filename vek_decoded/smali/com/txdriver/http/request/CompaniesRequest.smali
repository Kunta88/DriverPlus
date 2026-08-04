.class public Lcom/txdriver/http/request/CompaniesRequest;
.super Lcom/txdriver/http/request/HttpRequest;
.source "CompaniesRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/http/request/HttpRequest<",
        "Lcom/txdriver/json/CompaniesBatch;",
        ">;"
    }
.end annotation


# instance fields
.field private cityId:J

.field private location:Landroid/location/Location;


# direct methods
.method public constructor <init>(Lcom/txdriver/App;J)V
    .locals 1

    .line 22
    const-class v0, Lcom/txdriver/json/CompaniesBatch;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/http/request/HttpRequest;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    .line 23
    iput-wide p2, p0, Lcom/txdriver/http/request/CompaniesRequest;->cityId:J

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;Landroid/location/Location;)V
    .locals 1

    .line 27
    const-class v0, Lcom/txdriver/json/CompaniesBatch;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/http/request/HttpRequest;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    .line 28
    iput-object p2, p0, Lcom/txdriver/http/request/CompaniesRequest;->location:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 7

    .line 33
    iget-object v0, p0, Lcom/txdriver/http/request/CompaniesRequest;->location:Landroid/location/Location;

    const/4 v1, 0x1

    const v2, 0x7f100092

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/txdriver/http/request/CompaniesRequest;->app:Lcom/txdriver/App;

    invoke-virtual {v6, v2}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    iget-object v2, p0, Lcom/txdriver/http/request/CompaniesRequest;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v5, v1

    iget-object v1, p0, Lcom/txdriver/http/request/CompaniesRequest;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v5, v4

    const-string v1, "%s/company/?lat=%f&lng=%f"

    invoke-static {v0, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/txdriver/http/request/CompaniesRequest;->app:Lcom/txdriver/App;

    invoke-virtual {v5, v2}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    iget-wide v2, p0, Lcom/txdriver/http/request/CompaniesRequest;->cityId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "%s/company/?city=%d"

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/txdriver/http/request/HttpRequest$RequestResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/http/request/HttpRequest$RequestResult<",
            "Lcom/txdriver/json/CompaniesBatch;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-super {p0, p1}, Lcom/txdriver/http/request/HttpRequest;->onPostExecute(Lcom/txdriver/http/request/HttpRequest$RequestResult;)V

    .line 48
    iget-object p1, p0, Lcom/txdriver/http/request/CompaniesRequest;->app:Lcom/txdriver/App;

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

    .line 17
    check-cast p1, Lcom/txdriver/http/request/HttpRequest$RequestResult;

    invoke-virtual {p0, p1}, Lcom/txdriver/http/request/CompaniesRequest;->onPostExecute(Lcom/txdriver/http/request/HttpRequest$RequestResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 41
    invoke-super {p0}, Lcom/txdriver/http/request/HttpRequest;->onPreExecute()V

    .line 42
    iget-object v0, p0, Lcom/txdriver/http/request/CompaniesRequest;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/txdriver/socket/SocketEvents$PendingResponseEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/txdriver/socket/SocketEvents$PendingResponseEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void
.end method
