.class public Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;
.super Lorg/osmdroid/bonuspack/kml/KmlGeometry;
.source "KmlMultiGeometry.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/bonuspack/kml/KmlGeometry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry$1;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry$1;-><init>()V

    sput-object v0, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 140
    invoke-direct {p0, p1}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;-><init>(Landroid/os/Parcel;)V

    .line 141
    const-class v0, Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonObject;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;-><init>()V

    const-string v0, "type"

    .line 40
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeometryCollection"

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "geometries"

    .line 42
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 45
    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;->parseGeoJSON(Lcom/google/gson/JsonObject;)Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "MultiPoint"

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "coordinates"

    .line 49
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    .line 50
    invoke-static {p1}, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;->parseGeoJSONPositions(Lcom/google/gson/JsonArray;)Ljava/util/ArrayList;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    .line 52
    new-instance v1, Lorg/osmdroid/bonuspack/kml/KmlPoint;

    invoke-direct {v1, v0}, Lorg/osmdroid/bonuspack/kml/KmlPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    .line 53
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public addItem(Lorg/osmdroid/bonuspack/kml/KmlGeometry;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public asGeoJSON()Lcom/google/gson/JsonObject;
    .locals 4

    .line 85
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "type"

    const-string v2, "GeometryCollection"

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 88
    iget-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    .line 89
    invoke-virtual {v3}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->asGeoJSON()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    const-string v2, "geometries"

    .line 90
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method

.method public buildOverlay(Lorg/osmdroid/views/MapView;Lorg/osmdroid/bonuspack/kml/Style;Lorg/osmdroid/bonuspack/kml/KmlFeature$Styler;Lorg/osmdroid/bonuspack/kml/KmlPlacemark;Lorg/osmdroid/bonuspack/kml/KmlDocument;)Lorg/osmdroid/views/overlay/Overlay;
    .locals 9

    .line 65
    new-instance v0, Lorg/osmdroid/views/overlay/FolderOverlay;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/FolderOverlay;-><init>()V

    .line 66
    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 67
    invoke-virtual/range {v3 .. v8}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->buildOverlay(Lorg/osmdroid/views/MapView;Lorg/osmdroid/bonuspack/kml/Style;Lorg/osmdroid/bonuspack/kml/KmlFeature$Styler;Lorg/osmdroid/bonuspack/kml/KmlPlacemark;Lorg/osmdroid/bonuspack/kml/KmlDocument;)Lorg/osmdroid/views/overlay/Overlay;

    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;->clone()Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/osmdroid/bonuspack/kml/KmlGeometry;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;->clone()Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;
    .locals 4

    .line 112
    invoke-super {p0}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->clone()Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;->mItems:Ljava/util/ArrayList;

    .line 114
    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    .line 115
    iget-object v3, v0, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->clone()Lorg/osmdroid/bonuspack/kml/KmlGeometry;

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
    .locals 3

    .line 96
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    .line 97
    invoke-virtual {v2}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 100
    invoke-static {v2}, Lorg/osmdroid/bonuspack/utils/BonusPackHelper;->cloneBoundingBox(Lorg/osmdroid/util/BoundingBox;)Lorg/osmdroid/util/BoundingBox;

    move-result-object v1

    goto :goto_0

    .line 102
    :cond_1
    invoke-static {v2, v1}, Lorg/osmdroid/bonuspack/utils/BonusPackHelper;->concatBoundingBox(Lorg/osmdroid/util/BoundingBox;Lorg/osmdroid/util/BoundingBox;)Lorg/osmdroid/util/BoundingBox;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public saveAsKML(Ljava/io/Writer;)V
    .locals 2

    :try_start_0
    const-string v0, "<MultiGeometry>\n"

    .line 75
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    .line 77
    invoke-virtual {v1, p1}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->saveAsKML(Ljava/io/Writer;)V

    goto :goto_0

    :cond_0
    const-string v0, "</MultiGeometry>\n"

    .line 78
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 126
    invoke-super {p0, p1, p2}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 127
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
