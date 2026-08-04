.class Lcom/txdriver/taximeter/LocationBuffer;
.super Ljava/lang/Object;
.source "LocationBuffer.java"


# static fields
.field private static final SIZE:I = 0x5


# instance fields
.field private mLocations:[Landroid/location/Location;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/location/Location;

    .line 13
    iput-object v0, p0, Lcom/txdriver/taximeter/LocationBuffer;->mLocations:[Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public add(Landroid/location/Location;)V
    .locals 4

    .line 16
    iget-object v0, p0, Lcom/txdriver/taximeter/LocationBuffer;->mLocations:[Landroid/location/Location;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iget-object v0, p0, Lcom/txdriver/taximeter/LocationBuffer;->mLocations:[Landroid/location/Location;

    aput-object p1, v0, v1

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/location/Location;

    .line 43
    iput-object v0, p0, Lcom/txdriver/taximeter/LocationBuffer;->mLocations:[Landroid/location/Location;

    return-void
.end method

.method public speed()I
    .locals 4

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x5

    .line 22
    invoke-static {v2}, Lcom/txdriver/utils/TimeUtils;->secondsToMilliseconds(I)I

    move-result v2

    int-to-long v2, v2

    sub-long v2, v0, v2

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/txdriver/taximeter/LocationBuffer;->speed(JJ)I

    move-result v0

    return v0
.end method

.method public speed(JJ)I
    .locals 11

    .line 28
    iget-object v0, p0, Lcom/txdriver/taximeter/LocationBuffer;->mLocations:[Landroid/location/Location;

    array-length v1, v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    aget-object v7, v0, v5

    if-nez v7, :cond_0

    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {v7}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    cmp-long v10, v8, p1

    if-ltz v10, :cond_1

    invoke-virtual {v7}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    cmp-long v10, v8, p3

    if-gtz v10, :cond_1

    add-int/lit8 v6, v6, 0x1

    .line 32
    invoke-virtual {v7}, Landroid/location/Location;->getSpeed()F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v7

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-lez v6, :cond_3

    int-to-double p1, v6

    .line 36
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, p1

    double-to-int p1, v3

    return p1

    :cond_3
    return v2
.end method
