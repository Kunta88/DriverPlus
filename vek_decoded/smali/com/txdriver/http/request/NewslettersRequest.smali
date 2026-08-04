.class public Lcom/txdriver/http/request/NewslettersRequest;
.super Lcom/txdriver/http/request/HttpRequest;
.source "NewslettersRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/http/request/HttpRequest<",
        "Lcom/txdriver/json/Response<",
        "Lcom/txdriver/json/Newsletter;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final CACHE_TIME:I = 0x1d4c0


# instance fields
.field private URL:Ljava/lang/String;

.field private offset:I


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/txdriver/http/request/NewslettersRequest;-><init>(Lcom/txdriver/App;I)V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/txdriver/http/request/HttpRequest;-><init>(Lcom/txdriver/App;)V

    const-string p1, "https://%s/api/v1/driver_newsletters/?driver_id=%d&offset=%d"

    .line 20
    iput-object p1, p0, Lcom/txdriver/http/request/NewslettersRequest;->URL:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/txdriver/http/request/NewslettersRequest;->offset:I

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/txdriver/http/request/NewslettersRequest;-><init>(Lcom/txdriver/App;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;ZZ)V
    .locals 2

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/txdriver/http/request/NewslettersRequest;-><init>(Lcom/txdriver/App;I)V

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/txdriver/http/request/NewslettersRequest;->URL:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    const-string p2, "&read_required=%b&delivered=%b"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/http/request/NewslettersRequest;->URL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCacheTime()I
    .locals 1

    const v0, 0x1d4c0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 5

    .line 34
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v1, p0, Lcom/txdriver/http/request/NewslettersRequest;->URL:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/txdriver/http/request/NewslettersRequest;->app:Lcom/txdriver/App;

    .line 37
    invoke-virtual {v3}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/txdriver/preferences/Preferences;->getWebServer()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/txdriver/http/request/NewslettersRequest;->app:Lcom/txdriver/App;

    .line 38
    invoke-virtual {v3}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/txdriver/preferences/Preferences;->getDriverId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p0, Lcom/txdriver/http/request/NewslettersRequest;->offset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 34
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request()Lcom/txdriver/json/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/Newsletter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/txdriver/http/request/NewslettersRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/txdriver/http/request/NewslettersRequest;->client:Lcom/txdriver/http/HttpClient;

    invoke-virtual {v1, v0}, Lcom/txdriver/http/HttpClient;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    new-instance v1, Lcom/txdriver/http/request/NewslettersRequest$1;

    invoke-direct {v1, p0}, Lcom/txdriver/http/request/NewslettersRequest$1;-><init>(Lcom/txdriver/http/request/NewslettersRequest;)V

    .line 58
    invoke-virtual {v1}, Lcom/txdriver/http/request/NewslettersRequest$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 59
    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v3, Ljava/util/Date;

    new-instance v4, Lcom/txdriver/json/adapter/DateTypeAdapter;

    invoke-direct {v4}, Lcom/txdriver/json/adapter/DateTypeAdapter;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    .line 60
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

    .line 18
    invoke-virtual {p0}, Lcom/txdriver/http/request/NewslettersRequest;->request()Lcom/txdriver/json/Response;

    move-result-object v0

    return-object v0
.end method
