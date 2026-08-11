.class public Lcom/txdriver/http/request/DriverInfoRequest;
.super Lcom/txdriver/http/request/HttpRequest;
.source "DriverInfoRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/http/request/HttpRequest<",
        "Lcom/txdriver/json/DriverInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 14
    const-class v0, Lcom/txdriver/json/DriverInfo;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/http/request/HttpRequest;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/txdriver/http/request/DriverInfoRequest;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getLogin()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    iget-object v2, p0, Lcom/txdriver/http/request/DriverInfoRequest;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->getWebServer()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "https://%s/api/v1/drivers/%s/info/"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
