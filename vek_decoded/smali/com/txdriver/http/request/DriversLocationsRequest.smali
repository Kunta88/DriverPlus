.class public Lcom/txdriver/http/request/DriversLocationsRequest;
.super Lcom/txdriver/http/request/HttpRequest;
.source "DriversLocationsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/http/request/HttpRequest<",
        "Ljava/util/List<",
        "Lcom/txdriver/json/DriverLocation;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/txdriver/http/request/HttpRequest;-><init>(Lcom/txdriver/App;)V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 24
    iget-object v1, p0, Lcom/txdriver/http/request/DriversLocationsRequest;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/preferences/Preferences;->getWebServer()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "https://%s/api/v1/drivers/location/"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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

    .line 16
    invoke-virtual {p0}, Lcom/txdriver/http/request/DriversLocationsRequest;->request()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public request()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/json/DriverLocation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/txdriver/http/request/DriversLocationsRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/txdriver/http/request/DriversLocationsRequest;->client:Lcom/txdriver/http/HttpClient;

    invoke-virtual {v1, v0}, Lcom/txdriver/http/HttpClient;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 34
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/txdriver/json/DriversLocations;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/json/DriversLocations;

    .line 35
    iget-object v1, v0, Lcom/txdriver/json/DriversLocations;->encodedLocations:Ljava/lang/String;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/osmdroid/bonuspack/utils/PolylineEncoder;->decode(Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 36
    :goto_0
    iget-object v2, v0, Lcom/txdriver/json/DriversLocations;->drivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 37
    iget-object v2, v0, Lcom/txdriver/json/DriversLocations;->drivers:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/json/DriverLocation;

    .line 38
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/util/GeoPoint;

    iput-object v4, v2, Lcom/txdriver/json/DriverLocation;->location:Lorg/osmdroid/util/GeoPoint;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, v0, Lcom/txdriver/json/DriversLocations;->drivers:Ljava/util/List;

    return-object v0
.end method
