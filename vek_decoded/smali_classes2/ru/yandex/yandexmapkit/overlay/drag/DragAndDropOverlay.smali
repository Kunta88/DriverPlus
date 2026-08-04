.class public Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;
.super Lru/yandex/yandexmapkit/overlay/Overlay;


# instance fields
.field protected a:D

.field private b:Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;

.field private f:Z

.field private g:Z

.field private h:F

.field private i:Lru/yandex/bw;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/MapController;)V
    .locals 4

    invoke-direct {p0, p1}, Lru/yandex/yandexmapkit/overlay/Overlay;-><init>(Lru/yandex/yandexmapkit/MapController;)V

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    iput-wide v0, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->a:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->g:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->h:F

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->setPriority(B)V

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->h:F

    iget-wide v0, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->a:D

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    iput-wide v0, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->a:D

    return-void
.end method

.method private a(Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->getBalloonItem()Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getOverlayManager()Lru/yandex/yandexmapkit/OverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/OverlayManager;->getBalloon()Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->getBalloonItem()Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    move-result-object v0

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->getBalloonItem()Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getOverlayManager()Lru/yandex/yandexmapkit/OverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/OverlayManager;->getBalloon()Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->getBalloonItem()Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->hideBalloon()V

    return-void

    :cond_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->getBalloonItem()Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/MapController;->showBalloon(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public clearDragItem()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->b:Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;

    return-void
.end method

.method public clearOverlayItems()V
    .locals 1

    invoke-super {p0}, Lru/yandex/yandexmapkit/overlay/Overlay;->clearOverlayItems()V

    const/4 v0, 0x0

    iput-object v0, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->b:Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;

    return-void
.end method

.method public getPriority()B
    .locals 1

    const/16 v0, 0x7d

    return v0
.end method

.method protected onClickDragableItem(Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->i:Lru/yandex/bw;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->a(Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;)V

    :cond_0
    return-void
.end method

.method public onLongPress(FF)Z
    .locals 5

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->getPrepareDrawList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/yandex/yandexmapkit/overlay/OverlayItem;

    move-object v2, v1

    check-cast v2, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getPoint()Lru/yandex/yandexmapkit/utils/Point;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->isDragable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->a()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getRectBounds()Landroid/graphics/Rect;

    move-result-object v1

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-static {v1, v3, v4}, Lru/yandex/yandexmapkit/utils/Utils;->a(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->setDragItem(Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->f:Z

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iget-wide v0, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->a:D

    double-to-int v0, v0

    add-int/2addr p2, v0

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->getOffsetCenterY()I

    move-result v0

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->getOffsetY()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    invoke-virtual {v2, p1}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->a(I)V

    invoke-virtual {v2, p2}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->b(I)V

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->getOffsetY()I

    move-result p2

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->b()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {v2, p2}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->setOffsetY(I)V

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object p2

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onScroll(FFFF)Z
    .locals 2

    add-float/2addr p3, p1

    add-float/2addr p4, p2

    iget-boolean p1, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->f:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->b:Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->isDragable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->a()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    new-instance v1, Lru/yandex/yandexmapkit/utils/ScreenPoint;

    invoke-direct {v1, p3, p4}, Lru/yandex/yandexmapkit/utils/ScreenPoint;-><init>(FF)V

    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/MapController;->getGeoPoint(Lru/yandex/yandexmapkit/utils/ScreenPoint;)Lru/yandex/yandexmapkit/utils/GeoPoint;

    move-result-object p3

    invoke-virtual {p1, p3}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->setGeoPoint(Lru/yandex/yandexmapkit/utils/GeoPoint;)V

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object p1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(FF)Z
    .locals 3

    invoke-virtual {p0, p1, p2}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->a(FF)Lru/yandex/yandexmapkit/overlay/OverlayItem;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    check-cast v0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->isDragable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->onClickDragableItem(Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->a(Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;)V

    :goto_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->b:Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    new-instance v2, Lru/yandex/yandexmapkit/utils/ScreenPoint;

    invoke-direct {v2, p1, p2}, Lru/yandex/yandexmapkit/utils/ScreenPoint;-><init>(FF)V

    invoke-virtual {v0, v2}, Lru/yandex/yandexmapkit/MapController;->getGeoPoint(Lru/yandex/yandexmapkit/utils/ScreenPoint;)Lru/yandex/yandexmapkit/utils/GeoPoint;

    move-result-object p1

    iget-object p2, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->b:Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;

    invoke-virtual {p2, p1}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->setGeoPoint(Lru/yandex/yandexmapkit/utils/GeoPoint;)V

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object p1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Lru/yandex/yandexmapkit/overlay/Overlay;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->onUp(FF)Z

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onUp(FF)Z
    .locals 6

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->b:Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;

    iget-boolean v1, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->f:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->isDragable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->a()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v1

    new-instance v4, Lru/yandex/yandexmapkit/utils/ScreenPoint;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->b()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr p2, v5

    invoke-direct {v4, p1, p2}, Lru/yandex/yandexmapkit/utils/ScreenPoint;-><init>(FF)V

    invoke-virtual {v1, v4}, Lru/yandex/yandexmapkit/MapController;->getGeoPoint(Lru/yandex/yandexmapkit/utils/ScreenPoint;)Lru/yandex/yandexmapkit/utils/GeoPoint;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->setGeoPoint(Lru/yandex/yandexmapkit/utils/GeoPoint;)V

    invoke-virtual {v0, v2}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->a(I)V

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->getOffsetCenterY()I

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->getOffsetY()I

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->getOffsetY()I

    move-result p1

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->b()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->setOffsetY(I)V

    iput-boolean v2, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->f:Z

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object p1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    return v3

    :cond_0
    return v2
.end method

.method public removeOverlayItem(Lru/yandex/yandexmapkit/overlay/OverlayItem;)V
    .locals 1

    invoke-super {p0, p1}, Lru/yandex/yandexmapkit/overlay/Overlay;->removeOverlayItem(Lru/yandex/yandexmapkit/overlay/OverlayItem;)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->b:Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->b:Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;

    :cond_0
    return-void
.end method

.method public setDragItem(Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;)V
    .locals 1

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->b:Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->setDragable(Z)V

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropOverlay;->b:Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;

    const/16 v0, 0x7e

    invoke-virtual {p1, v0}, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->setPriority(B)V

    return-void
.end method
