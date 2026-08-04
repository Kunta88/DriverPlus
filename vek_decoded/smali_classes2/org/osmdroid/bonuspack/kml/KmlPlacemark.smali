.class public Lorg/osmdroid/bonuspack/kml/KmlPlacemark;
.super Lorg/osmdroid/bonuspack/kml/KmlFeature;
.source "KmlPlacemark.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/osmdroid/bonuspack/kml/KmlPlacemark;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 195
    new-instance v0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark$1;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/kml/KmlPlacemark$1;-><init>()V

    sput-object v0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/kml/KmlFeature;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 205
    invoke-direct {p0, p1}, Lorg/osmdroid/bonuspack/kml/KmlFeature;-><init>(Landroid/os/Parcel;)V

    .line 206
    const-class v0, Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonObject;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;-><init>()V

    const-string v0, "id"

    .line 88
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mId:Ljava/lang/String;

    :cond_0
    const-string v0, "geometry"

    .line 90
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->parseGeoJSON(Lcom/google/gson/JsonObject;)Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    :cond_1
    const-string v0, "properties"

    .line 95
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 97
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_4

    .line 99
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 101
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 106
    :try_start_0
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 108
    :catch_0
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {p0, v1, v0}, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->setExtendedData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_3
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mExtendedData:Ljava/util/HashMap;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mExtendedData:Ljava/util/HashMap;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 115
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mExtendedData:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mName:Ljava/lang/String;

    .line 116
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mExtendedData:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/util/GeoPoint;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;-><init>()V

    .line 43
    new-instance v0, Lorg/osmdroid/bonuspack/kml/KmlPoint;

    invoke-direct {v0, p1}, Lorg/osmdroid/bonuspack/kml/KmlPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 1

    .line 48
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Marker;->getPosition()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    .line 49
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Marker;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mName:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Marker;->getSnippet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mDescription:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Marker;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mVisibility:Z

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/overlay/Polygon;Lorg/osmdroid/bonuspack/kml/KmlDocument;)V
    .locals 3

    .line 57
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;-><init>()V

    .line 58
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polygon;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mName:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polygon;->getSnippet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mDescription:Ljava/lang/String;

    .line 60
    new-instance v0, Lorg/osmdroid/bonuspack/kml/KmlPolygon;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/kml/KmlPolygon;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    .line 61
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polygon;->getPoints()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->mCoordinates:Ljava/util/ArrayList;

    .line 62
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    check-cast v0, Lorg/osmdroid/bonuspack/kml/KmlPolygon;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polygon;->getHoles()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mHoles:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polygon;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mVisibility:Z

    .line 65
    new-instance v0, Lorg/osmdroid/bonuspack/kml/Style;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/kml/Style;-><init>()V

    .line 66
    new-instance v1, Lorg/osmdroid/bonuspack/kml/ColorStyle;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polygon;->getFillColor()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/osmdroid/bonuspack/kml/ColorStyle;-><init>(I)V

    iput-object v1, v0, Lorg/osmdroid/bonuspack/kml/Style;->mPolyStyle:Lorg/osmdroid/bonuspack/kml/ColorStyle;

    .line 67
    new-instance v1, Lorg/osmdroid/bonuspack/kml/LineStyle;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polygon;->getStrokeColor()I

    move-result v2

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polygon;->getStrokeWidth()F

    move-result p1

    invoke-direct {v1, v2, p1}, Lorg/osmdroid/bonuspack/kml/LineStyle;-><init>(IF)V

    iput-object v1, v0, Lorg/osmdroid/bonuspack/kml/Style;->mLineStyle:Lorg/osmdroid/bonuspack/kml/LineStyle;

    .line 68
    invoke-virtual {p2, v0}, Lorg/osmdroid/bonuspack/kml/KmlDocument;->addStyle(Lorg/osmdroid/bonuspack/kml/StyleSelector;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mStyle:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/bonuspack/kml/KmlDocument;)V
    .locals 3

    .line 73
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;-><init>()V

    .line 74
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polyline;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mName:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polyline;->getSnippet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mDescription:Ljava/lang/String;

    .line 76
    new-instance v0, Lorg/osmdroid/bonuspack/kml/KmlLineString;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/kml/KmlLineString;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    .line 77
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polyline;->getPoints()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->mCoordinates:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polyline;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mVisibility:Z

    .line 80
    new-instance v0, Lorg/osmdroid/bonuspack/kml/Style;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/kml/Style;-><init>()V

    .line 81
    new-instance v1, Lorg/osmdroid/bonuspack/kml/LineStyle;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polyline;->getColor()I

    move-result v2

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polyline;->getWidth()F

    move-result p1

    invoke-direct {v1, v2, p1}, Lorg/osmdroid/bonuspack/kml/LineStyle;-><init>(IF)V

    iput-object v1, v0, Lorg/osmdroid/bonuspack/kml/Style;->mLineStyle:Lorg/osmdroid/bonuspack/kml/LineStyle;

    .line 82
    invoke-virtual {p2, v0}, Lorg/osmdroid/bonuspack/kml/KmlDocument;->addStyle(Lorg/osmdroid/bonuspack/kml/StyleSelector;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mStyle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public asGeoJSON(Z)Lcom/google/gson/JsonObject;
    .locals 2

    .line 163
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v0, "type"

    const-string v1, "Feature"

    .line 164
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mId:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    const-string v1, "geometry"

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {v0}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->asGeoJSON()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 170
    :cond_1
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 171
    :goto_0
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->geoJSONProperties()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "properties"

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object p1
.end method

.method public buildOverlay(Lorg/osmdroid/views/MapView;Lorg/osmdroid/bonuspack/kml/Style;Lorg/osmdroid/bonuspack/kml/KmlFeature$Styler;Lorg/osmdroid/bonuspack/kml/KmlDocument;)Lorg/osmdroid/views/overlay/Overlay;
    .locals 6

    .line 130
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p4

    .line 131
    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->buildOverlay(Lorg/osmdroid/views/MapView;Lorg/osmdroid/bonuspack/kml/Style;Lorg/osmdroid/bonuspack/kml/KmlFeature$Styler;Lorg/osmdroid/bonuspack/kml/KmlPlacemark;Lorg/osmdroid/bonuspack/kml/KmlDocument;)Lorg/osmdroid/views/overlay/Overlay;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->clone()Lorg/osmdroid/bonuspack/kml/KmlPlacemark;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/osmdroid/bonuspack/kml/KmlFeature;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->clone()Lorg/osmdroid/bonuspack/kml/KmlPlacemark;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/osmdroid/bonuspack/kml/KmlPlacemark;
    .locals 2

    .line 178
    invoke-super {p0}, Lorg/osmdroid/bonuspack/kml/KmlFeature;->clone()Lorg/osmdroid/bonuspack/kml/KmlFeature;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;

    .line 179
    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {v1}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->clone()Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    move-result-object v1

    iput-object v1, v0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    :cond_0
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected geoJSONProperties()Lcom/google/gson/JsonObject;
    .locals 4

    .line 143
    :try_start_0
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 144
    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "name"

    .line 145
    iget-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mExtendedData:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mExtendedData:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 149
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 150
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 151
    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeKMLSpecifics(Ljava/io/Writer;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->saveAsKML(Ljava/io/Writer;)V

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 191
    invoke-super {p0, p1, p2}, Lorg/osmdroid/bonuspack/kml/KmlFeature;->writeToParcel(Landroid/os/Parcel;I)V

    .line 192
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
