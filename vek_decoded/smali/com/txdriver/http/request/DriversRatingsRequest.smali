.class public Lcom/txdriver/http/request/DriversRatingsRequest;
.super Lcom/txdriver/http/request/HttpRequest;
.source "DriversRatingsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/http/request/HttpRequest<",
        "Lcom/txdriver/json/Response<",
        "Lcom/txdriver/json/DriverRating;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final CACHE_TIME:I = 0x1d4c0


# instance fields
.field private offset:I


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/txdriver/http/request/DriversRatingsRequest;-><init>(Lcom/txdriver/App;I)V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/txdriver/http/request/HttpRequest;-><init>(Lcom/txdriver/App;)V

    .line 29
    iput p2, p0, Lcom/txdriver/http/request/DriversRatingsRequest;->offset:I

    return-void
.end method


# virtual methods
.method public getCacheTime()I
    .locals 1

    const v0, 0x1d4c0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4

    .line 34
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/txdriver/http/request/DriversRatingsRequest;->app:Lcom/txdriver/App;

    .line 36
    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->getWebServer()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/txdriver/http/request/DriversRatingsRequest;->offset:I

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "https://%s/api/v1/drivers/rating/?offset=%d"

    .line 34
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request()Lcom/txdriver/json/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/DriverRating;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/txdriver/http/request/DriversRatingsRequest;->client:Lcom/txdriver/http/HttpClient;

    invoke-virtual {p0}, Lcom/txdriver/http/request/DriversRatingsRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/txdriver/http/HttpClient;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_0
    new-instance v1, Lcom/txdriver/http/request/DriversRatingsRequest$1;

    invoke-direct {v1, p0}, Lcom/txdriver/http/request/DriversRatingsRequest$1;-><init>(Lcom/txdriver/http/request/DriversRatingsRequest;)V

    .line 47
    invoke-virtual {v1}, Lcom/txdriver/http/request/DriversRatingsRequest$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 48
    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v3, Ljava/util/Date;

    new-instance v4, Lcom/txdriver/json/adapter/DateTypeAdapter;

    invoke-direct {v4}, Lcom/txdriver/json/adapter/DateTypeAdapter;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    .line 49
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
    invoke-virtual {p0}, Lcom/txdriver/http/request/DriversRatingsRequest;->request()Lcom/txdriver/json/Response;

    move-result-object v0

    return-object v0
.end method
