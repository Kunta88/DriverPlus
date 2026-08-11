.class public Lorg/osmdroid/bonuspack/kml/KmlLineString;
.super Lorg/osmdroid/bonuspack/kml/KmlGeometry;
.source "KmlLineString.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/osmdroid/bonuspack/kml/KmlLineString;",
            ">;"
        }
    .end annotation
.end field

.field static mDefaultLayoutResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    new-instance v0, Lorg/osmdroid/bonuspack/kml/KmlLineString$1;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/kml/KmlLineString$1;-><init>()V

    sput-object v0, Lorg/osmdroid/bonuspack/kml/KmlLineString;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonObject;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/kml/KmlLineString;-><init>()V

    const-string v0, "coordinates"

    .line 33
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    .line 34
    invoke-static {p1}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->parseGeoJSONPositions(Lcom/google/gson/JsonArray;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlLineString;->mCoordinates:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public applyDefaultStyling(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/bonuspack/kml/Style;Lorg/osmdroid/bonuspack/kml/KmlPlacemark;Lorg/osmdroid/bonuspack/kml/KmlDocument;Lorg/osmdroid/views/MapView;)V
    .locals 2

    .line 39
    invoke-virtual {p5}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    iget-object v1, p3, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mStyle:Ljava/lang/String;

    invoke-virtual {p4, v1}, Lorg/osmdroid/bonuspack/kml/KmlDocument;->getStyle(Ljava/lang/String;)Lorg/osmdroid/bonuspack/kml/Style;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 42
    invoke-virtual {p4}, Lorg/osmdroid/bonuspack/kml/Style;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    .line 43
    invoke-virtual {p4}, Lorg/osmdroid/bonuspack/kml/Style;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 44
    iget-object p4, p2, Lorg/osmdroid/bonuspack/kml/Style;->mLineStyle:Lorg/osmdroid/bonuspack/kml/LineStyle;

    if-eqz p4, :cond_1

    .line 45
    invoke-virtual {p2}, Lorg/osmdroid/bonuspack/kml/Style;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Paint;->getColor()I

    move-result p4

    invoke-virtual {p1, p4}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    .line 46
    invoke-virtual {p2}, Lorg/osmdroid/bonuspack/kml/Style;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    .line 48
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

    .line 49
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 50
    :cond_3
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polyline;->getSubDescription()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polyline;->getSubDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 52
    :cond_4
    sget p2, Lorg/osmdroid/bonuspack/kml/KmlLineString;->mDefaultLayoutResId:I

    if-nez p2, :cond_5

    .line 53
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const/4 v0, 0x0

    const-string v1, "layout/bonuspack_bubble"

    invoke-virtual {p4, v1, v0, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    sput p2, Lorg/osmdroid/bonuspack/kml/KmlLineString;->mDefaultLayoutResId:I

    .line 56
    :cond_5
    new-instance p2, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    sget p4, Lorg/osmdroid/bonuspack/kml/KmlLineString;->mDefaultLayoutResId:I

    invoke-direct {p2, p4, p5}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Polyline;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    .line 58
    :cond_6
    iget-boolean p2, p3, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mVisibility:Z

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Polyline;->setEnabled(Z)V

    return-void
.end method

.method public asGeoJSON()Lcom/google/gson/JsonObject;
    .locals 3

    .line 89
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "type"

    const-string v2, "LineString"

    .line 90
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlLineString;->mCoordinates:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->geoJSONCoordinates(Ljava/util/ArrayList;)Lcom/google/gson/JsonArray;

    move-result-object v1

    const-string v2, "coordinates"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method

.method public buildOverlay(Lorg/osmdroid/views/MapView;Lorg/osmdroid/bonuspack/kml/Style;Lorg/osmdroid/bonuspack/kml/KmlFeature$Styler;Lorg/osmdroid/bonuspack/kml/KmlPlacemark;Lorg/osmdroid/bonuspack/kml/KmlDocument;)Lorg/osmdroid/views/overlay/Overlay;
    .locals 7

    .line 64
    new-instance v6, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v6}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    const/4 v0, 0x1

    .line 65
    invoke-virtual {v6, v0}, Lorg/osmdroid/views/overlay/Polyline;->setGeodesic(Z)V

    .line 66
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlLineString;->mCoordinates:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 67
    iget-object v0, p4, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/osmdroid/views/overlay/Polyline;->setTitle(Ljava/lang/String;)V

    .line 68
    iget-object v0, p4, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mDescription:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/osmdroid/views/overlay/Polyline;->setSnippet(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p4}, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->getExtendedDataAsText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/osmdroid/views/overlay/Polyline;->setSubDescription(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 71
    invoke-interface {p3, v6, p4, p0}, Lorg/osmdroid/bonuspack/kml/KmlFeature$Styler;->onLineString(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/bonuspack/kml/KmlPlacemark;Lorg/osmdroid/bonuspack/kml/KmlLineString;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, v6

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    .line 73
    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/bonuspack/kml/KmlLineString;->applyDefaultStyling(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/bonuspack/kml/Style;Lorg/osmdroid/bonuspack/kml/KmlPlacemark;Lorg/osmdroid/bonuspack/kml/KmlDocument;Lorg/osmdroid/views/MapView;)V

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

    .line 24
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/kml/KmlLineString;->clone()Lorg/osmdroid/bonuspack/kml/KmlLineString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/osmdroid/bonuspack/kml/KmlGeometry;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/kml/KmlLineString;->clone()Lorg/osmdroid/bonuspack/kml/KmlLineString;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/osmdroid/bonuspack/kml/KmlLineString;
    .locals 1

    .line 105
    invoke-super {p0}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->clone()Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/bonuspack/kml/KmlLineString;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlLineString;->mCoordinates:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlLineString;->mCoordinates:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/osmdroid/util/BoundingBox;->fromGeoPoints(Ljava/util/List;)Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public saveAsKML(Ljava/io/Writer;)V
    .locals 1

    :try_start_0
    const-string v0, "<LineString>\n"

    .line 80
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlLineString;->mCoordinates:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/osmdroid/bonuspack/kml/KmlLineString;->writeKMLCoordinates(Ljava/io/Writer;Ljava/util/ArrayList;)Z

    const-string v0, "</LineString>\n"

    .line 82
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
