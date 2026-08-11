.class public Lorg/osmdroid/views/overlay/Polyline;
.super Lorg/osmdroid/views/overlay/OverlayWithIW;
.source "Polyline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/Polyline$OnClickListener;
    }
.end annotation


# instance fields
.field protected mGeodesic:Z

.field private final mLineBounds:Landroid/graphics/Rect;

.field protected mOnClickListener:Lorg/osmdroid/views/overlay/Polyline$OnClickListener;

.field private mOriginalPoints:[[D

.field protected mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mPointsPrecomputed:I

.field public mRepeatPath:Z

.field private final mTempPoint1:Landroid/graphics/Point;

.field private final mTempPoint2:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 66
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayWithIW;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mRepeatPath:Z

    .line 53
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mLineBounds:Landroid/graphics/Rect;

    .line 54
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint1:Landroid/graphics/Point;

    .line 55
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint2:Landroid/graphics/Point;

    .line 68
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Polyline;->clearPath()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 73
    fill-array-data v1, :array_0

    const-class v2, D

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    .line 74
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mGeodesic:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    return-void
.end method

.method private cross(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 6

    .line 432
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    .line 433
    iget p2, p2, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, v2

    int-to-double v2, p2

    .line 434
    iget p2, p3, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr p2, v4

    int-to-double v4, p2

    .line 435
    iget p2, p3, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, p1

    int-to-double p1, p2

    .line 436
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private distance(Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 2

    .line 442
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    .line 443
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, p2

    int-to-double p1, p1

    .line 444
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private dot(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 6

    .line 422
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    .line 423
    iget v2, p2, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, p1

    int-to-double v2, v2

    .line 424
    iget p1, p3, Landroid/graphics/Point;->x:I

    iget v4, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, v4

    int-to-double v4, p1

    .line 425
    iget p1, p3, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, p2

    int-to-double p1, p1

    .line 426
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, p1

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private linePointDist(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Z)D
    .locals 6

    .line 455
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/Polyline;->distance(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 457
    invoke-direct {p0, p1, p3}, Lorg/osmdroid/views/overlay/Polyline;->distance(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide p1

    return-wide p1

    .line 458
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/osmdroid/views/overlay/Polyline;->cross(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v4

    div-double/2addr v4, v0

    if-eqz p4, :cond_2

    .line 460
    invoke-direct {p0, p1, p2, p3}, Lorg/osmdroid/views/overlay/Polyline;->dot(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v0

    cmpl-double p4, v0, v2

    if-lez p4, :cond_1

    .line 462
    invoke-direct {p0, p2, p3}, Lorg/osmdroid/views/overlay/Polyline;->distance(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide p1

    return-wide p1

    .line 463
    :cond_1
    invoke-direct {p0, p2, p1, p3}, Lorg/osmdroid/views/overlay/Polyline;->dot(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v0

    cmpl-double p2, v0, v2

    if-lez p2, :cond_2

    .line 465
    invoke-direct {p0, p1, p3}, Lorg/osmdroid/views/overlay/Polyline;->distance(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide p1

    return-wide p1

    .line 467
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method protected addGreatCircle(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)V
    .locals 25

    move/from16 v0, p3

    .line 146
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    const-wide v3, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double v1, v1, v3

    .line 147
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v5

    mul-double v5, v5, v3

    .line 148
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v7

    mul-double v7, v7, v3

    .line 149
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v9

    mul-double v9, v9, v3

    sub-double v3, v1, v7

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v11

    .line 151
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v13, v13, v15

    sub-double v15, v5, v9

    div-double v17, v15, v11

    move-wide/from16 p1, v9

    .line 152
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double v13, v13, v9

    add-double/2addr v3, v13

    .line 151
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    mul-double v3, v3, v11

    .line 153
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double v9, v9, v13

    .line 154
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v13, v13, v17

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v17, v17, v15

    sub-double v13, v13, v17

    .line 153
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    const-wide v13, -0x406e20b960000000L    # -0.01745329238474369

    div-double/2addr v9, v13

    const-wide/16 v13, 0x0

    cmpg-double v15, v9, v13

    const/4 v9, 0x1

    :goto_0
    if-gt v9, v0, :cond_0

    int-to-double v13, v9

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    .line 159
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v15

    add-int/lit8 v10, v0, 0x1

    int-to-double v11, v10

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v13, v11

    sub-double/2addr v15, v13

    mul-double v15, v15, v3

    .line 160
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    div-double/2addr v10, v15

    mul-double v13, v13, v3

    .line 161
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    .line 162
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double v14, v14, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v14, v14, v19

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v12

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    add-double v14, v14, v19

    .line 163
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v21, v21, v12

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    mul-double v21, v21, v23

    move-wide/from16 v23, v3

    add-double v3, v19, v21

    .line 164
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v10, v10, v19

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v12, v12, v19

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 166
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    .line 167
    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    const-wide v12, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v10, v10, v12

    const-wide v14, 0x412e848000000000L    # 1000000.0

    mul-double v10, v10, v14

    double-to-int v10, v10

    mul-double v3, v3, v12

    mul-double v3, v3, v14

    double-to-int v3, v3

    move-object/from16 v4, p0

    .line 168
    invoke-virtual {v4, v10, v3}, Lorg/osmdroid/views/overlay/Polyline;->addPoint(II)V

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v3, v23

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    goto/16 :goto_0

    :cond_0
    move-object/from16 v4, p0

    return-void
.end method

.method protected addPoint(II)V
    .locals 2

    .line 87
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addPoint(Lorg/osmdroid/util/GeoPoint;)V
    .locals 1

    .line 83
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v0

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/osmdroid/views/overlay/Polyline;->addPoint(II)V

    return-void
.end method

.method protected clearPath()V
    .locals 1

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPointsPrecomputed:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz p3, :cond_0

    return-void

    .line 297
    :cond_0
    iget-object v2, v0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    return-void

    .line 303
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v4

    .line 305
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v5

    invoke-virtual {v5}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v5

    invoke-static {v5}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v5

    div-int/2addr v5, v3

    mul-int/lit8 v6, v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 306
    invoke-virtual {v4, v8, v6, v7}, Lorg/osmdroid/views/Projection;->toPixelsFromMercator(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    .line 309
    invoke-virtual {v0, v4}, Lorg/osmdroid/views/overlay/Polyline;->precomputePoints(Lorg/osmdroid/views/Projection;)V

    .line 311
    iget-object v9, v0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    .line 313
    iget-object v10, v0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint1:Landroid/graphics/Point;

    invoke-virtual {v4, v9, v10}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v9

    .line 316
    iget-object v10, v0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->rewind()V

    .line 317
    iget-object v10, v0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    iget v11, v9, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    iget v12, v9, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v10, 0x1

    const/4 v11, 0x1

    :goto_0
    if-ge v11, v2, :cond_d

    .line 321
    iget-object v12, v0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Point;

    .line 322
    iget-object v13, v0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint2:Landroid/graphics/Point;

    invoke-virtual {v4, v12, v13}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v12

    .line 324
    iget v13, v12, Landroid/graphics/Point;->x:I

    iget v14, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    iget v14, v12, Landroid/graphics/Point;->y:I

    iget v15, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    add-int/2addr v13, v14

    if-gt v13, v10, :cond_2

    goto/16 :goto_7

    .line 331
    :cond_2
    iget v13, v12, Landroid/graphics/Point;->x:I

    iget v14, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-gt v13, v5, :cond_5

    iget v13, v12, Landroid/graphics/Point;->y:I

    if-lt v13, v7, :cond_3

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    :goto_1
    iget v14, v9, Landroid/graphics/Point;->y:I

    if-lt v14, v7, :cond_4

    const/4 v14, 0x1

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    :goto_2
    if-eq v13, v14, :cond_c

    .line 335
    :cond_5
    iget v13, v9, Landroid/graphics/Point;->x:I

    .line 336
    iget v14, v9, Landroid/graphics/Point;->y:I

    .line 337
    iget v15, v12, Landroid/graphics/Point;->x:I

    .line 338
    iget v8, v12, Landroid/graphics/Point;->y:I

    .line 341
    iget v10, v12, Landroid/graphics/Point;->x:I

    iget v3, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v3

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v5, :cond_7

    .line 342
    iget v3, v12, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v10

    const/16 v16, 0x2

    div-int/lit8 v10, v10, 0x2

    if-ge v3, v10, :cond_6

    add-int/2addr v15, v6

    sub-int/2addr v13, v6

    goto :goto_3

    :cond_6
    sub-int/2addr v15, v6

    add-int/2addr v13, v6

    .line 353
    :cond_7
    :goto_3
    iget v3, v12, Landroid/graphics/Point;->y:I

    if-lt v3, v7, :cond_8

    const/4 v3, 0x1

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :goto_4
    iget v10, v9, Landroid/graphics/Point;->y:I

    if-lt v10, v7, :cond_9

    const/4 v10, 0x1

    goto :goto_5

    :cond_9
    const/4 v10, 0x0

    :goto_5
    if-eq v3, v10, :cond_b

    .line 355
    iget v3, v12, Landroid/graphics/Point;->y:I

    if-lt v3, v7, :cond_a

    sub-int/2addr v8, v6

    add-int/2addr v14, v6

    goto :goto_6

    :cond_a
    add-int/2addr v8, v6

    sub-int/2addr v14, v6

    .line 364
    :cond_b
    :goto_6
    iget-object v3, v0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    int-to-float v10, v15

    int-to-float v8, v8

    invoke-virtual {v3, v10, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 365
    iget-object v3, v0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    int-to-float v8, v13

    int-to-float v10, v14

    invoke-virtual {v3, v8, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 368
    :cond_c
    iget-object v3, v0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    iget v8, v12, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v10, v12, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {v3, v8, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 371
    iget v3, v12, Landroid/graphics/Point;->x:I

    iput v3, v9, Landroid/graphics/Point;->x:I

    .line 372
    iget v3, v12, Landroid/graphics/Point;->y:I

    iput v3, v9, Landroid/graphics/Point;->y:I

    :goto_7
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x2

    const/4 v8, 0x0

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 375
    :cond_d
    iget-object v2, v0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 377
    iget-boolean v2, v0, Lorg/osmdroid/views/overlay/Polyline;->mRepeatPath:Z

    if-eqz v2, :cond_10

    .line 378
    new-instance v2, Landroid/graphics/Path;

    iget-object v3, v0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    invoke-direct {v2, v3}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    neg-int v3, v5

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x0

    .line 379
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->offset(FF)V

    .line 380
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v5

    if-ge v6, v5, :cond_e

    .line 381
    iget-object v5, v0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    int-to-float v7, v6

    invoke-virtual {v2, v5, v7, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    .line 383
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v5

    if-ge v6, v5, :cond_f

    int-to-float v5, v6

    .line 384
    invoke-virtual {v2, v2, v4, v5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    .line 385
    iget-object v6, v0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v6, v4, v5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    .line 387
    :cond_f
    iget-object v5, v0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v5, v4, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    .line 388
    iget-object v3, v0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_10
    return-void
.end method

.method protected drawOld(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 10

    if-eqz p3, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object p3, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x2

    if-ge p3, v0, :cond_1

    return-void

    .line 227
    :cond_1
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v7

    .line 230
    invoke-virtual {p0, v7}, Lorg/osmdroid/views/overlay/Polyline;->precomputePoints(Lorg/osmdroid/views/Projection;)V

    .line 238
    invoke-virtual {v7}, Lorg/osmdroid/views/Projection;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v8

    .line 239
    invoke-virtual {v8}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    .line 240
    invoke-virtual {v8}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v4

    const/4 v6, 0x0

    move-object v1, v7

    .line 239
    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v9

    .line 241
    invoke-virtual {v8}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v2

    .line 242
    invoke-virtual {v8}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v4

    .line 241
    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 243
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v9, Landroid/graphics/Point;->x:I

    iget v4, v9, Landroid/graphics/Point;->y:I

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 245
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_2

    .line 246
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result p2

    invoke-static {v2, p2, v2}, Lorg/osmdroid/util/GeometryMath;->getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 248
    :cond_2
    iget-object p2, p0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->rewind()V

    .line 249
    iget-object p2, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Point;

    .line 250
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mLineBounds:Landroid/graphics/Rect;

    iget v3, p2, Landroid/graphics/Point;->x:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    iget v5, p2, Landroid/graphics/Point;->x:I

    iget v6, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    sub-int/2addr p3, v0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-ltz p3, :cond_6

    .line 254
    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 255
    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polyline;->mLineBounds:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->union(II)V

    .line 257
    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polyline;->mLineBounds:Landroid/graphics/Rect;

    invoke-static {v2, v4}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object v1, v0

    :goto_1
    move-object p2, v3

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    .line 267
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint1:Landroid/graphics/Point;

    invoke-virtual {v7, p2, v1}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 268
    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 271
    :cond_4
    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint2:Landroid/graphics/Point;

    invoke-virtual {v7, v3, v4}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v4

    .line 274
    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, v4, Landroid/graphics/Point;->y:I

    iget v8, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, 0x1

    if-gt v5, v6, :cond_5

    goto :goto_2

    .line 278
    :cond_5
    iget-object p2, p0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v4, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {p2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 282
    iget p2, v4, Landroid/graphics/Point;->x:I

    iput p2, v1, Landroid/graphics/Point;->x:I

    .line 283
    iget p2, v4, Landroid/graphics/Point;->y:I

    iput p2, v1, Landroid/graphics/Point;->y:I

    .line 284
    iget-object p2, p0, Lorg/osmdroid/views/overlay/Polyline;->mLineBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v8, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v4, v5, v6, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :goto_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 287
    :cond_6
    iget-object p2, p0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    iget-object p3, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getColor()I
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getNumberOfPoints()I
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    array-length v0, v0

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 93
    :goto_0
    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 94
    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    aget-object v5, v4, v2

    aget-wide v6, v5, v1

    aget-object v4, v4, v2

    const/4 v5, 0x1

    aget-wide v8, v4, v5

    invoke-direct {v3, v6, v7, v8, v9}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 95
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/MapView;)Z
    .locals 6

    .line 398
    invoke-virtual {p4}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object p4

    .line 399
    invoke-virtual {p0, p4}, Lorg/osmdroid/views/overlay/Polyline;->precomputePoints(Lorg/osmdroid/views/Projection;)V

    const/4 v0, 0x0

    .line 400
    invoke-virtual {p4, p1, v0}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    .line 403
    :goto_0
    iget v3, p0, Lorg/osmdroid/views/overlay/Polyline;->mPointsPrecomputed:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_2

    if-nez v2, :cond_2

    .line 404
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    if-nez v1, :cond_1

    .line 406
    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint1:Landroid/graphics/Point;

    invoke-virtual {p4, v2, v3}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    goto :goto_1

    .line 409
    :cond_1
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint1:Landroid/graphics/Point;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint2:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint2:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Point;->set(II)V

    .line 411
    :goto_1
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 412
    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint2:Landroid/graphics/Point;

    invoke-virtual {p4, v2, v3}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 413
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint1:Landroid/graphics/Point;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint2:Landroid/graphics/Point;

    invoke-direct {p0, v2, v3, p1, v4}, Lorg/osmdroid/views/overlay/Polyline;->linePointDist(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Z)D

    move-result-wide v2

    cmpg-double v5, v2, p2

    if-gtz v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public isGeodesic()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mGeodesic:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 118
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Polyline;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onClickDefault(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z
    .locals 0

    .line 499
    invoke-virtual {p1, p3}, Lorg/osmdroid/views/overlay/Polyline;->showInfoWindow(Lorg/osmdroid/util/GeoPoint;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 0

    const/4 p1, 0x0

    .line 505
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnClickListener:Lorg/osmdroid/views/overlay/Polyline$OnClickListener;

    .line 506
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Polyline;->onDestroy()V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 2

    .line 477
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    .line 478
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/util/GeoPoint;

    .line 479
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    float-to-double v0, v0

    .line 480
    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/osmdroid/views/overlay/Polyline;->isCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/MapView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnClickListener:Lorg/osmdroid/views/overlay/Polyline$OnClickListener;

    if-nez v0, :cond_0

    .line 483
    invoke-virtual {p0, p0, p2, p1}, Lorg/osmdroid/views/overlay/Polyline;->onClickDefault(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    move-result p1

    return p1

    .line 485
    :cond_0
    invoke-interface {v0, p0, p2, p1}, Lorg/osmdroid/views/overlay/Polyline$OnClickListener;->onClick(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method protected precomputePoints(Lorg/osmdroid/views/Projection;)V
    .locals 4

    .line 207
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 208
    :goto_0
    iget v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mPointsPrecomputed:I

    if-ge v1, v0, :cond_0

    .line 209
    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 210
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v3, v1}, Lorg/osmdroid/views/Projection;->toProjectedPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 211
    iget v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mPointsPrecomputed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mPointsPrecomputed:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setGeodesic(Z)V
    .locals 0

    .line 203
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/Polyline;->mGeodesic:Z

    return-void
.end method

.method public setOnClickListener(Lorg/osmdroid/views/overlay/Polyline$OnClickListener;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnClickListener:Lorg/osmdroid/views/overlay/Polyline$OnClickListener;

    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Polyline;->clearPath()V

    .line 178
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    .line 179
    const-class v4, D

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    iput-object v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 181
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/util/GeoPoint;

    .line 182
    iget-object v5, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    aget-object v5, v5, v2

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    aput-wide v6, v5, v1

    .line 183
    iget-object v5, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    aget-object v5, v5, v2

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    aput-wide v6, v5, v3

    .line 184
    iget-boolean v5, p0, Lorg/osmdroid/views/overlay/Polyline;->mGeodesic:Z

    if-nez v5, :cond_0

    .line 185
    invoke-virtual {p0, v4}, Lorg/osmdroid/views/overlay/Polyline;->addPoint(Lorg/osmdroid/util/GeoPoint;)V

    goto :goto_1

    :cond_0
    if-lez v2, :cond_1

    add-int/lit8 v5, v2, -0x1

    .line 189
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osmdroid/util/GeoPoint;

    .line 190
    invoke-virtual {v5, v4}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v6

    const v7, 0x186a0

    .line 192
    div-int/2addr v6, v7

    .line 193
    invoke-virtual {p0, v5, v4, v6}, Lorg/osmdroid/views/overlay/Polyline;->addGreatCircle(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)V

    .line 195
    :cond_1
    invoke-virtual {p0, v4}, Lorg/osmdroid/views/overlay/Polyline;->addPoint(Lorg/osmdroid/util/GeoPoint;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 134
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/Polyline;->setEnabled(Z)V

    return-void
.end method

.method public setWidth(F)V
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public showInfoWindow(Lorg/osmdroid/util/GeoPoint;)V
    .locals 2

    .line 471
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-nez v0, :cond_0

    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, v1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->open(Ljava/lang/Object;Lorg/osmdroid/util/GeoPoint;II)V

    return-void
.end method
