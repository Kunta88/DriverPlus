.class Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "PicasaPOIProvider.java"


# static fields
.field static final MAX_DESC_SIZE:I = 0xfa


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

.field mTotalResults:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mPOIs:Ljava/util/ArrayList;

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

    .line 126
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 127
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mString:Ljava/lang/String;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "gml:pos"

    .line 133
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 134
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mString:Ljava/lang/String;

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 135
    aget-object p2, p1, p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    iput-wide p2, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mLat:D

    const/4 p2, 0x1

    .line 136
    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mLng:D

    goto/16 :goto_0

    :cond_0
    const-string p1, "gphoto:id"

    .line 137
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 138
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mPOI:Lorg/osmdroid/bonuspack/location/POI;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mString:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    iput-wide p2, p1, Lorg/osmdroid/bonuspack/location/POI;->mId:J

    goto/16 :goto_0

    :cond_1
    const-string p1, "media:title"

    .line 139
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 140
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mPOI:Lorg/osmdroid/bonuspack/location/POI;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mString:Ljava/lang/String;

    iput-object p2, p1, Lorg/osmdroid/bonuspack/location/POI;->mType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    const-string p1, "summary"

    .line 141
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 142
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mPOI:Lorg/osmdroid/bonuspack/location/POI;

    iget-object p3, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mString:Ljava/lang/String;

    iput-object p3, p1, Lorg/osmdroid/bonuspack/location/POI;->mDescription:Ljava/lang/String;

    .line 143
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mPOI:Lorg/osmdroid/bonuspack/location/POI;

    iget-object p1, p1, Lorg/osmdroid/bonuspack/location/POI;->mDescription:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p3, 0xfa

    if-le p1, p3, :cond_6

    .line 144
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mPOI:Lorg/osmdroid/bonuspack/location/POI;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mPOI:Lorg/osmdroid/bonuspack/location/POI;

    iget-object v1, v1, Lorg/osmdroid/bonuspack/location/POI;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " (...)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/osmdroid/bonuspack/location/POI;->mDescription:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string p1, "gphoto:albumtitle"

    .line 145
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 146
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mPOI:Lorg/osmdroid/bonuspack/location/POI;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mString:Ljava/lang/String;

    iput-object p2, p1, Lorg/osmdroid/bonuspack/location/POI;->mCategory:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string p1, "entry"

    .line 147
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 148
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mPOI:Lorg/osmdroid/bonuspack/location/POI;

    new-instance p2, Lorg/osmdroid/util/GeoPoint;

    iget-wide v0, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mLat:D

    iget-wide v2, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mLng:D

    invoke-direct {p2, v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object p2, p1, Lorg/osmdroid/bonuspack/location/POI;->mLocation:Lorg/osmdroid/util/GeoPoint;

    .line 149
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mPOIs:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mPOI:Lorg/osmdroid/bonuspack/location/POI;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 150
    iput-object p1, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mPOI:Lorg/osmdroid/bonuspack/location/POI;

    goto :goto_0

    :cond_5
    const-string p1, "openSearch:totalResults"

    .line 151
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 152
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mString:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mTotalResults:I

    :cond_6
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

    .line 110
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    new-instance p1, Lorg/osmdroid/bonuspack/location/POI;

    sget p2, Lorg/osmdroid/bonuspack/location/POI;->POI_SERVICE_PICASA:I

    invoke-direct {p1, p2}, Lorg/osmdroid/bonuspack/location/POI;-><init>(I)V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mPOI:Lorg/osmdroid/bonuspack/location/POI;

    goto :goto_0

    :cond_0
    const-string p1, "media:thumbnail"

    .line 112
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 113
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mPOI:Lorg/osmdroid/bonuspack/location/POI;

    const-string p2, "url"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/osmdroid/bonuspack/location/POI;->mThumbnailPath:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "link"

    .line 114
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "rel"

    .line 115
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "http://schemas.google.com/photos/2007#canonical"

    .line 116
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 117
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mPOI:Lorg/osmdroid/bonuspack/location/POI;

    const-string p2, "href"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/osmdroid/bonuspack/location/POI;->mUrl:Ljava/lang/String;

    .line 118
    iget-object p1, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mPOI:Lorg/osmdroid/bonuspack/location/POI;

    iget-object p2, p1, Lorg/osmdroid/bonuspack/location/POI;->mUrl:Ljava/lang/String;

    const-string p3, "https://"

    const-string p4, "http://"

    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/osmdroid/bonuspack/location/POI;->mUrl:Ljava/lang/String;

    .line 121
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/location/PicasaXMLHandler;->mString:Ljava/lang/String;

    return-void
.end method
