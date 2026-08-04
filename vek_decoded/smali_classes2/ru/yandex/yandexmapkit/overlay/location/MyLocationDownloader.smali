.class public Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;
.super Ljava/lang/Object;

# interfaces
.implements Lru/yandex/yandexmapkit/map/GeoCodeListener;
.implements Lru/yandex/yandexmapkit/net/DownloadHandler;


# instance fields
.field a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->a()Lru/yandex/ar;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/ar;->b()Lru/yandex/ao;

    move-result-object v0

    iget-object v1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->b()Lru/yandex/ao;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lru/yandex/ao;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getDownloader()Lru/yandex/yandexmapkit/net/Downloader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lru/yandex/yandexmapkit/net/Downloader;->downloadProccess(Lru/yandex/yandexmapkit/net/DownloadHandler;I)V

    :cond_1
    return-void
.end method

.method public a(Lru/yandex/yandexmapkit/utils/GeoPoint;)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getDownloader()Lru/yandex/yandexmapkit/net/Downloader;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lru/yandex/yandexmapkit/net/Downloader;->getGeoCode(Lru/yandex/yandexmapkit/map/GeoCodeListener;Lru/yandex/yandexmapkit/utils/GeoPoint;)V

    return-void
.end method

.method public onCreateDownloadJob(I)Lru/yandex/yandexmapkit/net/DownloadJob;
    .locals 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 p1, 0xf

    invoke-static {p1}, Lru/yandex/yandexmapkit/net/Downloader;->getServer(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "/stats/?action=gps"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&internalgps=1"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lru/yandex/yandexmapkit/net/DownloadJob;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1, p0}, Lru/yandex/yandexmapkit/net/DownloadJob;-><init>(ILjava/lang/String;Lru/yandex/yandexmapkit/net/DownloadHandler;)V

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->a()Lru/yandex/ar;

    move-result-object p1

    invoke-virtual {p1}, Lru/yandex/ar;->b()Lru/yandex/ao;

    move-result-object p1

    if-eqz p1, :cond_5

    const/16 v1, 0xe

    invoke-static {v1}, Lru/yandex/yandexmapkit/net/Downloader;->getServer(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/cellid_location/?lac="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lru/yandex/ao;->e:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&cellid="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lru/yandex/ao;->d:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lru/yandex/ao;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "&operatorid="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lru/yandex/ao;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p1, Lru/yandex/ao;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "&countrycode="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lru/yandex/ao;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v1, p1, Lru/yandex/ao;->g:Z

    if-eqz v1, :cond_3

    const-string v1, "&signalstrength="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lru/yandex/ao;->f:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p1, Lru/yandex/ao;->a:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "&wifinetworks="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lru/yandex/ao;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v1, Lru/yandex/yandexmapkit/net/DownloadJob;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0}, Lru/yandex/yandexmapkit/net/DownloadJob;-><init>(ILjava/lang/String;Lru/yandex/yandexmapkit/net/DownloadHandler;)V

    invoke-virtual {v1, p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->a(Ljava/lang/Object;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Lru/yandex/yandexmapkit/net/DownloadJob;->a(J)V

    invoke-virtual {v1, v0}, Lru/yandex/yandexmapkit/net/DownloadJob;->setPriority(I)V

    return-object v1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public onFinishDownload(Lru/yandex/yandexmapkit/net/DownloadJob;Z)Z
    .locals 10

    const/4 v0, 0x1

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->j()I

    move-result v1

    const/16 v2, 0xc8

    const/4 v3, 0x0

    if-eq v1, v0, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->f()I

    move-result p1

    if-eq p1, v2, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    return v0

    :cond_3
    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->f()I

    move-result v1

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->k()[B

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_8

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->k()[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->k()[B

    move-result-object v4

    invoke-static {v4}, Lru/yandex/yandexmapkit/utils/Utils;->a([B)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v4

    :cond_5
    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->i()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/yandex/ao;

    invoke-virtual {p1, v1}, Lru/yandex/ao;->a(Ljava/io/InputStream;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_9

    :try_start_1
    invoke-virtual {p1}, Lru/yandex/ao;->a()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-virtual {v4}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->i()Lru/yandex/by;

    move-result-object v4

    invoke-virtual {v4}, Lru/yandex/by;->b()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-virtual {v4, p1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->a(Lru/yandex/ao;)V

    iget-object v4, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    new-instance v5, Lru/yandex/yandexmapkit/utils/GeoPoint;

    iget v6, p1, Lru/yandex/ao;->h:F

    float-to-double v6, v6

    iget v8, p1, Lru/yandex/ao;->i:F

    float-to-double v8, v8

    invoke-direct {v5, v6, v7, v8, v9}, Lru/yandex/yandexmapkit/utils/GeoPoint;-><init>(DD)V

    iget p1, p1, Lru/yandex/ao;->l:I

    invoke-virtual {v4, v5, p1, v3}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->a(Lru/yandex/yandexmapkit/utils/GeoPoint;IZ)V

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    iput-object v2, v4, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->f:Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;

    iget-object v4, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    iget-boolean v4, v4, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->b:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    iget-object p1, p1, Lru/yandex/ao;->n:Ljava/lang/String;

    invoke-virtual {v4, p1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->a(Ljava/lang/String;)V

    :cond_7
    :goto_2
    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    iput-boolean v3, p1, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->b:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    nop

    goto :goto_3

    :catch_1
    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_3
    if-nez v1, :cond_a

    if-eqz p2, :cond_a

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    iput-object v2, p1, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->f:Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    iget-boolean p1, p1, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->b:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    iput-boolean v3, p1, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->b:Z

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    sget v2, Lru/yandex/yandexmapkit/R$string;->ymk_findme_not_found:I

    invoke-virtual {p1, v2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->a(I)V

    :cond_a
    if-nez v1, :cond_c

    if-eqz p2, :cond_b

    goto :goto_4

    :cond_b
    return v3

    :cond_c
    :goto_4
    return v0
.end method

.method public onFinishGeoCode(Lru/yandex/yandexmapkit/map/GeoCode;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->getMyLocationItem()Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getBalloonItem()Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    move-result-object v0

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/GeoCode;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-virtual {p1, v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->a(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onStartDownload(I)V
    .locals 0

    return-void
.end method
