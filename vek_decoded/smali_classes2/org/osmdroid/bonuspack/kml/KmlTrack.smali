.class public Lorg/osmdroid/bonuspack/kml/KmlTrack;
.super Lorg/osmdroid/bonuspack/kml/KmlGeometry;
.source "KmlTrack.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/osmdroid/bonuspack/kml/KmlTrack;",
            ">;"
        }
    .end annotation
.end field

.field static final KML_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field static mDefaultLayoutResId:I


# instance fields
.field public mWhen:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 157
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/bonuspack/kml/KmlTrack;->KML_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 214
    new-instance v0, Lorg/osmdroid/bonuspack/kml/KmlTrack$1;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/kml/KmlTrack$1;-><init>()V

    sput-object v0, Lorg/osmdroid/bonuspack/kml/KmlTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlTrack;->mCoordinates:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlTrack;->mWhen:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 224
    invoke-direct {p0, p1}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;-><init>(Landroid/os/Parcel;)V

    .line 225
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlTrack;->mWhen:Ljava/util/ArrayList;

    return-void
.end method

.method public static parseKmlGxCoord(Ljava/lang/String;)Lorg/osmdroid/util/GeoPoint;
    .locals 12

    const/16 v0, 0x20

    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 46
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 48
    :try_start_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 49
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    add-int/lit8 v0, v0, 0x1

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 51
    new-instance p0, Lorg/osmdroid/util/GeoPoint;

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v4
.end method

