.class public Lorg/osmdroid/bonuspack/routing/GoogleRoadManager;
.super Lorg/osmdroid/bonuspack/routing/RoadManager;
.source "GoogleRoadManager.java"


# static fields
.field static final GOOGLE_DIRECTIONS_SERVICE:Ljava/lang/String; = "http://maps.googleapis.com/maps/api/directions/xml?"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/routing/RoadManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getRoad(Ljava/util/ArrayList;)Lorg/osmdroid/bonuspack/routing/Road;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/osmdroid/bonuspack/routing/Road;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, p1, v0}, Lorg/osmdroid/bonuspack/routing/GoogleRoadManager;->getRoads(Ljava/util/ArrayList;Z)[Lorg/osmdroid/bonuspack/routing/Road;

    move-result-object p1

    .line 104
    aget-object p1, p1, v0

    return-object p1
.end method

.method public getRoads(Ljava/util/ArrayList;)[Lorg/osmdroid/bonuspack/routing/Road;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)[",
            "Lorg/osmdroid/bonuspack/routing/Road;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0, p1, v0}, Lorg/osmdroid/bonuspack/routing/GoogleRoadManager;->getRoads(Ljava/util/ArrayList;Z)[Lorg/osmdroid/bonuspack/routing/Road;

    move-result-object p1

    return-object p1
.end method

.method protected getRoads(Ljava/util/ArrayList;Z)[Lorg/osmdroid/bonuspack/routing/Road;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;Z)[",
            "Lorg/osmdroid/bonuspack/routing/Road;"
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/bonuspack/routing/GoogleRoadManager;->getUrl(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object p2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GoogleRoadManager.getRoads:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BONUSPACK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Lorg/osmdroid/bonuspack/utils/HttpConnection;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/utils/HttpConnection;-><init>()V

    .line 74
    invoke-virtual {v0, p2}, Lorg/osmdroid/bonuspack/utils/HttpConnection;->doGet(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Lorg/osmdroid/bonuspack/utils/HttpConnection;->getStream()Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p0, p2}, Lorg/osmdroid/bonuspack/routing/GoogleRoadManager;->getRoadsXML(Ljava/io/InputStream;)[Lorg/osmdroid/bonuspack/routing/Road;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 78
    :goto_0
    invoke-virtual {v0}, Lorg/osmdroid/bonuspack/utils/HttpConnection;->close()V

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 79
    array-length v2, p2

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    const/4 p1, 0x0

    .line 84
    :goto_1
    array-length v2, p2

    if-ge p1, v2, :cond_4

    .line 85
    aget-object v2, p2, p1

    .line 87
    iget-object v3, v2, Lorg/osmdroid/bonuspack/routing/Road;->mLegs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/bonuspack/routing/RoadLeg;

    .line 88
    iget-wide v5, v2, Lorg/osmdroid/bonuspack/routing/Road;->mDuration:D

    iget-wide v7, v4, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mDuration:D

    add-double/2addr v5, v7

    iput-wide v5, v2, Lorg/osmdroid/bonuspack/routing/Road;->mDuration:D

    .line 89
    iget-wide v5, v2, Lorg/osmdroid/bonuspack/routing/Road;->mLength:D

    iget-wide v7, v4, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mLength:D

    add-double/2addr v5, v7

    iput-wide v5, v2, Lorg/osmdroid/bonuspack/routing/Road;->mLength:D

    goto :goto_2

    .line 91
    :cond_2
    iput v0, v2, Lorg/osmdroid/bonuspack/routing/Road;->mStatus:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    const/4 p2, 0x1

    new-array p2, p2, [Lorg/osmdroid/bonuspack/routing/Road;

    .line 82
    new-instance v2, Lorg/osmdroid/bonuspack/routing/Road;

    invoke-direct {v2, p1}, Lorg/osmdroid/bonuspack/routing/Road;-><init>(Ljava/util/ArrayList;)V

    aput-object v2, p2, v0

    :cond_4
    const-string p1, "GoogleRoadManager.getRoads - finished"

    .line 94
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method protected getRoadsXML(Ljava/io/InputStream;)[Lorg/osmdroid/bonuspack/routing/Road;
    .locals 4

    .line 108
    new-instance v0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;-><init>()V

    .line 110
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 111
    invoke-virtual {v1, p1, v0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 115
    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 119
    :goto_0
    iget-object p1, v0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mRoads:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v1, p1, [Lorg/osmdroid/bonuspack/routing/Road;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_0

    .line 121
    iget-object v3, v0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mRoads:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/bonuspack/routing/Road;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    return-object v1
.end method

.method protected getUrl(Ljava/util/ArrayList;Z)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://maps.googleapis.com/maps/api/directions/xml?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "origin="

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    .line 43
    invoke-virtual {p0, v1}, Lorg/osmdroid/bonuspack/routing/GoogleRoadManager;->geoPointAsString(Lorg/osmdroid/util/GeoPoint;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&destination="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 46
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/util/GeoPoint;

    .line 47
    invoke-virtual {p0, v3}, Lorg/osmdroid/bonuspack/routing/GoogleRoadManager;->geoPointAsString(Lorg/osmdroid/util/GeoPoint;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v1, :cond_1

    if-ne v3, v2, :cond_0

    const-string v4, "&waypoints="

    .line 51
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v4, "%7C"

    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :goto_1
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/util/GeoPoint;

    .line 55
    invoke-virtual {p0, v4}, Lorg/osmdroid/bonuspack/routing/GoogleRoadManager;->geoPointAsString(Lorg/osmdroid/util/GeoPoint;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&alternatives="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p2, :cond_2

    const-string p2, "true"

    goto :goto_2

    :cond_2
    const-string p2, "false"

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&units=metric"

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&language="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleRoadManager;->mOptions:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
