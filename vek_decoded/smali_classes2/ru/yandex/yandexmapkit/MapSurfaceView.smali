.class public final Lru/yandex/yandexmapkit/MapSurfaceView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
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

.field private surfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lru/yandex/yandexmapkit/MapView;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->mWidth:I

    iput p2, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->mHeight:I

    new-instance v0, Lru/yandex/yandexmapkit/utils/Point;

    invoke-direct {v0}, Lru/yandex/yandexmapkit/utils/Point;-><init>()V

    iput-object v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->bufPoint:Lru/yandex/yandexmapkit/utils/Point;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->bufPointF:Landroid/graphics/PointF;

    iput-boolean p2, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->invalidate:Z

    invoke-direct {p0, p1, p3}, Lru/yandex/yandexmapkit/MapSurfaceView;->init(Landroid/content/Context;Lru/yandex/yandexmapkit/MapView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lru/yandex/yandexmapkit/MapView;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->mWidth:I

    iput v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->mHeight:I

    new-instance v1, Lru/yandex/yandexmapkit/utils/Point;

    invoke-direct {v1}, Lru/yandex/yandexmapkit/utils/Point;-><init>()V

    iput-object v1, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->bufPoint:Lru/yandex/yandexmapkit/utils/Point;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->bufPointF:Landroid/graphics/PointF;

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->invalidate:Z

    invoke-direct {p0, p1, p2}, Lru/yandex/yandexmapkit/MapSurfaceView;->init(Landroid/content/Context;Lru/yandex/yandexmapkit/MapView;)V

    return-void
.end method

.method private init(Landroid/content/Context;Lru/yandex/yandexmapkit/MapView;)V
    .locals 1

    new-instance v0, Lru/yandex/yandexmapkit/MapsCoreApplicationParams;

    invoke-direct {v0}, Lru/yandex/yandexmapkit/MapsCoreApplicationParams;-><init>()V

    invoke-static {p1, v0}, Lru/yandex/core/CoreApplication;->initOnce(Landroid/content/Context;Lru/yandex/core/CoreApplicationParams;)V

    iput-object p2, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->mParentViewGroup:Lru/yandex/yandexmapkit/MapView;

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    new-instance p1, Lru/yandex/yandexmapkit/MapController;

    iget-object p2, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->mParentViewGroup:Lru/yandex/yandexmapkit/MapView;

    invoke-direct {p1, p0, p2}, Lru/yandex/yandexmapkit/MapController;-><init>(Lru/yandex/yandexmapkit/MapViewInterface;Lru/yandex/yandexmapkit/MapView;)V

    iput-object p1, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->firstRun:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->delayedMessages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    iput-object p2, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->paused:Z

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->findTownWarningWasShown:Z

    iput-boolean p2, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->surfaceDestroyed:Z

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->mapMoved:Z

    invoke-virtual {p0, p2}, Lru/yandex/yandexmapkit/MapSurfaceView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, p2}, Lru/yandex/yandexmapkit/MapSurfaceView;->setFocusable(Z)V

    iput p1, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->mHeight:I

    iput p1, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->mWidth:I

    return-void
.end method

.method private isInvalidate()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->invalidate:Z

    return v0
.end method

.method private declared-synchronized processDelayedMessages()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->delayedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->handler:Landroid/os/Handler;
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
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->delayedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->delayedMessages:Ljava/util/ArrayList;

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

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/MapSurfaceView;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/MapSurfaceView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->startAll()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->paused:Z

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapSurfaceView;->notifyRepaint()V

    return-void
.end method

.method private stopAll()V
    .locals 2

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->stopAll()V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->handler:Landroid/os/Handler;

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

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->running:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->handler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public doRepaint()V
    .locals 8

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getTiledSurface()Lru/yandex/yandexmapkit/map/TiledSurface;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/map/TiledSurface;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/MapSurfaceView;->setInvalidate(Z)V

    :cond_0
    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->surfaceDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lru/yandex/yandexmapkit/MapSurfaceView;->setInvalidate(Z)V

    :cond_1
    invoke-direct {p0}, Lru/yandex/yandexmapkit/MapSurfaceView;->isInvalidate()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lru/yandex/yandexmapkit/MapSurfaceView;->setInvalidate(Z)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v2, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v2, v0}, Lru/yandex/yandexmapkit/MapController;->drawMap(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/MapController;->getOverlayManager()Lru/yandex/yandexmapkit/OverlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/OverlayManager;->prepareDraw()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    new-array v4, v1, [Lru/yandex/yandexmapkit/overlay/OverlayItem;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lru/yandex/yandexmapkit/overlay/OverlayItem;

    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lru/yandex/yandexmapkit/overlay/IRender;

    invoke-interface {v7, v0, v6}, Lru/yandex/yandexmapkit/overlay/IRender;->draw(Landroid/graphics/Canvas;Lru/yandex/yandexmapkit/overlay/OverlayItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    :goto_1
    iget-object v2, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_2

    :catchall_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    return-void
.end method

.method public getMapController()Lru/yandex/yandexmapkit/MapController;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    return-object v0
.end method

.method public declared-synchronized notifyRepaint()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/MapSurfaceView;->setInvalidate(Z)V

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->paused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->handler:Landroid/os/Handler;

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

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/MapController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/MapController;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lru/yandex/ac;

    invoke-direct {v0, p0}, Lru/yandex/ac;-><init>(Lru/yandex/yandexmapkit/MapSurfaceView;)V

    iput-object v0, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->handler:Landroid/os/Handler;

    invoke-direct {p0}, Lru/yandex/yandexmapkit/MapSurfaceView;->processDelayedMessages()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public setInvalidate(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->invalidate:Z

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    :try_start_0
    iput p3, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->mWidth:I

    iput p4, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->mHeight:I

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1, p3, p4}, Lru/yandex/yandexmapkit/MapController;->sizeChanged(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-boolean p1, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->running:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->running:Z

    new-instance p1, Ljava/lang/Thread;

    const-string v0, "ymm-main"

    invoke-direct {p1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->mainThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_0
    iget-object p1, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->handler:Landroid/os/Handler;

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->surfaceDestroyed:Z

    invoke-direct {p0}, Lru/yandex/yandexmapkit/MapSurfaceView;->processDelayedMessages()V

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->surfaceCreated()V

    invoke-direct {p0}, Lru/yandex/yandexmapkit/MapSurfaceView;->startAll()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->surfaceDestroyed:Z

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->paused:Z

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapSurfaceView;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->surfaceDestroyed()V

    invoke-direct {p0}, Lru/yandex/yandexmapkit/MapSurfaceView;->stopAll()V

    return-void
.end method
