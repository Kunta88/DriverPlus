.class public Lcom/txdriver/utils/DistanceUtils;
.super Ljava/lang/Object;
.source "DistanceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDistance(Landroid/location/Location;Lcom/txdriver/db/Address;)D
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 22
    iget-wide v2, p1, Lcom/txdriver/db/Address;->lat:D

    cmpl-double v4, v2, v0

    if-nez v4, :cond_0

    iget-wide v2, p1, Lcom/txdriver/db/Address;->lng:D

    cmpl-double v4, v2, v0

    if-eqz v4, :cond_1

    .line 23
    :cond_0
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 24
    iget-wide v1, p1, Lcom/txdriver/db/Address;->lat:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 25
    iget-wide v1, p1, Lcom/txdriver/db/Address;->lng:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 26
    invoke-virtual {p0, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p0

    float-to-double v0, p0

    :cond_1
    return-wide v0
.end method

.method public static kmToM(D)D
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static mToKm(D)D
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, v0

    return-wide p0
.end method
