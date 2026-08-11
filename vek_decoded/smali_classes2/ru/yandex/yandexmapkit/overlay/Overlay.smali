.class public Lru/yandex/yandexmapkit/overlay/Overlay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:I

.field private b:Z

.field protected c:Ljava/util/List;

.field protected d:Ljava/util/List;

.field protected e:Lru/yandex/yandexmapkit/MapController;

.field private f:B

.field private g:Lru/yandex/yandexmapkit/overlay/IRender;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/MapController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lru/yandex/cj;->a()I

    move-result v0

    iput v0, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->d:Ljava/util/List;

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->e:Lru/yandex/yandexmapkit/MapController;

    new-instance p1, Lru/yandex/yandexmapkit/overlay/OverlayIRender;

    invoke-direct {p1}, Lru/yandex/yandexmapkit/overlay/OverlayIRender;-><init>()V

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->g:Lru/yandex/yandexmapkit/overlay/IRender;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->e:Lru/yandex/yandexmapkit/MapController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getOverlayManager()Lru/yandex/yandexmapkit/OverlayManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getOverlayManager()Lru/yandex/yandexmapkit/OverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/OverlayManager;->getBalloon()Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->getBalloonItem()Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->c:Ljava/util/List;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOverlayItem()Lru/yandex/yandexmapkit/overlay/OverlayItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->hideBalloon()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lru/yandex/yandexmapkit/overlay/Overlay;)I
    .locals 2

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/Overlay;->getPriority()B

    move-result v0

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/Overlay;->getPriority()B

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/Overlay;->getPriority()B

    move-result v0

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/Overlay;->getPriority()B

    move-result p1

    if-ge v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected a(FF)Lru/yandex/yandexmapkit/overlay/OverlayItem;
    .locals 5

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/Overlay;->getPrepareDrawList()Ljava/util/List;

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

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getPoint()Lru/yandex/yandexmapkit/utils/Point;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getRectBounds()Landroid/graphics/Rect;

    move-result-object v2

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-static {v2, v3, v4}, Lru/yandex/yandexmapkit/utils/Utils;->a(Landroid/graphics/Rect;II)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public addOverlayItem(Lru/yandex/yandexmapkit/overlay/OverlayItem;)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearOverlayItems()V
    .locals 1

    invoke-direct {p0}, Lru/yandex/yandexmapkit/overlay/Overlay;->a()V

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lru/yandex/yandexmapkit/overlay/Overlay;

    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/overlay/Overlay;->a(Lru/yandex/yandexmapkit/overlay/Overlay;)I

    move-result p1

    return p1
.end method

.method public getIRender()Lru/yandex/yandexmapkit/overlay/IRender;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->g:Lru/yandex/yandexmapkit/overlay/IRender;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->a:I

    return v0
.end method

.method public getMapController()Lru/yandex/yandexmapkit/MapController;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->e:Lru/yandex/yandexmapkit/MapController;

    return-object v0
.end method

.method public getOverlayItems()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getPrepareDrawList()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPriority()B
    .locals 1

    iget-byte v0, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->f:B

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->b:Z

    return v0
.end method

.method public onDoubleTap(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(FF)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lru/yandex/yandexmapkit/overlay/Overlay;->a(FF)Lru/yandex/yandexmapkit/overlay/OverlayItem;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onScroll(FFFF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(FF)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lru/yandex/yandexmapkit/overlay/Overlay;->a(FF)Lru/yandex/yandexmapkit/overlay/OverlayItem;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getOverlayItemListener()Lru/yandex/yandexmapkit/overlay/OnOverlayItemListener;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getOverlayItemListener()Lru/yandex/yandexmapkit/overlay/OnOverlayItemListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lru/yandex/yandexmapkit/overlay/OnOverlayItemListener;->onClick(Lru/yandex/yandexmapkit/overlay/OverlayItem;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getBalloonItem()Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/MapController;->getOverlayManager()Lru/yandex/yandexmapkit/OverlayManager;

    move-result-object p2

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/OverlayManager;->getBalloon()Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    move-result-object p2

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->getBalloonItem()Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    move-result-object p2

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getBalloonItem()Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/MapController;->getOverlayManager()Lru/yandex/yandexmapkit/OverlayManager;

    move-result-object p2

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/OverlayManager;->getBalloon()Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    move-result-object p2

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getBalloonItem()Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    move-result-object p2

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->hideBalloon()V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getBalloonItem()Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    move-result-object p1

    invoke-virtual {p2, p1}, Lru/yandex/yandexmapkit/MapController;->showBalloon(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onUp(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public prepareDraw()Ljava/util/List;
    .locals 7

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/Overlay;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->d:Ljava/util/List;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/Overlay;->getOverlayItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/yandex/yandexmapkit/overlay/OverlayItem;

    :try_start_0
    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getPoint()Lru/yandex/yandexmapkit/utils/Point;

    move-result-object v3

    invoke-virtual {v2, v3}, Lru/yandex/yandexmapkit/MapController;->getScreenPoint(Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/ScreenPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->setScreenPoint(Lru/yandex/yandexmapkit/utils/ScreenPoint;)V

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getRectBounds()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v4}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v5}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v2, v3}, Lru/yandex/yandexmapkit/utils/Utils;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/Overlay;->getPrepareDrawList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeOverlayItem(Lru/yandex/yandexmapkit/overlay/OverlayItem;)V
    .locals 2

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getOverlayManager()Lru/yandex/yandexmapkit/OverlayManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getOverlayManager()Lru/yandex/yandexmapkit/OverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/OverlayManager;->getBalloon()Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->getBalloonItem()Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOverlayItem()Lru/yandex/yandexmapkit/overlay/OverlayItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->hideBalloon()V

    :cond_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setIRender(Lru/yandex/yandexmapkit/overlay/IRender;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->g:Lru/yandex/yandexmapkit/overlay/IRender;

    return-void
.end method

.method public setPriority(B)V
    .locals 0

    iput-byte p1, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->f:B

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/overlay/Overlay;->b:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lru/yandex/yandexmapkit/overlay/Overlay;->a()V

    :cond_0
    return-void
.end method
