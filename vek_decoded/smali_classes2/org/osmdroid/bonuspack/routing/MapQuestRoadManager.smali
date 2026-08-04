.class public Lorg/osmdroid/bonuspack/routing/MapQuestRoadManager;
.super Lorg/osmdroid/bonuspack/routing/RoadManager;
.source "MapQuestRoadManager.java"


# static fields
.field static final MAPQUEST_GUIDANCE_SERVICE:Ljava/lang/String; = "http://open.mapquestapi.com/guidance/v1/route?"


# instance fields
.field protected mApiKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/routing/RoadManager;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestRoadManager;->mApiKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected finalizeNodes(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/bonuspack/routing/RoadNode;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/bonuspack/routing/RoadLink;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/bonuspack/routing/RoadNode;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 137
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v5, v0, -0x1

    if-ge v4, v5, :cond_3

    .line 140
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osmdroid/bonuspack/routing/RoadNode;

    .line 141
    iget v6, v5, Lorg/osmdroid/bonuspack/routing/RoadNode;->mNextRoadLink:I

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/osmdroid/bonuspack/routing/RoadLink;

    if-eqz v2, :cond_2

    .line 142
    iget-object v7, v5, Lorg/osmdroid/bonuspack/routing/RoadNode;->mInstructions:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget v7, v5, Lorg/osmdroid/bonuspack/routing/RoadNode;->mManeuverType:I

    if-nez v7, :cond_2

    .line 145
    :cond_1
    iget-wide v7, v2, Lorg/osmdroid/bonuspack/routing/RoadNode;->mLength:D

    iget-wide v9, v6, Lorg/osmdroid/bonuspack/routing/RoadLink;->mLength:D

    add-double/2addr v7, v9

    iput-wide v7, v2, Lorg/osmdroid/bonuspack/routing/RoadNode;->mLength:D

    .line 146
    iget-wide v7, v2, Lorg/osmdroid/bonuspack/routing/RoadNode;->mDuration:D

    iget-wide v9, v5, Lorg/osmdroid/bonuspack/routing/RoadNode;->mDuration:D

    iget-wide v5, v6, Lorg/osmdroid/bonuspack/routing/RoadLink;->mDuration:D

    add-double/2addr v9, v5

    add-double/2addr v7, v9

    iput-wide v7, v2, Lorg/osmdroid/bonuspack/routing/RoadNode;->mDuration:D

    goto :goto_1

    .line 149
    :cond_2
    iget-wide v7, v6, Lorg/osmdroid/bonuspack/routing/RoadLink;->mLength:D

    iput-wide v7, v5, Lorg/osmdroid/bonuspack/routing/RoadNode;->mLength:D

    .line 150
    iget-wide v7, v5, Lorg/osmdroid/bonuspack/routing/RoadNode;->mDuration:D

    iget-wide v9, v6, Lorg/osmdroid/bonuspack/routing/RoadLink;->mDuration:D

    add-double/2addr v7, v9

    iput-wide v7, v5, Lorg/osmdroid/bonuspack/routing/RoadNode;->mDuration:D

    .line 151
    iget v2, v6, Lorg/osmdroid/bonuspack/routing/RoadLink;->mShapeIndex:I

    .line 152
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    iput-object v2, v5, Lorg/osmdroid/bonuspack/routing/RoadNode;->mLocation:Lorg/osmdroid/util/GeoPoint;

    .line 153
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public finalizeRoadShape(Lorg/osmdroid/bonuspack/routing/Road;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/bonuspack/routing/Road;",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/bonuspack/routing/RoadLink;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/osmdroid/bonuspack/routing/Road;->mRouteHigh:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    iget-object v1, p1, Lorg/osmdroid/bonuspack/routing/Road;->mNodes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/bonuspack/routing/RoadNode;

    .line 168
    iget-object v2, p1, Lorg/osmdroid/bonuspack/routing/Road;->mNodes:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/osmdroid/bonuspack/routing/Road;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/bonuspack/routing/RoadNode;

    .line 169
    iget v1, v1, Lorg/osmdroid/bonuspack/routing/RoadNode;->mNextRoadLink:I

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/bonuspack/routing/RoadLink;

    iget v1, v1, Lorg/osmdroid/bonuspack/routing/RoadLink;->mShapeIndex:I

    .line 170
    iget v2, v2, Lorg/osmdroid/bonuspack/routing/RoadNode;->mNextRoadLink:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/osmdroid/bonuspack/routing/RoadLink;

    iget p2, p2, Lorg/osmdroid/bonuspack/routing/RoadLink;->mShapeIndex:I

    :goto_0
    if-gt v1, p2, :cond_0

    .line 172
    iget-object v2, p1, Lorg/osmdroid/bonuspack/routing/Road;->mRouteHigh:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getRoad(Ljava/util/ArrayList;)Lorg/osmdroid/bonuspack/routing/Road;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/osmdroid/bonuspack/routing/Road;"
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/routing/MapQuestRoadManager;->getUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MapQuestRoadManager.getRoute:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BONUSPACK"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v1, Lorg/osmdroid/bonuspack/utils/HttpConnection;

    invoke-direct {v1}, Lorg/osmdroid/bonuspack/utils/HttpConnection;-><init>()V

    .line 88
    invoke-virtual {v1, v0}, Lorg/osmdroid/bonuspack/utils/HttpConnection;->doGet(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Lorg/osmdroid/bonuspack/utils/HttpConnection;->getStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, v0, p1}, Lorg/osmdroid/bonuspack/routing/MapQuestRoadManager;->getRoadXML(Ljava/io/InputStream;Ljava/util/ArrayList;)Lorg/osmdroid/bonuspack/routing/Road;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 92
    :goto_0
    invoke-virtual {v1}, Lorg/osmdroid/bonuspack/utils/HttpConnection;->close()V

    const-string v0, "MapQuestRoadManager.getRoute - finished"

    .line 93
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method protected getRoadXML(Ljava/io/InputStream;Ljava/util/ArrayList;)Lorg/osmdroid/bonuspack/routing/Road;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/osmdroid/bonuspack/routing/Road;"
        }
    .end annotation

    .line 110
    new-instance v0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;-><init>()V

    .line 112
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 113
    invoke-virtual {v1, p1, v0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    :goto_0
    iget-object p1, v0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mRoad:Lorg/osmdroid/bonuspack/routing/Road;

    if-eqz p1, :cond_0

    .line 118
    iget v1, p1, Lorg/osmdroid/bonuspack/routing/Road;->mStatus:I

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p1, Lorg/osmdroid/bonuspack/routing/Road;->mNodes:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mLinks:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/osmdroid/bonuspack/routing/Road;->mRouteHigh:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2, v3}, Lorg/osmdroid/bonuspack/routing/MapQuestRoadManager;->finalizeNodes(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p1, Lorg/osmdroid/bonuspack/routing/Road;->mNodes:Ljava/util/ArrayList;

    .line 120
    iget-object v0, v0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mLinks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lorg/osmdroid/bonuspack/routing/MapQuestRoadManager;->finalizeRoadShape(Lorg/osmdroid/bonuspack/routing/Road;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lorg/osmdroid/bonuspack/routing/Road;->mRouteHigh:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {p1, p2}, Lorg/osmdroid/bonuspack/routing/Road;->buildLegs(Ljava/util/ArrayList;)V

    const/4 p2, 0x0

    .line 122
    iput p2, p1, Lorg/osmdroid/bonuspack/routing/Road;->mStatus:I

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    .line 124
    iget p1, p1, Lorg/osmdroid/bonuspack/routing/Road;->mStatus:I

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    .line 126
    :goto_1
    new-instance v0, Lorg/osmdroid/bonuspack/routing/Road;

    invoke-direct {v0, p2}, Lorg/osmdroid/bonuspack/routing/Road;-><init>(Ljava/util/ArrayList;)V

    .line 127
    iput p1, v0, Lorg/osmdroid/bonuspack/routing/Road;->mStatus:I

    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method public getRoads(Ljava/util/ArrayList;)[Lorg/osmdroid/bonuspack/routing/Road;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)[",
            "Lorg/osmdroid/bonuspack/routing/Road;"
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/routing/MapQuestRoadManager;->getRoad(Ljava/util/ArrayList;)Lorg/osmdroid/bonuspack/routing/Road;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/osmdroid/bonuspack/routing/Road;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object v0
.end method

.method protected getUrl(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://open.mapquestapi.com/guidance/v1/route?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/osmdroid/bonuspack/routing/MapQuestRoadManager;->mApiKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&from="

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    .line 51
    invoke-virtual {p0, v1}, Lorg/osmdroid/bonuspack/routing/MapQuestRoadManager;->geoPointAsString(Lorg/osmdroid/util/GeoPoint;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 53
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 54
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&to="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v2}, Lorg/osmdroid/bonuspack/routing/MapQuestRoadManager;->geoPointAsString(Lorg/osmdroid/util/GeoPoint;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "&outFormat=xml"

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&shapeFormat=cmp"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&narrativeType=text"

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&unit=k&fishbone=false"

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestRoadManager;->mOptions:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
