.class public Lcom/txdriver/http/request/RoadRequest;
.super Lcom/txdriver/http/request/HttpRequest;
.source "RoadRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/http/request/HttpRequest<",
        "Lorg/osmdroid/bonuspack/routing/Road;",
        ">;"
    }
.end annotation


# instance fields
.field private final endLocation:Landroid/location/Location;

.field private geoPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field private roadManager:Lorg/osmdroid/bonuspack/routing/RoadManager;

.field private final startLocation:Landroid/location/Location;


# direct methods
.method public constructor <init>(Lcom/txdriver/App;Landroid/location/Location;Landroid/location/Location;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/txdriver/http/request/HttpRequest;-><init>(Lcom/txdriver/App;)V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/txdriver/http/request/RoadRequest;->geoPoints:Ljava/util/ArrayList;

    .line 21
    new-instance p1, Lorg/osmdroid/bonuspack/routing/GoogleRoadManager;

    invoke-direct {p1}, Lorg/osmdroid/bonuspack/routing/GoogleRoadManager;-><init>()V

    iput-object p1, p0, Lcom/txdriver/http/request/RoadRequest;->roadManager:Lorg/osmdroid/bonuspack/routing/RoadManager;

    .line 25
    iput-object p2, p0, Lcom/txdriver/http/request/RoadRequest;->startLocation:Landroid/location/Location;

    .line 26
    iput-object p3, p0, Lcom/txdriver/http/request/RoadRequest;->endLocation:Landroid/location/Location;

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

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 51
    :cond_1
    invoke-super {p0, p1}, Lcom/txdriver/http/request/HttpRequest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 53
    :cond_2
    check-cast p1, Lcom/txdriver/http/request/RoadRequest;

    .line 55
    iget-object v2, p0, Lcom/txdriver/http/request/RoadRequest;->startLocation:Landroid/location/Location;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/txdriver/http/request/RoadRequest;->startLocation:Landroid/location/Location;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/txdriver/http/request/RoadRequest;->startLocation:Landroid/location/Location;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 57
    :cond_4
    iget-object v2, p0, Lcom/txdriver/http/request/RoadRequest;->endLocation:Landroid/location/Location;

    iget-object p1, p1, Lcom/txdriver/http/request/RoadRequest;->endLocation:Landroid/location/Location;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 3

    .line 63
    invoke-super {p0}, Lcom/txdriver/http/request/HttpRequest;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 64
    iget-object v1, p0, Lcom/txdriver/http/request/RoadRequest;->startLocation:Landroid/location/Location;

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

    .line 65
    iget-object v1, p0, Lcom/txdriver/http/request/RoadRequest;->endLocation:Landroid/location/Location;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

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

    .line 17
    invoke-virtual {p0}, Lcom/txdriver/http/request/RoadRequest;->request()Lorg/osmdroid/bonuspack/routing/Road;

    move-result-object v0

    return-object v0
.end method

.method public request()Lorg/osmdroid/bonuspack/routing/Road;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/txdriver/http/request/RoadRequest;->startLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/txdriver/http/request/RoadRequest;->endLocation:Landroid/location/Location;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/txdriver/http/request/RoadRequest;->startLocation:Landroid/location/Location;

    .line 36
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/txdriver/http/request/RoadRequest;->endLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/txdriver/http/request/RoadRequest;->endLocation:Landroid/location/Location;

    .line 37
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 38
    iget-object v0, p0, Lcom/txdriver/http/request/RoadRequest;->geoPoints:Ljava/util/ArrayList;

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    iget-object v2, p0, Lcom/txdriver/http/request/RoadRequest;->startLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/txdriver/http/request/RoadRequest;->startLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/txdriver/http/request/RoadRequest;->geoPoints:Ljava/util/ArrayList;

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    iget-object v2, p0, Lcom/txdriver/http/request/RoadRequest;->endLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/txdriver/http/request/RoadRequest;->endLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/txdriver/http/request/RoadRequest;->geoPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/txdriver/http/request/RoadRequest;->roadManager:Lorg/osmdroid/bonuspack/routing/RoadManager;

    iget-object v1, p0, Lcom/txdriver/http/request/RoadRequest;->geoPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/osmdroid/bonuspack/routing/RoadManager;->getRoad(Ljava/util/ArrayList;)Lorg/osmdroid/bonuspack/routing/Road;

    move-result-object v0

    return-object v0
.end method

.method public setRoadManager(Lorg/osmdroid/bonuspack/routing/RoadManager;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/txdriver/http/request/RoadRequest;->roadManager:Lorg/osmdroid/bonuspack/routing/RoadManager;

    return-void
.end method
