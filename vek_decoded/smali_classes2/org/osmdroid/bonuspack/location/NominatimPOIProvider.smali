.class public Lorg/osmdroid/bonuspack/location/NominatimPOIProvider;
.super Ljava/lang/Object;
.source "NominatimPOIProvider.java"


# static fields
.field public static final MAPQUEST_POI_SERVICE:Ljava/lang/String; = "http://open.mapquestapi.com/nominatim/v1/"

.field public static final NOMINATIM_POI_SERVICE:Ljava/lang/String; = "http://nominatim.openstreetmap.org/"


# instance fields
.field protected mService:Ljava/lang/String;

.field protected mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://nominatim.openstreetmap.org/"

    .line 41
    iput-object v0, p0, Lorg/osmdroid/bonuspack/location/NominatimPOIProvider;->mService:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lorg/osmdroid/bonuspack/location/NominatimPOIProvider;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method private getCommonUrl(Ljava/lang/String;I)Ljava/lang/StringBuilder;
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/osmdroid/bonuspack/location/NominatimPOIProvider;->mService:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "search?"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "format=json"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&q=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&limit="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&bounded=1"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private getUrlCloseTo(Lorg/osmdroid/util/GeoPoint;Ljava/lang/String;ID)Ljava/lang/String;
    .locals 10

    .line 70
    new-instance v9, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    add-double v1, v0, p4

    .line 71
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v3

    add-double/2addr v3, p4

    .line 72
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v5

    sub-double/2addr v5, p4

    .line 73
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v7

    sub-double/2addr v7, p4

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    .line 74
    invoke-direct {p0, v9, p2, p3}, Lorg/osmdroid/bonuspack/location/NominatimPOIProvider;->getUrlInside(Lorg/osmdroid/util/BoundingBox;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUrlInside(Lorg/osmdroid/util/BoundingBox;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 60
    invoke-direct {p0, p2, p3}, Lorg/osmdroid/bonuspack/location/NominatimPOIProvider;->getCommonUrl(Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 61
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "&viewbox="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 62
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 63
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 64
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getPOIAlong(Ljava/util/ArrayList;Ljava/lang/String;ID)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;",
            "Ljava/lang/String;",
            "ID)",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/bonuspack/location/POI;",
            ">;"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p2, p3}, Lorg/osmdroid/bonuspack/location/NominatimPOIProvider;->getCommonUrl(Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 160
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "&routewidth="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&route="

    .line 161
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/osmdroid/util/GeoPoint;

    const-string p5, ","

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_1

    .line 167
    :cond_0
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :goto_1
    invoke-virtual {p4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {p4}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p4

    .line 171
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/location/NominatimPOIProvider;->getThem(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getPOICloseTo(Lorg/osmdroid/util/GeoPoint;Ljava/lang/String;ID)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/util/GeoPoint;",
            "Ljava/lang/String;",
            "ID)",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/bonuspack/location/POI;",
            ">;"
        }
    .end annotation

    .line 132
    invoke-direct/range {p0 .. p5}, Lorg/osmdroid/bonuspack/location/NominatimPOIProvider;->getUrlCloseTo(Lorg/osmdroid/util/GeoPoint;Ljava/lang/String;ID)Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/location/NominatimPOIProvider;->getThem(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getPOIInside(Lorg/osmdroid/util/BoundingBox;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/util/BoundingBox;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/bonuspack/location/POI;",
            ">;"
        }
    .end annotation

    .line 143
    invoke-direct {p0, p1, p2, p3}, Lorg/osmdroid/bonuspack/location/NominatimPOIProvider;->getUrlInside(Lorg/osmdroid/util/BoundingBox;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/location/NominatimPOIProvider;->getThem(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getThem(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/bonuspack/location/POI;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NominatimPOIProvider:get:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BONUSPACK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lorg/osmdroid/bonuspack/location/NominatimPOIProvider;->mUserAgent:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/osmdroid/bonuspack/utils/BonusPackHelper;->requestStringFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "NominatimPOIProvider: request failed."

    .line 85
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 89
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move-object v4, v0

    :goto_0
    if-ge v3, p1, :cond_2

    .line 94
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 95
    new-instance v6, Lorg/osmdroid/bonuspack/location/POI;

    sget v7, Lorg/osmdroid/bonuspack/location/POI;->POI_SERVICE_NOMINATIM:I

    invoke-direct {v6, v7}, Lorg/osmdroid/bonuspack/location/POI;-><init>(I)V

    const-string v7, "osm_id"

    .line 96
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Lorg/osmdroid/bonuspack/location/POI;->mId:J

    .line 97
    new-instance v7, Lorg/osmdroid/util/GeoPoint;

    const-string v8, "lat"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-string v10, "lon"

    .line 98
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v7, v6, Lorg/osmdroid/bonuspack/location/POI;->mLocation:Lorg/osmdroid/util/GeoPoint;

    const-string v7, "class"

    .line 99
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/osmdroid/bonuspack/location/POI;->mCategory:Ljava/lang/String;

    const-string v7, "type"

    .line 100
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/osmdroid/bonuspack/location/POI;->mType:Ljava/lang/String;

    const-string v7, "display_name"

    .line 101
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/osmdroid/bonuspack/location/POI;->mDescription:Ljava/lang/String;

    const-string v7, "icon"

    .line 102
    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lorg/osmdroid/bonuspack/location/POI;->mThumbnailPath:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 103
    iget-object v5, v6, Lorg/osmdroid/bonuspack/location/POI;->mThumbnailPath:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 105
    iget-object v4, v6, Lorg/osmdroid/bonuspack/location/POI;->mThumbnailPath:Ljava/lang/String;

    invoke-static {v4}, Lorg/osmdroid/bonuspack/utils/BonusPackHelper;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 107
    :cond_1
    iput-object v4, v6, Lorg/osmdroid/bonuspack/location/POI;->mThumbnail:Landroid/graphics/Bitmap;

    .line 108
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method

.method public setService(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/osmdroid/bonuspack/location/NominatimPOIProvider;->mService:Ljava/lang/String;

    return-void
.end method
