.class public Lcom/txdriver/ui/fragment/map/YandexMap;
.super Lcom/txdriver/ui/fragment/map/Map;
.source "YandexMap.java"

# interfaces
.implements Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;


# instance fields
.field private mMapController:Lru/yandex/yandexmapkit/MapController;

.field private mMapView:Lru/yandex/yandexmapkit/MapView;

.field private mOverlay:Lru/yandex/yandexmapkit/overlay/Overlay;

.field private mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

.field private mPathOverlay:Lru/yandex/path/PathOverlay;

.field private mPinHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/map/Map;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/map/YandexMap;)Lru/yandex/yandexmapkit/MapController;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mMapController:Lru/yandex/yandexmapkit/MapController;

    return-object p0
.end method


# virtual methods
.method public addOverlayItem(Lcom/txdriver/ui/fragment/map/Item;)V
    .locals 5

    .line 57
    new-instance v0, Lru/yandex/yandexmapkit/utils/GeoPoint;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/map/Item;->getPoint()Lcom/txdriver/ui/fragment/map/Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/ui/fragment/map/Point;->getLat()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/map/Item;->getPoint()Lcom/txdriver/ui/fragment/map/Point;

    move-result-object v3

    invoke-virtual {v3}, Lcom/txdriver/ui/fragment/map/Point;->getLng()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lru/yandex/yandexmapkit/utils/GeoPoint;-><init>(DD)V

    .line 58
    new-instance v1, Lru/yandex/yandexmapkit/overlay/OverlayItem;

    .line 59
    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/map/Item;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lru/yandex/yandexmapkit/overlay/OverlayItem;-><init>(Lru/yandex/yandexmapkit/utils/GeoPoint;Landroid/graphics/drawable/Drawable;)V

    .line 60
    new-instance v0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/map/YandexMap;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getGeoPoint()Lru/yandex/yandexmapkit/utils/GeoPoint;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;-><init>(Landroid/content/Context;Lru/yandex/yandexmapkit/utils/GeoPoint;)V

    .line 61
    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/map/Item;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 62
    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->setVisible(Z)V

    .line 63
    invoke-virtual {v1, v0}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->setBalloonItem(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V

    .line 64
    iget p1, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mPinHeight:F

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {v1, p1}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->setOffsetY(I)V

    .line 65
    invoke-virtual {v0, p0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->setOnBalloonListener(Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;)V

    .line 66
    iget-object p1, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mOverlay:Lru/yandex/yandexmapkit/overlay/Overlay;

    invoke-virtual {p1, v1}, Lru/yandex/yandexmapkit/overlay/Overlay;->addOverlayItem(Lru/yandex/yandexmapkit/overlay/OverlayItem;)V

    return-void
.end method

.method public addOverlays()V
    .locals 2

    .line 49
    new-instance v0, Lru/yandex/yandexmapkit/overlay/Overlay;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-direct {v0, v1}, Lru/yandex/yandexmapkit/overlay/Overlay;-><init>(Lru/yandex/yandexmapkit/MapController;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mOverlay:Lru/yandex/yandexmapkit/overlay/Overlay;

    .line 50
    iget-object v1, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

    invoke-virtual {v1, v0}, Lru/yandex/yandexmapkit/OverlayManager;->addOverlay(Lru/yandex/yandexmapkit/overlay/Overlay;)V

    .line 51
    new-instance v0, Lru/yandex/path/PathOverlay;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-direct {v0, v1}, Lru/yandex/path/PathOverlay;-><init>(Lru/yandex/yandexmapkit/MapController;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mPathOverlay:Lru/yandex/path/PathOverlay;

    .line 52
    iget-object v1, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

    invoke-virtual {v1, v0}, Lru/yandex/yandexmapkit/OverlayManager;->addOverlay(Lru/yandex/yandexmapkit/overlay/Overlay;)V

    return-void
.end method

.method public buildRoute(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/ui/fragment/map/Point;",
            ">;)V"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/ui/fragment/map/Point;

    .line 168
    new-instance v2, Lru/yandex/yandexmapkit/utils/GeoPoint;

    invoke-virtual {v1}, Lcom/txdriver/ui/fragment/map/Point;->getLat()D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/txdriver/ui/fragment/map/Point;->getLng()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lru/yandex/yandexmapkit/utils/GeoPoint;-><init>(DD)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mPathOverlay:Lru/yandex/path/PathOverlay;

    invoke-virtual {p1, v0}, Lru/yandex/path/PathOverlay;->setPoints(Ljava/util/List;)V

    return-void
.end method

.method public clearOverlayItems()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mOverlay:Lru/yandex/yandexmapkit/overlay/Overlay;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/Overlay;->clearOverlayItems()V

    return-void
.end method

.method public createView()Landroid/view/View;
    .locals 3

    .line 84
    new-instance v0, Lru/yandex/yandexmapkit/MapView;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/map/YandexMap;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "qFr7m47u4s4EBJoPR~LMSZc16pBbkmppvNg4742dPXmC3~JZw1mkgauYIDeUM6kuLFuCH5DDLXLcgkbrlwK4KnILU01nydvjMv418CaGyzo="

    invoke-direct {v0, v1, v2}, Lru/yandex/yandexmapkit/MapView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mMapView:Lru/yandex/yandexmapkit/MapView;

    .line 85
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/MapView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mMapView:Lru/yandex/yandexmapkit/MapView;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapView;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mMapController:Lru/yandex/yandexmapkit/MapController;

    .line 89
    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getOverlayManager()Lru/yandex/yandexmapkit/OverlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

    .line 90
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/map/YandexMap;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v0, v1}, Lcom/txdriver/utils/Utils;->dipToPixels(Landroid/content/res/Resources;F)F

    move-result v0

    iput v0, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mPinHeight:F

    const/16 v0, 0x10

    .line 91
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/map/YandexMap;->setZoomLevel(I)V

    .line 92
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mMapView:Lru/yandex/yandexmapkit/MapView;

    return-object v0
.end method

.method public findMe()V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/OverlayManager;->getMyLocation()Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->getMyLocationItem()Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getGeoPoint()Lru/yandex/yandexmapkit/utils/GeoPoint;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mMapController:Lru/yandex/yandexmapkit/MapController;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v0, v2}, Lru/yandex/yandexmapkit/MapController;->setPositionAnimationTo(Lru/yandex/yandexmapkit/utils/GeoPoint;F)V

    :cond_0
    return-void
.end method

.method public getCenter()Lcom/txdriver/ui/fragment/map/Point;
    .locals 5

    .line 149
    new-instance v0, Lcom/txdriver/ui/fragment/map/Point;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/MapController;->getMapCenter()Lru/yandex/yandexmapkit/utils/GeoPoint;

    move-result-object v1

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLat()D

    move-result-wide v1

    iget-object v3, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v3}, Lru/yandex/yandexmapkit/MapController;->getMapCenter()Lru/yandex/yandexmapkit/utils/GeoPoint;

    move-result-object v3

    invoke-virtual {v3}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLon()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/txdriver/ui/fragment/map/Point;-><init>(DD)V

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mMapView:Lru/yandex/yandexmapkit/MapView;

    return-object v0
.end method

.method public getZoomLevel()I
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getZoomCurrent()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public onBalloonAnimationEnd(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V
    .locals 0

    return-void
.end method

.method public onBalloonAnimationStart(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V
    .locals 0

    return-void
.end method

.method public onBalloonHide(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V
    .locals 0

    return-void
.end method

.method public onBalloonShow(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V
    .locals 0

    return-void
.end method

.method public onBalloonViewClick(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;Landroid/view/View;)V
    .locals 7

    .line 196
    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOverlayItem()Lru/yandex/yandexmapkit/overlay/OverlayItem;

    move-result-object p2

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getGeoPoint()Lru/yandex/yandexmapkit/utils/GeoPoint;

    move-result-object p2

    .line 197
    new-instance v0, Lcom/txdriver/ui/fragment/map/Item;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/txdriver/ui/fragment/map/Point;

    .line 198
    invoke-virtual {p2}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLat()D

    move-result-wide v3

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLon()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/txdriver/ui/fragment/map/Point;-><init>(DD)V

    .line 199
    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOverlayItem()Lru/yandex/yandexmapkit/overlay/OverlayItem;

    move-result-object p1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/txdriver/ui/fragment/map/Item;-><init>(Ljava/lang/String;Lcom/txdriver/ui/fragment/map/Point;Landroid/graphics/drawable/Drawable;)V

    .line 200
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/map/YandexMap;->onBalloonItemClick(Lcom/txdriver/ui/fragment/map/Item;)V

    return-void
.end method

.method public scrollToLocation(Landroid/location/Location;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mMapController:Lru/yandex/yandexmapkit/MapController;

    new-instance v1, Lru/yandex/yandexmapkit/utils/GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 73
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lru/yandex/yandexmapkit/utils/GeoPoint;-><init>(DD)V

    .line 72
    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/MapController;->setPositionNoAnimationTo(Lru/yandex/yandexmapkit/utils/GeoPoint;)V

    :cond_0
    return-void
.end method

.method public setCenter(Lcom/txdriver/ui/fragment/map/Point;)V
    .locals 6

    .line 154
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mMapController:Lru/yandex/yandexmapkit/MapController;

    new-instance v1, Lru/yandex/yandexmapkit/utils/GeoPoint;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/map/Point;->getLat()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/map/Point;->getLng()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lru/yandex/yandexmapkit/utils/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/MapController;->setPositionNoAnimationTo(Lru/yandex/yandexmapkit/utils/GeoPoint;)V

    return-void
.end method

.method public setEnabledMyLocation(Z)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lru/yandex/yandexmapkit/OverlayManager;->getMyLocation()Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setZoomLevel(I)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mMapController:Lru/yandex/yandexmapkit/MapController;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/MapController;->setZoomCurrent(F)V

    return-void
.end method

.method public setZoomToSpanAllItems()V
    .locals 17

    move-object/from16 v10, p0

    .line 97
    iget-object v0, v10, Lcom/txdriver/ui/fragment/map/YandexMap;->mOverlay:Lru/yandex/yandexmapkit/overlay/Overlay;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/Overlay;->getOverlayItems()Ljava/util/List;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-wide/high16 v1, 0x36a0000000000000L    # 1.401298464324817E-45

    const-wide v3, 0x47efffffe0000000L    # 3.4028234663852886E38

    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v5, v3

    move-wide v7, v5

    move-wide v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lru/yandex/yandexmapkit/overlay/OverlayItem;

    .line 103
    invoke-virtual {v9}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getGeoPoint()Lru/yandex/yandexmapkit/utils/GeoPoint;

    move-result-object v9

    .line 104
    invoke-virtual {v9}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLat()D

    move-result-wide v11

    .line 105
    invoke-virtual {v9}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLon()D

    move-result-wide v13

    .line 106
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    .line 107
    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 108
    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 109
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, v10, Lcom/txdriver/ui/fragment/map/YandexMap;->mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/OverlayManager;->getMyLocation()Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->getMyLocationItem()Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getGeoPoint()Lru/yandex/yandexmapkit/utils/GeoPoint;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLat()D

    move-result-wide v11

    .line 117
    invoke-virtual {v0}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLon()D

    move-result-wide v13

    .line 118
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    .line 119
    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 120
    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 121
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    :cond_1
    sub-double v11, v1, v5

    sub-double v13, v3, v7

    add-double v15, v1, v5

    add-double v8, v3, v7

    .line 127
    iget-object v6, v10, Lcom/txdriver/ui/fragment/map/YandexMap;->mMapView:Lru/yandex/yandexmapkit/MapView;

    new-instance v7, Lcom/txdriver/ui/fragment/map/YandexMap$1;

    move-object v0, v7

    move-object/from16 v1, p0

    move-wide v2, v11

    move-wide v4, v13

    move-object v11, v6

    move-object v12, v7

    move-wide v6, v15

    invoke-direct/range {v0 .. v9}, Lcom/txdriver/ui/fragment/map/YandexMap$1;-><init>(Lcom/txdriver/ui/fragment/map/YandexMap;DDDD)V

    invoke-virtual {v11, v12}, Lru/yandex/yandexmapkit/MapView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public zoomIn()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->zoomIn()V

    return-void
.end method

.method public zoomOut()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/YandexMap;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->zoomOut()V

    return-void
.end method
