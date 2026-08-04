.class public Lcom/txdriver/http/request/PhotoControlTasksListRequest;
.super Lcom/txdriver/http/request/HttpRequest;
.source "PhotoControlTasksListRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/http/request/HttpRequest<",
        "Ljava/util/ArrayList<",
        "Lcom/txdriver/json/PhotoControlTask;",
        ">;>;"
    }
.end annotation


# instance fields
.field private driverUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/txdriver/App;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/txdriver/http/request/HttpRequest;-><init>(Lcom/txdriver/App;)V

    .line 18
    iput-object p2, p0, Lcom/txdriver/http/request/PhotoControlTasksListRequest;->driverUuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 4

    .line 23
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/txdriver/http/request/PhotoControlTasksListRequest;->app:Lcom/txdriver/App;

    .line 25
    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->getWebServer()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "https://%s/api/v1/drivers/photocontrol/settings/"

    .line 23
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic request()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/txdriver/http/request/PhotoControlTasksListRequest;->request()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public request()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/txdriver/json/PhotoControlTask;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/txdriver/http/request/PhotoControlTasksListRequest;->client:Lcom/txdriver/http/HttpClient;

    invoke-virtual {p0}, Lcom/txdriver/http/request/PhotoControlTasksListRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/txdriver/http/request/PhotoControlTasksListRequest;->driverUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txdriver/http/HttpClient;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 34
    :cond_0
    new-instance v1, Lcom/txdriver/http/request/PhotoControlTasksListRequest$1;

    invoke-direct {v1, p0}, Lcom/txdriver/http/request/PhotoControlTasksListRequest$1;-><init>(Lcom/txdriver/http/request/PhotoControlTasksListRequest;)V

    .line 35
    invoke-virtual {v1}, Lcom/txdriver/http/request/PhotoControlTasksListRequest$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 36
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method
