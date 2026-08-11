.class public abstract Lorg/osmdroid/bonuspack/routing/RoadManager;
.super Ljava/lang/Object;
.source "RoadManager.java"


# instance fields
.field protected mOptions:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 39
    iput-object v0, p0, Lorg/osmdroid/bonuspack/routing/RoadManager;->mOptions:Ljava/lang/String;

    return-void
.end method

.method public static buildRoadOverlay(Lorg/osmdroid/bonuspack/routing/Road;)Lorg/osmdroid/views/overlay/Polyline;
    .locals 2

    const v0, -0x7fffff01

    const/high16 v1, 0x40a00000    # 5.0f

    .line 87
    invoke-static {p0, v0, v1}, Lorg/osmdroid/bonuspack/routing/RoadManager;->buildRoadOverlay(Lorg/osmdroid/bonuspack/routing/Road;IF)Lorg/osmdroid/views/overlay/Polyline;

    move-result-object p0

    return-object p0
.end method

.method public static buildRoadOverlay(Lorg/osmdroid/bonuspack/routing/Road;IF)Lorg/osmdroid/views/overlay/Polyline;
    .locals 1

    .line 72
    new-instance v0, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    .line 73
    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    .line 74
    invoke-virtual {v0, p2}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    if-eqz p0, :cond_0

    .line 76
    iget-object p0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mRouteHigh:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v0, p0}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addRequestOption(Ljava/lang/String;)V
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/osmdroid/bonuspack/routing/RoadManager;->mOptions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/routing/RoadManager;->mOptions:Ljava/lang/String;

    return-void
.end method

.method protected geoPointAsString(Lorg/osmdroid/util/GeoPoint;)Ljava/lang/String;
    .locals 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    .line 58
    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v1

    const-string p1, ","

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract getRoad(Ljava/util/ArrayList;)Lorg/osmdroid/bonuspack/routing/Road;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/osmdroid/bonuspack/routing/Road;"
        }
    .end annotation
.end method

.method public abstract getRoads(Ljava/util/ArrayList;)[Lorg/osmdroid/bonuspack/routing/Road;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)[",
            "Lorg/osmdroid/bonuspack/routing/Road;"
        }
    .end annotation
.end method
