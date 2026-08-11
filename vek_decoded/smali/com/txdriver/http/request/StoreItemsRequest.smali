.class public Lcom/txdriver/http/request/StoreItemsRequest;
.super Lcom/txdriver/http/request/HttpRequest;
.source "StoreItemsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/http/request/HttpRequest<",
        "Lcom/txdriver/json/Response<",
        "Lcom/txdriver/json/StoreItem;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final CACHE_TIME:I = 0x7d0


# instance fields
.field private offset:I


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/txdriver/http/request/StoreItemsRequest;-><init>(Lcom/txdriver/App;I)V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/txdriver/http/request/HttpRequest;-><init>(Lcom/txdriver/App;)V

    .line 29
    iput p2, p0, Lcom/txdriver/http/request/StoreItemsRequest;->offset:I

    return-void
.end method


# virtual methods
.method public getCacheTime()I
    .locals 1

    const/16 v0, 0x7d0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 5

    .line 34
    iget-object v0, p0, Lcom/txdriver/http/request/StoreItemsRequest;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getLogin()Ljava/lang/String;

    move-result-object v0

    .line 35
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/txdriver/http/request/StoreItemsRequest;->app:Lcom/txdriver/App;

    .line 37
    invoke-virtual {v3}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/txdriver/preferences/Preferences;->getWebServer()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "https://%s/api/v1/drivers/%s/store/items/?format=json"

    .line 35
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request()Lcom/txdriver/json/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/StoreItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/txdriver/http/request/StoreItemsRequest;->client:Lcom/txdriver/http/HttpClient;

    invoke-virtual {p0}, Lcom/txdriver/http/request/StoreItemsRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/txdriver/http/HttpClient;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_0
    new-instance v1, Lcom/txdriver/http/request/StoreItemsRequest$1;

    invoke-direct {v1, p0}, Lcom/txdriver/http/request/StoreItemsRequest$1;-><init>(Lcom/txdriver/http/request/StoreItemsRequest;)V

    .line 48
    invoke-virtual {v1}, Lcom/txdriver/http/request/StoreItemsRequest$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 49
    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v3, Ljava/util/Date;

    new-instance v4, Lcom/txdriver/json/adapter/DateTypeAdapter;

    invoke-direct {v4}, Lcom/txdriver/json/adapter/DateTypeAdapter;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    .line 50
    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/json/Response;

    return-object v0
.end method

.method public bridge synthetic request()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lcom/txdriver/http/request/StoreItemsRequest;->request()Lcom/txdriver/json/Response;

    move-result-object v0

    return-object v0
.end method
