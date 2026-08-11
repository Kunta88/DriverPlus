.class public Lru/yandex/path/PathOverlayIRender;
.super Lru/yandex/yandexmapkit/overlay/OverlayIRender;
.source "PathOverlayIRender.java"


# instance fields
.field private mOverlay:Lru/yandex/path/PathOverlay;


# direct methods
.method public constructor <init>(Lru/yandex/path/PathOverlay;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lru/yandex/yandexmapkit/overlay/OverlayIRender;-><init>()V

    .line 22
    iput-object p1, p0, Lru/yandex/path/PathOverlayIRender;->mOverlay:Lru/yandex/path/PathOverlay;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lru/yandex/yandexmapkit/overlay/OverlayItem;)V
    .locals 8

    .line 27
    iget-object p2, p0, Lru/yandex/path/PathOverlayIRender;->mOverlay:Lru/yandex/path/PathOverlay;

    invoke-virtual {p2}, Lru/yandex/path/PathOverlay;->getGeoPointsPoints()Ljava/util/List;

    move-result-object p2

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 29
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x40c00000    # 6.0f

    .line 30
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v2, -0xffff01

    .line 31
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    const/4 v3, 0x0

    .line 33
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge v3, v4, :cond_1

    .line 34
    iget-object v4, p0, Lru/yandex/path/PathOverlayIRender;->mOverlay:Lru/yandex/path/PathOverlay;

    invoke-virtual {v4}, Lru/yandex/path/PathOverlay;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v4

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/yandex/yandexmapkit/utils/GeoPoint;

    invoke-virtual {v4, v5}, Lru/yandex/yandexmapkit/MapController;->getScreenPoint(Lru/yandex/yandexmapkit/utils/GeoPoint;)Lru/yandex/yandexmapkit/utils/ScreenPoint;

    move-result-object v4

    .line 35
    iget-object v5, p0, Lru/yandex/path/PathOverlayIRender;->mOverlay:Lru/yandex/path/PathOverlay;

    invoke-virtual {v5}, Lru/yandex/path/PathOverlay;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lru/yandex/yandexmapkit/utils/GeoPoint;

    invoke-virtual {v5, v7}, Lru/yandex/yandexmapkit/MapController;->getScreenPoint(Lru/yandex/yandexmapkit/utils/GeoPoint;)Lru/yandex/yandexmapkit/utils/ScreenPoint;

    move-result-object v5

    if-nez v3, :cond_0

    .line 36
    invoke-virtual {v4}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getX()F

    move-result v3

    invoke-virtual {v4}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 37
    :cond_0
    invoke-virtual {v5}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getX()F

    move-result v3

    invoke-virtual {v5}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move v3, v6

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
