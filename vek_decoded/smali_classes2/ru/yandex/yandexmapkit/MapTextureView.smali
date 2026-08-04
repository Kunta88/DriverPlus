.class public final Lru/yandex/yandexmapkit/MapTextureView;
.super Landroid/view/TextureView;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Ljava/lang/Runnable;
.implements Lru/yandex/yandexmapkit/MapViewInterface;


# static fields
.field public static final MSG_NONE:I = -0x1

.field public static final MSG_QUIT:I = 0x1

.field public static final MSG_REPAINT:I


# instance fields
.field public bufPoint:Lru/yandex/yandexmapkit/utils/Point;

.field public bufPointF:Landroid/graphics/PointF;

.field private delayedMessages:Ljava/util/ArrayList;

.field findTownWarningWasShown:Z

.field firstRun:Z

.field private handler:Landroid/os/Handler;

.field invalidate:Z

.field private mHeight:I

.field private mMapController:Lru/yandex/yandexmapkit/MapController;

.field private mParentViewGroup:Lru/yandex/yandexmapkit/MapView;

.field private mWidth:I

.field private mainThread:Ljava/lang/Thread;

.field public mapMoved:Z

.field notifiedNewsId:I

.field volatile paused:Z

.field volatile running:Z

.field volatile surfaceDestroyed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lru/yandex/yandexmapkit/MapView;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lru/yandex/yandexmapkit/MapTextureView;->mWidth:I

    iput p2, p0, Lru/yandex/yandexmapkit/MapTextureView;->mHeight:I

    new-instance v0, Lru/yandex/yandexmapkit/utils/Point;

    invoke-direct {v0}, Lru/yandex/yandexmapkit/utils/Point;-><init>()V

    iput-object v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->bufPoint:Lru/yandex/yandexmapkit/utils/Point;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->bufPointF:Landroid/graphics/PointF;

    iput-boolean p2, p0, Lru/yandex/yandexmapkit/MapTextureView;->invalidate:Z

    invoke-direct {p0, p1, p3}, Lru/yandex/yandexmapkit/MapTextureView;->init(Landroid/content/Context;Lru/yandex/yandexmapkit/MapView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lru/yandex/yandexmapkit/MapView;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->mWidth:I

    iput v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->mHeight:I

    new-instance v1, Lru/yandex/yandexmapkit/utils/Point;

    invoke-direct {v1}, Lru/yandex/yandexmapkit/utils/Point;-><init>()V

    iput-object v1, p0, Lru/yandex/yandexmapkit/MapTextureView;->bufPoint:Lru/yandex/yandexmapkit/utils/Point;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lru/yandex/yandexmapkit/MapTextureView;->bufPointF:Landroid/graphics/PointF;

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->invalidate:Z

    invoke-direct {p0, p1, p2}, Lru/yandex/yandexmapkit/MapTextureView;->init(Landroid/content/Context;Lru/yandex/yandexmapkit/MapView;)V

    return-void
.end method

.method private init(Landroid/content/Context;Lru/yandex/yandexmapkit/MapView;)V
    .locals 1

    new-instance v0, Lru/yandex/yandexmapkit/MapsCoreApplicationParams;

    invoke-direct {v0}, Lru/yandex/yandexmapkit/MapsCoreApplicationParams;-><init>()V

    invoke-static {p1, v0}, Lru/yandex/core/CoreApplication;->initOnce(Landroid/content/Context;Lru/yandex/core/CoreApplicationParams;)V

    iput-object p2, p0, Lru/yandex/yandexmapkit/MapTextureView;->mParentViewGroup:Lru/yandex/yandexmapkit/MapView;

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapTextureView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    new-instance p1, Lru/yandex/yandexmapkit/MapController;

    iget-object p2, p0, Lru/yandex/yandexmapkit/MapTextureView;->mParentViewGroup:Lru/yandex/yandexmapkit/MapView;

    invoke-direct {p1, p0, p2}, Lru/yandex/yandexmapkit/MapController;-><init>(Lru/yandex/yandexmapkit/MapViewInterface;Lru/yandex/yandexmapkit/MapView;)V

    iput-object p1, p0, Lru/yandex/yandexmapkit/MapTextureView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapTextureView;->firstRun:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lru/yandex/yandexmapkit/MapTextureView;->delayedMessages:Ljava/util/ArrayList;

    invoke-virtual {p0, p0}, Lru/yandex/yandexmapkit/MapTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lru/yandex/yandexmapkit/MapTextureView;->paused:Z

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapTextureView;->findTownWarningWasShown:Z

    iput-boolean p2, p0, Lru/yandex/yandexmapkit/MapTextureView;->surfaceDestroyed:Z

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapTextureView;->mapMoved:Z

    invoke-virtual {p0, p2}, Lru/yandex/yandexmapkit/MapTextureView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, p2}, Lru/yandex/yandexmapkit/MapTextureView;->setFocusable(Z)V

    iput p1, p0, Lru/yandex/yandexmapkit/MapTextureView;->mHeight:I

    iput p1, p0, Lru/yandex/yandexmapkit/MapTextureView;->mWidth:I

    return-void
