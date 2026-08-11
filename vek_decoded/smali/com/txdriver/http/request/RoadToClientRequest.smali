.class public Lcom/txdriver/http/request/RoadToClientRequest;
.super Lcom/txdriver/http/request/HttpRequest;
.source "RoadToClientRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/http/request/HttpRequest<",
        "Lorg/osmdroid/bonuspack/routing/Road;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE_TIME:I = 0x1d4c0


# instance fields
.field private final location:Landroid/location/Location;

.field private final order:Lcom/txdriver/db/Order;


# direct methods
.method public constructor <init>(Lcom/txdriver/App;Landroid/location/Location;Lcom/txdriver/db/Order;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/txdriver/http/request/HttpRequest;-><init>(Lcom/txdriver/App;)V

    .line 29
    iput-object p2, p0, Lcom/txdriver/http/request/RoadToClientRequest;->location:Landroid/location/Location;

    .line 30
    iput-object p3, p0, Lcom/txdriver/http/request/RoadToClientRequest;->order:Lcom/txdriver/db/Order;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 60
    :cond_1
    invoke-super {p0, p1}, Lcom/txdriver/http/request/HttpRequest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 62
    :cond_2
    check-cast p1, Lcom/txdriver/http/request/RoadToClientRequest;

    .line 64
    iget-object v2, p0, Lcom/txdriver/http/request/RoadToClientRequest;->location:Landroid/location/Location;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/txdriver/http/request/RoadToClientRequest;->location:Landroid/location/Location;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/txdriver/http/request/RoadToClientRequest;->location:Landroid/location/Location;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 66
    :cond_4
    iget-object v2, p0, Lcom/txdriver/http/request/RoadToClientRequest;->order:Lcom/txdriver/db/Order;

    iget-object p1, p1, Lcom/txdriver/http/request/RoadToClientRequest;->order:Lcom/txdriver/db/Order;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Lcom/txdriver/db/Order;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method public getCacheTime()I
    .locals 1

    const v0, 0x1d4c0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 6

    .line 85
    iget-object v0, p0, Lcom/txdriver/http/request/RoadToClientRequest;->location:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txdriver/http/request/RoadToClientRequest;->order:Lcom/txdriver/db/Order;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/txdriver/db/Order;->lat:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/txdriver/http/request/RoadToClientRequest;->order:Lcom/txdriver/db/Order;

    iget-wide v0, v0, Lcom/txdriver/db/Order;->lng:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 86
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/txdriver/http/request/RoadToClientRequest;->app:Lcom/txdriver/App;

    const v3, 0x7f1001b3

    invoke-virtual {v2, v3}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "route/v1/driving/%f,%f;%f,%f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/txdriver/http/request/RoadToClientRequest;->location:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/txdriver/http/request/RoadToClientRequest;->location:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/txdriver/http/request/RoadToClientRequest;->order:Lcom/txdriver/db/Order;

    iget-wide v4, v4, Lcom/txdriver/db/Order;->lng:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/txdriver/http/request/RoadToClientRequest;->order:Lcom/txdriver/db/Order;

    iget-wide v4, v4, Lcom/txdriver/db/Order;->lat:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 72
    invoke-super {p0}, Lcom/txdriver/http/request/HttpRequest;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 73
    iget-object v1, p0, Lcom/txdriver/http/request/RoadToClientRequest;->location:Landroid/location/Location;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 74
    iget-object v1, p0, Lcom/txdriver/http/request/RoadToClientRequest;->order:Lcom/txdriver/db/Order;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/txdriver/db/Order;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public bridge synthetic request()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/txdriver/http/request/RoadToClientRequest;->request()Lorg/osmdroid/bonuspack/routing/Road;

    move-result-object v0

    return-object v0
.end method

.method public request()Lorg/osmdroid/bonuspack/routing/Road;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/txdriver/http/request/RoadToClientRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/txdriver/http/request/RoadToClientRequest;->client:Lcom/txdriver/http/HttpClient;

    invoke-virtual {v1, v0}, Lcom/txdriver/http/HttpClient;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    .line 43
    :cond_1
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 44
    const-class v3, Lcom/txdriver/json/osrm/OsrmRoad;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/json/osrm/OsrmRoad;

    .line 45
    new-instance v1, Lorg/osmdroid/bonuspack/routing/Road;

    invoke-direct {v1}, Lorg/osmdroid/bonuspack/routing/Road;-><init>()V

    .line 46
    invoke-virtual {v0}, Lcom/txdriver/json/osrm/OsrmRoad;->getRoutes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    .line 49
    :cond_2
    invoke-virtual {v0}, Lcom/txdriver/json/osrm/OsrmRoad;->getRoutes()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/json/osrm/Route;

    .line 50
    invoke-virtual {v0}, Lcom/txdriver/json/osrm/Route;->getDuration()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iput-wide v3, v1, Lorg/osmdroid/bonuspack/routing/Road;->mDuration:D

    .line 51
    invoke-virtual {v0}, Lcom/txdriver/json/osrm/Route;->getDistance()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    iput-wide v3, v1, Lorg/osmdroid/bonuspack/routing/Road;->mLength:D

    .line 52
    invoke-virtual {v0}, Lcom/txdriver/json/osrm/Route;->getGeometry()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xa

    invoke-static {v0, v3, v2}, Lorg/osmdroid/bonuspack/utils/PolylineEncoder;->decode(Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lorg/osmdroid/bonuspack/routing/Road;->mRouteHigh:Ljava/util/ArrayList;

    return-object v1
.end method
