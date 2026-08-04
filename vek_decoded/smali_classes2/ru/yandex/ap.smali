.class public Lru/yandex/ap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static m:[F


# instance fields
.field private volatile a:F

.field private b:I

.field private c:I

.field private d:F

.field private e:Lru/yandex/yandexmapkit/utils/Point;

.field private f:Z

.field private g:Z

.field private h:Lru/yandex/yandexmapkit/MapController;

.field private volatile i:Z

.field private j:Ljava/lang/Thread;

.field private k:J

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lru/yandex/ap;->m:[F

    return-void
.end method

.method public constructor <init>(Lru/yandex/yandexmapkit/MapController;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lru/yandex/yandexmapkit/utils/Point;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lru/yandex/yandexmapkit/utils/Point;-><init>(JJ)V

    iput-object v0, p0, Lru/yandex/ap;->e:Lru/yandex/yandexmapkit/utils/Point;

    iput-object p1, p0, Lru/yandex/ap;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p0}, Lru/yandex/ap;->g()V

    return-void
.end method

.method private declared-synchronized a(FFF)Landroid/graphics/PointF;
    .locals 8

    monitor-enter p0

    float-to-int v0, p3

    if-eqz v0, :cond_0

    float-to-double v0, p3

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    float-to-double v2, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    float-to-double p1, p2

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, p1

    sub-double/2addr v4, v6

    double-to-float p3, v4

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    add-double/2addr v2, p1

    double-to-float p1, v2

    :try_start_4
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, p3, p1}, Landroid/graphics/PointF;-><init>(FF)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_0
    :try_start_5
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static a(FFFFF)Landroid/graphics/PointF;
    .locals 16

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    float-to-int v3, v2

    if-eqz v3, :cond_0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    float-to-double v4, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    float-to-double v0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v0

    sub-double/2addr v6, v8

    move/from16 v8, p2

    float-to-double v8, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v12

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v8

    sub-double/2addr v6, v10

    move/from16 v10, p3

    float-to-double v10, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v10

    add-double/2addr v6, v14

    double-to-float v6, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v14

    add-double/2addr v4, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sub-double/2addr v0, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v0

    sub-double/2addr v4, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v0

    sub-double/2addr v4, v8

    double-to-float v0, v4

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v6, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1

    :cond_0
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method private declared-synchronized i()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lru/yandex/ap;->k:J

    const/4 v0, 0x0

    iput v0, p0, Lru/yandex/ap;->l:I

    iget v0, p0, Lru/yandex/ap;->c:I

    int-to-float v0, v0

    iget v1, p0, Lru/yandex/ap;->a:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0xb4

    if-le v1, v2, :cond_1

    if-lez v0, :cond_0

    add-int/lit16 v0, v0, -0x168

    goto :goto_0

    :cond_0
    add-int/lit16 v0, v0, 0x168

    :cond_1
    :goto_0
    int-to-float v0, v0

    const/high16 v1, 0x44160000    # 600.0f

    div-float/2addr v0, v1

    iput v0, p0, Lru/yandex/ap;->d:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lru/yandex/ap;->d:F

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    sub-float/2addr v0, v2

    goto :goto_1

    :cond_2
    add-float/2addr v0, v2

    :goto_1
    iput v0, p0, Lru/yandex/ap;->d:F

    :cond_3
    iget-object v0, p0, Lru/yandex/ap;->j:Ljava/lang/Thread;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ymm-map-rotator"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lru/yandex/ap;->j:Ljava/lang/Thread;

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lru/yandex/ap;->j:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized a(FF)Landroid/graphics/PointF;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lru/yandex/ap;->b(FF)Landroid/graphics/PointF;

    move-result-object p1

    iget-object p2, p0, Lru/yandex/ap;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/MapController;->getMapModel()Lru/yandex/yandexmapkit/MapModel;

    move-result-object p2

    invoke-virtual {p0}, Lru/yandex/ap;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/MapModel;->getPerspective()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lru/yandex/ap;->m:[F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    sget-object v0, Lru/yandex/ap;->m:[F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/MapModel;->getMatrixPerspBack()Landroid/graphics/Matrix;

    move-result-object p2

    sget-object v0, Lru/yandex/ap;->m:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    sget-object p2, Lru/yandex/ap;->m:[F

    aget p2, p2, v2

    iput p2, p1, Landroid/graphics/PointF;->x:F

    sget-object p2, Lru/yandex/ap;->m:[F

    aget p2, p2, v3

    iput p2, p1, Landroid/graphics/PointF;->y:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(FFFF)Landroid/graphics/PointF;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lru/yandex/ap;->b:I

    int-to-float v0, v0

    invoke-static {p1, p2, p3, p4, v0}, Lru/yandex/ap;->a(FFFFF)Landroid/graphics/PointF;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lru/yandex/ap;->c:I

    iget-boolean p1, p0, Lru/yandex/ap;->g:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lru/yandex/ap;->f:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lru/yandex/ap;->i()V

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lru/yandex/yandexmapkit/utils/Point;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lru/yandex/ap;->e:Lru/yandex/yandexmapkit/utils/Point;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Lru/yandex/ap;->f:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lru/yandex/ap;->f:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lru/yandex/ap;->c:I

    :cond_0
    invoke-direct {p0}, Lru/yandex/ap;->i()V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 2

    iget-boolean v0, p0, Lru/yandex/ap;->f:Z

    if-nez v0, :cond_0

    iget v0, p0, Lru/yandex/ap;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-boolean v0, p0, Lru/yandex/ap;->f:Z

    return v0
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lru/yandex/ap;->a:F

    float-to-int v0, v0

    int-to-float v0, v0

    return v0
.end method

.method public declared-synchronized b(FF)Landroid/graphics/PointF;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lru/yandex/ap;->e()Lru/yandex/yandexmapkit/utils/ScreenPoint;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getX()F

    move-result v1

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getY()F

    move-result v0

    iget v2, p0, Lru/yandex/ap;->b:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {p1, p2, v1, v0, v2}, Lru/yandex/ap;->a(FFFFF)Landroid/graphics/PointF;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(F)V
    .locals 0

    iput p1, p0, Lru/yandex/ap;->a:F

    return-void
.end method

.method public declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lru/yandex/ap;->g:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lru/yandex/ap;->g:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lru/yandex/ap;->f:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lru/yandex/ap;->a:F

    iget v0, p0, Lru/yandex/ap;->c:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lru/yandex/ap;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lru/yandex/ap;->b:I

    return v0
.end method

.method public declared-synchronized c(FF)Landroid/graphics/PointF;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/yandex/ap;->e:Lru/yandex/yandexmapkit/utils/Point;

    iget-wide v0, v0, Lru/yandex/yandexmapkit/utils/Point;->x:J

    long-to-float v0, v0

    iget-object v1, p0, Lru/yandex/ap;->e:Lru/yandex/yandexmapkit/utils/Point;

    iget-wide v1, v1, Lru/yandex/yandexmapkit/utils/Point;->y:J

    long-to-float v1, v1

    iget v2, p0, Lru/yandex/ap;->b:I

    int-to-float v2, v2

    invoke-static {p1, p2, v0, v1, v2}, Lru/yandex/ap;->a(FFFFF)Landroid/graphics/PointF;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(FF)Landroid/graphics/PointF;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/yandex/ap;->e:Lru/yandex/yandexmapkit/utils/Point;

    iget-wide v0, v0, Lru/yandex/yandexmapkit/utils/Point;->x:J

    long-to-float v0, v0

    iget-object v1, p0, Lru/yandex/ap;->e:Lru/yandex/yandexmapkit/utils/Point;

    iget-wide v1, v1, Lru/yandex/yandexmapkit/utils/Point;->y:J

    long-to-float v1, v1

    iget v2, p0, Lru/yandex/ap;->b:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {p1, p2, v0, v1, v2}, Lru/yandex/ap;->a(FFFFF)Landroid/graphics/PointF;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lru/yandex/ap;->a:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lru/yandex/ap;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(FF)Landroid/graphics/PointF;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lru/yandex/ap;->b:I

    int-to-float v0, v0

    invoke-direct {p0, p1, p2, v0}, Lru/yandex/ap;->a(FFF)Landroid/graphics/PointF;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public e()Lru/yandex/yandexmapkit/utils/ScreenPoint;
    .locals 3

    iget-object v0, p0, Lru/yandex/ap;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getTiledSurface()Lru/yandex/yandexmapkit/map/TiledSurface;

    move-result-object v0

    iget-object v1, p0, Lru/yandex/ap;->e:Lru/yandex/yandexmapkit/utils/Point;

    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/map/TiledSurface;->a(Lru/yandex/yandexmapkit/utils/Point;)Landroid/graphics/PointF;

    move-result-object v0

    new-instance v1, Lru/yandex/yandexmapkit/utils/ScreenPoint;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v0}, Lru/yandex/yandexmapkit/utils/ScreenPoint;-><init>(FF)V

    return-object v1
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/ap;->g:Z

    return v0
.end method

.method public declared-synchronized g()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lru/yandex/ap;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Ljava/lang/Thread;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lru/yandex/ap;->i:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lru/yandex/ap;->j:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized run()V
    .locals 4

    monitor-enter p0

    :catch_0
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lru/yandex/ap;->i:Z

    if-eqz v0, :cond_5

    :catch_1
    :goto_1
    iget-boolean v0, p0, Lru/yandex/ap;->i:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lru/yandex/ap;->d:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    iget v0, p0, Lru/yandex/ap;->a:F

    float-to-int v0, v0

    iget v1, p0, Lru/yandex/ap;->c:I

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lru/yandex/ap;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getMapModel()Lru/yandex/yandexmapkit/MapModel;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapModel;->isBlockRotate()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapModel;->isNeedChangePivot()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lru/yandex/ap;->f:Z

    if-nez v0, :cond_4

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lru/yandex/ap;->k:J

    sub-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lru/yandex/ap;->k:J

    iget v2, p0, Lru/yandex/ap;->l:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v3, v2

    iput v3, p0, Lru/yandex/ap;->l:I

    int-to-float v2, v3

    const/high16 v3, 0x44160000    # 600.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget v0, p0, Lru/yandex/ap;->c:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lru/yandex/ap;->b(F)V

    iget-object v0, p0, Lru/yandex/ap;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    goto :goto_2

    :cond_3
    iget v2, p0, Lru/yandex/ap;->a:F

    iget v3, p0, Lru/yandex/ap;->d:F

    long-to-float v0, v0

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lru/yandex/ap;->b(F)V

    iget-object v0, p0, Lru/yandex/ap;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x28

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    :goto_2
    :try_start_2
    iget-boolean v0, p0, Lru/yandex/ap;->i:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lru/yandex/ap;->j:Ljava/lang/Thread;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
