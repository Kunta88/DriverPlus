.class public abstract Lorg/osmdroid/bonuspack/kml/KmlFeature;
.super Ljava/lang/Object;
.source "KmlFeature.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/bonuspack/kml/KmlFeature$Styler;
    }
.end annotation


# instance fields
.field public mDescription:Ljava/lang/String;

.field public mExtendedData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mId:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mOpen:Z

.field public mStyle:Ljava/lang/String;

.field public mVisibility:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mVisibility:Z

    .line 102
    iput-boolean v0, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mOpen:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mId:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mName:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mDescription:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mVisibility:Z

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mOpen:Z

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mStyle:Ljava/lang/String;

    return-void
.end method

.method public static parseGeoJSON(Lcom/google/gson/JsonObject;)Lorg/osmdroid/bonuspack/kml/KmlFeature;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "type"

    .line 233
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FeatureCollection"

    .line 234
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    new-instance v0, Lorg/osmdroid/bonuspack/kml/KmlFolder;

    invoke-direct {v0, p0}, Lorg/osmdroid/bonuspack/kml/KmlFolder;-><init>(Lcom/google/gson/JsonObject;)V

    return-object v0

    :cond_1
    const-string v2, "Feature"

    .line 236
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    new-instance v0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;

    invoke-direct {v0, p0}, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;-><init>(Lcom/google/gson/JsonObject;)V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public abstract asGeoJSON(Z)Lcom/google/gson/JsonObject;
.end method

.method public abstract buildOverlay(Lorg/osmdroid/views/MapView;Lorg/osmdroid/bonuspack/kml/Style;Lorg/osmdroid/bonuspack/kml/KmlFeature$Styler;Lorg/osmdroid/bonuspack/kml/KmlDocument;)Lorg/osmdroid/views/overlay/Overlay;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/kml/KmlFeature;->clone()Lorg/osmdroid/bonuspack/kml/KmlFeature;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/osmdroid/bonuspack/kml/KmlFeature;
    .locals 3

    .line 248
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/bonuspack/kml/KmlFeature;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mExtendedData:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 254
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mExtendedData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, v0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mExtendedData:Ljava/util/HashMap;

    .line 255
    iget-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mExtendedData:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getBoundingBox()Lorg/osmdroid/util/BoundingBox;
.end method

.method public getExtendedData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mExtendedData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 127
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getExtendedDataAsText()Ljava/lang/String;
    .locals 6

    .line 134
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mExtendedData:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    iget-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mExtendedData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 138
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 139
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<br>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public hasGeometry(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/osmdroid/bonuspack/kml/KmlGeometry;",
            ">;)Z"
        }
    .end annotation

    .line 110
    instance-of v0, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 112
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;

    .line 113
    iget-object v0, v0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    if-nez v0, :cond_1

    return v1

    .line 116
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setExtendedData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mExtendedData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mExtendedData:Ljava/util/HashMap;

    .line 157
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mExtendedData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeAsKML(Ljava/io/Writer;ZLorg/osmdroid/bonuspack/kml/KmlDocument;)Z
    .locals 5

    const-string v0, ">\n"

    const/4 v1, 0x0

    .line 189
    :try_start_0
    instance-of v2, p0, Lorg/osmdroid/bonuspack/kml/KmlFolder;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    const-string v2, "Document"

    goto :goto_0

    :cond_0
    const-string v2, "Folder"

    goto :goto_0

    .line 194
    :cond_1
    instance-of v2, p0, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;

    if-eqz v2, :cond_2

    const-string v2, "Placemark"

    goto :goto_0

    .line 196
    :cond_2
    instance-of v2, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;

    if-eqz v2, :cond_9

    const-string v2, "GroundOverlay"

    .line 200
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 201
    iget-object v3, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mId:Ljava/lang/String;

    if-eqz v3, :cond_3

    const-string v3, " id=\"mId\""

    .line 202
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 203
    :cond_3
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 204
    iget-object v3, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mStyle:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<styleUrl>#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mStyle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</styleUrl>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 208
    :cond_4
    iget-object v3, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mName:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<name>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mName:Ljava/lang/String;

    invoke-static {v4}, Lorg/apache/commons/lang3/StringEscapeUtils;->escapeXml10(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</name>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 211
    :cond_5
    iget-object v3, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mDescription:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<description><![CDATA["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]]></description>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 214
    :cond_6
    iget-boolean v3, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mVisibility:Z

    if-nez v3, :cond_7

    const-string v3, "<visibility>0</visibility>\n"

    .line 215
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 217
    :cond_7
    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/kml/KmlFeature;->writeKMLSpecifics(Ljava/io/Writer;)V

    .line 218
    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/kml/KmlFeature;->writeKMLExtendedData(Ljava/io/Writer;)Z

    if-eqz p2, :cond_8

    .line 220
    invoke-virtual {p3, p1}, Lorg/osmdroid/bonuspack/kml/KmlDocument;->writeKMLStyles(Ljava/io/Writer;)V

    .line 222
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "</"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :cond_9
    return v1

    :catch_0
    move-exception p1

    .line 225
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return v1
.end method

.method protected writeKMLExtendedData(Ljava/io/Writer;)Z
    .locals 6

    .line 161
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mExtendedData:Ljava/util/HashMap;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "<ExtendedData>\n"

    .line 164
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mExtendedData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 166
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 167
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<Data name=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"><value>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lorg/apache/commons/lang3/StringEscapeUtils;->escapeXml10(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</value></Data>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "</ExtendedData>\n"

    .line 170
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 173
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public abstract writeKMLSpecifics(Ljava/io/Writer;)V
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 267
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-boolean p2, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mVisibility:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-boolean p2, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mOpen:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mStyle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
