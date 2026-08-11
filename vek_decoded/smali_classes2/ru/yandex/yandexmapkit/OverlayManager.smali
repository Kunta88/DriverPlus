.class public Lru/yandex/yandexmapkit/OverlayManager;
.super Ljava/lang/Object;


# instance fields
.field private final mBalloon:Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

.field private mMapController:Lru/yandex/yandexmapkit/MapController;

.field private mMapOfOverlay:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/MapController;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/yandex/yandexmapkit/OverlayManager;->mMapController:Lru/yandex/yandexmapkit/MapController;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lru/yandex/yandexmapkit/OverlayManager;->mMapOfOverlay:Ljava/util/Map;

    new-instance v0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    invoke-direct {v0, p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;-><init>(Lru/yandex/yandexmapkit/MapController;)V

    iput-object v0, p0, Lru/yandex/yandexmapkit/OverlayManager;->mBalloon:Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->setVisible(Z)V

    new-instance v1, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lru/yandex/yandexmapkit/utils/GeoPoint;

    const-wide v4, 0x402f47ae147ae148L    # 15.64

    const-wide v6, 0x4031800000000000L    # 17.5

    invoke-direct {v3, v4, v5, v6, v7}, Lru/yandex/yandexmapkit/utils/GeoPoint;-><init>(DD)V

    invoke-direct {v1, v2, v3}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;-><init>(Landroid/content/Context;Lru/yandex/yandexmapkit/utils/GeoPoint;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->setBalloonItem(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/OverlayManager;->addOverlay(Lru/yandex/yandexmapkit/overlay/Overlay;)V

    new-instance v0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-direct {v0, p1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;-><init>(Lru/yandex/yandexmapkit/MapController;)V

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/OverlayManager;->addOverlay(Lru/yandex/yandexmapkit/overlay/Overlay;)V

    invoke-direct {p0}, Lru/yandex/yandexmapkit/OverlayManager;->initLogo()V

    return-void
.end method

.method private initLogo()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/OverlayManager;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "yandex.application"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lru/yandex/cf;

    iget-object v1, p0, Lru/yandex/yandexmapkit/OverlayManager;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-direct {v0, v1}, Lru/yandex/cf;-><init>(Lru/yandex/yandexmapkit/MapController;)V

    :goto_0
    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/OverlayManager;->addOverlay(Lru/yandex/yandexmapkit/overlay/Overlay;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Lru/yandex/cf;

    iget-object v2, p0, Lru/yandex/yandexmapkit/OverlayManager;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-direct {v1, v2}, Lru/yandex/cf;-><init>(Lru/yandex/yandexmapkit/MapController;)V

    invoke-virtual {p0, v1}, Lru/yandex/yandexmapkit/OverlayManager;->addOverlay(Lru/yandex/yandexmapkit/overlay/Overlay;)V

    throw v0

    :catch_0
    new-instance v0, Lru/yandex/cf;

    iget-object v1, p0, Lru/yandex/yandexmapkit/OverlayManager;->mMapController:Lru/yandex/yandexmapkit/MapController;

    invoke-direct {v0, v1}, Lru/yandex/cf;-><init>(Lru/yandex/yandexmapkit/MapController;)V

    goto :goto_0
.end method


# virtual methods
.method public addOverlay(Lru/yandex/yandexmapkit/overlay/Overlay;)V
    .locals 2

    iget-object v0, p0, Lru/yandex/yandexmapkit/OverlayManager;->mMapOfOverlay:Ljava/util/Map;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/Overlay;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lru/yandex/yandexmapkit/OverlayManager;->mMapOfOverlay:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/OverlayManager;->sortByValue(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lru/yandex/yandexmapkit/OverlayManager;->mMapOfOverlay:Ljava/util/Map;

    return-void
.end method

.method public destroyed()V
    .locals 1

    sget v0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->ID:I

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/OverlayManager;->getOverlay(I)Lru/yandex/yandexmapkit/overlay/Overlay;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->m()V

    :cond_0
    return-void
.end method

.method public getBalloon()Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/OverlayManager;->mBalloon:Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    return-object v0
.end method

.method public getMyLocation()Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;
    .locals 1

    sget v0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->ID:I

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/OverlayManager;->getOverlay(I)Lru/yandex/yandexmapkit/overlay/Overlay;

    move-result-object v0

    check-cast v0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    return-object v0
.end method

.method public getOverlay(I)Lru/yandex/yandexmapkit/overlay/Overlay;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/OverlayManager;->mMapOfOverlay:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/yandex/yandexmapkit/overlay/Overlay;

    return-object p1
.end method

.method public getOverlays()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lru/yandex/yandexmapkit/OverlayManager;->mMapOfOverlay:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public onDoubleTap(FF)Z
    .locals 2

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/OverlayManager;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/yandex/yandexmapkit/overlay/Overlay;

    invoke-virtual {v1, p1, p2}, Lru/yandex/yandexmapkit/overlay/Overlay;->onDoubleTap(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onDown(FF)Z
    .locals 2

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/OverlayManager;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/yandex/yandexmapkit/overlay/Overlay;

    invoke-virtual {v1, p1, p2}, Lru/yandex/yandexmapkit/overlay/Overlay;->onDown(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(FF)Z
    .locals 2

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/OverlayManager;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/yandex/yandexmapkit/overlay/Overlay;

    invoke-virtual {v1, p1, p2}, Lru/yandex/yandexmapkit/overlay/Overlay;->onLongPress(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onScroll(FFFF)Z
    .locals 2

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/OverlayManager;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/yandex/yandexmapkit/overlay/Overlay;

    invoke-virtual {v1, p1, p2, p3, p4}, Lru/yandex/yandexmapkit/overlay/Overlay;->onScroll(FFFF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(FF)Z
    .locals 2

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/OverlayManager;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/yandex/yandexmapkit/overlay/Overlay;

    invoke-virtual {v1, p1, p2}, Lru/yandex/yandexmapkit/overlay/Overlay;->onSingleTapUp(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/OverlayManager;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/yandex/yandexmapkit/overlay/Overlay;

    invoke-virtual {v1, p1}, Lru/yandex/yandexmapkit/overlay/Overlay;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/OverlayManager;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/yandex/yandexmapkit/overlay/Overlay;

    invoke-virtual {v1, p1}, Lru/yandex/yandexmapkit/overlay/Overlay;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onUp(FF)Z
    .locals 2

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/OverlayManager;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/yandex/yandexmapkit/overlay/Overlay;

    invoke-virtual {v1, p1, p2}, Lru/yandex/yandexmapkit/overlay/Overlay;->onUp(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public prepareDraw()Ljava/util/Map;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/OverlayManager;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/yandex/yandexmapkit/overlay/Overlay;

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/overlay/Overlay;->prepareDraw()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/yandex/yandexmapkit/overlay/OverlayItem;

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/overlay/Overlay;->getIRender()Lru/yandex/yandexmapkit/overlay/IRender;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public removeOverlay(Lru/yandex/yandexmapkit/overlay/Overlay;)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/OverlayManager;->mMapOfOverlay:Ljava/util/Map;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/Overlay;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resume()V
    .locals 1

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/OverlayManager;->getMyLocation()Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->l()V

    return-void
.end method

.method public sortByValue(Ljava/util/Map;)Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/yandex/yandexmapkit/overlay/Overlay;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/Overlay;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p1
.end method
