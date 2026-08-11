.class public Lorg/osmdroid/util/GeometryMath;
.super Ljava/lang/Object;
.source "GeometryMath.java"


# static fields
.field public static final DEG2RAD:D = 0.017453292519943295

.field public static final RAD2DEG:D = 57.29577951308232


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Max4(DDDD)D
    .locals 0

    .line 61
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static Min4(DDDD)D
    .locals 0

    .line 57
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->min(DD)D

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    .line 17
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-static {p0, v0, v1, p1, p2}, Lorg/osmdroid/util/GeometryMath;->getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static final getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 35

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-nez p4, :cond_0

    .line 29
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move/from16 v4, p3

    goto :goto_0

    :cond_0
    move/from16 v4, p3

    move-object/from16 v3, p4

    :goto_0
    float-to-double v4, v4

    const-wide v6, 0x3f91df46a2529d39L    # 0.017453292519943295

    .line 31
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    .line 32
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 33
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 34
    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v1

    int-to-double v8, v8

    .line 35
    iget v10, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v2

    int-to-double v10, v10

    int-to-double v12, v1

    .line 36
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v8, v4

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v14, v12, v14

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v16, v10, v6

    add-double v14, v14, v16

    move-wide/from16 p3, v14

    int-to-double v14, v2

    .line 37
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v8, v14, v8

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v4

    sub-double/2addr v8, v10

    .line 38
    iget v10, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v1

    int-to-double v10, v10

    move-object/from16 v26, v3

    .line 39
    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    move-wide/from16 v27, v8

    int-to-double v8, v3

    .line 40
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v16, v10, v4

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v16, v12, v16

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v18, v8, v6

    add-double v29, v16, v18

    .line 41
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v6

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v10, v14, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v4

    sub-double v8, v10, v8

    .line 42
    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    int-to-double v10, v3

    .line 43
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v2

    move-wide/from16 v31, v8

    int-to-double v8, v3

    .line 44
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v16, v10, v4

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v16, v12, v16

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v18, v8, v6

    add-double v33, v16, v18

    .line 45
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v6

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v10, v14, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v4

    sub-double v8, v10, v8

    .line 46
    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    int-to-double v10, v3

    .line 47
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    int-to-double v0, v0

    .line 48
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v10, v4

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v12, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v0, v6

    add-double/2addr v2, v12

    .line 49
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v6

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v14, v10

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    sub-double v0, v14, v0

    move-wide/from16 v18, p3

    move-wide/from16 v20, v29

    move-wide/from16 v22, v33

    move-wide/from16 v24, v2

    .line 50
    invoke-static/range {v18 .. v25}, Lorg/osmdroid/util/GeometryMath;->Min4(DDDD)D

    move-result-wide v4

    double-to-int v4, v4

    move-wide/from16 v16, v27

    move-wide/from16 v18, v31

    move-wide/from16 v20, v8

    move-wide/from16 v22, v0

    invoke-static/range {v16 .. v23}, Lorg/osmdroid/util/GeometryMath;->Min4(DDDD)D

    move-result-wide v5

    double-to-int v5, v5

    move-wide/from16 v18, p3

    move-wide/from16 v20, v29

    move-wide/from16 v22, v33

    .line 51
    invoke-static/range {v18 .. v25}, Lorg/osmdroid/util/GeometryMath;->Max4(DDDD)D

    move-result-wide v2

    double-to-int v2, v2

    move-wide/from16 v18, v31

    move-wide/from16 v20, v8

    move-wide/from16 v22, v0

    invoke-static/range {v16 .. v23}, Lorg/osmdroid/util/GeometryMath;->Max4(DDDD)D

    move-result-wide v0

    double-to-int v0, v0

    move-object/from16 v3, v26

    .line 50
    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-object v3
.end method

.method public static final getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;Landroid/graphics/Point;FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 23
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, v0, p1, p2, p3}, Lorg/osmdroid/util/GeometryMath;->getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method