.method public static parseKmlWhen(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    return-object v2

    .line 81
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_4
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 88
    :goto_0
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v2
.end method


# virtual methods
.method public add(Lorg/osmdroid/util/GeoPoint;Ljava/util/Date;)V
    .locals 1

    if-nez p1, :cond_0

    .line 109
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlTrack;->mCoordinates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlTrack;->mCoordinates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->clone()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :goto_0
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlTrack;->mWhen:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addGxCoord(Ljava/lang/String;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlTrack;->mCoordinates:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/osmdroid/bonuspack/kml/KmlTrack;->parseKmlGxCoord(Ljava/lang/String;)Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWhen(Ljava/lang/String;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlTrack;->mWhen:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlTrack;->mWhen:Ljava/util/ArrayList;

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlTrack;->mWhen:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/osmdroid/bonuspack/kml/KmlTrack;->parseKmlWhen(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyDefaultStyling(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/bonuspack/kml/Style;Lorg/osmdroid/bonuspack/kml/KmlPlacemark;Lorg/osmdroid/bonuspack/kml/KmlDocument;Lorg/osmdroid/views/MapView;)V
    .locals 2

    .line 117
    invoke-virtual {p5}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    iget-object v1, p3, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mStyle:Ljava/lang/String;

    invoke-virtual {p4, v1}, Lorg/osmdroid/bonuspack/kml/KmlDocument;->getStyle(Ljava/lang/String;)Lorg/osmdroid/bonuspack/kml/Style;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 120
    invoke-virtual {p4}, Lorg/osmdroid/bonuspack/kml/Style;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    .line 121
    invoke-virtual {p4}, Lorg/osmdroid/bonuspack/kml/Style;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 122
    iget-object p4, p2, Lorg/osmdroid/bonuspack/kml/Style;->mLineStyle:Lorg/osmdroid/bonuspack/kml/LineStyle;

    if-eqz p4, :cond_1

    .line 123
    invoke-virtual {p2}, Lorg/osmdroid/bonuspack/kml/Style;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Paint;->getColor()I

    move-result p4

    invoke-virtual {p1, p4}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    .line 124
    invoke-virtual {p2}, Lorg/osmdroid/bonuspack/kml/Style;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    .line 126
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

    .line 127
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 128
    :cond_3
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polyline;->getSubDescription()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polyline;->getSubDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 130
    :cond_4
    sget p2, Lorg/osmdroid/bonuspack/kml/KmlTrack;->mDefaultLayoutResId:I

    if-nez p2, :cond_5

    .line 131
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 132
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const/4 v0, 0x0

    const-string v1, "layout/bonuspack_bubble"

    invoke-virtual {p4, v1, v0, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    sput p2, Lorg/osmdroid/bonuspack/kml/KmlTrack;->mDefaultLayoutResId:I

    .line 134
    :cond_5
    new-instance p2, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    sget p4, Lorg/osmdroid/bonuspack/kml/KmlTrack;->mDefaultLayoutResId:I

    invoke-direct {p2, p4, p5}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Polyline;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    .line 136
    :cond_6
    iget-boolean p2, p3, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mVisibility:Z

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Polyline;->setEnabled(Z)V

    return-void
.end method

.method public asGeoJSON()Lcom/google/gson/JsonObject;
    .locals 3

    .line 183
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "type"

    const-string v2, "LineString"

    .line 184
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlTrack;->mCoordinates:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->geoJSONCoordinates(Ljava/util/ArrayList;)Lcom/google/gson/JsonArray;

    move-result-object v1

    const-string v2, "coordinates"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method

.method public buildOverlay(Lorg/osmdroid/views/MapView;Lorg/osmdroid/bonuspack/kml/Style;Lorg/osmdroid/bonuspack/kml/KmlFeature$Styler;Lorg/osmdroid/bonuspack/kml/KmlPlacemark;Lorg/osmdroid/bonuspack/kml/KmlDocument;)Lorg/osmdroid/views/overlay/Overlay;
    .locals 7

    .line 143
    new-instance v6, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v6}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    const/4 v0, 0x1

    .line 144
    invoke-virtual {v6, v0}, Lorg/osmdroid/views/overlay/Polyline;->setGeodesic(Z)V

    .line 145
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlTrack;->mCoordinates:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 146
    iget-object v0, p4, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/osmdroid/views/overlay/Polyline;->setTitle(Ljava/lang/String;)V

    .line 147
    iget-object v0, p4, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mDescription:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/osmdroid/views/overlay/Polyline;->setSnippet(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p4}, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->getExtendedDataAsText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/osmdroid/views/overlay/Polyline;->setSubDescription(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 150
    invoke-interface {p3, v6, p4, p0}, Lorg/osmdroid/bonuspack/kml/KmlFeature$Styler;->onTrack(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/bonuspack/kml/KmlPlacemark;Lorg/osmdroid/bonuspack/kml/KmlTrack;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, v6

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    .line 152
    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/bonuspack/kml/KmlTrack;->applyDefaultStyling(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/bonuspack/kml/Style;Lorg/osmdroid/bonuspack/kml/KmlPlacemark;Lorg/osmdroid/bonuspack/kml/KmlDocument;Lorg/osmdroid/views/MapView;)V

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
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/kml/KmlTrack;->clone()Lorg/osmdroid/bonuspack/kml/KmlTrack;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/osmdroid/bonuspack/kml/KmlGeometry;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/kml/KmlTrack;->clone()Lorg/osmdroid/bonuspack/kml/KmlTrack;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/osmdroid/bonuspack/kml/KmlTrack;
    .locals 4

    .line 196
    invoke-super {p0}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->clone()Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/bonuspack/kml/KmlTrack;

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlTrack;->mWhen:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lorg/osmdroid/bonuspack/kml/KmlTrack;->mWhen:Ljava/util/ArrayList;

    .line 198
    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlTrack;->mWhen:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    .line 199
    iget-object v3, v0, Lorg/osmdroid/bonuspack/kml/KmlTrack;->mWhen:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

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

    .line 190
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlTrack;->mCoordinates:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/osmdroid/util/BoundingBox;->fromGeoPoints(Ljava/util/List;)Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public saveAsKML(Ljava/io/Writer;)V
    .locals 6

    const-string v0, " "

    :try_start_0
    const-string v1, "<gx:Track>\n"

    .line 161
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlTrack;->mWhen:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    const-string v3, "<when>"

    .line 164
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    .line 166
    sget-object v3, Lorg/osmdroid/bonuspack/kml/KmlTrack;->KML_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    const-string v2, "</when>\n"

    .line 167
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_1
    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlTrack;->mCoordinates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    const-string v3, "<gx:coord>"

    .line 171
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    const-string v2, "</gx:coord>\n"

    .line 174
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "</gx:Track>\n"

    .line 176
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 178
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 210
    invoke-super {p0, p1, p2}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 211
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlTrack;->mWhen:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
