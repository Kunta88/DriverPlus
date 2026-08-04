.class public final Lru/yandex/yandexmapkit/utils/CoordConversion;
.super Ljava/lang/Object;


# static fields
.field public static final R:D = 6378137.0

.field private static a:D = 3.141592653589

.field private static b:D = 1.5707963267945

.field private static c:D = 0.0

.field private static d:D = 0.0

.field public static final defaultFactor:D = 53.5865939582453

.field private static e:D = 0.0

.field public static final earthEquatorLength2:D = 2.0037508342789244E7

.field private static final f:D


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide v0, 0x400921fb5444261eL    # 3.141592653589

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    mul-double v2, v2, v0

    sput-wide v2, Lru/yandex/yandexmapkit/utils/CoordConversion;->c:D

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double v4, v0, v2

    sput-wide v4, Lru/yandex/yandexmapkit/utils/CoordConversion;->d:D

    div-double/2addr v2, v0

    sput-wide v2, Lru/yandex/yandexmapkit/utils/CoordConversion;->e:D

    const-wide v0, 0x3f7b6b90f1fe9500L    # 0.00669437999014133

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lru/yandex/yandexmapkit/utils/CoordConversion;->f:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GPS_Math_Deg_To_Rad(D)D
    .locals 2

    sget-wide v0, Lru/yandex/yandexmapkit/utils/CoordConversion;->d:D

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static GPS_Math_Rad_To_Deg(D)D
    .locals 2

    sget-wide v0, Lru/yandex/yandexmapkit/utils/CoordConversion;->e:D

    mul-double p0, p0, v0

    return-wide p0
.end method

.method private static a(DD)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-eqz v2, :cond_0

    div-double/2addr p0, p2

    return-wide p0

    :cond_0
    cmpl-double p2, p0, v0

    if-nez p2, :cond_1

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0

    :cond_1
    return-wide v0
.end method

