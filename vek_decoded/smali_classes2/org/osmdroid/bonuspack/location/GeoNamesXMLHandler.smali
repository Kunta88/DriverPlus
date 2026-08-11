.class Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "GeoNamesPOIProvider.java"


# instance fields
.field mLat:D

.field mLng:D

.field mPOI:Lorg/osmdroid/bonuspack/location/POI;

.field mPOIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/bonuspack/location/POI;",
            ">;"
        }
    .end annotation
.end field

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 167
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mPOIs:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 182
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mString:Ljava/lang/String;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "lat"

    .line 187
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mString:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mLat:D

    goto/16 :goto_0

    :cond_0
    const-string p1, "lng"

    .line 189
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 190
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mString:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mLng:D

    goto/16 :goto_0

    :cond_1
    const-string p1, "feature"

    .line 191
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 192
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mPOI:Lorg/osmdroid/bonuspack/location/POI;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mString:Ljava/lang/String;

    iput-object p2, p1, Lorg/osmdroid/bonuspack/location/POI;->mCategory:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    const-string p1, "title"

    .line 193
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 194
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mPOI:Lorg/osmdroid/bonuspack/location/POI;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mString:Ljava/lang/String;

    iput-object p2, p1, Lorg/osmdroid/bonuspack/location/POI;->mType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    const-string p1, "summary"

    .line 195
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 196
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mPOI:Lorg/osmdroid/bonuspack/location/POI;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mString:Ljava/lang/String;

    iput-object p2, p1, Lorg/osmdroid/bonuspack/location/POI;->mDescription:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const-string p1, "thumbnailImg"

    .line 197
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p3, ""

    if-eqz p1, :cond_5

    .line 198
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mString:Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 199
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mPOI:Lorg/osmdroid/bonuspack/location/POI;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mString:Ljava/lang/String;

    iput-object p2, p1, Lorg/osmdroid/bonuspack/location/POI;->mThumbnailPath:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string p1, "wikipediaUrl"

    .line 200
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 201
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mString:Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 202
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mPOI:Lorg/osmdroid/bonuspack/location/POI;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "http://"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mString:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/osmdroid/bonuspack/location/POI;->mUrl:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string p1, "rank"

    .line 203
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 204
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mPOI:Lorg/osmdroid/bonuspack/location/POI;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mString:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lorg/osmdroid/bonuspack/location/POI;->mRank:I

    goto :goto_0

    :cond_7
    const-string p1, "entry"

    .line 205
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 206
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mPOI:Lorg/osmdroid/bonuspack/location/POI;

    new-instance p2, Lorg/osmdroid/util/GeoPoint;

    iget-wide v0, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mLat:D

    iget-wide v2, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mLng:D

    invoke-direct {p2, v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object p2, p1, Lorg/osmdroid/bonuspack/location/POI;->mLocation:Lorg/osmdroid/util/GeoPoint;

    .line 207
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mPOIs:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mPOI:Lorg/osmdroid/bonuspack/location/POI;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "entry"

    .line 173
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 174
    new-instance p1, Lorg/osmdroid/bonuspack/location/POI;

    sget p2, Lorg/osmdroid/bonuspack/location/POI;->POI_SERVICE_GEONAMES_WIKIPEDIA:I

    invoke-direct {p1, p2}, Lorg/osmdroid/bonuspack/location/POI;-><init>(I)V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mPOI:Lorg/osmdroid/bonuspack/location/POI;

    .line 176
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/location/GeoNamesXMLHandler;->mString:Ljava/lang/String;

    return-void
.end method
