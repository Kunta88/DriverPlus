.class public final Lru/yandex/yandexmapkit/MapModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DEFAULT_COORD_X:I = 0x4d602b4b

.field public static final DEFAULT_COORD_Y:I = 0x28208cd8

.field public static final DEFAULT_ZOOM:I = 0xc

.field public static final DELAY_FAST:I = 0x190

.field public static final DELAY_SLOW:I = 0x2bc

.field public static final DELAY_VERY_FAST:I = 0xc8

.field private static final MAP_MAX_POS:I = 0x7fffffff

.field private static final MAX_SCROLL_SPEED:F = 3.0f

.field public static final MAX_ZOOM:I = 0x11

.field public static final MIN_ZOOM:I = 0x1

.field private static final SCROLL_DAMP_FACTOR:F = 0.79f

.field private static final SCROLL_SLEEP_TIME:I = 0x28

.field private static final ZOOM_SLEEP_TIME:I = 0x2d

.field private static final ZOOM_TIME:I = 0x12c


# instance fields
.field public final POW2:[J

.field private actionYMaThread:Ljava/lang/Thread;

.field private ax:F

.field private ay:F

.field private changed:Z

.field delay_time:J

.field private destroyed:Z

.field private dissolving:Z

.field private gpsZoom:Z

.field private volatile isBlockRotate:Z

.field private volatile isNeedChangePivot:Z

.field private isZoomWithCenterPoint:Z

.field private lastScrollTime:J

.field private final mListYMapEvent:Ljava/util/LinkedList;

.field private mMapController:Lru/yandex/yandexmapkit/MapController;

.field private mNightMode:Z

.field private mNightType:Lru/yandex/aq;

.field private mYMapListeners:Ljava/util/List;

.field private mZoomWithCenterPoint:Lru/yandex/yandexmapkit/utils/Point;

.field private mZoomWithCenterScreenPoint:Lru/yandex/yandexmapkit/utils/ScreenPoint;

.field private manualZoomXPix:F

.field private manualZoomYPix:F

.field private matrixPersp:Landroid/graphics/Matrix;

.field private matrixPerspBack:Landroid/graphics/Matrix;

.field private moved:Z

.field private nextZoom:I

.field private perspective:Z

.field private scrolling:Z

.field private softMoveDX:I

.field private softMoveDY:I

.field private softMoveEndX:I

.field private softMoveEndY:I

.field private softMoveEndZoom:F

.field private softMoveStartX:I

.field private softMoveStartY:I

.field private softMoveStartZoom:F

.field private softMoveT:I

.field private softMoveTStart:J

.field private softMoveZoom:F

.field private softMoving:Z

.field private synObjectAction:Ljava/lang/Object;

.field private thread:Ljava/lang/Thread;

.field public x:I

.field private xSpeed:F

.field private xStart:I

.field public y:I

.field private ySpeed:F

.field private yStart:I

.field private zoom:I

.field private zoomCurrent:F

.field private zoomStart:F

.field private zoomStartTime:J

.field private zooming:Z


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/MapController;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v0, v0, [J

    iput-object v0, p0, Lru/yandex/yandexmapkit/MapModel;->POW2:[J

    sget-object v0, Lru/yandex/aq;->b:Lru/yandex/aq;

    iput-object v0, p0, Lru/yandex/yandexmapkit/MapModel;->mNightType:Lru/yandex/aq;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->mNightMode:Z

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->perspective:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lru/yandex/yandexmapkit/MapModel;->mYMapListeners:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lru/yandex/yandexmapkit/MapModel;->actionYMaThread:Ljava/lang/Thread;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lru/yandex/yandexmapkit/MapModel;->mListYMapEvent:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lru/yandex/yandexmapkit/MapModel;->synObjectAction:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lru/yandex/yandexmapkit/MapModel;->delay_time:J

    iput-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->mMapController:Lru/yandex/yandexmapkit/MapController;

    const p1, 0x4d602b4b    # 2.3505835E8f

    iput p1, p0, Lru/yandex/yandexmapkit/MapModel;->x:I

    const p1, 0x28208cd8

    iput p1, p0, Lru/yandex/yandexmapkit/MapModel;->y:I

    const/16 p1, 0xc

    invoke-direct {p0, p1}, Lru/yandex/yandexmapkit/MapModel;->setZoom(I)V

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapModel;->getZoom()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lru/yandex/yandexmapkit/MapModel;->zoomCurrent:F

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->changed:Z

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->destroyed:Z

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->scrolling:Z

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->dissolving:Z

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->softMoving:Z

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->moved:Z

    :goto_0
    const/16 p1, 0x17

    if-gt v0, p1, :cond_0

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->POW2:[J

    const-wide/16 v1, 0x1

    shl-long/2addr v1, v0

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lru/yandex/yandexmapkit/MapModel;)Z
    .locals 0

    iget-boolean p0, p0, Lru/yandex/yandexmapkit/MapModel;->destroyed:Z

    return p0
.end method

.method public static synthetic access$100(Lru/yandex/yandexmapkit/MapModel;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lru/yandex/yandexmapkit/MapModel;->synObjectAction:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$200(Lru/yandex/yandexmapkit/MapModel;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lru/yandex/yandexmapkit/MapModel;->mListYMapEvent:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static synthetic access$300(Lru/yandex/yandexmapkit/MapModel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lru/yandex/yandexmapkit/MapModel;->mYMapListeners:Ljava/util/List;

    return-object p0
.end method

.method private declared-synchronized moveMapInPixels(FFZ)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0, p3}, Lru/yandex/yandexmapkit/MapModel;->moveMapInPixels(FFZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized moveMapInPixels(FFZZ)V
    .locals 6

    monitor-enter p0

    const/4 p3, 0x1

    :try_start_0
    iput-boolean p3, p0, Lru/yandex/yandexmapkit/MapModel;->moved:Z

    iget-object p3, p0, Lru/yandex/yandexmapkit/MapModel;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p3}, Lru/yandex/yandexmapkit/MapController;->getTiledSurface()Lru/yandex/yandexmapkit/map/TiledSurface;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lru/yandex/yandexmapkit/map/TiledSurface;->a(FFLru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/Point;

    move-result-object p1

    iget-wide v1, p1, Lru/yandex/yandexmapkit/utils/Point;->x:J

    iget-wide v3, p1, Lru/yandex/yandexmapkit/utils/Point;->y:J

    move-object v0, p0

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lru/yandex/yandexmapkit/MapModel;->moveMapInPixels23(JJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized moveMapInPixels23(JJ)V
    .locals 6

    monitor-enter p0

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lru/yandex/yandexmapkit/MapModel;->moveMapInPixels23(JJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized moveMapInPixels23(JJZ)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lru/yandex/yandexmapkit/MapModel;->x:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    const/4 p1, 0x0

    const p2, 0x7fffffff

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x7fffffff

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    iput p2, p0, Lru/yandex/yandexmapkit/MapModel;->x:I

    goto :goto_0

    :cond_0
    cmp-long v6, v0, v2

    if-gez v6, :cond_1

    iput p1, p0, Lru/yandex/yandexmapkit/MapModel;->x:I

    goto :goto_0

    :cond_1
    long-to-int v1, v0

    iput v1, p0, Lru/yandex/yandexmapkit/MapModel;->x:I

    :goto_0
    iget v0, p0, Lru/yandex/yandexmapkit/MapModel;->y:I

    int-to-long v0, v0

    add-long/2addr v0, p3

    cmp-long p3, v0, v4

    if-lez p3, :cond_2

    iput p2, p0, Lru/yandex/yandexmapkit/MapModel;->y:I

    goto :goto_1

    :cond_2
    cmp-long p2, v0, v2

    if-gez p2, :cond_3

    iput p1, p0, Lru/yandex/yandexmapkit/MapModel;->y:I

    goto :goto_1

    :cond_3
    long-to-int p1, v0

    iput p1, p0, Lru/yandex/yandexmapkit/MapModel;->y:I

    :goto_1
    if-eqz p5, :cond_4

    invoke-direct {p0}, Lru/yandex/yandexmapkit/MapModel;->updatePosition()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private moveMapInZooming(I)V
    .locals 13

    iget v0, p0, Lru/yandex/yandexmapkit/MapModel;->zoomCurrent:F

    const/high16 v1, 0x41b80000    # 23.0f

    sub-float/2addr v1, v0

    float-to-double v0, v1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapModel;->mZoomWithCenterPoint:Lru/yandex/yandexmapkit/utils/Point;

    iget-wide v2, v1, Lru/yandex/yandexmapkit/utils/Point;->x:J

    iget v4, p0, Lru/yandex/yandexmapkit/MapModel;->x:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iget-wide v4, v1, Lru/yandex/yandexmapkit/utils/Point;->y:J

    iget v1, p0, Lru/yandex/yandexmapkit/MapModel;->y:I

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iget v6, p0, Lru/yandex/yandexmapkit/MapModel;->x:I

    int-to-long v7, v6

    int-to-long v9, p1

    div-long v11, v2, v9

    add-long/2addr v7, v11

    int-to-long v11, v1

    div-long v9, v4, v9

    add-long/2addr v11, v9

    iget-boolean p1, p0, Lru/yandex/yandexmapkit/MapModel;->isZoomWithCenterPoint:Z

    if-eqz p1, :cond_0

    int-to-float p1, v6

    iget v6, p0, Lru/yandex/yandexmapkit/MapModel;->ax:F

    mul-float v6, v6, v0

    add-float/2addr p1, v6

    long-to-float v2, v2

    add-float/2addr p1, v2

    float-to-long v7, p1

    int-to-float p1, v1

    iget v1, p0, Lru/yandex/yandexmapkit/MapModel;->ay:F

    mul-float v1, v1, v0

    add-float/2addr p1, v1

    long-to-float v0, v4

    add-float/2addr p1, v0

    float-to-long v11, p1

    :cond_0
    const/4 p1, 0x0

    const v0, 0x7fffffff

    const-wide/16 v1, 0x0

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v7, v3

    if-lez v5, :cond_1

    iput v0, p0, Lru/yandex/yandexmapkit/MapModel;->x:I

    goto :goto_0

    :cond_1
    cmp-long v5, v7, v1

    if-gez v5, :cond_2

    iput p1, p0, Lru/yandex/yandexmapkit/MapModel;->x:I

    goto :goto_0

    :cond_2
    long-to-int v5, v7

    iput v5, p0, Lru/yandex/yandexmapkit/MapModel;->x:I

    :goto_0
    cmp-long v5, v11, v3

    if-lez v5, :cond_3

    iput v0, p0, Lru/yandex/yandexmapkit/MapModel;->y:I

    return-void

    :cond_3
    cmp-long v0, v11, v1

    if-gez v0, :cond_4

    iput p1, p0, Lru/yandex/yandexmapkit/MapModel;->y:I

    return-void

    :cond_4
    long-to-int p1, v11

    iput p1, p0, Lru/yandex/yandexmapkit/MapModel;->y:I

    return-void
.end method

.method private setNightMap(Z)V
    .locals 1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->mNightMode:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapModel;->mNightMode:Z

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->getTiledSurface()Lru/yandex/yandexmapkit/map/TiledSurface;

    move-result-object p1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/TiledSurface;->j()V

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->getTiledSurface()Lru/yandex/yandexmapkit/map/TiledSurface;

    move-result-object p1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/TiledSurface;->c()V

    :cond_0
    return-void
.end method

.method private setZoom(I)V
    .locals 1

    if-lez p1, :cond_0

    const/16 v0, 0x11

    if-gt p1, v0, :cond_0

    iput p1, p0, Lru/yandex/yandexmapkit/MapModel;->zoom:I

    :cond_0
    iget-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->checkZoomButtonsVisibility()V

    return-void
.end method

.method private declared-synchronized startToDir(FF)V
    .locals 5

    monitor-enter p0

    const/high16 v0, 0x40400000    # 3.0f

    div-float v1, p1, v0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1, v0}, Lru/yandex/yandexmapkit/utils/Utils;->a(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    div-float/2addr p1, v0

    div-float/2addr p2, v0

    :cond_0
    float-to-double v0, p1

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_2

    const-wide v2, -0x407b851eb851eb85L    # -0.01

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lru/yandex/yandexmapkit/MapModel;->ySpeed:F

    add-float/2addr p1, p2

    iput p1, p0, Lru/yandex/yandexmapkit/MapModel;->ySpeed:F

    goto :goto_1

    :cond_2
    :goto_0
    iget p2, p0, Lru/yandex/yandexmapkit/MapModel;->xSpeed:F

    add-float/2addr p2, p1

    iput p2, p0, Lru/yandex/yandexmapkit/MapModel;->xSpeed:F

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lru/yandex/yandexmapkit/MapModel;->lastScrollTime:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapModel;->scrolling:Z

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->thread:Ljava/lang/Thread;

    if-nez p1, :cond_4

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->thread:Ljava/lang/Thread;

    const-string p2, "ymm-map-mover"

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->thread:Ljava/lang/Thread;

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private declared-synchronized startZooming(FF)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapModel;->stop()V

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->zooming:Z

    if-nez v0, :cond_0

    iget v0, p0, Lru/yandex/yandexmapkit/MapModel;->zoomCurrent:F

    iput v0, p0, Lru/yandex/yandexmapkit/MapModel;->zoomStart:F

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapModel;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getTiledSurface()Lru/yandex/yandexmapkit/map/TiledSurface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lru/yandex/yandexmapkit/map/TiledSurface;->b(FFLru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/Point;

    move-result-object p1

    iput-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->mZoomWithCenterPoint:Lru/yandex/yandexmapkit/utils/Point;

    const-wide/high16 p1, 0x4000000000000000L    # 2.0

    const/high16 v0, 0x41b80000    # 23.0f

    iget v1, p0, Lru/yandex/yandexmapkit/MapModel;->zoomStart:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    iget v0, p0, Lru/yandex/yandexmapkit/MapModel;->x:I

    int-to-long v0, v0

    iget-object v2, p0, Lru/yandex/yandexmapkit/MapModel;->mZoomWithCenterPoint:Lru/yandex/yandexmapkit/utils/Point;

    iget-wide v2, v2, Lru/yandex/yandexmapkit/utils/Point;->x:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p1

    double-to-float v0, v0

    :try_start_1
    iput v0, p0, Lru/yandex/yandexmapkit/MapModel;->ax:F

    iget v0, p0, Lru/yandex/yandexmapkit/MapModel;->y:I

    int-to-long v0, v0

    iget-object v2, p0, Lru/yandex/yandexmapkit/MapModel;->mZoomWithCenterPoint:Lru/yandex/yandexmapkit/utils/Point;

    iget-wide v2, v2, Lru/yandex/yandexmapkit/utils/Point;->y:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p1

    double-to-float p1, v0

    :try_start_2
    iput p1, p0, Lru/yandex/yandexmapkit/MapModel;->ay:F

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lru/yandex/yandexmapkit/MapModel;->zoomStartTime:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapModel;->zooming:Z

    new-instance p1, Lru/yandex/yandexmapkit/map/MapEvent;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lru/yandex/yandexmapkit/map/MapEvent;-><init>(I)V

    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/MapModel;->actionYMapListener(Lru/yandex/yandexmapkit/map/MapEvent;)V

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->thread:Ljava/lang/Thread;

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->thread:Ljava/lang/Thread;

    const-string p2, "ymm-map-mover"

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->thread:Ljava/lang/Thread;

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private updatePosition()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->changed:Z

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapModel;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    return-void
.end method


# virtual methods
.method actionYMapListener(Lru/yandex/yandexmapkit/map/MapEvent;)V
    .locals 2

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapModel;->synObjectAction:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lru/yandex/yandexmapkit/MapModel;->synObjectAction:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapModel;->mListYMapEvent:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->actionYMaThread:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->actionYMaThread:Ljava/lang/Thread;

    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lru/yandex/aa;

    invoke-direct {v1, p0}, Lru/yandex/aa;-><init>(Lru/yandex/yandexmapkit/MapModel;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->actionYMaThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method addMapListener(Lru/yandex/yandexmapkit/map/OnMapListener;)V
    .locals 2

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapModel;->mYMapListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lru/yandex/yandexmapkit/MapModel;->mYMapListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method cancelManualZoom()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->zooming:Z

    return-void
.end method

.method declared-synchronized destroy()Ljava/lang/Thread;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->destroyed:Z

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapModel;->synObjectAction:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lru/yandex/yandexmapkit/MapModel;->synObjectAction:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapModel;->thread:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method endManualZoom()V
    .locals 3

    iget v0, p0, Lru/yandex/yandexmapkit/MapModel;->zoomCurrent:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lru/yandex/yandexmapkit/MapModel;->setZoom(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->zooming:Z

    invoke-direct {p0}, Lru/yandex/yandexmapkit/MapModel;->updatePosition()V

    new-instance v0, Lru/yandex/yandexmapkit/map/MapEvent;

    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lru/yandex/yandexmapkit/map/MapEvent;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/MapModel;->actionYMapListener(Lru/yandex/yandexmapkit/map/MapEvent;)V

    return-void
.end method

.method public getDeltaZoom()F
    .locals 2

    iget v0, p0, Lru/yandex/yandexmapkit/MapModel;->zoomCurrent:F

    iget v1, p0, Lru/yandex/yandexmapkit/MapModel;->zoomStart:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getMatrixPerspBack()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapModel;->matrixPerspBack:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getNextZoom()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/MapModel;->nextZoom:I

    return v0
.end method

.method getNightMode()Lru/yandex/aq;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapModel;->mNightType:Lru/yandex/aq;

    return-object v0
.end method

.method public getPerspective()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->perspective:Z

    return v0
.end method

.method public declared-synchronized getPosition()Lru/yandex/as;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lru/yandex/as;

    iget v1, p0, Lru/yandex/yandexmapkit/MapModel;->x:I

    iget v2, p0, Lru/yandex/yandexmapkit/MapModel;->y:I

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapModel;->getZoom()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lru/yandex/as;-><init>(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/MapModel;->x:I

    return v0
.end method

.method public getXStart()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/MapModel;->xStart:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/MapModel;->y:I

    return v0
.end method

.method public getYStart()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/MapModel;->yStart:I

    return v0
.end method

.method public getZoom()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/MapModel;->zoom:I

    return v0
.end method

.method public getZoomCurrent()F
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/MapModel;->zoomCurrent:F

    return v0
.end method

.method public isBlockRotate()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->isBlockRotate:Z

    return v0
.end method

.method public isChanged()Z
    .locals 2

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->changed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->dissolving:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v1, p0, Lru/yandex/yandexmapkit/MapModel;->changed:Z

    return v0
.end method

.method public isDissolving()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->dissolving:Z

    return v0
.end method

.method isHDMap()Z
    .locals 1

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->j()Z

    move-result v0

    return v0
.end method

.method public isMoved()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->moved:Z

    return v0
.end method

.method public isNeedChangePivot()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->isNeedChangePivot:Z

    return v0
.end method

.method isNightMap()Z
    .locals 5

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapModel;->mNightType:Lru/yandex/aq;

    sget-object v1, Lru/yandex/aq;->c:Lru/yandex/aq;

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lru/yandex/yandexmapkit/MapModel;->delay_time:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lru/yandex/yandexmapkit/MapModel;->delay_time:J

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapModel;->refreshNightAuto()Z

    move-result v0

    invoke-direct {p0, v0}, Lru/yandex/yandexmapkit/MapModel;->setNightMap(Z)V

    :cond_0
    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->mNightMode:Z

    return v0
.end method

.method public isRulerVisible()Z
    .locals 3

    sget-object v0, Lru/yandex/yandexmapkit/net/Downloader;->b:Lru/yandex/br;

    if-eqz v0, :cond_0

    sget-object v0, Lru/yandex/yandexmapkit/net/Downloader;->b:Lru/yandex/br;

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapModel;->getZoom()I

    move-result v1

    const-string v2, "scaleline"

    invoke-virtual {v0, v2, v1}, Lru/yandex/br;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapModel;->getZoom()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->scrolling:Z

    return v0
.end method

.method public isSoftMoving()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->softMoving:Z

    return v0
.end method

.method public isZooming()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->zooming:Z

    return v0
.end method

.method declared-synchronized moveMapInPixels(FF)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lru/yandex/yandexmapkit/MapModel;->moveMapInPixels(FFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public processManualZoom(FFF)V
    .locals 2

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->zooming:Z

    if-eqz v0, :cond_1

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float p3, v0

    const v0, 0x3f31719f

    div-float/2addr p3, v0

    iget v0, p0, Lru/yandex/yandexmapkit/MapModel;->zoomStart:F

    add-float/2addr v0, p3

    const/high16 p3, 0x41880000    # 17.0f

    cmpl-float p3, v0, p3

    if-gtz p3, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    cmpg-float p3, v0, p3

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    iput v0, p0, Lru/yandex/yandexmapkit/MapModel;->zoomCurrent:F

    iget p3, p0, Lru/yandex/yandexmapkit/MapModel;->manualZoomXPix:F

    sub-float/2addr p3, p1

    iget v0, p0, Lru/yandex/yandexmapkit/MapModel;->manualZoomYPix:F

    sub-float/2addr v0, p2

    iput p1, p0, Lru/yandex/yandexmapkit/MapModel;->manualZoomXPix:F

    iput p2, p0, Lru/yandex/yandexmapkit/MapModel;->manualZoomYPix:F

    const/4 p1, 0x1

    invoke-direct {p0, p3, v0, p1}, Lru/yandex/yandexmapkit/MapModel;->moveMapInPixels(FFZ)V

    new-instance p2, Lru/yandex/yandexmapkit/map/MapEvent;

    const/16 p3, 0x8

    invoke-direct {p2, p3, p1}, Lru/yandex/yandexmapkit/map/MapEvent;-><init>(IZ)V

    invoke-virtual {p0, p2}, Lru/yandex/yandexmapkit/MapModel;->actionYMapListener(Lru/yandex/yandexmapkit/map/MapEvent;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public refreshNightAuto()Z
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lru/yandex/yandexmapkit/MapModel;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/MapController;->getOverlayManager()Lru/yandex/yandexmapkit/OverlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/OverlayManager;->getMyLocation()Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->getMyLocationItem()Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    check-cast v2, Ljava/util/GregorianCalendar;

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v3, v4}, Lru/yandex/yandexmapkit/utils/Utils;->a(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getGeoPoint()Lru/yandex/yandexmapkit/utils/GeoPoint;

    move-result-object v1

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLat()D

    move-result-wide v12

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLon()D

    move-result-wide v14

    const/4 v1, 0x5

    invoke-virtual {v2, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    const/4 v10, 0x1

    add-int/2addr v4, v10

    invoke-virtual {v2, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    const v7, 0xea60

    div-int v11, v6, v7

    if-gt v4, v3, :cond_0

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, 0xc

    :cond_0
    div-int/lit8 v3, v5, 0x64

    rsub-int/lit8 v6, v3, 0x2

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v6, v3

    const-wide v7, 0x4076d40000000000L    # 365.25

    add-int/lit16 v5, v5, 0x126c

    move/from16 v17, v11

    int-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v7

    double-to-int v3, v10

    const-wide v7, 0x403e99a027525461L    # 30.6001

    const/4 v10, 0x1

    add-int/2addr v4, v10

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v7

    double-to-int v4, v4

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    add-int/2addr v3, v6

    int-to-double v3, v3

    const-wide v5, 0x4097d20000000000L    # 1524.5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v18, v3, v5

    const/4 v3, 0x1

    const-wide v20, 0x4056b54fdf3b645aL    # 90.833

    move-wide/from16 v4, v18

    move-wide v6, v12

    move-wide v8, v14

    move/from16 v1, v17

    const/16 v16, 0x1

    move-wide/from16 v10, v20

    invoke-static/range {v3 .. v11}, Lru/yandex/cs;->a(ZDDDD)D

    move-result-wide v3

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v7, v3, v5

    if-nez v7, :cond_1

    return v16

    :cond_1
    const-wide/high16 v5, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/16 v17, 0x0

    cmpl-double v7, v3, v5

    if-nez v7, :cond_2

    return v17

    :cond_2
    int-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double v20, v3, v10

    const-wide/16 v22, 0x0

    const-wide v24, 0x4096800000000000L    # 1440.0

    invoke-static/range {v20 .. v25}, Lru/yandex/cs;->a(DDD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v8, v3

    const/4 v3, 0x0

    const-wide v20, 0x4056b54fdf3b645aL    # 90.833

    move-wide/from16 v4, v18

    move-wide v6, v12

    move-wide v12, v8

    move-wide v8, v14

    move-wide v14, v10

    move-wide/from16 v10, v20

    invoke-static/range {v3 .. v11}, Lru/yandex/cs;->a(ZDDDD)D

    move-result-wide v3

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    add-double v5, v3, v14

    const-wide/16 v7, 0x0

    const-wide v9, 0x4096800000000000L    # 1440.0

    invoke-static/range {v5 .. v10}, Lru/yandex/cs;->a(DDD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    const/16 v1, 0xb

    invoke-virtual {v2, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    add-int/2addr v1, v5

    int-to-double v5, v1

    const/16 v1, 0xd

    invoke-virtual {v2, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v1

    cmpg-double v1, v5, v12

    if-ltz v1, :cond_4

    cmpl-double v1, v5, v3

    if-lez v1, :cond_3

    goto :goto_0

    :cond_3
    return v17

    :cond_4
    :goto_0
    return v16

    :cond_5
    iget-boolean v1, v0, Lru/yandex/yandexmapkit/MapModel;->mNightMode:Z

    return v1
.end method

.method removeMapListener(Lru/yandex/yandexmapkit/map/OnMapListener;)V
    .locals 2

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapModel;->mYMapListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lru/yandex/yandexmapkit/MapModel;->mYMapListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public declared-synchronized run()V
    .locals 17

    move-object/from16 v8, p0

    monitor-enter p0

    :catch_0
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, v8, Lru/yandex/yandexmapkit/MapModel;->destroyed:Z

    if-nez v0, :cond_11

    :cond_1
    :goto_1
    iget-boolean v0, v8, Lru/yandex/yandexmapkit/MapModel;->scrolling:Z

    const/4 v9, 0x2

    const-wide/16 v10, 0x28

    const/4 v12, 0x3

    const/4 v13, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, v8, Lru/yandex/yandexmapkit/MapModel;->destroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    :try_start_1
    invoke-virtual {v8, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_1
    :try_start_2
    iget-boolean v0, v8, Lru/yandex/yandexmapkit/MapModel;->scrolling:Z

    if-eqz v0, :cond_4

    new-instance v0, Lru/yandex/yandexmapkit/map/MapEvent;

    invoke-direct {v0, v9}, Lru/yandex/yandexmapkit/map/MapEvent;-><init>(I)V

    invoke-virtual {v8, v0}, Lru/yandex/yandexmapkit/MapModel;->actionYMapListener(Lru/yandex/yandexmapkit/map/MapEvent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, v8, Lru/yandex/yandexmapkit/MapModel;->lastScrollTime:J

    sub-long v2, v0, v2

    iput-wide v0, v8, Lru/yandex/yandexmapkit/MapModel;->lastScrollTime:J

    iget v0, v8, Lru/yandex/yandexmapkit/MapModel;->xSpeed:F

    const v1, 0x3f4a3d71    # 0.79f

    mul-float v0, v0, v1

    iput v0, v8, Lru/yandex/yandexmapkit/MapModel;->xSpeed:F

    iget v4, v8, Lru/yandex/yandexmapkit/MapModel;->ySpeed:F

    mul-float v4, v4, v1

    iput v4, v8, Lru/yandex/yandexmapkit/MapModel;->ySpeed:F

    long-to-float v1, v2

    mul-float v0, v0, v1

    mul-float v4, v4, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v5, v0, v1

    if-gtz v5, :cond_3

    const/high16 v5, -0x40800000    # -1.0f

    cmpg-float v6, v0, v5

    if-ltz v6, :cond_3

    cmpl-float v1, v4, v1

    if-gtz v1, :cond_3

    cmpg-float v1, v4, v5

    if-gez v1, :cond_2

    goto :goto_3

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    iput-boolean v13, v8, Lru/yandex/yandexmapkit/MapModel;->scrolling:Z

    new-instance v0, Lru/yandex/yandexmapkit/map/MapEvent;

    invoke-direct {v0, v12}, Lru/yandex/yandexmapkit/map/MapEvent;-><init>(I)V

    :goto_2
    invoke-virtual {v8, v0}, Lru/yandex/yandexmapkit/MapModel;->actionYMapListener(Lru/yandex/yandexmapkit/map/MapEvent;)V

    goto :goto_1

    :cond_3
    :goto_3
    invoke-virtual {v8, v0, v4}, Lru/yandex/yandexmapkit/MapModel;->moveMapInPixels(FF)V

    goto :goto_1

    :cond_4
    new-instance v0, Lru/yandex/yandexmapkit/map/MapEvent;

    invoke-direct {v0, v12}, Lru/yandex/yandexmapkit/map/MapEvent;-><init>(I)V

    goto :goto_2

    :cond_5
    :goto_4
    iget-boolean v0, v8, Lru/yandex/yandexmapkit/MapModel;->softMoving:Z

    if-eqz v0, :cond_9

    iget-boolean v0, v8, Lru/yandex/yandexmapkit/MapModel;->destroyed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_9

    :try_start_3
    invoke-virtual {v8, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_2
    :try_start_4
    iget-boolean v0, v8, Lru/yandex/yandexmapkit/MapModel;->softMoving:Z

    if-eqz v0, :cond_8

    new-instance v0, Lru/yandex/yandexmapkit/map/MapEvent;

    invoke-direct {v0, v9}, Lru/yandex/yandexmapkit/map/MapEvent;-><init>(I)V

    invoke-virtual {v8, v0}, Lru/yandex/yandexmapkit/MapModel;->actionYMapListener(Lru/yandex/yandexmapkit/map/MapEvent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, v8, Lru/yandex/yandexmapkit/MapModel;->softMoveTStart:J

    sub-long/2addr v0, v2

    iget v2, v8, Lru/yandex/yandexmapkit/MapModel;->softMoveDX:I

    int-to-long v2, v2

    mul-long v2, v2, v0

    iget v4, v8, Lru/yandex/yandexmapkit/MapModel;->softMoveStartX:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget v4, v8, Lru/yandex/yandexmapkit/MapModel;->softMoveDY:I

    int-to-long v4, v4

    mul-long v4, v4, v0

    iget v6, v8, Lru/yandex/yandexmapkit/MapModel;->softMoveStartY:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget v6, v8, Lru/yandex/yandexmapkit/MapModel;->softMoveZoom:F

    long-to-float v7, v0

    mul-float v6, v6, v7

    iget v7, v8, Lru/yandex/yandexmapkit/MapModel;->softMoveStartZoom:F

    add-float/2addr v6, v7

    iget-boolean v7, v8, Lru/yandex/yandexmapkit/MapModel;->softMoving:Z

    if-eqz v7, :cond_6

    iget v14, v8, Lru/yandex/yandexmapkit/MapModel;->softMoveT:I

    int-to-long v14, v14

    cmp-long v16, v0, v14

    if-gez v16, :cond_6

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lru/yandex/yandexmapkit/MapModel;->setPosition(JJFI)V

    goto :goto_4

    :cond_6
    if-eqz v7, :cond_7

    iget v0, v8, Lru/yandex/yandexmapkit/MapModel;->softMoveEndX:I

    int-to-long v2, v0

    iget v0, v8, Lru/yandex/yandexmapkit/MapModel;->softMoveEndY:I

    int-to-long v4, v0

    iget v6, v8, Lru/yandex/yandexmapkit/MapModel;->softMoveEndZoom:F

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lru/yandex/yandexmapkit/MapModel;->setPosition(JJFI)V

    :cond_7
    iput-boolean v13, v8, Lru/yandex/yandexmapkit/MapModel;->softMoving:Z

    new-instance v0, Lru/yandex/yandexmapkit/map/MapEvent;

    invoke-direct {v0, v12}, Lru/yandex/yandexmapkit/map/MapEvent;-><init>(I)V

    :goto_5
    invoke-virtual {v8, v0}, Lru/yandex/yandexmapkit/MapModel;->actionYMapListener(Lru/yandex/yandexmapkit/map/MapEvent;)V

    goto :goto_4

    :cond_8
    new-instance v0, Lru/yandex/yandexmapkit/map/MapEvent;

    invoke-direct {v0, v12}, Lru/yandex/yandexmapkit/map/MapEvent;-><init>(I)V

    goto :goto_5

    :cond_9
    :goto_6
    iget-boolean v0, v8, Lru/yandex/yandexmapkit/MapModel;->zooming:Z

    const-wide/16 v1, 0x2d

    if-eqz v0, :cond_f

    iget-boolean v0, v8, Lru/yandex/yandexmapkit/MapModel;->destroyed:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_f

    :try_start_5
    invoke-virtual {v8, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_3
    :try_start_6
    iget-boolean v0, v8, Lru/yandex/yandexmapkit/MapModel;->zooming:Z

    if-eqz v0, :cond_e

    new-instance v0, Lru/yandex/yandexmapkit/map/MapEvent;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lru/yandex/yandexmapkit/map/MapEvent;-><init>(I)V

    invoke-virtual {v8, v0}, Lru/yandex/yandexmapkit/MapModel;->actionYMapListener(Lru/yandex/yandexmapkit/map/MapEvent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, v8, Lru/yandex/yandexmapkit/MapModel;->zoomStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iput-wide v0, v8, Lru/yandex/yandexmapkit/MapModel;->zoomStartTime:J

    const/high16 v0, 0x43960000    # 300.0f

    div-float/2addr v2, v0

    iget v0, v8, Lru/yandex/yandexmapkit/MapModel;->zoomCurrent:F

    invoke-virtual/range {p0 .. p0}, Lru/yandex/yandexmapkit/MapModel;->getNextZoom()I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x6

    const/4 v4, 0x1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    iget v0, v8, Lru/yandex/yandexmapkit/MapModel;->zoomCurrent:F

    sub-float/2addr v0, v2

    invoke-virtual/range {p0 .. p0}, Lru/yandex/yandexmapkit/MapModel;->getNextZoom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lru/yandex/yandexmapkit/MapModel;->getNextZoom()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Lru/yandex/yandexmapkit/MapModel;->setZoomCurrent(F)V

    iput-boolean v13, v8, Lru/yandex/yandexmapkit/MapModel;->zooming:Z

    iput-boolean v4, v8, Lru/yandex/yandexmapkit/MapModel;->changed:Z

    iget-object v0, v8, Lru/yandex/yandexmapkit/MapModel;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    new-instance v0, Lru/yandex/yandexmapkit/map/MapEvent;

    invoke-direct {v0, v3}, Lru/yandex/yandexmapkit/map/MapEvent;-><init>(I)V

    goto :goto_7

    :cond_a
    iget v0, v8, Lru/yandex/yandexmapkit/MapModel;->zoomCurrent:F

    sub-float/2addr v0, v2

    iput v0, v8, Lru/yandex/yandexmapkit/MapModel;->zoomCurrent:F

    goto :goto_8

    :cond_b
    iget v0, v8, Lru/yandex/yandexmapkit/MapModel;->zoomCurrent:F

    add-float/2addr v0, v2

    invoke-virtual/range {p0 .. p0}, Lru/yandex/yandexmapkit/MapModel;->getNextZoom()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lru/yandex/yandexmapkit/MapModel;->getNextZoom()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Lru/yandex/yandexmapkit/MapModel;->setZoomCurrent(F)V

    iput-boolean v13, v8, Lru/yandex/yandexmapkit/MapModel;->zooming:Z

    iput-boolean v4, v8, Lru/yandex/yandexmapkit/MapModel;->changed:Z

    iget-object v0, v8, Lru/yandex/yandexmapkit/MapModel;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    new-instance v0, Lru/yandex/yandexmapkit/map/MapEvent;

    invoke-direct {v0, v3}, Lru/yandex/yandexmapkit/map/MapEvent;-><init>(I)V

    :goto_7
    invoke-virtual {v8, v0}, Lru/yandex/yandexmapkit/MapModel;->actionYMapListener(Lru/yandex/yandexmapkit/map/MapEvent;)V

    const/4 v0, 0x1

    goto :goto_9

    :cond_c
    iget v0, v8, Lru/yandex/yandexmapkit/MapModel;->zoomCurrent:F

    add-float/2addr v0, v2

    iput v0, v8, Lru/yandex/yandexmapkit/MapModel;->zoomCurrent:F

    :goto_8
    const/4 v0, 0x0

    :goto_9
    iget v1, v8, Lru/yandex/yandexmapkit/MapModel;->zoomCurrent:F

    invoke-virtual/range {p0 .. p0}, Lru/yandex/yandexmapkit/MapModel;->getNextZoom()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v1, v4

    invoke-direct {v8, v1}, Lru/yandex/yandexmapkit/MapModel;->moveMapInZooming(I)V

    if-eqz v0, :cond_d

    iput-boolean v13, v8, Lru/yandex/yandexmapkit/MapModel;->isZoomWithCenterPoint:Z

    :cond_d
    iput-boolean v4, v8, Lru/yandex/yandexmapkit/MapModel;->changed:Z

    :cond_e
    iget-object v0, v8, Lru/yandex/yandexmapkit/MapModel;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    goto/16 :goto_6

    :cond_f
    :goto_a
    iget-boolean v0, v8, Lru/yandex/yandexmapkit/MapModel;->dissolving:Z

    if-eqz v0, :cond_10

    iget-boolean v3, v8, Lru/yandex/yandexmapkit/MapModel;->destroyed:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v3, :cond_10

    :try_start_7
    invoke-virtual {v8, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_4
    :try_start_8
    iget-boolean v0, v8, Lru/yandex/yandexmapkit/MapModel;->dissolving:Z

    if-eqz v0, :cond_f

    iget-object v0, v8, Lru/yandex/yandexmapkit/MapModel;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    goto :goto_a

    :cond_10
    iget-boolean v1, v8, Lru/yandex/yandexmapkit/MapModel;->destroyed:Z

    if-nez v1, :cond_0

    iget-boolean v1, v8, Lru/yandex/yandexmapkit/MapModel;->zooming:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget-boolean v0, v8, Lru/yandex/yandexmapkit/MapModel;->scrolling:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v0, :cond_0

    :try_start_9
    iget-object v0, v8, Lru/yandex/yandexmapkit/MapModel;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :catchall_0
    :cond_11
    const/4 v0, 0x0

    :try_start_a
    iput-object v0, v8, Lru/yandex/yandexmapkit/MapModel;->thread:Ljava/lang/Thread;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    goto :goto_c

    :goto_b
    throw v1

    :goto_c
    goto :goto_b
.end method

.method setHDMap(Z)V
    .locals 1

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->j()Z

    move-result v0

    if-eq p1, v0, :cond_1

    invoke-static {p1}, Lru/yandex/yandexmapkit/map/Tile;->a(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    mul-int/lit16 p1, p1, 0x80

    invoke-static {p1}, Lru/yandex/yandexmapkit/map/Tile;->b(I)V

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->getFileCache()Lru/yandex/am;

    move-result-object p1

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->j()Z

    move-result v0

    invoke-virtual {p1, v0}, Lru/yandex/am;->b(Z)V

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->getTiledSurface()Lru/yandex/yandexmapkit/map/TiledSurface;

    move-result-object p1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/TiledSurface;->j()V

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->getTiledSurface()Lru/yandex/yandexmapkit/map/TiledSurface;

    move-result-object p1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/TiledSurface;->c()V

    :cond_1
    return-void
.end method

.method public setMoved(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapModel;->moved:Z

    return-void
.end method

.method public setNextZoom(I)V
    .locals 1

    if-lez p1, :cond_0

    const/16 v0, 0x11

    if-gt p1, v0, :cond_0

    iput p1, p0, Lru/yandex/yandexmapkit/MapModel;->nextZoom:I

    :cond_0
    return-void
.end method

.method setNightMode(Lru/yandex/aq;)V
    .locals 1

    iput-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->mNightType:Lru/yandex/aq;

    sget-object v0, Lru/yandex/aq;->b:Lru/yandex/aq;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lru/yandex/yandexmapkit/MapModel;->setNightMap(Z)V

    return-void

    :cond_0
    sget-object v0, Lru/yandex/aq;->a:Lru/yandex/aq;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapModel;->refreshNightAuto()Z

    move-result p1

    goto :goto_0
.end method

.method public declared-synchronized setPosition(JJFI)V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x7fffffff

    cmp-long v6, p1, v4

    if-lez v6, :cond_0

    const p2, 0x7fffffff

    goto :goto_0

    :cond_0
    cmp-long v6, p1, v2

    if-gez v6, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    long-to-int p2, p1

    :goto_0
    cmp-long p1, p3, v4

    if-lez p1, :cond_2

    const v0, 0x7fffffff

    goto :goto_1

    :cond_2
    cmp-long p1, p3, v2

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    long-to-int v0, p3

    :goto_1
    :try_start_0
    iget p1, p0, Lru/yandex/yandexmapkit/MapModel;->x:I

    if-ne p2, p1, :cond_4

    iget p1, p0, Lru/yandex/yandexmapkit/MapModel;->y:I

    if-ne v0, p1, :cond_4

    iget-boolean p1, p0, Lru/yandex/yandexmapkit/MapModel;->zooming:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapModel;->getZoomCurrent()F

    move-result p1

    cmpl-float p1, p5, p1

    if-eqz p1, :cond_8

    :cond_4
    if-lez p6, :cond_7

    iget-boolean p1, p0, Lru/yandex/yandexmapkit/MapModel;->zooming:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lru/yandex/yandexmapkit/MapModel;->softMoving:Z

    if-nez p1, :cond_7

    iput p2, p0, Lru/yandex/yandexmapkit/MapModel;->softMoveEndX:I

    iput v0, p0, Lru/yandex/yandexmapkit/MapModel;->softMoveEndY:I

    iput p5, p0, Lru/yandex/yandexmapkit/MapModel;->softMoveEndZoom:F

    iput p6, p0, Lru/yandex/yandexmapkit/MapModel;->softMoveT:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lru/yandex/yandexmapkit/MapModel;->softMoveTStart:J

    iget p1, p0, Lru/yandex/yandexmapkit/MapModel;->x:I

    iput p1, p0, Lru/yandex/yandexmapkit/MapModel;->softMoveStartX:I

    iget p1, p0, Lru/yandex/yandexmapkit/MapModel;->y:I

    iput p1, p0, Lru/yandex/yandexmapkit/MapModel;->softMoveStartY:I

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapModel;->getZoomCurrent()F

    move-result p1

    iput p1, p0, Lru/yandex/yandexmapkit/MapModel;->softMoveStartZoom:F

    iget p2, p0, Lru/yandex/yandexmapkit/MapModel;->softMoveEndX:I

    iget p3, p0, Lru/yandex/yandexmapkit/MapModel;->softMoveStartX:I

    sub-int/2addr p2, p3

    iget p3, p0, Lru/yandex/yandexmapkit/MapModel;->softMoveT:I

    div-int/2addr p2, p3

    iput p2, p0, Lru/yandex/yandexmapkit/MapModel;->softMoveDX:I

    iget p2, p0, Lru/yandex/yandexmapkit/MapModel;->softMoveEndY:I

    iget p4, p0, Lru/yandex/yandexmapkit/MapModel;->softMoveStartY:I

    sub-int/2addr p2, p4

    div-int/2addr p2, p3

    iput p2, p0, Lru/yandex/yandexmapkit/MapModel;->softMoveDY:I

    iget p2, p0, Lru/yandex/yandexmapkit/MapModel;->softMoveEndZoom:F

    sub-float/2addr p2, p1

    int-to-float p1, p3

    div-float/2addr p2, p1

    iput p2, p0, Lru/yandex/yandexmapkit/MapModel;->softMoveZoom:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapModel;->softMoving:Z

    new-instance p2, Lru/yandex/yandexmapkit/map/MapEvent;

    invoke-direct {p2, p1}, Lru/yandex/yandexmapkit/map/MapEvent;-><init>(I)V

    invoke-virtual {p0, p2}, Lru/yandex/yandexmapkit/MapModel;->actionYMapListener(Lru/yandex/yandexmapkit/map/MapEvent;)V

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->thread:Ljava/lang/Thread;

    if-nez p1, :cond_6

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->thread:Ljava/lang/Thread;

    const-string p2, "ymm-map-mover"

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->thread:Ljava/lang/Thread;

    :goto_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3

    :cond_7
    iput p2, p0, Lru/yandex/yandexmapkit/MapModel;->x:I

    iput v0, p0, Lru/yandex/yandexmapkit/MapModel;->y:I

    invoke-virtual {p0, p5}, Lru/yandex/yandexmapkit/MapModel;->setZoomCurrent(F)V

    iget-boolean p1, p0, Lru/yandex/yandexmapkit/MapModel;->zooming:Z

    if-nez p1, :cond_8

    iget p1, p0, Lru/yandex/yandexmapkit/MapModel;->x:I

    iput p1, p0, Lru/yandex/yandexmapkit/MapModel;->xStart:I

    iget p1, p0, Lru/yandex/yandexmapkit/MapModel;->y:I

    iput p1, p0, Lru/yandex/yandexmapkit/MapModel;->yStart:I

    :cond_8
    :goto_3
    invoke-direct {p0}, Lru/yandex/yandexmapkit/MapModel;->updatePosition()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method setPositionInRotateMode(JJFZZZ)V
    .locals 8

    move-object v7, p0

    iget-object v0, v7, Lru/yandex/yandexmapkit/MapModel;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getMapRotator()Lru/yandex/ap;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/ap;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide v1, p1

    long-to-float v1, v1

    move-wide v3, p3

    long-to-float v2, v3

    invoke-virtual {v0, v1, v2}, Lru/yandex/ap;->d(FF)Landroid/graphics/PointF;

    move-result-object v1

    iget v2, v1, Landroid/graphics/PointF;->x:F

    float-to-long v2, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-long v4, v1

    move-wide v1, v2

    move-wide v3, v4

    goto :goto_0

    :cond_0
    move-wide v1, p1

    move-wide v3, p3

    :goto_0
    if-nez p6, :cond_1

    new-instance v5, Lru/yandex/yandexmapkit/map/MapEvent;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lru/yandex/yandexmapkit/map/MapEvent;-><init>(I)V

    invoke-virtual {p0, v5}, Lru/yandex/yandexmapkit/MapModel;->actionYMapListener(Lru/yandex/yandexmapkit/map/MapEvent;)V

    :cond_1
    if-eqz p6, :cond_3

    if-eqz p7, :cond_2

    invoke-virtual {v0}, Lru/yandex/ap;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xc8

    const/16 v6, 0xc8

    goto :goto_1

    :cond_2
    const/16 v0, 0x2bc

    const/16 v6, 0x2bc

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_1
    move-object v0, p0

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lru/yandex/yandexmapkit/MapModel;->setPosition(JJFI)V

    if-nez p6, :cond_4

    new-instance v0, Lru/yandex/yandexmapkit/map/MapEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lru/yandex/yandexmapkit/map/MapEvent;-><init>(I)V

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/MapModel;->actionYMapListener(Lru/yandex/yandexmapkit/map/MapEvent;)V

    :cond_4
    return-void
.end method

.method public setPositionInRotateMode(JJZZZ)V
    .locals 9

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapModel;->getZoomCurrent()F

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lru/yandex/yandexmapkit/MapModel;->setPositionInRotateMode(JJFZZZ)V

    return-void
.end method

.method public setSoftMoving(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapModel;->softMoving:Z

    return-void
.end method

.method setZoomCurrent(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x41880000    # 17.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    float-to-int v0, p1

    invoke-direct {p0, v0}, Lru/yandex/yandexmapkit/MapModel;->setZoom(I)V

    iput p1, p0, Lru/yandex/yandexmapkit/MapModel;->zoomCurrent:F

    invoke-direct {p0}, Lru/yandex/yandexmapkit/MapModel;->updatePosition()V

    :cond_0
    return-void
.end method

.method public setZoomWithCenterPoint(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapModel;->isZoomWithCenterPoint:Z

    return-void
.end method

.method declared-synchronized start(FF)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->softMoving:Z

    if-nez v0, :cond_3

    const/high16 v0, 0x40400000    # 3.0f

    div-float v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1, v0}, Lru/yandex/yandexmapkit/utils/Utils;->a(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    div-float/2addr p1, v0

    div-float/2addr p2, v0

    :cond_0
    iput p1, p0, Lru/yandex/yandexmapkit/MapModel;->xSpeed:F

    iput p2, p0, Lru/yandex/yandexmapkit/MapModel;->ySpeed:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lru/yandex/yandexmapkit/MapModel;->lastScrollTime:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapModel;->scrolling:Z

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->thread:Ljava/lang/Thread;

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->thread:Ljava/lang/Thread;

    const-string p2, "ymm-map-mover"

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->thread:Ljava/lang/Thread;

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lru/yandex/yandexmapkit/MapModel;->thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized startDissolveMap()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->zooming:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->dissolving:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method startManualZoom(FF)V
    .locals 3

    new-instance v0, Lru/yandex/yandexmapkit/map/MapEvent;

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lru/yandex/yandexmapkit/map/MapEvent;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/MapModel;->actionYMapListener(Lru/yandex/yandexmapkit/map/MapEvent;)V

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapModel;->stop()V

    iget v0, p0, Lru/yandex/yandexmapkit/MapModel;->zoomCurrent:F

    iput v0, p0, Lru/yandex/yandexmapkit/MapModel;->zoomStart:F

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapModel;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getTiledSurface()Lru/yandex/yandexmapkit/map/TiledSurface;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/map/TiledSurface;->h()V

    iget v0, p0, Lru/yandex/yandexmapkit/MapModel;->x:I

    iput v0, p0, Lru/yandex/yandexmapkit/MapModel;->xStart:I

    iget v0, p0, Lru/yandex/yandexmapkit/MapModel;->y:I

    iput v0, p0, Lru/yandex/yandexmapkit/MapModel;->yStart:I

    iput p1, p0, Lru/yandex/yandexmapkit/MapModel;->manualZoomXPix:F

    iput p2, p0, Lru/yandex/yandexmapkit/MapModel;->manualZoomYPix:F

    iput-boolean v2, p0, Lru/yandex/yandexmapkit/MapModel;->zooming:Z

    return-void
.end method

.method public startThread()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->destroyed:Z

    return-void
.end method

.method stop()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->scrolling:Z

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->dissolving:Z

    iget-boolean v1, p0, Lru/yandex/yandexmapkit/MapModel;->softMoving:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->softMoving:Z

    invoke-direct {p0}, Lru/yandex/yandexmapkit/MapModel;->updatePosition()V

    :cond_0
    return-void
.end method

.method public declared-synchronized stopDissolveMap()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->zooming:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapModel;->dissolving:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized zoomIn(FF)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapModel;->getZoom()I

    move-result v0

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapModel;->getZoom()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/MapModel;->setNextZoom(I)V

    invoke-direct {p0, p1, p2}, Lru/yandex/yandexmapkit/MapModel;->startZooming(FF)V

    invoke-direct {p0}, Lru/yandex/yandexmapkit/MapModel;->updatePosition()V
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

.method declared-synchronized zoomOut(FF)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapModel;->getZoom()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapModel;->getZoomCurrent()F

    move-result v0

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapModel;->getZoom()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapModel;->getZoom()I

    move-result v0

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/MapModel;->setNextZoom(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapModel;->getZoom()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/MapModel;->setNextZoom(I)V

    :goto_0
    invoke-direct {p0, p1, p2}, Lru/yandex/yandexmapkit/MapModel;->startZooming(FF)V

    invoke-direct {p0}, Lru/yandex/yandexmapkit/MapModel;->updatePosition()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
