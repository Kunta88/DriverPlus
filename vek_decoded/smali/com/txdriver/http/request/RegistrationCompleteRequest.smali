.class public Lcom/txdriver/http/request/RegistrationCompleteRequest;
.super Lcom/txdriver/http/request/HttpPostRequest;
.source "RegistrationCompleteRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/http/request/HttpPostRequest<",
        "Lcom/txdriver/json/NewCallSignResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private companyId:I

.field private driverGroupId:I

.field private driverRateId:I

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/txdriver/App;Ljava/lang/String;III)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/txdriver/http/request/HttpPostRequest;-><init>(Lcom/txdriver/App;)V

    .line 21
    iput-object p2, p0, Lcom/txdriver/http/request/RegistrationCompleteRequest;->uuid:Ljava/lang/String;

    .line 22
    iput p3, p0, Lcom/txdriver/http/request/RegistrationCompleteRequest;->companyId:I

    .line 23
    iput p4, p0, Lcom/txdriver/http/request/RegistrationCompleteRequest;->driverRateId:I

    .line 24
    iput p5, p0, Lcom/txdriver/http/request/RegistrationCompleteRequest;->driverGroupId:I

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 4

    .line 28
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/txdriver/http/request/RegistrationCompleteRequest;->app:Lcom/txdriver/App;

    .line 30
    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->getWebServer()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "https://%s/api/v1/drivers/employment/complete/"

    .line 28
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request()Lcom/txdriver/json/NewCallSignResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 36
    iget v1, p0, Lcom/txdriver/http/request/RegistrationCompleteRequest;->companyId:I

    const-string v2, "company_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    iget v1, p0, Lcom/txdriver/http/request/RegistrationCompleteRequest;->driverRateId:I

    const-string v2, "rate_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    iget v1, p0, Lcom/txdriver/http/request/RegistrationCompleteRequest;->driverGroupId:I

    const-string v2, "group_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    iget-object v1, p0, Lcom/txdriver/http/request/RegistrationCompleteRequest;->client:Lcom/txdriver/http/HttpClient;

    invoke-virtual {p0}, Lcom/txdriver/http/request/RegistrationCompleteRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/txdriver/http/request/RegistrationCompleteRequest;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/txdriver/http/HttpClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/txdriver/json/NewCallSignResponse;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/json/NewCallSignResponse;

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
    invoke-virtual {p0}, Lcom/txdriver/http/request/RegistrationCompleteRequest;->request()Lcom/txdriver/json/NewCallSignResponse;

    move-result-object v0

    return-object v0
.end method