.end method

.method private isInvalidate()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->invalidate:Z

    return v0
.end method

.method private declared-synchronized processDelayedMessages()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->delayedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->handler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, 0xfa

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->delayedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lru/yandex/yandexmapkit/MapTextureView;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->delayedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private startAll()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/MapTextureView;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/MapTextureView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->startAll()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->paused:Z

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapTextureView;->notifyRepaint()V

    return-void
.end method

.method private stopAll()V
    .locals 2

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->stopAll()V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public doQuit()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->running:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->handler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public doRepaint()V
    .locals 10

    const-string v0, " "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lru/yandex/yandexmapkit/MapTextureView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v3}, Lru/yandex/yandexmapkit/MapController;->getTiledSurface()Lru/yandex/yandexmapkit/map/TiledSurface;

    move-result-object v3

    invoke-virtual {v3}, Lru/yandex/yandexmapkit/map/TiledSurface;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lru/yandex/yandexmapkit/MapTextureView;->setInvalidate(Z)V

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawMap update"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-boolean v1, p0, Lru/yandex/yandexmapkit/MapTextureView;->surfaceDestroyed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lru/yandex/yandexmapkit/MapTextureView;->setInvalidate(Z)V

    :cond_1
    invoke-direct {p0}, Lru/yandex/yandexmapkit/MapTextureView;->isInvalidate()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v2}, Lru/yandex/yandexmapkit/MapTextureView;->setInvalidate(Z)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lru/yandex/yandexmapkit/MapTextureView;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lru/yandex/yandexmapkit/MapTextureView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v5, v1}, Lru/yandex/yandexmapkit/MapController;->drawMap(Landroid/graphics/Canvas;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drawMap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getOverlayManager()Lru/yandex/yandexmapkit/OverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/OverlayManager;->prepareDraw()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    new-array v6, v2, [Lru/yandex/yandexmapkit/overlay/OverlayItem;

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lru/yandex/yandexmapkit/overlay/OverlayItem;

    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lru/yandex/yandexmapkit/overlay/IRender;

    invoke-interface {v9, v1, v8}, Lru/yandex/yandexmapkit/overlay/IRender;->draw(Landroid/graphics/Canvas;Lru/yandex/yandexmapkit/overlay/OverlayItem;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawList "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v1, :cond_4

    :goto_1
    invoke-virtual {p0, v1}, Lru/yandex/yandexmapkit/MapTextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_2

    :catchall_0
    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x2bc

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    return-void
.end method

.method public getMapController()Lru/yandex/yandexmapkit/MapController;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    return-object v0
.end method

.method public declared-synchronized notifyRepaint()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/MapTextureView;->setInvalidate(Z)V

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->paused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->handler:Landroid/os/Handler;

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

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-boolean p1, p0, Lru/yandex/yandexmapkit/MapTextureView;->running:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapTextureView;->running:Z

    new-instance p1, Ljava/lang/Thread;

    const-string v0, "ymm-main"

    invoke-direct {p1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lru/yandex/yandexmapkit/MapTextureView;->mainThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_0
    iget-object p1, p0, Lru/yandex/yandexmapkit/MapTextureView;->handler:Landroid/os/Handler;

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapTextureView;->surfaceDestroyed:Z

    invoke-direct {p0}, Lru/yandex/yandexmapkit/MapTextureView;->processDelayedMessages()V

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapTextureView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->surfaceCreated()V

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapTextureView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1, p2, p3}, Lru/yandex/yandexmapkit/MapController;->sizeChanged(II)V

    invoke-direct {p0}, Lru/yandex/yandexmapkit/MapTextureView;->startAll()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapTextureView;->surfaceDestroyed:Z

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapTextureView;->paused:Z

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->surfaceDestroyed()V

    invoke-direct {p0}, Lru/yandex/yandexmapkit/MapTextureView;->stopAll()V

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    :try_start_0
    iput p2, p0, Lru/yandex/yandexmapkit/MapTextureView;->mWidth:I

    iput p3, p0, Lru/yandex/yandexmapkit/MapTextureView;->mHeight:I

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapTextureView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1, p2, p3}, Lru/yandex/yandexmapkit/MapController;->sizeChanged(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/MapController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/MapController;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lru/yandex/ad;

    invoke-direct {v0, p0}, Lru/yandex/ad;-><init>(Lru/yandex/yandexmapkit/MapTextureView;)V

    iput-object v0, p0, Lru/yandex/yandexmapkit/MapTextureView;->handler:Landroid/os/Handler;

    invoke-direct {p0}, Lru/yandex/yandexmapkit/MapTextureView;->processDelayedMessages()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public setInvalidate(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapTextureView;->invalidate:Z

    return-void
.end method
