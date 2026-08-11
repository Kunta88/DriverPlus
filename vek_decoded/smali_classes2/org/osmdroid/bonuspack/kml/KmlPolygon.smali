.class public Lorg/osmdroid/bonuspack/kml/KmlPolygon;
.super Lorg/osmdroid/bonuspack/kml/KmlGeometry;
.source "KmlPolygon.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/osmdroid/bonuspack/kml/KmlPolygon;",
            ">;"
        }
    .end annotation
.end field

.field static mDefaultLayoutResId:I


# instance fields
.field public mHoles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 173
    new-instance v0, Lorg/osmdroid/bonuspack/kml/KmlPolygon$1;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/kml/KmlPolygon$1;-><init>()V

    sput-object v0, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 183
    invoke-direct {p0, p1}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;-><init>(Landroid/os/Parcel;)V

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mHoles:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 188
    const-class v2, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    .line 189
    iget-object v3, p0, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mHoles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonObject;)V
    .locals 3

    .line 90
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/kml/KmlPolygon;-><init>()V

    const-string v0, "coordinates"

    .line 91
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    invoke-static {v0}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->parseGeoJSONPositions(Lcom/google/gson/JsonArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mCoordinates:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mHoles:Ljava/util/ArrayList;

    .line 97
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 98
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    invoke-static {v0}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->parseGeoJSONPositions(Lcom/google/gson/JsonArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 99
    iget-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mHoles:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public applyDefaultStyling(Lorg/osmdroid/views/overlay/Polygon;Lorg/osmdroid/bonuspack/kml/Style;Lorg/osmdroid/bonuspack/kml/KmlPlacemark;Lorg/osmdroid/bonuspack/kml/KmlDocument;Lorg/osmdroid/views/MapView;)V
    .locals 2

    .line 41
    invoke-virtual {p5}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    iget-object v1, p3, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mStyle:Ljava/lang/String;

    invoke-virtual {p4, v1}, Lorg/osmdroid/bonuspack/kml/KmlDocument;->getStyle(Ljava/lang/String;)Lorg/osmdroid/bonuspack/kml/Style;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 44
    invoke-virtual {p4}, Lorg/osmdroid/bonuspack/kml/Style;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object p2

    .line 45
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    .line 46
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 47
    iget-object p2, p4, Lorg/osmdroid/bonuspack/kml/Style;->mPolyStyle:Lorg/osmdroid/bonuspack/kml/ColorStyle;

    if-eqz p2, :cond_1

    .line 48
    iget-object p2, p4, Lorg/osmdroid/bonuspack/kml/Style;->mPolyStyle:Lorg/osmdroid/bonuspack/kml/ColorStyle;

    invoke-virtual {p2}, Lorg/osmdroid/bonuspack/kml/ColorStyle;->getFinalColor()I

    move-result p2

    .line 49
    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 52
    invoke-virtual {p2}, Lorg/osmdroid/bonuspack/kml/Style;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object p4

    .line 53
    invoke-virtual {p4}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    .line 54
    invoke-virtual {p4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p4

    invoke-virtual {p1, p4}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 55
    iget-object p2, p2, Lorg/osmdroid/bonuspack/kml/Style;->mPolyStyle:Lorg/osmdroid/bonuspack/kml/ColorStyle;

    invoke-virtual {p2}, Lorg/osmdroid/bonuspack/kml/ColorStyle;->getFinalColor()I

    move-result p2

    .line 56
    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    .line 58
    :cond_1
    :goto_0
    iget-object p2, p3, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mName:Ljava/lang/String;

    const-string p4, ""

    if-eqz p2, :cond_2

    iget-object p2, p3, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mName:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_2
    iget-object p2, p3, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mDescription:Ljava/lang/String;

    if-eqz p2, :cond_3

    iget-object p2, p3, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mDescription:Ljava/lang/String;

    .line 59
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 60
    :cond_3
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polygon;->getSubDescription()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polygon;->getSubDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 62
    :cond_4
    sget p2, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mDefaultLayoutResId:I

    if-nez p2, :cond_5

    .line 63
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const/4 v0, 0x0

    const-string v1, "layout/bonuspack_bubble"

    invoke-virtual {p4, v1, v0, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    sput p2, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mDefaultLayoutResId:I

    .line 66
    :cond_5
    new-instance p2, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    sget p4, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mDefaultLayoutResId:I

    invoke-direct {p2, p4, p5}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Polygon;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    .line 68
    :cond_6
    iget-boolean p2, p3, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mVisibility:Z

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Polygon;->setEnabled(Z)V

    return-void
.end method

.method public asGeoJSON()Lcom/google/gson/JsonObject;
    .locals 4

    .line 124
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "type"

    const-string v2, "Polygon"

    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 127
    iget-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mCoordinates:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->geoJSONCoordinates(Ljava/util/ArrayList;)Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 128
    iget-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mHoles:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 129
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 130
    invoke-static {v3}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->geoJSONCoordinates(Ljava/util/ArrayList;)Lcom/google/gson/JsonArray;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    const-string v2, "coordinates"

    .line 133
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method

.method public buildOverlay(Lorg/osmdroid/views/MapView;Lorg/osmdroid/bonuspack/kml/Style;Lorg/osmdroid/bonuspack/kml/KmlFeature$Styler;Lorg/osmdroid/bonuspack/kml/KmlPlacemark;Lorg/osmdroid/bonuspack/kml/KmlDocument;)Lorg/osmdroid/views/overlay/Overlay;
    .locals 7

    .line 74
    new-instance v6, Lorg/osmdroid/views/overlay/Polygon;

    invoke-direct {v6}, Lorg/osmdroid/views/overlay/Polygon;-><init>()V

    .line 75
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mCoordinates:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    .line 76
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mHoles:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v6, v0}, Lorg/osmdroid/views/overlay/Polygon;->setHoles(Ljava/util/List;)V

    .line 78
    :cond_0
    iget-object v0, p4, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/osmdroid/views/overlay/Polygon;->setTitle(Ljava/lang/String;)V

    .line 79
    iget-object v0, p4, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mDescription:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/osmdroid/views/overlay/Polygon;->setSnippet(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p4}, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->getExtendedDataAsText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/osmdroid/views/overlay/Polygon;->setSubDescription(Ljava/lang/String;)V

    if-nez p3, :cond_1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    .line 82
    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->applyDefaultStyling(Lorg/osmdroid/views/overlay/Polygon;Lorg/osmdroid/bonuspack/kml/Style;Lorg/osmdroid/bonuspack/kml/KmlPlacemark;Lorg/osmdroid/bonuspack/kml/KmlDocument;Lorg/osmdroid/views/MapView;)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-interface {p3, v6, p4, p0}, Lorg/osmdroid/bonuspack/kml/KmlFeature$Styler;->onPolygon(Lorg/osmdroid/views/overlay/Polygon;Lorg/osmdroid/bonuspack/kml/KmlPlacemark;Lorg/osmdroid/bonuspack/kml/KmlPolygon;)V

    :goto_0
    return-object v6
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->clone()Lorg/osmdroid/bonuspack/kml/KmlPolygon;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/osmdroid/bonuspack/kml/KmlGeometry;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->clone()Lorg/osmdroid/bonuspack/kml/KmlPolygon;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/osmdroid/bonuspack/kml/KmlPolygon;
    .locals 4

    .line 147
    invoke-super {p0}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->clone()Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/bonuspack/kml/KmlPolygon;

    .line 148
    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mHoles:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mHoles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mHoles:Ljava/util/ArrayList;

    .line 150
    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mHoles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 151
    iget-object v3, v0, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mHoles:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->cloneArrayOfGeoPoint(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mCoordinates:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mCoordinates:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/osmdroid/util/BoundingBox;->fromGeoPoints(Ljava/util/List;)Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public saveAsKML(Ljava/io/Writer;)V
    .locals 3

    :try_start_0
    const-string v0, "<Polygon>\n"

    .line 106
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "<outerBoundaryIs>\n<LinearRing>\n"

    .line 107
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mCoordinates:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->writeKMLCoordinates(Ljava/io/Writer;Ljava/util/ArrayList;)Z

    const-string v0, "</LinearRing>\n</outerBoundaryIs>\n"

    .line 109
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mHoles:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "<innerBoundaryIs>\n<LinearRing>\n"

    .line 112
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 113
    invoke-static {p1, v1}, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->writeKMLCoordinates(Ljava/io/Writer;Ljava/util/ArrayList;)Z

    const-string v1, "</LinearRing>\n</innerBoundaryIs>\n"

    .line 114
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "</Polygon>\n"

    .line 117
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 164
    invoke-super {p0, p1, p2}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 165
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mHoles:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    .line 166
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mHoles:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 168
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 170
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    return-void
.end method
