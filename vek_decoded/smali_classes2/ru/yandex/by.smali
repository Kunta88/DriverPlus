.class public Lru/yandex/by;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field a:Lru/yandex/bx;

.field b:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

.field private c:Z

.field private d:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lru/yandex/by;->b:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    iput-object p1, p0, Lru/yandex/by;->b:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->c()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lru/yandex/by;->b:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->d()Lru/yandex/bx;

    move-result-object v0

    iput-object v0, p0, Lru/yandex/by;->a:Lru/yandex/bx;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lru/yandex/by;->d:Landroid/location/LocationManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lru/yandex/by;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;)V
    .locals 6

    iput-object p1, p0, Lru/yandex/by;->b:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->d()Lru/yandex/bx;

    move-result-object p1

    iput-object p1, p0, Lru/yandex/by;->a:Lru/yandex/bx;

    iget-object v0, p0, Lru/yandex/by;->d:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "gps"

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/by;->c:Z

    return v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lru/yandex/by;->b:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->k()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lru/yandex/by;->d:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/by;->c:Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lru/yandex/by;->b:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    iput-object v0, p0, Lru/yandex/by;->a:Lru/yandex/bx;

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 13

    iget-object v0, p0, Lru/yandex/by;->b:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    :cond_0
    iget-object v0, p0, Lru/yandex/by;->b:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->k()Landroid/os/Handler;

    move-result-object v0

    iget-boolean v1, p0, Lru/yandex/by;->c:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lru/yandex/by;->b:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->h()Lru/yandex/ce;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lru/yandex/ce;->a()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lru/yandex/ce;->b()V

    :cond_1
    iget-boolean v1, p0, Lru/yandex/by;->c:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lru/yandex/by;->a:Lru/yandex/bx;

    invoke-virtual {v1}, Lru/yandex/bx;->getPoint()Lru/yandex/yandexmapkit/utils/Point;

    move-result-object v3

    invoke-virtual {v1, v3}, Lru/yandex/bx;->a(Lru/yandex/yandexmapkit/utils/Point;)V

    :cond_2
    iput-boolean v2, p0, Lru/yandex/by;->c:Z

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    iget-object v1, p0, Lru/yandex/by;->a:Lru/yandex/bx;

    new-instance v7, Lru/yandex/yandexmapkit/utils/GeoPoint;

    invoke-direct {v7, v3, v4, v5, v6}, Lru/yandex/yandexmapkit/utils/GeoPoint;-><init>(DD)V

    invoke-virtual {v1, v7}, Lru/yandex/bx;->setGeoPoint(Lru/yandex/yandexmapkit/utils/GeoPoint;)V

    iget-object v1, p0, Lru/yandex/by;->a:Lru/yandex/bx;

    invoke-virtual {v1}, Lru/yandex/bx;->a()Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_0
    new-instance v1, Landroid/hardware/GeomagneticField;

    double-to-float v8, v3

    double-to-float v9, v5

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    double-to-float v10, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    invoke-virtual {v1}, Landroid/hardware/GeomagneticField;->getDeclination()F

    iget-object v1, p0, Lru/yandex/by;->a:Lru/yandex/bx;

    invoke-virtual {v1, v2}, Lru/yandex/bx;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_3
    :goto_0
    iget-object v1, p0, Lru/yandex/by;->a:Lru/yandex/bx;

    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    const v3, 0x40666666    # 3.6f

    mul-float v2, v2, v3

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lru/yandex/bx;->a(F)V

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lru/yandex/by;->b:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->h()Lru/yandex/ce;

    move-result-object v1

    iget-object v2, p0, Lru/yandex/by;->a:Lru/yandex/bx;

    invoke-virtual {v2}, Lru/yandex/bx;->getSpeed()F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lru/yandex/ce;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lru/yandex/ce;->c()V

    :cond_5
    iget-object v1, p0, Lru/yandex/by;->a:Lru/yandex/bx;

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-virtual {v1, v2}, Lru/yandex/bx;->b(F)V

    :cond_6
    iget-object v1, p0, Lru/yandex/by;->a:Lru/yandex/bx;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lru/yandex/bx;->a(J)V

    if-eqz v0, :cond_7

    const/4 p1, 0x6

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    if-eqz v0, :cond_8

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_8
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lru/yandex/by;->c:Z

    iget-object p1, p0, Lru/yandex/by;->b:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->k()Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lru/yandex/by;->c:Z

    iget-object p2, p0, Lru/yandex/by;->b:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->k()Landroid/os/Handler;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_3

    iget-boolean p3, p0, Lru/yandex/by;->c:Z

    if-nez p3, :cond_2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_2
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    return-void
.end method
