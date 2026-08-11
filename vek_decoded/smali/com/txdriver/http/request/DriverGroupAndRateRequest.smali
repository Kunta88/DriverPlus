.class public Lcom/txdriver/http/request/DriverGroupAndRateRequest;
.super Lcom/txdriver/http/request/HttpRequest;
.source "DriverGroupAndRateRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/http/request/HttpRequest<",
        "Lcom/txdriver/json/DriverGroupResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private companyId:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/txdriver/App;I)V
    .locals 1

    .line 12
    const-class v0, Lcom/txdriver/json/DriverGroupResponse;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/http/request/HttpRequest;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    const-string p1, "https://%1$s/api/v1/drivers/employment/settings?company_id=%2$d&info=employment"

    .line 9
    iput-object p1, p0, Lcom/txdriver/http/request/DriverGroupAndRateRequest;->url:Ljava/lang/String;

    .line 13
    iput p2, p0, Lcom/txdriver/http/request/DriverGroupAndRateRequest;->companyId:I

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/txdriver/http/request/DriverGroupAndRateRequest;->url:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/txdriver/http/request/DriverGroupAndRateRequest;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->getWebServer()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/txdriver/http/request/DriverGroupAndRateRequest;->companyId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
