.class public Lcom/txdriver/ui/fragment/map/OsmMap;
.super Lcom/txdriver/ui/fragment/map/Map;
.source "OsmMap.java"


# instance fields
.field private final app:Lcom/txdriver/App;

.field private mapView:Lorg/osmdroid/views/MapView;

.field final markers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private myLocationOverlay:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

.field private polyline:Lorg/osmdroid/views/overlay/Polyline;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/map/Map;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->markers:Ljava/util/List;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/txdriver/App;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->app:Lcom/txdriver/App;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/map/OsmMap;)Lorg/osmdroid/views/MapView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    return-object p0
.end method


# virtual methods
.method public addOverlayItem(Lcom/txdriver/ui/fragment/map/Item;)V
    .locals 6

    .line 55
    new-instance v0, Lorg/osmdroid/views/overlay/Marker;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 56
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/map/Item;->getPoint()Lcom/txdriver/ui/fragment/map/Point;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/ui/fragment/map/Point;->getLat()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/map/Item;->getPoint()Lcom/txdriver/ui/fragment/map/Point;

    move-result-object v4

    invoke-virtual {v4}, Lcom/txdriver/ui/fragment/map/Point;->getLng()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 57
    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/map/Item;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/map/Item;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3f4ccccd    # 0.8f

    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/overlay/Marker;->setAnchor(FF)V

    const v2, 0x3e99999a    # 0.3f

    .line 60
    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/overlay/Marker;->setInfoWindowAnchor(FF)V

    .line 61
    new-instance v1, Lcom/txdriver/ui/fragment/map/OsmMap$1;

    iget-object v2, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    const v3, 0x7f0c0036

    invoke-direct {v1, p0, v3, v2, p1}, Lcom/txdriver/ui/fragment/map/OsmMap$1;-><init>(Lcom/txdriver/ui/fragment/map/OsmMap;ILorg/osmdroid/views/MapView;Lcom/txdriver/ui/fragment/map/Item;)V

    .line 73
    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    .line 74
    iget-object p1, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object p1, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->markers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOverlays()V
    .locals 2

    .line 45
    new-instance v0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->myLocationOverlay:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    .line 46
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->myLocationOverlay:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v0, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->polyline:Lorg/osmdroid/views/overlay/Polyline;

    const v1, -0xffff01

    .line 48
    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    .line 49
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->polyline:Lorg/osmdroid/views/overlay/Polyline;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    .line 50
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->polyline:Lorg/osmdroid/views/overlay/Polyline;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/ui/fragment/map/Point;

    .line 184
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lcom/txdriver/ui/fragment/map/Point;->getLat()D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/txdriver/ui/fragment/map/Point;->getLng()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->polyline:Lorg/osmdroid/views/overlay/Polyline;

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    return-void
.end method

.method public clearCache()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->clearTileCache()V

    :cond_0
    return-void
.end method

.method public clearOverlayItems()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->markers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Marker;

    .line 88
    iget-object v2, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1, v2}, Lorg/osmdroid/views/overlay/Marker;->remove(Lorg/osmdroid/views/MapView;)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->markers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public createView()Landroid/view/View;
    .locals 3

    .line 95
    new-instance v0, Lorg/osmdroid/views/MapView;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/map/OsmMap;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    .line 96
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getMap()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenStreetMap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    new-instance v1, Lcom/txdriver/ui/fragment/map/MapnikTileSource;

    iget-object v2, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->app:Lcom/txdriver/App;

    invoke-direct {v1, v2}, Lcom/txdriver/ui/fragment/map/MapnikTileSource;-><init>(Lcom/txdriver/App;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    new-instance v1, Lcom/txdriver/ui/fragment/map/GoogleTileSource;

    invoke-direct {v1}, Lcom/txdriver/ui/fragment/map/GoogleTileSource;-><init>()V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/osmdroid/views/MapView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 104
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, v2}, Lorg/osmdroid/views/MapView;->setMultiTouchControls(Z)V

    const/16 v0, 0x11

    .line 105
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/map/OsmMap;->setZoomLevel(I)V

    .line 106
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    return-object v0
.end method

.method public findMe()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->myLocationOverlay:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->getMyLocation()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v1, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    const/16 v0, 0x11

    .line 211
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/map/OsmMap;->setZoomLevel(I)V

    :cond_0
    return-void
.end method

.method public getCenter()Lcom/txdriver/ui/fragment/map/Point;
    .locals 5

    .line 159
    new-instance v0, Lcom/txdriver/ui/fragment/map/Point;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/txdriver/ui/fragment/map/Point;-><init>(DD)V

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    return-object v0
.end method

.method public getZoomLevel()I
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v0

    return v0
.end method

.method public scrollToLocation(Landroid/location/Location;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v1, p1}, Lorg/osmdroid/util/GeoPoint;-><init>(Landroid/location/Location;)V

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    :cond_0
    return-void
.end method

.method public setCenter(Lcom/txdriver/ui/fragment/map/Point;)V
    .locals 6

    .line 164
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/map/Point;->getLat()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/map/Point;->getLng()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    return-void
.end method

.method public setEnabledMyLocation(Z)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->myLocationOverlay:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableMyLocation()Z

    .line 172
    iget-object p1, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->myLocationOverlay:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableFollowLocation()V

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableMyLocation()V

    .line 175
    iget-object p1, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->myLocationOverlay:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableFollowLocation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setZoomLevel(I)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/osmdroid/api/IMapController;->setZoom(I)I

    return-void
.end method

.method public setZoomToSpanAllItems()V
    .locals 11

    .line 111
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->markers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    .line 115
    iget-object v2, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->markers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/high16 v1, -0x80000000

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osmdroid/views/overlay/Marker;

    .line 116
    invoke-virtual {v5}, Lorg/osmdroid/views/overlay/Marker;->getPosition()Lorg/osmdroid/util/GeoPoint;

    move-result-object v5

    .line 117
    invoke-interface {v5}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v6

    .line 118
    invoke-interface {v5}, Lorg/osmdroid/api/IGeoPoint;->getLongitudeE6()I

    move-result v5

    .line 119
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 120
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 121
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 122
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_0

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->myLocationOverlay:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->getMyLocation()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 126
    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v5

    .line 127
    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v2

    .line 128
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 129
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 130
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 131
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_1
    sub-int v7, v0, v3

    sub-int v8, v1, v4

    add-int v9, v0, v3

    add-int v10, v1, v4

    .line 137
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    new-instance v1, Lcom/txdriver/ui/fragment/map/OsmMap$2;

    move-object v5, v1

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/txdriver/ui/fragment/map/OsmMap$2;-><init>(Lcom/txdriver/ui/fragment/map/OsmMap;IIII)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public zoomIn()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IMapController;->zoomIn()Z

    return-void
.end method

.method public zoomOut()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IMapController;->zoomOut()Z

    return-void
.end method
