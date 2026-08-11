.class public Lcom/txdriver/http/request/RegistrationReferralRequest;
.super Lcom/txdriver/http/request/HttpPostRequest;
.source "RegistrationReferralRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/http/request/HttpPostRequest<",
        "Lcom/txdriver/json/RegistrationReferrerResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private companyId:I

.field private refererPhone:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/txdriver/App;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/txdriver/http/request/HttpPostRequest;-><init>(Lcom/txdriver/App;)V

    .line 19
    iput-object p2, p0, Lcom/txdriver/http/request/RegistrationReferralRequest;->uuid:Ljava/lang/String;

    .line 20
    iput p3, p0, Lcom/txdriver/http/request/RegistrationReferralRequest;->companyId:I

    .line 21
    iput-object p4, p0, Lcom/txdriver/http/request/RegistrationReferralRequest;->refererPhone:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 4

    .line 26
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/txdriver/http/request/RegistrationReferralRequest;->app:Lcom/txdriver/App;

    .line 28
    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->getWebServer()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "https://%s/api/v1/drivers/employment/refferer/"

    .line 26
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request()Lcom/txdriver/json/RegistrationReferrerResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 34
    iget v1, p0, Lcom/txdriver/http/request/RegistrationReferralRequest;->companyId:I

    const-string v2, "company_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 35
    iget-object v1, p0, Lcom/txdriver/http/request/RegistrationReferralRequest;->refererPhone:Ljava/lang/String;

    const-string v2, "phone"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    iget-object v1, p0, Lcom/txdriver/http/request/RegistrationReferralRequest;->client:Lcom/txdriver/http/HttpClient;

    invoke-virtual {p0}, Lcom/txdriver/http/request/RegistrationReferralRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/txdriver/http/request/RegistrationReferralRequest;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/txdriver/http/HttpClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/txdriver/json/RegistrationReferrerResponse;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/json/RegistrationReferrerResponse;

    return-object v0
.end method

.method public bridge synthetic request()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/txdriver/http/request/RegistrationReferralRequest;->request()Lcom/txdriver/json/RegistrationReferrerResponse;

    move-result-object v0

    return-object v0
.end method
