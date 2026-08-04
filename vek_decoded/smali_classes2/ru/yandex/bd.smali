.class public final Lru/yandex/bd;
.super Ljava/lang/Object;

# interfaces
.implements Lru/yandex/yandexmapkit/map/TileRenderListener;


# static fields
.field static a:Landroid/graphics/Paint;

.field static b:Landroid/graphics/Paint;

.field static c:Landroid/graphics/Paint;

.field static d:Landroid/graphics/Path;

.field static e:Landroid/graphics/Path;


# instance fields
.field private final f:Lru/yandex/be;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lru/yandex/bd;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lru/yandex/bd;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    sget-object v0, Lru/yandex/bd;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    sget-object v1, Lru/yandex/bd;->a:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    sput-object v0, Lru/yandex/bd;->b:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    sget-object v0, Lru/yandex/bd;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v0, Landroid/graphics/Paint;

    sget-object v1, Lru/yandex/bd;->a:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    sput-object v0, Lru/yandex/bd;->c:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lru/yandex/bd;->d:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lru/yandex/bd;->e:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    return-void
.end method

.method public constructor <init>(Lru/yandex/be;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/bd;->g:Z

    iput-object p1, p0, Lru/yandex/bd;->f:Lru/yandex/be;

    return-void
.end method

.method private a(Lru/yandex/yandexmapkit/map/Tile;Landroid/graphics/Canvas;)Z
    .locals 51

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    invoke-virtual/range {p0 .. p0}, Lru/yandex/bd;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1f

    :try_start_0
    iget-object v2, v0, Lru/yandex/bd;->f:Lru/yandex/be;

    invoke-virtual {v2, v1}, Lru/yandex/be;->a(Lru/yandex/yandexmapkit/map/Tile;)Lru/yandex/bf;

    move-result-object v10

    if-eqz v10, :cond_1f

    iget v2, v1, Lru/yandex/yandexmapkit/map/Tile;->zoom:I

    rsub-int/lit8 v11, v2, 0x17

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v4, v11

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v12, v2

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorScaleTile()F

    move-result v13

    iget v2, v1, Lru/yandex/yandexmapkit/map/Tile;->i:I

    int-to-float v2, v2

    mul-float v2, v2, v12

    const/high16 v3, 0x43000000    # 128.0f

    mul-float v2, v2, v3

    float-to-int v14, v2

    iget v2, v1, Lru/yandex/yandexmapkit/map/Tile;->j:I

    int-to-float v2, v2

    mul-float v2, v2, v12

    mul-float v2, v2, v3

    float-to-int v15, v2

    iget-object v2, v0, Lru/yandex/bd;->f:Lru/yandex/be;

    invoke-virtual {v2}, Lru/yandex/be;->a()Lru/yandex/bc;

    move-result-object v7

    iget v6, v10, Lru/yandex/bf;->f:I

    iget-boolean v2, v0, Lru/yandex/bd;->g:Z

    iget-object v3, v0, Lru/yandex/bd;->f:Lru/yandex/be;

    invoke-virtual {v3}, Lru/yandex/be;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v3

    invoke-virtual {v3}, Lru/yandex/yandexmapkit/MapController;->isNightMode()Z

    move-result v3

    const/16 v16, 0x1

    if-eq v2, v3, :cond_0

    const/16 v17, 0x1

    goto :goto_0

    :cond_0
    const/16 v17, 0x0

    :goto_0
    iget-object v2, v0, Lru/yandex/bd;->f:Lru/yandex/be;

    invoke-virtual {v2}, Lru/yandex/be;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v2

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/MapController;->isNightMode()Z

    move-result v2

    iput-boolean v2, v0, Lru/yandex/bd;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1e

    :try_start_1
    iget-object v3, v10, Lru/yandex/bf;->h:[Lru/yandex/bl;

    aget-object v3, v3, v5

    iget-object v4, v3, Lru/yandex/bl;->k:[Lru/yandex/bb;

    if-eqz v4, :cond_1

    if-eqz v17, :cond_4

    :cond_1
    iget-boolean v4, v0, Lru/yandex/bd;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_2

    :try_start_2
    iget v4, v3, Lru/yandex/bl;->c:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    add-int/lit8 v4, v4, 0x64

    goto :goto_2

    :cond_2
    :try_start_3
    iget v4, v3, Lru/yandex/bl;->c:I

    :goto_2
    iget v9, v3, Lru/yandex/bl;->d:F

    invoke-virtual {v7, v4, v11, v9}, Lru/yandex/bc;->a(IIF)[Lru/yandex/bb;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v4, :cond_3

    :try_start_4
    iget-boolean v9, v0, Lru/yandex/bd;->g:Z

    if-eqz v9, :cond_3

    iget v4, v3, Lru/yandex/bl;->c:I

    iget v9, v3, Lru/yandex/bl;->d:F

    invoke-virtual {v7, v4, v11, v9}, Lru/yandex/bc;->a(IIF)[Lru/yandex/bb;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_3
    :try_start_5
    iput-object v4, v3, Lru/yandex/bl;->k:[Lru/yandex/bb;

    :cond_4
    if-eqz v4, :cond_1c

    aget-object v9, v4, v11

    if-eqz v9, :cond_1c

    iget v4, v9, Lru/yandex/bb;->m:I

    shl-int/lit8 v19, v4, 0x1

    div-float v20, v13, v12

    move/from16 v21, v2

    iget v2, v3, Lru/yandex/bl;->f:I

    sub-int/2addr v2, v14

    int-to-float v2, v2

    mul-float v2, v2, v20

    float-to-int v2, v2

    sub-int/2addr v2, v4

    move/from16 v22, v5

    iget v5, v3, Lru/yandex/bl;->g:I

    sub-int/2addr v5, v15

    int-to-float v5, v5

    mul-float v5, v5, v20

    float-to-int v5, v5

    sub-int/2addr v5, v4

    iget v4, v3, Lru/yandex/bl;->h:I

    move/from16 v23, v6

    iget v6, v3, Lru/yandex/bl;->f:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    mul-float v4, v4, v20

    float-to-int v4, v4

    add-int v4, v4, v19

    iget v6, v3, Lru/yandex/bl;->i:I

    move-object/from16 v24, v7

    iget v7, v3, Lru/yandex/bl;->g:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float v6, v6, v20

    float-to-int v6, v6

    add-int v6, v6, v19

    invoke-static {v2, v5, v4, v6}, Lru/yandex/yandexmapkit/utils/Utils;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorSizeTile()F

    move-result v2

    mul-float v2, v2, v20

    iget v4, v9, Lru/yandex/bb;->e:F

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->j()Z

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v5, :cond_5

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-float v4, v4

    :cond_5
    :try_start_6
    iget v5, v9, Lru/yandex/bb;->k:F

    iget v6, v3, Lru/yandex/bl;->e:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float v5, v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Lru/yandex/yandexmapkit/utils/Utils;->a(F)I

    move-result v5

    shl-int/lit8 v6, v5, 0x1

    iget-object v7, v3, Lru/yandex/bl;->a:[I

    move/from16 v19, v11

    iget v11, v3, Lru/yandex/bl;->b:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/16 v18, 0x0

    :try_start_7
    aget v21, v7, v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move/from16 v25, v12

    sub-int v12, v21, v14

    int-to-float v12, v12

    mul-float v12, v12, v2

    float-to-int v12, v12

    :try_start_8
    aget v21, v7, v16

    move/from16 v26, v13

    sub-int v13, v21, v15

    int-to-float v13, v13

    mul-float v13, v13, v2

    float-to-int v13, v13

    move-object/from16 v27, v10

    sget-object v10, Lru/yandex/bd;->a:Landroid/graphics/Paint;

    iget v0, v9, Lru/yandex/bb;->c:I

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lru/yandex/bd;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lru/yandex/bd;->b:Landroid/graphics/Paint;

    iget v10, v9, Lru/yandex/bb;->c:I

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lru/yandex/bd;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lru/yandex/bd;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    sget-object v0, Lru/yandex/bd;->d:Landroid/graphics/Path;

    int-to-float v4, v12

    int-to-float v10, v13

    invoke-virtual {v0, v4, v10}, Landroid/graphics/Path;->moveTo(FF)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/16 v21, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    :goto_3
    const/high16 v33, 0x40800000    # 4.0f

    if-ge v0, v11, :cond_c

    :try_start_9
    aget v34, v7, v0

    move/from16 v35, v11

    sub-int v11, v34, v14

    int-to-float v11, v11

    mul-float v11, v11, v2

    float-to-int v11, v11

    add-int/lit8 v34, v0, 0x1

    aget v34, v7, v34

    move-object/from16 v36, v7

    sub-int v7, v34, v15

    int-to-float v7, v7

    mul-float v7, v7, v2

    float-to-int v7, v7

    if-ne v12, v11, :cond_7

    if-eq v13, v7, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v34, v2

    move-object/from16 v39, v3

    move-object/from16 v40, v9

    move/from16 v38, v14

    move/from16 v37, v15

    goto/16 :goto_8

    :cond_7
    :goto_4
    sub-int v4, v11, v12

    move/from16 v34, v2

    sub-int v2, v7, v13

    mul-int v31, v4, v4

    mul-int v32, v2, v2

    move/from16 v37, v15

    add-int v15, v31, v32

    move/from16 v38, v14

    int-to-double v14, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    int-to-float v15, v4

    div-float/2addr v15, v14

    move-object/from16 v39, v3

    int-to-float v3, v2

    div-float/2addr v3, v14

    invoke-static {v4}, Lru/yandex/yandexmapkit/utils/Utils;->a(I)I

    move-result v4

    invoke-static {v2}, Lru/yandex/yandexmapkit/utils/Utils;->a(I)I

    move-result v2

    if-le v11, v12, :cond_8

    move v14, v12

    goto :goto_5

    :cond_8
    move v14, v11

    :goto_5
    if-le v7, v13, :cond_9

    move/from16 v31, v13

    goto :goto_6

    :cond_9
    move/from16 v31, v7

    :goto_6
    sub-int/2addr v14, v5

    move-object/from16 v40, v9

    sub-int v9, v31, v5

    add-int/2addr v4, v6

    add-int/2addr v2, v6

    invoke-static {v14, v9, v4, v2}, Lru/yandex/yandexmapkit/utils/Utils;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_b

    if-nez v21, :cond_a

    sget-object v1, Lru/yandex/bd;->d:Landroid/graphics/Path;

    int-to-float v2, v12

    mul-float v4, v15, v33

    sub-float/2addr v2, v4

    int-to-float v4, v13

    mul-float v9, v3, v33

    sub-float/2addr v4, v9

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_a
    sget-object v1, Lru/yandex/bd;->d:Landroid/graphics/Path;

    int-to-float v2, v11

    int-to-float v4, v7

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move v10, v2

    move/from16 v30, v3

    move v1, v4

    move/from16 v29, v15

    const/4 v2, 0x1

    const/16 v21, 0x1

    goto :goto_7

    :cond_b
    sget-object v2, Lru/yandex/bd;->d:Landroid/graphics/Path;

    int-to-float v4, v11

    int-to-float v9, v7

    invoke-virtual {v2, v4, v9}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v2, 0x0

    :goto_7
    int-to-float v4, v11

    mul-float v15, v15, v33

    add-float v31, v4, v15

    int-to-float v4, v7

    mul-float v3, v3, v33

    add-float v32, v4, v3

    move v4, v2

    move v13, v7

    move v12, v11

    :goto_8
    add-int/lit8 v0, v0, 0x2

    move/from16 v2, v34

    move/from16 v11, v35

    move-object/from16 v7, v36

    move/from16 v15, v37

    move/from16 v14, v38

    move-object/from16 v3, v39

    move-object/from16 v9, v40

    goto/16 :goto_3

    :catchall_0
    move-object/from16 v0, p0

    goto/16 :goto_14

    :cond_c
    move-object/from16 v39, v3

    move-object/from16 v40, v9

    move/from16 v38, v14

    move/from16 v37, v15

    if-nez v4, :cond_d

    sget-object v0, Lru/yandex/bd;->d:Landroid/graphics/Path;

    invoke-virtual {v0, v10, v1}, Landroid/graphics/Path;->moveTo(FF)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    mul-float v29, v29, v33

    add-float v31, v10, v29

    mul-float v30, v30, v33

    add-float v32, v1, v30

    :cond_d
    move/from16 v0, v31

    move/from16 v1, v32

    :try_start_a
    sget-object v2, Lru/yandex/bd;->d:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    sget-object v0, Lru/yandex/bd;->d:Landroid/graphics/Path;

    sget-object v1, Lru/yandex/bd;->b:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, v40

    iget-boolean v1, v0, Lru/yandex/bb;->l:Z

    if-eqz v1, :cond_1b

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorSizeTile()F

    move-result v1

    mul-float v20, v20, v1

    iget v1, v0, Lru/yandex/bb;->h:F

    invoke-static {v1}, Lru/yandex/yandexmapkit/utils/Utils;->a(F)I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    shl-int/lit8 v9, v1, 0x1

    move-object/from16 v2, v39

    iget-object v10, v2, Lru/yandex/bl;->a:[I

    iget v11, v2, Lru/yandex/bl;->b:I

    sget-object v2, Lru/yandex/bd;->a:Landroid/graphics/Paint;

    iget v3, v0, Lru/yandex/bb;->d:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Lru/yandex/bd;->c:Landroid/graphics/Paint;

    iget v3, v0, Lru/yandex/bb;->d:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Lru/yandex/bd;->e:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/16 v18, 0x0

    :try_start_b
    aget v2, v10, v18

    sub-int v2, v2, v38

    int-to-float v2, v2

    mul-float v2, v2, v20

    float-to-int v2, v2

    aget v3, v10, v16

    sub-int v3, v3, v37

    int-to-float v3, v3

    mul-float v3, v3, v20

    float-to-int v3, v3

    const/4 v12, 0x2

    const/4 v13, 0x0

    :goto_9
    if-ge v12, v11, :cond_1a

    aget v4, v10, v12

    sub-int v4, v4, v38

    int-to-float v4, v4

    mul-float v4, v4, v20

    float-to-int v14, v4

    add-int/lit8 v4, v12, 0x1

    aget v4, v10, v4

    sub-int v4, v4, v37

    int-to-float v4, v4

    mul-float v4, v4, v20

    float-to-int v15, v4

    if-ne v2, v14, :cond_f

    if-eq v3, v15, :cond_e

    goto :goto_a

    :cond_e
    move-object/from16 v40, v0

    move/from16 v28, v1

    move/from16 v33, v9

    move-object/from16 v29, v10

    move/from16 v21, v11

    goto/16 :goto_11

    :cond_f
    :goto_a
    sub-int v4, v14, v2

    invoke-static {v4}, Lru/yandex/yandexmapkit/utils/Utils;->a(I)I

    move-result v5

    sub-int v6, v15, v3

    invoke-static {v6}, Lru/yandex/yandexmapkit/utils/Utils;->a(I)I

    move-result v7

    if-le v14, v2, :cond_10

    move/from16 v21, v2

    goto :goto_b

    :cond_10
    move/from16 v21, v14

    :goto_b
    if-le v15, v3, :cond_11

    move/from16 v28, v3

    move-object/from16 v29, v10

    goto :goto_c

    :cond_11
    move-object/from16 v29, v10

    move/from16 v28, v15

    :goto_c
    sub-int v10, v21, v1

    move/from16 v21, v11

    sub-int v11, v28, v1

    add-int/2addr v5, v9

    add-int/2addr v7, v9

    invoke-static {v10, v11, v5, v7}, Lru/yandex/yandexmapkit/utils/Utils;->a(IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    sget-object v10, Lru/yandex/bd;->e:Landroid/graphics/Path;

    if-nez v4, :cond_12

    if-nez v6, :cond_12

    goto/16 :goto_f

    :cond_12
    int-to-float v11, v2

    int-to-float v7, v3

    int-to-float v5, v14

    sub-float v2, v5, v11

    int-to-float v3, v15

    sub-float v28, v3, v7

    mul-int v4, v4, v4

    mul-int v6, v6, v6

    add-int/2addr v4, v6

    move v6, v3

    int-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v4, v3

    div-float v30, v2, v4

    div-float v3, v28, v4

    iget v2, v0, Lru/yandex/bb;->g:F

    move/from16 v28, v1

    iget v1, v0, Lru/yandex/bb;->f:F

    add-float v31, v1, v2

    move/from16 v32, v5

    iget v5, v0, Lru/yandex/bb;->i:F

    move/from16 v33, v9

    iget v9, v0, Lru/yandex/bb;->j:F

    move/from16 v34, v6

    iget v6, v0, Lru/yandex/bb;->h:F

    move-object/from16 v40, v0

    neg-float v0, v3

    mul-float v0, v0, v5

    mul-float v35, v30, v5

    sget-object v5, Lru/yandex/bd;->a:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v5, Lru/yandex/bd;->c:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    cmpl-float v5, v13, v2

    if-lez v5, :cond_14

    sub-float v2, v13, v2

    cmpl-float v5, v4, v2

    if-ltz v5, :cond_13

    mul-float v5, v30, v2

    add-float v36, v11, v5

    mul-float v2, v2, v3

    add-float v39, v7, v2

    mul-float v6, v30, v9

    sub-float v41, v36, v6

    mul-float v6, v3, v9

    sub-float v42, v39, v6

    const v6, 0x3eb33333    # 0.35f

    mul-float v5, v5, v6

    add-float v5, v36, v5

    mul-float v2, v2, v6

    add-float v2, v39, v2

    invoke-virtual {v10, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v5, v41, v0

    add-float v6, v42, v35

    sget-object v43, Lru/yandex/bd;->a:Landroid/graphics/Paint;

    move-object/from16 v2, p2

    move/from16 v44, v14

    move/from16 v14, v34

    move/from16 v34, v3

    move/from16 v3, v36

    move/from16 v45, v4

    move/from16 v4, v39

    move/from16 v50, v32

    move/from16 v32, v15

    move/from16 v15, v50

    move/from16 v46, v7

    move-object/from16 v7, v43

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v5, v41, v0

    sub-float v6, v42, v35

    sget-object v7, Lru/yandex/bd;->a:Landroid/graphics/Paint;

    move-object/from16 v2, p2

    move/from16 v3, v36

    move/from16 v4, v39

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_d

    :cond_13
    move/from16 v45, v4

    move/from16 v46, v7

    move/from16 v44, v14

    move/from16 v14, v34

    move/from16 v34, v3

    move/from16 v50, v32

    move/from16 v32, v15

    move/from16 v15, v50

    invoke-virtual {v10, v15, v14}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_d

    :cond_14
    move/from16 v45, v4

    move/from16 v46, v7

    move/from16 v44, v14

    move/from16 v14, v34

    move/from16 v34, v3

    move/from16 v50, v32

    move/from16 v32, v15

    move/from16 v15, v50

    :goto_d
    cmpg-float v2, v45, v13

    if-gtz v2, :cond_15

    sub-float v13, v13, v45

    goto/16 :goto_10

    :cond_15
    sub-float v4, v45, v13

    mul-float v2, v30, v13

    add-float/2addr v11, v2

    mul-float v3, v34, v13

    add-float v13, v46, v3

    div-float v2, v4, v31

    float-to-int v2, v2

    int-to-float v3, v2

    mul-float v3, v3, v31

    sub-float v36, v4, v3

    sub-float v39, v31, v36

    cmpl-float v3, v36, v1

    if-ltz v3, :cond_16

    add-int/lit8 v2, v2, 0x1

    :cond_16
    move v7, v2

    const/4 v6, 0x0

    const/16 v41, 0x0

    :goto_e
    if-ge v6, v7, :cond_17

    add-float v2, v41, v1

    mul-float v3, v30, v2

    add-float v42, v11, v3

    mul-float v3, v34, v2

    add-float v43, v13, v3

    mul-float v2, v30, v9

    sub-float v45, v42, v2

    mul-float v3, v34, v9

    sub-float v46, v43, v3

    add-float v5, v45, v0

    add-float v47, v46, v35

    sget-object v48, Lru/yandex/bd;->a:Landroid/graphics/Paint;

    move-object/from16 v2, p2

    move/from16 v3, v42

    move/from16 v4, v43

    move/from16 v49, v6

    move/from16 v6, v47

    move/from16 v47, v9

    move v9, v7

    move-object/from16 v7, v48

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v5, v45, v0

    sub-float v6, v46, v35

    sget-object v7, Lru/yandex/bd;->a:Landroid/graphics/Paint;

    move-object/from16 v2, p2

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    mul-float v2, v30, v41

    add-float v3, v11, v2

    mul-float v2, v34, v41

    add-float v4, v13, v2

    sget-object v7, Lru/yandex/bd;->a:Landroid/graphics/Paint;

    move-object/from16 v2, p2

    move/from16 v5, v42

    move/from16 v6, v43

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v41, v41, v31

    add-int/lit8 v6, v49, 0x1

    move v7, v9

    move/from16 v9, v47

    goto :goto_e

    :cond_17
    move v9, v7

    sget-object v0, Lru/yandex/bd;->c:Landroid/graphics/Paint;

    invoke-virtual {v8, v10, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v10}, Landroid/graphics/Path;->rewind()V

    cmpg-float v0, v36, v1

    if-gez v0, :cond_18

    int-to-float v0, v9

    mul-float v31, v31, v0

    mul-float v30, v30, v31

    add-float v11, v11, v30

    mul-float v3, v34, v31

    add-float/2addr v13, v3

    invoke-virtual {v10, v11, v13}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v10, v15, v14}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_18
    move/from16 v13, v39

    goto :goto_10

    :cond_19
    :goto_f
    move-object/from16 v40, v0

    move/from16 v28, v1

    move/from16 v33, v9

    move/from16 v44, v14

    move/from16 v32, v15

    :goto_10
    move/from16 v3, v32

    move/from16 v2, v44

    :goto_11
    add-int/lit8 v12, v12, 0x2

    move/from16 v11, v21

    move/from16 v1, v28

    move-object/from16 v10, v29

    move/from16 v9, v33

    move-object/from16 v0, v40

    goto/16 :goto_9

    :cond_1a
    sget-object v0, Lru/yandex/bd;->e:Landroid/graphics/Path;

    sget-object v1, Lru/yandex/bd;->c:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget-object v0, Lru/yandex/bd;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_12

    :cond_1b
    const/16 v18, 0x0

    :goto_12
    const/4 v2, 0x1

    goto :goto_13

    :cond_1c
    move/from16 v21, v2

    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v24, v7

    :cond_1d
    move-object/from16 v27, v10

    move/from16 v19, v11

    move/from16 v25, v12

    move/from16 v26, v13

    move/from16 v38, v14

    move/from16 v37, v15

    const/16 v18, 0x0

    move/from16 v2, v21

    :goto_13
    add-int/lit8 v5, v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v11, v19

    move/from16 v6, v23

    move-object/from16 v7, v24

    move/from16 v12, v25

    move/from16 v13, v26

    move-object/from16 v10, v27

    move/from16 v15, v37

    move/from16 v14, v38

    goto/16 :goto_1

    :catchall_1
    const/16 v18, 0x0

    :catchall_2
    move-object/from16 v0, p0

    goto :goto_15

    :cond_1e
    move/from16 v21, v2

    move-object/from16 v27, v10

    :try_start_c
    invoke-virtual {v1, v0}, Lru/yandex/yandexmapkit/map/Tile;->findRenderEntry(Lru/yandex/yandexmapkit/map/TileRenderListener;)Lru/yandex/yandexmapkit/map/TileRenderEntry;

    move-result-object v1

    check-cast v1, Lru/yandex/bk;

    move-object/from16 v2, v27

    iget v3, v2, Lru/yandex/bf;->b:I

    invoke-virtual {v1, v3}, Lru/yandex/bk;->setVersion(I)V

    iget-byte v2, v2, Lru/yandex/bf;->d:B

    iput v2, v1, Lru/yandex/bk;->a:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move/from16 v9, v21

    goto :goto_16

    :catchall_4
    :cond_1f
    :goto_14
    const/16 v18, 0x0

    :goto_15
    const/4 v9, 0x0

    :goto_16
    return v9
.end method


# virtual methods
.method public createEntry(Lru/yandex/yandexmapkit/map/Tile;)Lru/yandex/yandexmapkit/map/TileRenderEntry;
    .locals 0

    new-instance p1, Lru/yandex/bk;

    invoke-direct {p1, p0}, Lru/yandex/bk;-><init>(Lru/yandex/yandexmapkit/map/TileRenderListener;)V

    return-object p1
.end method

.method public getPriority()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lru/yandex/bd;->f:Lru/yandex/be;

    invoke-virtual {v0}, Lru/yandex/be;->isVisible()Z

    move-result v0

    return v0
.end method

.method public needsUpdate(Lru/yandex/yandexmapkit/map/Tile;)Z
    .locals 5

    iget-object v0, p0, Lru/yandex/bd;->f:Lru/yandex/be;

    invoke-virtual {p1, p0}, Lru/yandex/yandexmapkit/map/Tile;->findRenderEntry(Lru/yandex/yandexmapkit/map/TileRenderListener;)Lru/yandex/yandexmapkit/map/TileRenderEntry;

    move-result-object v1

    check-cast v1, Lru/yandex/bk;

    invoke-virtual {v0}, Lru/yandex/be;->isVisible()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v0, p1}, Lru/yandex/be;->a(Lru/yandex/yandexmapkit/map/Tile;)Lru/yandex/bf;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lru/yandex/bk;->getVersion()I

    move-result v2

    iget v4, v0, Lru/yandex/bf;->b:I

    if-lt v2, v4, :cond_1

    iget v1, v1, Lru/yandex/bk;->a:I

    iget v2, p1, Lru/yandex/yandexmapkit/map/Tile;->zoom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-byte v0, v0, Lru/yandex/bf;->d:B

    iget p1, p1, Lru/yandex/yandexmapkit/map/Tile;->zoom:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr v1, p1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v3
.end method

.method public renderTile(Lru/yandex/yandexmapkit/map/Tile;Landroid/graphics/Canvas;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lru/yandex/bd;->a(Lru/yandex/yandexmapkit/map/Tile;Landroid/graphics/Canvas;)Z

    move-result p1

    return p1
.end method
