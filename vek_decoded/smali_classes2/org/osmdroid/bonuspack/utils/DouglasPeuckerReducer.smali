.class public Lorg/osmdroid/bonuspack/utils/DouglasPeuckerReducer;
.super Ljava/lang/Object;
.source "DouglasPeuckerReducer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static douglasPeuckerReduction(Ljava/util/ArrayList;[ZDII)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;[ZDII)V"
        }
    .end annotation

    move-object v6, p0

    move/from16 v4, p4

    move/from16 v7, p5

    add-int/lit8 v0, v4, 0x1

    if-gt v7, v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 82
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osmdroid/util/GeoPoint;

    .line 83
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/osmdroid/util/GeoPoint;

    const/4 v9, 0x0

    :goto_0
    if-ge v0, v7, :cond_2

    .line 86
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/util/GeoPoint;

    .line 88
    invoke-static {v3, v5, v8}, Lorg/osmdroid/bonuspack/utils/DouglasPeuckerReducer;->orthogonalDistance(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)D

    move-result-wide v10

    cmpl-double v3, v10, v1

    if-lez v3, :cond_1

    move v9, v0

    move-wide v1, v10

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    cmpl-double v0, v1, p2

    if-lez v0, :cond_3

    const/4 v0, 0x1

    .line 99
    aput-boolean v0, p1, v9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move/from16 v4, p4

    move v5, v9

    .line 102
    invoke-static/range {v0 .. v5}, Lorg/osmdroid/bonuspack/utils/DouglasPeuckerReducer;->douglasPeuckerReduction(Ljava/util/ArrayList;[ZDII)V

    move v4, v9

    move/from16 v5, p5

    .line 105
    invoke-static/range {v0 .. v5}, Lorg/osmdroid/bonuspack/utils/DouglasPeuckerReducer;->douglasPeuckerReduction(Ljava/util/ArrayList;[ZDII)V

    :cond_3
    return-void
.end method

.method public static orthogonalDistance(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)D
    .locals 8

    .line 123
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    mul-double v0, v0, v2

    .line 124
    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    .line 125
    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    .line 126
    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    .line 127
    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    .line 128
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 121
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 133
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 134
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide p0

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    sub-double/2addr p0, v6

    .line 132
    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    div-double/2addr v0, p0

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public static reduceWithTolerance(Ljava/util/ArrayList;D)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;D)",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    cmpg-double v3, p1, v1

    if-lez v3, :cond_4

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 32
    :cond_0
    new-array v1, v0, [Z

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    add-int/lit8 v7, v0, -0x1

    const/4 v8, 0x0

    if-ge v3, v7, :cond_1

    .line 34
    aput-boolean v8, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 36
    :cond_1
    aput-boolean v2, v1, v7

    aput-boolean v2, v1, v8

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v1

    move-wide v4, p1

    .line 40
    invoke-static/range {v2 .. v7}, Lorg/osmdroid/bonuspack/utils/DouglasPeuckerReducer;->douglasPeuckerReduction(Ljava/util/ArrayList;[ZDII)V

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v8, v0, :cond_3

    .line 51
    aget-boolean p2, v1, v8

    if-eqz p2, :cond_2

    .line 52
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    return-object p1

    :cond_4
    :goto_2
    return-object p0
.end method
