.class public Lorg/osmdroid/bonuspack/kml/KmlPoint;
.super Lorg/osmdroid/bonuspack/kml/KmlGeometry;
.source "KmlPoint.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/bonuspack/kml/KmlPoint$OnKMLMarkerDragListener;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/osmdroid/bonuspack/kml/KmlPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 140
    new-instance v0, Lorg/osmdroid/bonuspack/kml/KmlPoint$1;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/kml/KmlPoint$1;-><init>()V

    sput-object v0, Lorg/osmdroid/bonuspack/kml/KmlPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonObject;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/kml/KmlPoint;-><init>()V

    const-string v0, "coordinates"

    .line 40
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    invoke-static {p1}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->parseGeoJSONPosition(Lcom/google/gson/JsonArray;)Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/kml/KmlPoint;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/util/GeoPoint;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/kml/KmlPoint;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/kml/KmlPoint;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    return-void
.end method


# virtual methods
.method public applyDefaultStyling(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/bonuspack/kml/Style;Lorg/osmdroid/bonuspack/kml/KmlPlacemark;Lorg/osmdroid/bonuspack/kml/KmlDocument;Lorg/osmdroid/views/MapView;)V
    .locals 1

    .line 73
    invoke-virtual {p5}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object p5

    .line 74
    iget-object v0, p3, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mStyle:Ljava/lang/String;

    invoke-virtual {p4, v0}, Lorg/osmdroid/bonuspack/kml/KmlDocument;->getStyle(Ljava/lang/String;)Lorg/osmdroid/bonuspack/kml/Style;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 75
    iget-object v0, p4, Lorg/osmdroid/bonuspack/kml/Style;->mIconStyle:Lorg/osmdroid/bonuspack/kml/IconStyle;

    if-eqz v0, :cond_0

    .line 76
    iget-object p2, p4, Lorg/osmdroid/bonuspack/kml/Style;->mIconStyle:Lorg/osmdroid/bonuspack/kml/IconStyle;

    invoke-virtual {p2, p1, p5}, Lorg/osmdroid/bonuspack/kml/IconStyle;->styleMarker(Lorg/osmdroid/views/overlay/Marker;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 77
    iget-object p4, p2, Lorg/osmdroid/bonuspack/kml/Style;->mIconStyle:Lorg/osmdroid/bonuspack/kml/IconStyle;

    if-eqz p4, :cond_1

    .line 78
    iget-object p2, p2, Lorg/osmdroid/bonuspack/kml/Style;->mIconStyle:Lorg/osmdroid/bonuspack/kml/IconStyle;

    invoke-virtual {p2, p1, p5}, Lorg/osmdroid/bonuspack/kml/IconStyle;->styleMarker(Lorg/osmdroid/views/overlay/Marker;Landroid/content/Context;)V

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 81
    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Marker;->setDraggable(Z)V

    .line 82
    new-instance p2, Lorg/osmdroid/bonuspack/kml/KmlPoint$OnKMLMarkerDragListener;

    invoke-direct {p2, p0}, Lorg/osmdroid/bonuspack/kml/KmlPoint$OnKMLMarkerDragListener;-><init>(Lorg/osmdroid/bonuspack/kml/KmlPoint;)V

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Marker;->setOnMarkerDragListener(Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;)V

    .line 83
    iget-boolean p2, p3, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mVisibility:Z

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Marker;->setEnabled(Z)V

    return-void
.end method

.method public asGeoJSON()Lcom/google/gson/JsonObject;
    .locals 3

    .line 114
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "type"

    const-string v2, "Point"

    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlPoint;->mCoordinates:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-static {v1}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->geoJSONPosition(Lorg/osmdroid/util/GeoPoint;)Lcom/google/gson/JsonArray;

    move-result-object v1

    const-string v2, "coordinates"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method

.method public buildOverlay(Lorg/osmdroid/views/MapView;Lorg/osmdroid/bonuspack/kml/Style;Lorg/osmdroid/bonuspack/kml/KmlFeature$Styler;Lorg/osmdroid/bonuspack/kml/KmlPlacemark;Lorg/osmdroid/bonuspack/kml/KmlDocument;)Lorg/osmdroid/views/overlay/Overlay;
    .locals 7

    .line 89
    new-instance v6, Lorg/osmdroid/views/overlay/Marker;

    invoke-direct {v6, p1}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 90
    iget-object v0, p4, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    .line 91
    iget-object v0, p4, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mDescription:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/osmdroid/views/overlay/Marker;->setSnippet(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p4}, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->getExtendedDataAsText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/osmdroid/views/overlay/Marker;->setSubDescription(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/kml/KmlPoint;->getPosition()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 95
    invoke-virtual {v6, p0}, Lorg/osmdroid/views/overlay/Marker;->setRelatedObject(Ljava/lang/Object;)V

    if-nez p3, :cond_0

    move-object v0, p0

    move-object v1, v6

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    .line 97
    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/bonuspack/kml/KmlPoint;->applyDefaultStyling(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/bonuspack/kml/Style;Lorg/osmdroid/bonuspack/kml/KmlPlacemark;Lorg/osmdroid/bonuspack/kml/KmlDocument;Lorg/osmdroid/views/MapView;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-interface {p3, v6, p4, p0}, Lorg/osmdroid/bonuspack/kml/KmlFeature$Styler;->onPoint(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/bonuspack/kml/KmlPlacemark;Lorg/osmdroid/bonuspack/kml/KmlPoint;)V

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

    .line 26
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/kml/KmlPoint;->clone()Lorg/osmdroid/bonuspack/kml/KmlPoint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/osmdroid/bonuspack/kml/KmlGeometry;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/kml/KmlPoint;->clone()Lorg/osmdroid/bonuspack/kml/KmlPoint;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/osmdroid/bonuspack/kml/KmlPoint;
    .locals 1

    .line 127
    invoke-super {p0}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->clone()Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/bonuspack/kml/KmlPoint;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPoint;->mCoordinates:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/osmdroid/util/BoundingBox;->fromGeoPoints(Ljava/util/List;)Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lorg/osmdroid/util/GeoPoint;
    .locals 2

    .line 55
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPoint;->mCoordinates:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public saveAsKML(Ljava/io/Writer;)V
    .locals 1

    :try_start_0
    const-string v0, "<Point>\n"

    .line 105
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPoint;->mCoordinates:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/osmdroid/bonuspack/kml/KmlPoint;->writeKMLCoordinates(Ljava/io/Writer;Ljava/util/ArrayList;)Z

    const-string v0, "</Point>\n"

    .line 107
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setPosition(Lorg/osmdroid/util/GeoPoint;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPoint;->mCoordinates:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPoint;->mCoordinates:Ljava/util/ArrayList;

    .line 49
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPoint;->mCoordinates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPoint;->mCoordinates:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
