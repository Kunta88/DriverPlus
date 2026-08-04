.class public Lcom/txdriver/http/request/StoreItemBuyRequest;
.super Lcom/txdriver/http/request/HttpRequest;
.source "StoreItemBuyRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/http/request/HttpRequest<",
        "Lcom/txdriver/json/Response<",
        "Lcom/txdriver/json/StoreItemBuy;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final CACHE_TIME:I = 0x7d0


# instance fields
.field private itemId:I


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/txdriver/http/request/StoreItemBuyRequest;-><init>(Lcom/txdriver/App;I)V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/txdriver/http/request/HttpRequest;-><init>(Lcom/txdriver/App;)V

    .line 32
    iput p2, p0, Lcom/txdriver/http/request/StoreItemBuyRequest;->itemId:I

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

    .line 37
    iget-object v0, p0, Lcom/txdriver/http/request/StoreItemBuyRequest;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getLogin()Ljava/lang/String;

    move-result-object v0

    .line 38
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/txdriver/http/request/StoreItemBuyRequest;->app:Lcom/txdriver/App;

    .line 40
    invoke-virtual {v3}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/txdriver/preferences/Preferences;->getWebServer()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    iget v0, p0, Lcom/txdriver/http/request/StoreItemBuyRequest;->itemId:I

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string v0, "https://%s/api/v1/drivers/%s/store/item/buy/?format=json&item_id=%s"

    .line 38
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
            "Lcom/txdriver/json/StoreItemBuy;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/txdriver/http/request/StoreItemBuyRequest;->client:Lcom/txdriver/http/HttpClient;

    invoke-virtual {p0}, Lcom/txdriver/http/request/StoreItemBuyRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/txdriver/http/HttpClient;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_0
    new-instance v1, Lcom/txdriver/http/request/StoreItemBuyRequest$1;

    invoke-direct {v1, p0}, Lcom/txdriver/http/request/StoreItemBuyRequest$1;-><init>(Lcom/txdriver/http/request/StoreItemBuyRequest;)V

    .line 51
    invoke-virtual {v1}, Lcom/txdriver/http/request/StoreItemBuyRequest$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 52
    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v3, Ljava/util/Date;

    new-instance v4, Lcom/txdriver/json/adapter/DateTypeAdapter;

    invoke-direct {v4}, Lcom/txdriver/json/adapter/DateTypeAdapter;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    .line 53
    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/json/Response;

    .line 54
    iget-object v1, v0, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/json/StoreItemBuy;

    iget-object v1, v1, Lcom/txdriver/json/StoreItemBuy;->message:Ljava/lang/String;

    .line 55
    iget-object v2, p0, Lcom/txdriver/http/request/StoreItemBuyRequest;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic request()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/txdriver/http/request/StoreItemBuyRequest;->request()Lcom/txdriver/json/Response;

    move-result-object v0

    return-object v0
.end method
