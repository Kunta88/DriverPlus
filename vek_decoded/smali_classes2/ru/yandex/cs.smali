.class public final Lru/yandex/cs;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(D)D
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double p0, p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static final a(DDD)D
    .locals 3

    sub-double v0, p4, p2

    :goto_0
    cmpg-double v2, p0, p2

    if-gez v2, :cond_0

    add-double/2addr p0, v0

    goto :goto_0

    :cond_0
    :goto_1
    cmpl-double p2, p0, p4

    if-ltz p2, :cond_1

    sub-double/2addr p0, v0

    goto :goto_1

    :cond_1
    return-wide p0
.end method

.method public static final a(ZDDDD)D
    .locals 23

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_5

    const-wide v3, 0x4096800000000000L    # 1440.0

    div-double/2addr v0, v3

    add-double v0, p1, v0

    const-wide v3, 0x4142b42c80000000L    # 2451545.0

    sub-double/2addr v0, v3

    const-wide v3, 0x40e1d5a000000000L    # 36525.0

    div-double/2addr v0, v3

    invoke-static {v0, v1}, Lru/yandex/cs;->e(D)D

    move-result-wide v3

    invoke-static {v0, v1}, Lru/yandex/cs;->c(D)D

    move-result-wide v5

    const-wide v7, 0x3f911c11725d0380L    # 0.016708634

    const-wide v9, 0x3f060a1c525fe303L    # 4.2037E-5

    const-wide v11, 0x3e810160fc64d800L    # 1.267E-7

    mul-double v11, v11, v0

    add-double/2addr v11, v9

    mul-double v11, v11, v0

    sub-double/2addr v7, v11

    invoke-static {v0, v1}, Lru/yandex/cs;->d(D)D

    move-result-wide v9

    invoke-static {v3, v4}, Lru/yandex/cs;->b(D)D

    move-result-wide v3

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    mul-double v3, v3, v3

    invoke-static {v5, v6}, Lru/yandex/cs;->b(D)D

    move-result-wide v13

    mul-double v13, v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    invoke-static {v9, v10}, Lru/yandex/cs;->b(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    invoke-static {v5, v6}, Lru/yandex/cs;->b(D)D

    move-result-wide v17

    mul-double v17, v17, v11

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    invoke-static {v5, v6}, Lru/yandex/cs;->b(D)D

    move-result-wide v5

    const-wide/high16 v19, 0x4010000000000000L    # 4.0

    mul-double v5, v5, v19

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v9, v10}, Lru/yandex/cs;->b(D)D

    move-result-wide v9

    mul-double v9, v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v13, v13, v3

    mul-double v11, v11, v7

    mul-double v11, v11, v15

    sub-double/2addr v13, v11

    mul-double v11, v7, v19

    mul-double v11, v11, v3

    mul-double v11, v11, v15

    mul-double v11, v11, v17

    add-double/2addr v13, v11

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    mul-double v11, v11, v3

    mul-double v11, v11, v3

    mul-double v11, v11, v5

    sub-double/2addr v13, v11

    const-wide/high16 v3, 0x3ff4000000000000L    # 1.25

    mul-double v3, v3, v7

    mul-double v3, v3, v7

    mul-double v3, v3, v9

    sub-double/2addr v13, v3

    invoke-static {v13, v14}, Lru/yandex/cs;->a(D)D

    move-result-wide v3

    mul-double v3, v3, v19

    invoke-static {v0, v1}, Lru/yandex/cs;->e(D)D

    move-result-wide v5

    invoke-static {v0, v1}, Lru/yandex/cs;->c(D)D

    move-result-wide v7

    invoke-static {v0, v1}, Lru/yandex/cs;->d(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Lru/yandex/cs;->b(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    add-double v13, v9, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    add-double/2addr v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    const-wide v13, 0x3ffea235b4edb2f6L    # 1.914602

    const-wide v17, 0x3f73bafd976ff3aeL    # 0.004817

    const-wide v21, 0x3eed5c31593e5fb7L    # 1.4E-5

    mul-double v21, v21, v0

    add-double v21, v21, v17

    mul-double v21, v21, v0

    sub-double v13, v13, v21

    mul-double v11, v11, v13

    const-wide v13, 0x3f94790b84988095L    # 0.019993

    const-wide v17, 0x3f1a79fec99f1ae3L    # 1.01E-4

    mul-double v17, v17, v0

    sub-double v13, v13, v17

    mul-double v15, v15, v13

    add-double/2addr v11, v15

    const-wide v13, 0x3f32f09d8c6d612cL    # 2.89E-4

    mul-double v9, v9, v13

    add-double/2addr v11, v9

    add-double/2addr v7, v11

    const-wide v9, 0x405f428f5c28f5c3L    # 125.04

    const-wide v11, 0x409e388b43958106L    # 1934.136

    mul-double v0, v0, v11

    sub-double/2addr v9, v0

    const-wide v0, 0x3f774e65bea0ba1fL    # 0.00569

    sub-double/2addr v7, v0

    const-wide v0, 0x3f7394317acc4ef9L    # 0.00478

    invoke-static {v9, v10}, Lru/yandex/cs;->b(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v9, v9, v0

    sub-double/2addr v7, v9

    invoke-static {v5, v6}, Lru/yandex/cs;->b(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v7, v8}, Lru/yandex/cs;->b(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v0, v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lru/yandex/cs;->a(D)D

    move-result-wide v0

    invoke-static/range {p3 .. p4}, Lru/yandex/cs;->b(D)D

    move-result-wide v5

    invoke-static {v0, v1}, Lru/yandex/cs;->b(D)D

    move-result-wide v0

    invoke-static/range {p7 .. p8}, Lru/yandex/cs;->b(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v9, v9, v11

    div-double/2addr v7, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    mul-double v5, v5, v0

    sub-double/2addr v7, v5

    const-wide v0, -0x4010083126e978d5L    # -0.999

    const-wide/high16 v5, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v9, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v11, v7, v0

    if-gez v11, :cond_0

    move-wide v0, v9

    goto :goto_1

    :cond_0
    const-wide v0, 0x3feff7ced916872bL    # 0.999

    cmpl-double v11, v7, v0

    if-lez v11, :cond_1

    move-wide v0, v5

    goto :goto_1

    :cond_1
    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    :goto_1
    if-nez p0, :cond_2

    neg-double v0, v0

    :cond_2
    invoke-static {v0, v1}, Lru/yandex/cs;->a(D)D

    move-result-wide v0

    add-double v0, p5, v0

    const-wide v7, 0x4086800000000000L    # 720.0

    mul-double v0, v0, v19

    sub-double/2addr v7, v0

    sub-double v0, v7, v3

    cmpl-double v3, v0, v9

    if-nez v3, :cond_3

    return-wide v9

    :cond_3
    cmpl-double v3, v0, v5

    if-nez v3, :cond_4

    return-wide v5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-wide v0
.end method

.method private static final b(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p0, p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static final c(D)D
    .locals 5

    const-wide v0, 0x3f33deda158aabc0L    # 3.032E-4

    mul-double v0, v0, p0

    const-wide v2, 0x40e19418a272862fL    # 36000.76983

    add-double/2addr v0, v2

    mul-double p0, p0, v0

    const-wide v0, 0x407187769ec2ce46L    # 280.46646

    add-double/2addr p0, v0

    :goto_0
    const-wide v0, 0x4076800000000000L    # 360.0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    sub-double/2addr p0, v0

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_1

    add-double/2addr p0, v0

    goto :goto_1

    :cond_1
    return-wide p0
.end method

.method private static final d(D)D
    .locals 4

    const-wide v0, 0x3f242550f260db0cL    # 1.537E-4

    mul-double v0, v0, p0

    const-wide v2, 0x40e193e19bf9c62aL    # 35999.05029

    sub-double/2addr v2, v0

    mul-double p0, p0, v2

    const-wide v0, 0x407658773c0c1fc9L    # 357.52911

    add-double/2addr p0, v0

    return-wide p0
.end method

.method private static final e(D)D
    .locals 6

    const-wide v0, 0x3f5db445ed4a1ad6L    # 0.001813

    mul-double v0, v0, p0

    const-wide v2, 0x3f4355475a31a4beL    # 5.9E-4

    sub-double/2addr v2, v0

    mul-double v2, v2, p0

    const-wide v0, 0x40476851eb851eb8L    # 46.815

    add-double/2addr v2, v0

    mul-double v2, v2, p0

    const-wide v0, 0x403572b020c49ba6L    # 21.448

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double/2addr v0, v2

    const-wide/high16 v4, 0x403a000000000000L    # 26.0

    add-double/2addr v0, v4

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4037000000000000L    # 23.0

    add-double/2addr v0, v2

    const-wide v2, 0x409e388b43958106L    # 1934.136

    mul-double p0, p0, v2

    const-wide v2, 0x405f428f5c28f5c3L    # 125.04

    sub-double/2addr v2, p0

    invoke-static {v2, v3}, Lru/yandex/cs;->b(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide v2, 0x3f64f8b588e368f1L    # 0.00256

    mul-double p0, p0, v2

    add-double/2addr v0, p0

    return-wide v0
.end method
