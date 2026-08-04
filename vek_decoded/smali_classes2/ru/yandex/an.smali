.class public Lru/yandex/an;
.super Ljava/lang/Object;

# interfaces
.implements Lru/yandex/yandexmapkit/net/DownloadHandler;


# instance fields
.field private a:Lru/yandex/yandexmapkit/map/GeoCodeListener;

.field private b:Lru/yandex/yandexmapkit/utils/GeoPoint;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/map/GeoCodeListener;Lru/yandex/yandexmapkit/utils/GeoPoint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/yandex/an;->a:Lru/yandex/yandexmapkit/map/GeoCodeListener;

    iput-object p2, p0, Lru/yandex/an;->b:Lru/yandex/yandexmapkit/utils/GeoPoint;

    return-void
.end method

.method private static a(Ljava/io/InputStream;Lru/yandex/yandexmapkit/map/GeoCode;)V
    .locals 10

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eq p0, v4, :cond_6

    const-string v5, "addresses"

    const-string v6, "object"

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-ne p0, v8, :cond_3

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v9, "result"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    :goto_1
    const/4 v3, 0x1

    goto/16 :goto_5

    :cond_0
    if-ne v3, v4, :cond_1

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_4

    :cond_1
    if-ne v3, v8, :cond_5

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "kind"

    invoke-interface {v0, v2, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lru/yandex/yandexmapkit/map/GeoCode;->a(Ljava/lang/String;)V

    :try_start_0
    const-string p0, "zoomid"

    invoke-interface {v0, v2, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 p0, 0x0

    :goto_2
    invoke-virtual {p1, p0}, Lru/yandex/yandexmapkit/map/GeoCode;->a(I)V

    :try_start_1
    const-string p0, "ll"

    invoke-interface {v0, v2, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lru/yandex/yandexmapkit/utils/Utils;->a(Ljava/lang/String;Z)Lru/yandex/yandexmapkit/utils/GeoPoint;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-object p0, v2

    :goto_3
    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Lru/yandex/yandexmapkit/map/GeoCode;->a(Lru/yandex/yandexmapkit/utils/GeoPoint;)V

    invoke-static {p0, v2}, Lru/yandex/yandexmapkit/utils/CoordConversion;->toXY(Lru/yandex/yandexmapkit/utils/GeoPoint;Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/Point;

    move-result-object p0

    invoke-virtual {p1, p0}, Lru/yandex/yandexmapkit/map/GeoCode;->a(Lru/yandex/yandexmapkit/utils/Point;)V

    :cond_2
    const-string p0, "title"

    invoke-interface {v0, v2, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lru/yandex/yandexmapkit/map/GeoCode;->b(Ljava/lang/String;)V

    const-string p0, "subtitle"

    invoke-interface {v0, v2, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lru/yandex/yandexmapkit/map/GeoCode;->c(Ljava/lang/String;)V

    const/4 v3, 0x3

    goto :goto_5

    :cond_3
    if-ne p0, v7, :cond_5

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    if-ne v3, v7, :cond_4

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_4
    const/4 v3, 0x2

    goto :goto_5

    :cond_4
    if-ne v3, v8, :cond_5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    :goto_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public a(Lru/yandex/yandexmapkit/net/DownloadJob;Lru/yandex/yandexmapkit/map/GeoCode;)Z
    .locals 4

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->f()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->k()[B

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->k()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->k()[B

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->k()[B

    move-result-object p1

    invoke-static {p1}, Lru/yandex/yandexmapkit/utils/Utils;->a([B)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-static {v0, p2}, Lru/yandex/an;->a(Ljava/io/InputStream;Lru/yandex/yandexmapkit/map/GeoCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    const/4 p1, 0x1

    return p1

    :catchall_0
    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_3
    return v1
.end method

.method public onCreateDownloadJob(I)Lru/yandex/yandexmapkit/net/DownloadJob;
    .locals 3

    const/4 p1, 0x2

    invoke-static {p1}, Lru/yandex/yandexmapkit/net/Downloader;->getServer(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "/geocode?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ll="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lru/yandex/an;->b:Lru/yandex/yandexmapkit/utils/GeoPoint;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLat()D

    move-result-wide v1

    invoke-static {v1, v2}, Lru/yandex/yandexmapkit/utils/Utils;->a(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2c

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lru/yandex/an;->b:Lru/yandex/yandexmapkit/utils/GeoPoint;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLon()D

    move-result-wide v1

    invoke-static {v1, v2}, Lru/yandex/yandexmapkit/utils/Utils;->a(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&ver=2"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&gzip"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lru/yandex/yandexmapkit/net/DownloadJob;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0, p0}, Lru/yandex/yandexmapkit/net/DownloadJob;-><init>(ILjava/lang/String;Lru/yandex/yandexmapkit/net/DownloadHandler;)V

    return-object p1
.end method

.method public onFinishDownload(Lru/yandex/yandexmapkit/net/DownloadJob;Z)Z
    .locals 2

    new-instance v0, Lru/yandex/yandexmapkit/map/GeoCode;

    invoke-direct {v0}, Lru/yandex/yandexmapkit/map/GeoCode;-><init>()V

    invoke-virtual {p0, p1, v0}, Lru/yandex/an;->a(Lru/yandex/yandexmapkit/net/DownloadJob;Lru/yandex/yandexmapkit/map/GeoCode;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lru/yandex/an;->a:Lru/yandex/yandexmapkit/map/GeoCodeListener;

    invoke-interface {p1, v0}, Lru/yandex/yandexmapkit/map/GeoCodeListener;->onFinishGeoCode(Lru/yandex/yandexmapkit/map/GeoCode;)Z

    return v1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lru/yandex/an;->a:Lru/yandex/yandexmapkit/map/GeoCodeListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lru/yandex/yandexmapkit/map/GeoCodeListener;->onFinishGeoCode(Lru/yandex/yandexmapkit/map/GeoCode;)Z

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onStartDownload(I)V
    .locals 0

    return-void
.end method
