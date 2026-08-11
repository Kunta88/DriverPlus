.class public Lcom/txdriver/http/request/OrderPathRequest;
.super Lcom/txdriver/http/request/HttpRequest;
.source "OrderPathRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/http/request/HttpRequest<",
        "Ljava/util/List<",
        "Lorg/osmdroid/util/GeoPoint;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final order:Lcom/txdriver/db/Order;


# direct methods
.method public constructor <init>(Lcom/txdriver/App;Lcom/txdriver/db/Order;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/txdriver/http/request/HttpRequest;-><init>(Lcom/txdriver/App;)V

    .line 22
    iput-object p2, p0, Lcom/txdriver/http/request/OrderPathRequest;->order:Lcom/txdriver/db/Order;

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 4

    .line 27
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/txdriver/http/request/OrderPathRequest;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->getWebServer()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/txdriver/http/request/OrderPathRequest;->order:Lcom/txdriver/db/Order;

    iget v2, v2, Lcom/txdriver/db/Order;->orderId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "https://%s/api/v1/orders/%d/path/?format=polyline"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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

    .line 17
    invoke-virtual {p0}, Lcom/txdriver/http/request/OrderPathRequest;->request()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public request()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/txdriver/http/request/OrderPathRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 35
    :try_start_0
    iget-object v3, p0, Lcom/txdriver/http/request/OrderPathRequest;->client:Lcom/txdriver/http/HttpClient;

    invoke-virtual {v3, v1}, Lcom/txdriver/http/HttpClient;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v3, 0xa

    .line 37
    invoke-static {v1, v3, v2}, Lorg/osmdroid/bonuspack/utils/PolylineEncoder;->decode(Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/txdriver/http/request/OrderPathRequest;->order:Lcom/txdriver/db/Order;

    iget-object v1, v1, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    sget-object v3, Lcom/txdriver/db/Order$Status;->PERFORMING:Lcom/txdriver/db/Order$Status;

    if-eq v1, v3, :cond_1

    return-object v0

    .line 47
    :cond_1
    new-instance v1, Lcom/txdriver/http/request/RoadToClientRequest;

    iget-object v3, p0, Lcom/txdriver/http/request/OrderPathRequest;->app:Lcom/txdriver/App;

    iget-object v4, p0, Lcom/txdriver/http/request/OrderPathRequest;->app:Lcom/txdriver/App;

    invoke-virtual {v4}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/txdriver/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v4

    iget-object v5, p0, Lcom/txdriver/http/request/OrderPathRequest;->order:Lcom/txdriver/db/Order;

    invoke-direct {v1, v3, v4, v5}, Lcom/txdriver/http/request/RoadToClientRequest;-><init>(Lcom/txdriver/App;Landroid/location/Location;Lcom/txdriver/db/Order;)V

    .line 48
    iget-object v3, p0, Lcom/txdriver/http/request/OrderPathRequest;->app:Lcom/txdriver/App;

    invoke-virtual {v3}, Lcom/txdriver/App;->getRequestManager()Lcom/txdriver/http/RequestManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/txdriver/http/RequestManager;->request(Lcom/txdriver/http/request/HttpRequest;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/bonuspack/routing/Road;

    if-eqz v1, :cond_2

    .line 50
    iget-object v1, v1, Lorg/osmdroid/bonuspack/routing/Road;->mRouteHigh:Ljava/util/ArrayList;

    invoke-interface {v0, v2, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :cond_2
    return-object v0
.end method
