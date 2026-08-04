.class public Lorg/osmdroid/bonuspack/routing/GraphHopperRoadManager;
.super Lorg/osmdroid/bonuspack/routing/RoadManager;
.source "GraphHopperRoadManager.java"


# static fields
.field static final MANEUVERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final SERVICE:Ljava/lang/String; = "https://graphhopper.com/api/1/route?"

.field public static final STATUS_NO_ROUTE:I = 0x3


# instance fields
.field protected mAlternateAvailable:Z

.field protected mKey:Ljava/lang/String;

.field protected mServiceUrl:Ljava/lang/String;

.field protected mWithElevation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/osmdroid/bonuspack/routing/GraphHopperRoadManager;->MANEUVERS:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, -0x3

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, -0x2

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, -0x1

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x18

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 55
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/routing/RoadManager;-><init>()V

    const-string v0, "https://graphhopper.com/api/1/route?"

    .line 56
    iput-object v0, p0, Lorg/osmdroid/bonuspack/routing/GraphHopperRoadManager;->mServiceUrl:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lorg/osmdroid/bonuspack/routing/GraphHopperRoadManager;->mKey:Ljava/lang/String;

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lorg/osmdroid/bonuspack/routing/GraphHopperRoadManager;->mWithElevation:Z

    .line 59
    iput-boolean p2, p0, Lorg/osmdroid/bonuspack/routing/GraphHopperRoadManager;->mAlternateAvailable:Z

    return-void
.end method


