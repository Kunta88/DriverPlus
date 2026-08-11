.class public Lcom/txdriver/location/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationUtils"

.field private static final TIME_DELTA:I = 0xea60


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static distanceBetween(DDDD)D
    .locals 6

    sub-double v0, p4, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v4

    sub-double/2addr p6, p2

    mul-double p6, p6, v2

    div-double/2addr p6, v4

    mul-double p0, p0, v2

    div-double/2addr p0, v4

    mul-double p4, p4, v2

    div-double/2addr p4, v4

    const-wide/high16 p2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, p2

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    div-double/2addr p6, p2

    .line 52
    invoke-static {p6, p7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p6, p7}, Ljava/lang/Math;->sin(D)D

    move-result-wide p6

    mul-double v0, v0, p6

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double v0, v0, p0

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double v0, v0, p0

    add-double/2addr v2, v0

    .line 53
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const-wide/high16 p4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p4, v2

    invoke-static {p4, p5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p4

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    mul-double p0, p0, p2

    const-wide p2, 0x40b8e30000000000L    # 6371.0

    mul-double p0, p0, p2

    const-wide p2, 0x408f400000000000L    # 1000.0

    mul-double p0, p0, p2

    return-wide p0
.end method

.method public static distanceBetween(Landroid/location/Location;Landroid/location/Location;)D
    .locals 8

    .line 30
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 31
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 32
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 33
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 34
    invoke-static/range {v0 .. v7}, Lcom/txdriver/location/LocationUtils;->distanceBetween(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getDistance(Landroid/location/Location;Landroid/location/Location;)F
    .locals 0

    if-nez p1, :cond_0

    move-object p1, p0

    .line 61
    :cond_0
    invoke-static {p1, p0}, Lcom/txdriver/location/LocationUtils;->distanceBetween(Landroid/location/Location;Landroid/location/Location;)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static getSpeed(Landroid/location/Location;Landroid/location/Location;)F
    .locals 3

    if-nez p1, :cond_0

    move-object p1, p0

    .line 24
    :cond_0
    invoke-static {p1, p0}, Lcom/txdriver/location/LocationUtils;->distanceBetween(Landroid/location/Location;Landroid/location/Location;)D

    move-result-wide v0

    .line 25
    invoke-static {p0, p1}, Lcom/txdriver/location/LocationUtils;->getTime(Landroid/location/Location;Landroid/location/Location;)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float v2, p0, p1

    if-lez v2, :cond_1

    float-to-double p0, p0

    .line 26
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p0

    double-to-float p1, v0

    :cond_1
    return p1
.end method

.method public static getTime(Landroid/location/Location;Landroid/location/Location;)F
    .locals 2

    if-nez p1, :cond_0

    move-object p1, p0

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-float p0, v0

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public static hasLocationPermission(Landroid/app/Activity;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 143
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 1

    const v0, 0xea60

    .line 65
    invoke-static {p0, p1, v0}, Lcom/txdriver/location/LocationUtils;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;I)Z

    move-result p0

    return p0
.end method

.method public static isBetterLocation(Landroid/location/Location;Landroid/location/Location;I)Z
    .locals 8

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 81
    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    int-to-long v3, p2

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-lez v6, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    neg-int p2, p2

    int-to-long v6, p2

    cmp-long p2, v1, v6

    if-gez p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v4, v1, v6

    if-lez v4, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v3, :cond_5

    return v0

    :cond_5
    if-eqz p2, :cond_6

    return v5

    .line 96
    :cond_6
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result p2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    sub-float/2addr p2, v2

    float-to-int p2, p2

    if-lez p2, :cond_7

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    if-gez p2, :cond_8

    const/4 v3, 0x1

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :goto_4
    const/16 v4, 0xc8

    if-le p2, v4, :cond_9

    const/4 p2, 0x1

    goto :goto_5

    :cond_9
    const/4 p2, 0x0

    .line 102
    :goto_5
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p0

    .line 103
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-static {p0, p1}, Lcom/txdriver/location/LocationUtils;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz v3, :cond_a

    return v0

    :cond_a
    if-eqz v1, :cond_b

    if-nez v2, :cond_b

    return v0

    :cond_b
    if-eqz v1, :cond_c

    if-nez p2, :cond_c

    if-eqz p0, :cond_c

    return v0

    :cond_c
    return v5
.end method

.method public static isGpsEnabled(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "location"

    .line 127
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    .line 129
    invoke-virtual {p0, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object p0

    const-string v3, "gps"

    if-eqz p0, :cond_0

    .line 130
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    if-eqz v1, :cond_1

    .line 132
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    :cond_1
    const-string v3, "network"

    if-eqz p0, :cond_2

    .line 134
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    if-eqz v1, :cond_3

    .line 136
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method private static isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 123
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
