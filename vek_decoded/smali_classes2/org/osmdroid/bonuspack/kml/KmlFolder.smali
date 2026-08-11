.class public Lorg/osmdroid/bonuspack/kml/KmlFolder;
.super Lorg/osmdroid/bonuspack/kml/KmlFeature;
.source "KmlFolder.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/osmdroid/bonuspack/kml/KmlFolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/bonuspack/kml/KmlFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 268
    new-instance v0, Lorg/osmdroid/bonuspack/kml/KmlFolder$1;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/kml/KmlFolder$1;-><init>()V

    sput-object v0, Lorg/osmdroid/bonuspack/kml/KmlFolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/kml/KmlFeature;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlFolder;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 278
    invoke-direct {p0, p1}, Lorg/osmdroid/bonuspack/kml/KmlFeature;-><init>(Landroid/os/Parcel;)V

    .line 279
    const-class v0, Lorg/osmdroid/bonuspack/kml/KmlFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlFolder;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonObject;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/kml/KmlFolder;-><init>()V

    const-string v0, "features"

    .line 59
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 62
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lorg/osmdroid/bonuspack/kml/KmlFeature;->parseGeoJSON(Lcom/google/gson/JsonObject;)Lorg/osmdroid/bonuspack/kml/KmlFeature;

    move-result-object v0

    .line 63
    invoke-virtual {p0, v0}, Lorg/osmdroid/bonuspack/kml/KmlFolder;->add(Lorg/osmdroid/bonuspack/kml/KmlFeature;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;Lorg/osmdroid/bonuspack/kml/KmlDocument;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/kml/KmlFolder;-><init>()V

    .line 50
    invoke-virtual {p1}, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/osmdroid/bonuspack/kml/KmlFolder;->addOverlays(Ljava/util/List;Lorg/osmdroid/bonuspack/kml/KmlDocument;)V

    .line 51
    invoke-virtual {p1}, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlFolder;->mName:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->getDescription()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlFolder;->mDescription:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/osmdroid/bonuspack/kml/KmlFolder;->mVisibility:Z

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/overlay/FolderOverlay;Lorg/osmdroid/bonuspack/kml/KmlDocument;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/kml/KmlFolder;-><init>()V

    .line 42
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/FolderOverlay;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/osmdroid/bonuspack/kml/KmlFolder;->addOverlays(Ljava/util/List;Lorg/osmdroid/bonuspack/kml/KmlDocument;)V

    .line 43
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/FolderOverlay;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlFolder;->mName:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/FolderOverlay;->getDescription()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlFolder;->mDescription:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/FolderOverlay;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/osmdroid/bonuspack/kml/KmlFolder;->mVisibility:Z

    return-void
.end method


# virtual methods
.method public add(Lorg/osmdroid/bonuspack/kml/KmlFeature;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlFolder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOverlay(Lorg/osmdroid/views/overlay/Overlay;Lorg/osmdroid/bonuspack/kml/KmlDocument;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 100
    :cond_0
    instance-of v1, p1, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;

    if-eqz v1, :cond_1

    .line 101
    new-instance p2, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;

    check-cast p1, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;

    invoke-direct {p2, p1}, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;-><init>(Lorg/osmdroid/bonuspack/overlays/GroundOverlay;)V

    goto :goto_1

    .line 102
    :cond_1
    instance-of v1, p1, Lorg/osmdroid/views/overlay/FolderOverlay;

    if-eqz v1, :cond_2

    .line 103
    new-instance v0, Lorg/osmdroid/bonuspack/kml/KmlFolder;

    check-cast p1, Lorg/osmdroid/views/overlay/FolderOverlay;

    invoke-direct {v0, p1, p2}, Lorg/osmdroid/bonuspack/kml/KmlFolder;-><init>(Lorg/osmdroid/views/overlay/FolderOverlay;Lorg/osmdroid/bonuspack/kml/KmlDocument;)V

    :goto_0
    move-object p2, v0

    goto :goto_1

    .line 104
    :cond_2
    instance-of v1, p1, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;

    if-eqz v1, :cond_3

    .line 105
    new-instance v0, Lorg/osmdroid/bonuspack/kml/KmlFolder;

    check-cast p1, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;

    invoke-direct {v0, p1, p2}, Lorg/osmdroid/bonuspack/kml/KmlFolder;-><init>(Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;Lorg/osmdroid/bonuspack/kml/KmlDocument;)V

    goto :goto_0

    .line 106
    :cond_3
    instance-of v1, p1, Lorg/osmdroid/views/overlay/Marker;

    if-eqz v1, :cond_4

    .line 107
    check-cast p1, Lorg/osmdroid/views/overlay/Marker;

    .line 108
    new-instance p2, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;

    invoke-direct {p2, p1}, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;-><init>(Lorg/osmdroid/views/overlay/Marker;)V

    goto :goto_1

    .line 109
    :cond_4
    instance-of v1, p1, Lorg/osmdroid/views/overlay/Polygon;

    if-eqz v1, :cond_5

    .line 110
    check-cast p1, Lorg/osmdroid/views/overlay/Polygon;

    .line 111
    new-instance v0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;

    invoke-direct {v0, p1, p2}, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;-><init>(Lorg/osmdroid/views/overlay/Polygon;Lorg/osmdroid/bonuspack/kml/KmlDocument;)V

    goto :goto_0

    .line 112
    :cond_5
    instance-of v1, p1, Lorg/osmdroid/views/overlay/Polyline;

    if-eqz v1, :cond_6

    .line 113
    check-cast p1, Lorg/osmdroid/views/overlay/Polyline;

    .line 114
    new-instance v0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;

    invoke-direct {v0, p1, p2}, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;-><init>(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/bonuspack/kml/KmlDocument;)V

    goto :goto_0

    .line 118
    :goto_1
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlFolder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_6
    return v0
.end method

.method public addOverlays(Ljava/util/List;Lorg/osmdroid/bonuspack/kml/KmlDocument;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/osmdroid/views/overlay/Overlay;",
            ">;",
            "Lorg/osmdroid/bonuspack/kml/KmlDocument;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 129
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    .line 130
    invoke-virtual {p0, v0, p2}, Lorg/osmdroid/bonuspack/kml/KmlFolder;->addOverlay(Lorg/osmdroid/views/overlay/Overlay;Lorg/osmdroid/bonuspack/kml/KmlDocument;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public asGeoJSON(Z)Lcom/google/gson/JsonObject;
    .locals 6

    .line 220
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "urn:ogc:def:crs:OGC:1.3:CRS84"

    .line 222
    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/kml/KmlFolder;->geoJSONNamedCRS(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v1, "crs"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 224
    :cond_0
    new-instance p1, Lcom/google/gson/JsonArray;

    invoke-direct {p1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 225
    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlFolder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "features"

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/bonuspack/kml/KmlFeature;

    const/4 v4, 0x0

    .line 226
    invoke-virtual {v2, v4}, Lorg/osmdroid/bonuspack/kml/KmlFeature;->asGeoJSON(Z)Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 227
    instance-of v2, v2, Lorg/osmdroid/bonuspack/kml/KmlFolder;

    if-eqz v2, :cond_2

    .line 229
    invoke-virtual {v5, v3}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 231
    :goto_1
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    if-ge v4, v3, :cond_1

    .line 232
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 233
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_1

    .line 237
    invoke-virtual {p1, v5}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 240
    :cond_3
    invoke-virtual {v0, v3, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string p1, "type"

    const-string v1, "FeatureCollection"

    .line 241
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public buildOverlay(Lorg/osmdroid/views/MapView;Lorg/osmdroid/bonuspack/kml/Style;Lorg/osmdroid/bonuspack/kml/KmlFeature$Styler;Lorg/osmdroid/bonuspack/kml/KmlDocument;)Lorg/osmdroid/views/overlay/Overlay;
    .locals 3

    .line 178
    new-instance v0, Lorg/osmdroid/views/overlay/FolderOverlay;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/FolderOverlay;-><init>()V

    .line 179
    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlFolder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/bonuspack/kml/KmlFeature;

    .line 180
    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/osmdroid/bonuspack/kml/KmlFeature;->buildOverlay(Lorg/osmdroid/views/MapView;Lorg/osmdroid/bonuspack/kml/Style;Lorg/osmdroid/bonuspack/kml/KmlFeature$Styler;Lorg/osmdroid/bonuspack/kml/KmlDocument;)Lorg/osmdroid/views/overlay/Overlay;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 182
    invoke-virtual {v0, v2}, Lorg/osmdroid/views/overlay/FolderOverlay;->add(Lorg/osmdroid/views/overlay/Overlay;)Z

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    .line 185
    iget-boolean p1, p0, Lorg/osmdroid/bonuspack/kml/KmlFolder;->mVisibility:Z

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/FolderOverlay;->setEnabled(Z)V

    goto :goto_1

    .line 187
    :cond_2
    invoke-interface {p3, v0, p0}, Lorg/osmdroid/bonuspack/kml/KmlFeature$Styler;->onFeature(Lorg/osmdroid/views/overlay/Overlay;Lorg/osmdroid/bonuspack/kml/KmlFeature;)V

    :goto_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/kml/KmlFolder;->clone()Lorg/osmdroid/bonuspack/kml/KmlFolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/osmdroid/bonuspack/kml/KmlFeature;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/kml/KmlFolder;->clone()Lorg/osmdroid/bonuspack/kml/KmlFolder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/osmdroid/bonuspack/kml/KmlFolder;
    .locals 4

    .line 248
    invoke-super {p0}, Lorg/osmdroid/bonuspack/kml/KmlFeature;->clone()Lorg/osmdroid/bonuspack/kml/KmlFeature;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/bonuspack/kml/KmlFolder;

    .line 249
    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlFolder;->mItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 250
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlFolder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lorg/osmdroid/bonuspack/kml/KmlFolder;->mItems:Ljava/util/ArrayList;

    .line 251
    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlFolder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/bonuspack/kml/KmlFeature;

    .line 252
    iget-object v3, v0, Lorg/osmdroid/bonuspack/kml/KmlFolder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/osmdroid/bonuspack/kml/KmlFeature;->clone()Lorg/osmdroid/bonuspack/kml/KmlFeature;

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

.method public findFeatureId(Ljava/lang/String;Z)Lorg/osmdroid/bonuspack/kml/KmlFeature;
    .locals 3

    .line 156
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlFolder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/bonuspack/kml/KmlFeature;

    .line 157
    iget-object v2, v1, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    if-eqz p2, :cond_0

    .line 159
    instance-of v1, v1, Lorg/osmdroid/bonuspack/kml/KmlFolder;

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/bonuspack/kml/KmlFolder;->findFeatureId(Ljava/lang/String;Z)Lorg/osmdroid/bonuspack/kml/KmlFeature;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public geoJSONNamedCRS(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 3

    .line 204
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "type"

    const-string v2, "name"

    .line 205
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 207
    invoke-virtual {v1, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "properties"

    .line 208
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 3

    .line 70
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlFolder;->mItems:Ljava/util/ArrayList;

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

    check-cast v2, Lorg/osmdroid/bonuspack/kml/KmlFeature;

    .line 71
    invoke-virtual {v2}, Lorg/osmdroid/bonuspack/kml/KmlFeature;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 74
    invoke-static {v2}, Lorg/osmdroid/bonuspack/utils/BonusPackHelper;->cloneBoundingBox(Lorg/osmdroid/util/BoundingBox;)Lorg/osmdroid/util/BoundingBox;

    move-result-object v1

    goto :goto_0

    .line 76
    :cond_1
    invoke-static {v2, v1}, Lorg/osmdroid/bonuspack/utils/BonusPackHelper;->concatBoundingBox(Lorg/osmdroid/util/BoundingBox;Lorg/osmdroid/util/BoundingBox;)Lorg/osmdroid/util/BoundingBox;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public removeItem(I)Lorg/osmdroid/bonuspack/kml/KmlFeature;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlFolder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/bonuspack/kml/KmlFeature;

    return-object p1
.end method

.method public writeKMLSpecifics(Ljava/io/Writer;)V
    .locals 4

    .line 193
    :try_start_0
    iget-boolean v0, p0, Lorg/osmdroid/bonuspack/kml/KmlFolder;->mOpen:Z

    if-nez v0, :cond_0

    const-string v0, "<open>0</open>\n"

    .line 194
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlFolder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/bonuspack/kml/KmlFeature;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 196
    invoke-virtual {v1, p1, v2, v3}, Lorg/osmdroid/bonuspack/kml/KmlFeature;->writeAsKML(Ljava/io/Writer;ZLorg/osmdroid/bonuspack/kml/KmlDocument;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 199
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 264
    invoke-super {p0, p1, p2}, Lorg/osmdroid/bonuspack/kml/KmlFeature;->writeToParcel(Landroid/os/Parcel;I)V

    .line 265
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlFolder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
