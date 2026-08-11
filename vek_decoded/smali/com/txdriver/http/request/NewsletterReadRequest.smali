.class public Lcom/txdriver/http/request/NewsletterReadRequest;
.super Lcom/txdriver/http/request/HttpRequest;
.source "NewsletterReadRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/http/request/HttpRequest<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private URL:Ljava/lang/String;

.field private final newsletterId:I


# direct methods
.method public constructor <init>(Lcom/txdriver/App;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/txdriver/http/request/HttpRequest;-><init>(Lcom/txdriver/App;)V

    const-string p1, "https://%s/api/v1/driver_newsletters_delivers/"

    .line 13
    iput-object p1, p0, Lcom/txdriver/http/request/NewsletterReadRequest;->URL:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/txdriver/http/request/NewsletterReadRequest;->newsletterId:I

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 5

    .line 23
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v1, p0, Lcom/txdriver/http/request/NewsletterReadRequest;->URL:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/txdriver/http/request/NewsletterReadRequest;->app:Lcom/txdriver/App;

    .line 26
    invoke-virtual {v3}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/txdriver/preferences/Preferences;->getWebServer()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 23
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/txdriver/http/request/NewsletterReadRequest;->request()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/txdriver/http/request/NewsletterReadRequest;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/preferences/Preferences;->getDriverId()I

    move-result v1

    const-string v2, "driver_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33
    iget v1, p0, Lcom/txdriver/http/request/NewsletterReadRequest;->newsletterId:I

    const-string v2, "newsletter_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    iget-object v1, p0, Lcom/txdriver/http/request/NewsletterReadRequest;->client:Lcom/txdriver/http/HttpClient;

    invoke-virtual {p0}, Lcom/txdriver/http/request/NewsletterReadRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/txdriver/http/HttpClient;->post(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
