.class public Lru/yandex/path/PathOverlay;
.super Lru/yandex/yandexmapkit/overlay/Overlay;
.source "PathOverlay.java"


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mGeoPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/yandex/yandexmapkit/utils/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlayItem:Lru/yandex/yandexmapkit/overlay/OverlayItem;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/MapController;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lru/yandex/yandexmapkit/overlay/Overlay;-><init>(Lru/yandex/yandexmapkit/MapController;)V

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lru/yandex/path/PathOverlay;->mGeoPoints:Ljava/util/List;

    .line 20
    new-instance p1, Lru/yandex/path/PathOverlayIRender;

    invoke-direct {p1, p0}, Lru/yandex/path/PathOverlayIRender;-><init>(Lru/yandex/path/PathOverlay;)V

    invoke-virtual {p0, p1}, Lru/yandex/path/PathOverlay;->setIRender(Lru/yandex/yandexmapkit/overlay/IRender;)V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getGeoPointsPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/yandex/yandexmapkit/utils/GeoPoint;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lru/yandex/path/PathOverlay;->mGeoPoints:Ljava/util/List;

    return-object v0
.end method

.method public prepareDraw()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/yandex/yandexmapkit/overlay/OverlayItem;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v1, p0, Lru/yandex/path/PathOverlay;->mGeoPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 40
    iget-object v1, p0, Lru/yandex/path/PathOverlay;->mOverlayItem:Lru/yandex/yandexmapkit/overlay/OverlayItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/yandex/yandexmapkit/utils/GeoPoint;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lru/yandex/path/PathOverlay;->mGeoPoints:Ljava/util/List;

    .line 30
    invoke-virtual {p0}, Lru/yandex/path/PathOverlay;->clearOverlayItems()V

    .line 31
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 32
    new-instance v0, Lru/yandex/yandexmapkit/overlay/OverlayItem;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/yandex/yandexmapkit/utils/GeoPoint;

    iget-object v1, p0, Lru/yandex/path/PathOverlay;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, p1, v1}, Lru/yandex/yandexmapkit/overlay/OverlayItem;-><init>(Lru/yandex/yandexmapkit/utils/GeoPoint;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lru/yandex/path/PathOverlay;->mOverlayItem:Lru/yandex/yandexmapkit/overlay/OverlayItem;

    :cond_0
    return-void
.end method