.method public static getDistance(DDDD)D
    .locals 16

    cmpl-double v0, p0, p4

    if-nez v0, :cond_0

    cmpl-double v0, p2, p6

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    sub-double v0, p2, p6

    invoke-static {v0, v1}, Lru/yandex/yandexmapkit/utils/CoordConversion;->GPS_Math_Deg_To_Rad(D)D

    move-result-wide v0

    sub-double v2, p0, p4

    invoke-static {v2, v3}, Lru/yandex/yandexmapkit/utils/CoordConversion;->GPS_Math_Deg_To_Rad(D)D

    move-result-wide v2

    add-double v4, p0, p4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Lru/yandex/yandexmapkit/utils/CoordConversion;->GPS_Math_Deg_To_Rad(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v4

    const-wide v8, 0x3f7b775a84f3e128L    # 0.006705621329494961

    mul-double v4, v4, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v4, v8, v4

    const-wide v10, 0x41582ae1e8392fa1L    # 6335367.6284903595

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lru/yandex/yandexmapkit/utils/CoordConversion;->a(DD)D

    move-result-wide v10

    const-wide v12, 0x415854a640000000L    # 6378137.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v12, v13, v4, v5}, Lru/yandex/yandexmapkit/utils/CoordConversion;->a(DD)D

    move-result-wide v4

    mul-double v2, v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v6, v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v2, v2, v2

    sget-wide v12, Lru/yandex/yandexmapkit/utils/CoordConversion;->d:D

    mul-double v12, v12, p4

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    sget-wide v14, Lru/yandex/yandexmapkit/utils/CoordConversion;->d:D

    mul-double v14, v14, p0

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double v12, v12, v14

    mul-double v12, v12, v6

    mul-double v12, v12, v6

    add-double/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpg-double v12, v2, v6

    if-gez v12, :cond_1

    move-wide v2, v6

    :cond_1
    cmpl-double v12, v2, v8

    if-lez v12, :cond_2

    move-wide v2, v8

    :cond_2
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    mul-double v2, v2, v12

    sget-wide v12, Lru/yandex/yandexmapkit/utils/CoordConversion;->d:D

    mul-double v12, v12, p4

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v12, v12, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    div-double/2addr v12, v0

    cmpg-double v0, v12, v6

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    move-wide v6, v12

    :goto_0
    cmpl-double v0, v6, v8

    if-lez v0, :cond_4

    move-wide v6, v8

    :cond_4
    mul-double v6, v6, v6

    mul-double v0, v10, v4

    mul-double v10, v10, v6

    sub-double/2addr v8, v6

    mul-double v4, v4, v8

    add-double/2addr v10, v4

    invoke-static {v0, v1, v10, v11}, Lru/yandex/yandexmapkit/utils/CoordConversion;->a(DD)D

    move-result-wide v0

    mul-double v2, v2, v0

    return-wide v2
.end method

.method public static getDistance(Lru/yandex/yandexmapkit/utils/GeoPoint;Lru/yandex/yandexmapkit/utils/GeoPoint;)D
    .locals 8

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLat()D

    move-result-wide v0

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLon()D

    move-result-wide v2

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLat()D

    move-result-wide v4

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLon()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lru/yandex/yandexmapkit/utils/CoordConversion;->getDistance(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getDistanceXY(JJ)D
    .locals 17

    move-wide/from16 v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    move-wide/from16 v2, p2

    neg-long v2, v2

    long-to-double v2, v2

    const-wide v4, 0x404acb1582c558eeL    # 53.5865939582453

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    const-wide v4, 0x41731bf8457c1093L    # 2.0037508342789244E7

    add-double/2addr v2, v4

    sget-wide v4, Lru/yandex/yandexmapkit/utils/CoordConversion;->b:D

    const-wide v6, 0x415854a640000000L    # 6378137.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v10

    sub-double/2addr v4, v2

    const-wide v2, 0x3f6b7f32d92860f6L    # 0.003356551468879694

    mul-double v12, v4, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double v12, v12, v2

    add-double/2addr v12, v4

    const-wide v2, 0x3edb907e9d8ddb75L    # 6.57187271079536E-6

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    mul-double v14, v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double v14, v14, v2

    add-double/2addr v12, v14

    const-wide v2, 0x3e52f265c3ee136aL    # 1.764564338702E-8

    const-wide/high16 v14, 0x4018000000000000L    # 6.0

    mul-double v14, v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double v14, v14, v2

    add-double/2addr v12, v14

    const-wide v2, 0x3dcd4b2aaee2ce8cL    # 5.328478445E-11

    const-wide/high16 v14, 0x4020000000000000L    # 8.0

    mul-double v4, v4, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v2

    add-double/2addr v12, v4

    long-to-double v0, v0

    const-wide v2, 0x41b45f306da10a21L    # 3.417826376290608E8

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x3f7b775a84f3e128L    # 0.006705621329494961

    mul-double v4, v4, v2

    mul-double v4, v4, v2

    sub-double v2, v8, v4

    const-wide v4, 0x41582ae1e8392fa1L    # 6335367.6284903595

    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    invoke-static {v4, v5, v14, v15}, Lru/yandex/yandexmapkit/utils/CoordConversion;->a(DD)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Lru/yandex/yandexmapkit/utils/CoordConversion;->a(DD)D

    move-result-wide v2

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v12, v12, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double v12, v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    cmpg-double v16, v12, v14

    if-gez v16, :cond_1

    move-wide v12, v14

    :cond_1
    cmpl-double v16, v12, v8

    if-lez v16, :cond_2

    move-wide v12, v8

    :cond_2
    invoke-static {v12, v13}, Ljava/lang/Math;->asin(D)D

    move-result-wide v12

    mul-double v12, v12, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v6, v6, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    div-double/2addr v6, v0

    cmpg-double v0, v6, v14

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    move-wide v14, v6

    :goto_0
    cmpl-double v0, v14, v8

    if-lez v0, :cond_4

    move-wide v14, v8

    :cond_4
    mul-double v14, v14, v14

    mul-double v0, v4, v2

    mul-double v4, v4, v14

    sub-double/2addr v14, v8

    mul-double v2, v2, v14

    add-double/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Lru/yandex/yandexmapkit/utils/CoordConversion;->a(DD)D

    move-result-wide v0

    mul-double v12, v12, v0

    return-wide v12
.end method

.method public static getPointLLaddMetrs(Lru/yandex/yandexmapkit/utils/GeoPoint;I)Lru/yandex/yandexmapkit/utils/GeoPoint;
    .locals 7

    new-instance v0, Lru/yandex/yandexmapkit/utils/GeoPoint;

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLat()D

    move-result-wide v1

    int-to-double v3, p1

    const-wide v5, 0x40fb210000000000L    # 111120.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLon()D

    move-result-wide p0

    invoke-direct {v0, v1, v2, p0, p1}, Lru/yandex/yandexmapkit/utils/GeoPoint;-><init>(DD)V

    return-object v0
.end method

.method public static toLL(Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/GeoPoint;
    .locals 12

    iget-wide v0, p0, Lru/yandex/yandexmapkit/utils/Point;->x:J

    long-to-double v0, v0

    const-wide v2, 0x404acb1582c558eeL    # 53.5865939582453

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide v4, 0x41731bf8457c1093L    # 2.0037508342789244E7

    sub-double/2addr v0, v4

    iget-wide v6, p0, Lru/yandex/yandexmapkit/utils/Point;->y:J

    neg-long v6, v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v2

    add-double/2addr v6, v4

    sget-wide v2, Lru/yandex/yandexmapkit/utils/CoordConversion;->b:D

    const-wide v4, 0x415854a640000000L    # 6378137.0

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v6, v6, v8

    sub-double/2addr v2, v6

    mul-double v8, v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide v8, 0x3f6b7f32d92860f6L    # 0.003356551468879694

    mul-double v6, v6, v8

    add-double/2addr v6, v2

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    mul-double v8, v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide v10, 0x3edb907e9d8ddb75L    # 6.57187271079536E-6

    mul-double v8, v8, v10

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    mul-double v8, v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide v10, 0x3e52f265c3ee136aL    # 1.764564338702E-8

    mul-double v8, v8, v10

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    mul-double v2, v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v8, 0x3dcd4b2aaee2ce8cL    # 5.328478445E-11

    mul-double v2, v2, v8

    add-double/2addr v6, v2

    div-double/2addr v0, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sget-wide v4, Lru/yandex/yandexmapkit/utils/CoordConversion;->b:D

    cmpl-double p0, v2, v4

    if-lez p0, :cond_0

    move-wide v6, v4

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sget-wide v4, Lru/yandex/yandexmapkit/utils/CoordConversion;->a:D

    cmpl-double p0, v2, v4

    if-lez p0, :cond_1

    move-wide v0, v4

    :cond_1
    sget-wide v2, Lru/yandex/yandexmapkit/utils/CoordConversion;->e:D

    mul-double v6, v6, v2

    mul-double v0, v0, v2

    new-instance p0, Lru/yandex/yandexmapkit/utils/GeoPoint;

    invoke-direct {p0, v6, v7, v0, v1}, Lru/yandex/yandexmapkit/utils/GeoPoint;-><init>(DD)V

    return-object p0
.end method

.method public static toXY(Lru/yandex/yandexmapkit/utils/GeoPoint;Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/Point;
    .locals 12

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLat()D

    move-result-wide v0

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLon()D

    move-result-wide v2

    const-wide v4, -0x3fa9accccccccccdL    # -89.3

    const-wide v6, 0x4056533333333333L    # 89.3

    cmpl-double p0, v0, v6

    if-lez p0, :cond_0

    move-wide v0, v6

    goto :goto_0

    :cond_0
    cmpg-double p0, v0, v4

    if-gez p0, :cond_1

    move-wide v0, v4

    :cond_1
    :goto_0
    const-wide v4, -0x3f99800000000000L    # -180.0

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double p0, v2, v6

    if-lez p0, :cond_2

    move-wide v2, v6

    goto :goto_1

    :cond_2
    cmpg-double p0, v2, v4

    if-gez p0, :cond_3

    move-wide v2, v4

    :cond_3
    :goto_1
    sget-wide v4, Lru/yandex/yandexmapkit/utils/CoordConversion;->d:D

    mul-double v0, v0, v4

    mul-double v2, v2, v4

    sget-wide v4, Lru/yandex/yandexmapkit/utils/CoordConversion;->f:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, v4

    sget-wide v8, Lru/yandex/yandexmapkit/utils/CoordConversion;->c:D

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v10

    add-double/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    sget-wide v8, Lru/yandex/yandexmapkit/utils/CoordConversion;->c:D

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    mul-double v6, v6, v10

    add-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v4, 0x415854a640000000L    # 6378137.0

    mul-double v0, v0, v4

    double-to-long v0, v0

    mul-double v2, v2, v4

    double-to-long v2, v2

    const-wide v4, -0x3fb534ea7d3aa712L    # -53.5865939582453

    long-to-double v0, v0

    const-wide v6, 0x41731bf8457c1093L    # 2.0037508342789244E7

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v6

    mul-double v0, v0, v4

    double-to-long v0, v0

    const-wide v4, 0x404acb1582c558eeL    # 53.5865939582453

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v6

    mul-double v2, v2, v4

    double-to-long v2, v2

    if-nez p1, :cond_4

    new-instance p1, Lru/yandex/yandexmapkit/utils/Point;

    invoke-direct {p1}, Lru/yandex/yandexmapkit/utils/Point;-><init>()V

    :cond_4
    iput-wide v2, p1, Lru/yandex/yandexmapkit/utils/Point;->x:J

    iput-wide v0, p1, Lru/yandex/yandexmapkit/utils/Point;->y:J

    return-object p1
.end method
