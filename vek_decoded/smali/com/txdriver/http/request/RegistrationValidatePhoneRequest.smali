.class public Lcom/txdriver/http/request/RegistrationValidatePhoneRequest;
.super Lcom/txdriver/http/request/HttpPostRequest;
.source "RegistrationValidatePhoneRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/http/request/HttpPostRequest<",
        "Lcom/txdriver/json/ValidatePhoneResponse;",
        ">;"
    }
.end annotation


# instance fields
.field secretCode:Ljava/lang/String;

.field uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/txdriver/App;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/txdriver/http/request/HttpPostRequest;-><init>(Lcom/txdriver/App;)V

    .line 18
    iput-object p2, p0, Lcom/txdriver/http/request/RegistrationValidatePhoneRequest;->uuid:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/txdriver/http/request/RegistrationValidatePhoneRequest;->secretCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 4

    .line 24
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/txdriver/http/request/RegistrationValidatePhoneRequest;->app:Lcom/txdriver/App;

    .line 26
    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->getWebServer()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "https://%s/api/v1/drivers/employment/data/"

    .line 24
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request()Lcom/txdriver/json/ValidatePhoneResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/txdriver/http/request/RegistrationValidatePhoneRequest;->secretCode:Ljava/lang/String;

    const-string v2, "secret_code"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    iget-object v1, p0, Lcom/txdriver/http/request/RegistrationValidatePhoneRequest;->client:Lcom/txdriver/http/HttpClient;

    invoke-virtual {p0}, Lcom/txdriver/http/request/RegistrationValidatePhoneRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/txdriver/http/request/RegistrationValidatePhoneRequest;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/txdriver/http/HttpClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/txdriver/json/ValidatePhoneResponse;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/json/ValidatePhoneResponse;

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
    invoke-virtual {p0}, Lcom/txdriver/http/request/RegistrationValidatePhoneRequest;->request()Lcom/txdriver/json/ValidatePhoneResponse;

    move-result-object v0

    return-object v0
.end method
