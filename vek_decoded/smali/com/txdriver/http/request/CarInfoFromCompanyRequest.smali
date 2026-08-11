.class public Lcom/txdriver/http/request/CarInfoFromCompanyRequest;
.super Lcom/txdriver/http/request/HttpRequest;
.source "CarInfoFromCompanyRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/http/request/HttpRequest<",
        "Lcom/txdriver/json/CarInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private companyId:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/txdriver/App;I)V
    .locals 1

    .line 14
    const-class v0, Lcom/txdriver/json/CarInfo;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/http/request/HttpRequest;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    const-string p1, "https://%1$s/api/v1/drivers/employment/settings?company_id=%2$d&info=car"

    .line 11
    iput-object p1, p0, Lcom/txdriver/http/request/CarInfoFromCompanyRequest;->url:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/txdriver/http/request/CarInfoFromCompanyRequest;->companyId:I

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 5

    .line 19
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v1, p0, Lcom/txdriver/http/request/CarInfoFromCompanyRequest;->url:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/txdriver/http/request/CarInfoFromCompanyRequest;->app:Lcom/txdriver/App;

    .line 21
    invoke-virtual {v3}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/txdriver/preferences/Preferences;->getWebServer()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/txdriver/http/request/CarInfoFromCompanyRequest;->companyId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 19
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
