.class public Lru/yandex/cf;
.super Lru/yandex/yandexmapkit/overlay/Overlay;


# instance fields
.field a:Lru/yandex/cg;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/MapController;)V
    .locals 4

    invoke-direct {p0, p1}, Lru/yandex/yandexmapkit/overlay/Overlay;-><init>(Lru/yandex/yandexmapkit/MapController;)V

    const/16 v0, -0x80

    invoke-virtual {p0, v0}, Lru/yandex/cf;->setPriority(B)V

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lru/yandex/cg;

    new-instance v1, Lru/yandex/yandexmapkit/utils/GeoPoint;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Lru/yandex/yandexmapkit/utils/GeoPoint;-><init>(DD)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lru/yandex/yandexmapkit/R$drawable;->ymk_ya_logo:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lru/yandex/cg;-><init>(Lru/yandex/yandexmapkit/utils/GeoPoint;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lru/yandex/cf;->a:Lru/yandex/cg;

    invoke-virtual {p0, v0}, Lru/yandex/cf;->addOverlayItem(Lru/yandex/yandexmapkit/overlay/OverlayItem;)V

    iget-object p1, p0, Lru/yandex/cf;->d:Ljava/util/List;

    iget-object v0, p0, Lru/yandex/cf;->a:Lru/yandex/cg;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public prepareDraw()Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lru/yandex/cf;->a:Lru/yandex/cg;

    invoke-virtual {v0}, Lru/yandex/cg;->getOffsetCenterX()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    invoke-virtual {p0}, Lru/yandex/cf;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v1

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lru/yandex/cf;->a:Lru/yandex/cg;

    invoke-virtual {v2}, Lru/yandex/cg;->getOffsetCenterY()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0xa

    int-to-float v1, v1

    iget-object v2, p0, Lru/yandex/cf;->a:Lru/yandex/cg;

    new-instance v3, Lru/yandex/yandexmapkit/utils/ScreenPoint;

    invoke-direct {v3, v0, v1}, Lru/yandex/yandexmapkit/utils/ScreenPoint;-><init>(FF)V

    invoke-virtual {v2, v3}, Lru/yandex/cg;->setScreenPoint(Lru/yandex/yandexmapkit/utils/ScreenPoint;)V

    invoke-virtual {p0}, Lru/yandex/cf;->getPrepareDrawList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