# virtual methods
.method protected defaultRoad(Ljava/util/ArrayList;)[Lorg/osmdroid/bonuspack/routing/Road;
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

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/osmdroid/bonuspack/routing/Road;

    .line 89
    new-instance v1, Lorg/osmdroid/bonuspack/routing/Road;

    invoke-direct {v1, p1}, Lorg/osmdroid/bonuspack/routing/Road;-><init>(Ljava/util/ArrayList;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    return-object v0
.end method

.method protected getManeuverCode(I)I
    .locals 1

    .line 160
    sget-object v0, Lorg/osmdroid/bonuspack/routing/GraphHopperRoadManager;->MANEUVERS:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getRoad(Ljava/util/ArrayList;)Lorg/osmdroid/bonuspack/routing/Road;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/osmdroid/bonuspack/routing/Road;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0, p1, v0}, Lorg/osmdroid/bonuspack/routing/GraphHopperRoadManager;->getRoads(Ljava/util/ArrayList;Z)[Lorg/osmdroid/bonuspack/routing/Road;

    move-result-object p1

    .line 156
    aget-object p1, p1, v0

    return-object p1
.end method

.method public getRoads(Ljava/util/ArrayList;)[Lorg/osmdroid/bonuspack/routing/Road;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)[",
            "Lorg/osmdroid/bonuspack/routing/Road;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 150
    invoke-virtual {p0, p1, v0}, Lorg/osmdroid/bonuspack/routing/GraphHopperRoadManager;->getRoads(Ljava/util/ArrayList;Z)[Lorg/osmdroid/bonuspack/routing/Road;

    move-result-object p1

    return-object p1
.end method

.method public getRoads(Ljava/util/ArrayList;Z)[Lorg/osmdroid/bonuspack/routing/Road;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;Z)[",
            "Lorg/osmdroid/bonuspack/routing/Road;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 94
    invoke-virtual/range {p0 .. p2}, Lorg/osmdroid/bonuspack/routing/GraphHopperRoadManager;->getUrl(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GraphHopper.getRoads:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BONUSPACK"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {v0}, Lorg/osmdroid/bonuspack/utils/BonusPackHelper;->requestStringFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    invoke-virtual/range {p0 .. p1}, Lorg/osmdroid/bonuspack/routing/GraphHopperRoadManager;->defaultRoad(Ljava/util/ArrayList;)[Lorg/osmdroid/bonuspack/routing/Road;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "paths"

    .line 102
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 103
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 111
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Lorg/osmdroid/bonuspack/routing/Road;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 112
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 113
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "points"

    .line 114
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 115
    new-instance v8, Lorg/osmdroid/bonuspack/routing/Road;

    invoke-direct {v8}, Lorg/osmdroid/bonuspack/routing/Road;-><init>()V

    .line 116
    aput-object v8, v2, v5

    const/16 v9, 0xa

    .line 117
    iget-boolean v10, v1, Lorg/osmdroid/bonuspack/routing/GraphHopperRoadManager;->mWithElevation:Z

    invoke-static {v7, v9, v10}, Lorg/osmdroid/bonuspack/utils/PolylineEncoder;->decode(Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v8, Lorg/osmdroid/bonuspack/routing/Road;->mRouteHigh:Ljava/util/ArrayList;

    const-string v7, "instructions"

    .line 118
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 119
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v10, 0x0

    :goto_1
    const-string v11, "time"

    const-string v12, "distance"

    if-ge v10, v9, :cond_2

    .line 121
    :try_start_1
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 122
    new-instance v13, Lorg/osmdroid/bonuspack/routing/RoadNode;

    invoke-direct {v13}, Lorg/osmdroid/bonuspack/routing/RoadNode;-><init>()V

    const-string v14, "interval"

    .line 123
    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 124
    invoke-virtual {v14, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v14

    .line 125
    iget-object v4, v8, Lorg/osmdroid/bonuspack/routing/Road;->mRouteHigh:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/util/GeoPoint;

    iput-object v4, v13, Lorg/osmdroid/bonuspack/routing/RoadNode;->mLocation:Lorg/osmdroid/util/GeoPoint;

    .line 126
    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    move v14, v5

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v4, v18, v16

    iput-wide v4, v13, Lorg/osmdroid/bonuspack/routing/RoadNode;->mLength:D

    .line 127
    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double v4, v4, v16

    :try_start_2
    iput-wide v4, v13, Lorg/osmdroid/bonuspack/routing/RoadNode;->mDuration:D

    const-string v4, "sign"

    .line 128
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 129
    invoke-virtual {v1, v4}, Lorg/osmdroid/bonuspack/routing/GraphHopperRoadManager;->getManeuverCode(I)I

    move-result v4

    iput v4, v13, Lorg/osmdroid/bonuspack/routing/RoadNode;->mManeuverType:I

    const-string v4, "text"

    .line 130
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lorg/osmdroid/bonuspack/routing/RoadNode;->mInstructions:Ljava/lang/String;

    .line 131
    iget-object v4, v8, Lorg/osmdroid/bonuspack/routing/Road;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move v5, v14

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    move v14, v5

    .line 133
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v9

    iput-wide v4, v8, Lorg/osmdroid/bonuspack/routing/Road;->mLength:D

    .line 134
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v9

    :try_start_3
    iput-wide v4, v8, Lorg/osmdroid/bonuspack/routing/Road;->mDuration:D

    const-string v4, "bbox"

    .line 135
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 136
    new-instance v5, Lorg/osmdroid/util/BoundingBox;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v16

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v18

    const/4 v6, 0x1

    .line 137
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v20

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v22

    move-object v15, v5

    invoke-direct/range {v15 .. v23}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object v5, v8, Lorg/osmdroid/bonuspack/routing/Road;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    .line 138
    iput v6, v8, Lorg/osmdroid/bonuspack/routing/Road;->mStatus:I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v4, p1

    .line 139
    :try_start_4
    invoke-virtual {v8, v4}, Lorg/osmdroid/bonuspack/routing/Road;->buildLegs(Ljava/util/ArrayList;)V

    const-string v5, "GraphHopper.getRoads - finished"

    .line 140
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v14, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_3
    return-object v2

    :cond_4
    :goto_2
    move-object/from16 v4, p1

    .line 104
    invoke-virtual/range {p0 .. p1}, Lorg/osmdroid/bonuspack/routing/GraphHopperRoadManager;->defaultRoad(Ljava/util/ArrayList;)[Lorg/osmdroid/bonuspack/routing/Road;

    move-result-object v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v4, p1

    .line 144
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 145
    invoke-virtual/range {p0 .. p1}, Lorg/osmdroid/bonuspack/routing/GraphHopperRoadManager;->defaultRoad(Ljava/util/ArrayList;)[Lorg/osmdroid/bonuspack/routing/Road;

    move-result-object v0

    return-object v0
.end method

.method protected getUrl(Ljava/util/ArrayList;Z)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/osmdroid/bonuspack/routing/GraphHopperRoadManager;->mServiceUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/osmdroid/bonuspack/routing/GraphHopperRoadManager;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 75
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 76
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&point="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v2}, Lorg/osmdroid/bonuspack/routing/GraphHopperRoadManager;->geoPointAsString(Lorg/osmdroid/util/GeoPoint;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&elevation="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v1, p0, Lorg/osmdroid/bonuspack/routing/GraphHopperRoadManager;->mWithElevation:Z

    if-eqz v1, :cond_1

    const-string v1, "true"

    goto :goto_1

    :cond_1
    const-string v1, "false"

    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    .line 81
    iget-boolean p1, p0, Lorg/osmdroid/bonuspack/routing/GraphHopperRoadManager;->mAlternateAvailable:Z

    if-eqz p1, :cond_2

    const-string p1, "&ch.disable=true&algorithm=alternative_route"

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_2
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/GraphHopperRoadManager;->mOptions:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setElevation(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lorg/osmdroid/bonuspack/routing/GraphHopperRoadManager;->mWithElevation:Z

    return-void
.end method

.method public setService(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/osmdroid/bonuspack/routing/GraphHopperRoadManager;->mServiceUrl:Ljava/lang/String;

    return-void
.end method
