.class public Lru/yandex/yandexmapkit/MapStaticView;
.super Landroid/view/View;

# interfaces
.implements Lru/yandex/yandexmapkit/MapViewInterface;


# static fields
.field public static final MSG_NONE:I = -0x1

.field public static final MSG_QUIT:I = 0x1

.field public static final MSG_REPAINT:I


# instance fields
.field private handler:Landroid/os/Handler;

.field private mHeight:I

.field private mMapController:Lru/yandex/yandexmapkit/MapController;

.field private mParentViewGroup:Lru/yandex/yandexmapkit/MapView;

.field private mWidth:I

.field volatile paused:Z

.field volatile running:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lru/yandex/yandexmapkit/MapView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lru/yandex/yandexmapkit/MapStaticView;->mWidth:I

    iput p2, p0, Lru/yandex/yandexmapkit/MapStaticView;->mHeight:I

    invoke-direct {p0, p1, p3}, Lru/yandex/yandexmapkit/MapStaticView;->init(Landroid/content/Context;Lru/yandex/yandexmapkit/MapView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lru/yandex/yandexmapkit/MapView;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lru/yandex/yandexmapkit/MapStaticView;->mWidth:I

    iput v0, p0, Lru/yandex/yandexmapkit/MapStaticView;->mHeight:I

    invoke-direct {p0, p1, p2}, Lru/yandex/yandexmapkit/MapStaticView;->init(Landroid/content/Context;Lru/yandex/yandexmapkit/MapView;)V

    return-void
.end method

.method private init(Landroid/content/Context;Lru/yandex/yandexmapkit/MapView;)V
    .locals 1

    new-instance v0, Lru/yandex/yandexmapkit/MapsCoreApplicationParams;

    invoke-direct {v0}, Lru/yandex/yandexmapkit/MapsCoreApplicationParams;-><init>()V

    invoke-static {p1, v0}, Lru/yandex/core/CoreApplication;->initOnce(Landroid/content/Context;Lru/yandex/core/CoreApplicationParams;)V

    iput-object p2, p0, Lru/yandex/yandexmapkit/MapStaticView;->mParentViewGroup:Lru/yandex/yandexmapkit/MapView;

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapStaticView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    new-instance p1, Lru/yandex/yandexmapkit/MapController;

    iget-object p2, p0, Lru/yandex/yandexmapkit/MapStaticView;->mParentViewGroup:Lru/yandex/yandexmapkit/MapView;

    invoke-direct {p1, p0, p2}, Lru/yandex/yandexmapkit/MapController;-><init>(Lru/yandex/yandexmapkit/MapViewInterface;Lru/yandex/yandexmapkit/MapView;)V

    iput-object p1, p0, Lru/yandex/yandexmapkit/MapStaticView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapStaticView;->paused:Z

    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/MapStaticView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/MapStaticView;->setFocusable(Z)V

    const/4 p1, 0x0

    iput p1, p0, Lru/yandex/yandexmapkit/MapStaticView;->mHeight:I

    iput p1, p0, Lru/yandex/yandexmapkit/MapStaticView;->mWidth:I

    new-instance p1, Lru/yandex/ab;

    invoke-direct {p1, p0}, Lru/yandex/ab;-><init>(Lru/yandex/yandexmapkit/MapStaticView;)V

    iput-object p1, p0, Lru/yandex/yandexmapkit/MapStaticView;->handler:Landroid/os/Handler;

    return-void
.end method

.method private startAll()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/MapStaticView;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/MapStaticView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapStaticView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->startAll()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapStaticView;->paused:Z

    return-void
.end method

.method private stopAll()V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapStaticView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->stopAll()V

    return-void
.end method


# virtual methods
.method public getMapController()Lru/yandex/yandexmapkit/MapController;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapStaticView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    return-object v0
.end method

.method public declared-synchronized notifyRepaint()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapStaticView;->paused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapStaticView;->handler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapStaticView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lru/yandex/yandexmapkit/MapStaticView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/MapController;->getTiledSurface()Lru/yandex/yandexmapkit/map/TiledSurface;

    move-result-object v2

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/map/TiledSurface;->d()Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawMap update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lru/yandex/yandexmapkit/MapStaticView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v3, p1}, Lru/yandex/yandexmapkit/MapController;->drawMap(Landroid/graphics/Canvas;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawMap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lru/yandex/yandexmapkit/MapStaticView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v3}, Lru/yandex/yandexmapkit/MapController;->getOverlayManager()Lru/yandex/yandexmapkit/OverlayManager;

    move-result-object v3

    invoke-virtual {v3}, Lru/yandex/yandexmapkit/OverlayManager;->prepareDraw()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    new-array v5, v2, [Lru/yandex/yandexmapkit/overlay/OverlayItem;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lru/yandex/yandexmapkit/overlay/OverlayItem;

    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lru/yandex/yandexmapkit/overlay/IRender;

    invoke-interface {v8, p1, v7}, Lru/yandex/yandexmapkit/overlay/IRender;->draw(Landroid/graphics/Canvas;Lru/yandex/yandexmapkit/overlay/OverlayItem;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawList"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    :goto_1
    iget-object p1, p0, Lru/yandex/yandexmapkit/MapStaticView;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapStaticView;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lru/yandex/yandexmapkit/MapStaticView;->mWidth:I

    iput p2, p0, Lru/yandex/yandexmapkit/MapStaticView;->mHeight:I

    iget-object p3, p0, Lru/yandex/yandexmapkit/MapStaticView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p3, p1, p2}, Lru/yandex/yandexmapkit/MapController;->sizeChanged(II)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "w = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " h = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapStaticView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/MapController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapStaticView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/MapController;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapStaticView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->surfaceCreated()V

    invoke-direct {p0}, Lru/yandex/yandexmapkit/MapStaticView;->startAll()V

    return-void

    :cond_0
    const/16 v0, 0x8

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapStaticView;->paused:Z

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapStaticView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->surfaceDestroyed()V

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapStaticView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->stopAll()V

    :cond_1
    return-void
.end method
