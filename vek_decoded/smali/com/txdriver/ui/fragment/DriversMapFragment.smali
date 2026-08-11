.class public Lcom/txdriver/ui/fragment/DriversMapFragment;
.super Lcom/txdriver/ui/fragment/MapFragment;
.source "DriversMapFragment.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/ui/fragment/MapFragment;",
        "Lcom/txdriver/http/request/HttpRequest$OnResponseListener<",
        "Ljava/util/List<",
        "Lcom/txdriver/json/DriverLocation;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final UPDATE_INTERVAL:J


# instance fields
.field private mMapPinGreen:Landroid/graphics/drawable/Drawable;

.field private mMapPinRed:Landroid/graphics/drawable/Drawable;

.field private mTimer:Ljava/util/Timer;

.field private request:Lcom/txdriver/http/request/DriversLocationsRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    .line 27
    invoke-static {v0}, Lcom/txdriver/utils/TimeUtils;->secondsToMilliseconds(I)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/txdriver/ui/fragment/DriversMapFragment;->UPDATE_INTERVAL:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/MapFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/DriversMapFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/DriversMapFragment;->requestDrivers()V

    return-void
.end method

.method private requestDrivers()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriversMapFragment;->request:Lcom/txdriver/http/request/DriversLocationsRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/DriversLocationsRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 55
    :cond_0
    new-instance v0, Lcom/txdriver/http/request/DriversLocationsRequest;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/DriversMapFragment;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1}, Lcom/txdriver/http/request/DriversLocationsRequest;-><init>(Lcom/txdriver/App;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/DriversMapFragment;->request:Lcom/txdriver/http/request/DriversLocationsRequest;

    .line 56
    invoke-virtual {v0, p0}, Lcom/txdriver/http/request/DriversLocationsRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 57
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriversMapFragment;->request:Lcom/txdriver/http/request/DriversLocationsRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/DriversLocationsRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private showDriver(Lcom/txdriver/json/DriverLocation;)V
    .locals 8

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriversMapFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->isHideDriverInfoOnMap()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriversMapFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->showBusyDriversOnMap()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/DriversMapFragment;->getMap()Lcom/txdriver/ui/fragment/map/Map;

    move-result-object v0

    new-instance v2, Lcom/txdriver/ui/fragment/map/Item;

    new-instance v3, Lcom/txdriver/ui/fragment/map/Point;

    iget-object v4, p1, Lcom/txdriver/json/DriverLocation;->location:Lorg/osmdroid/util/GeoPoint;

    .line 102
    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    iget-object v6, p1, Lcom/txdriver/json/DriverLocation;->location:Lorg/osmdroid/util/GeoPoint;

    .line 103
    invoke-virtual {v6}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/txdriver/ui/fragment/map/Point;-><init>(DD)V

    iget-boolean v4, p1, Lcom/txdriver/json/DriverLocation;->free:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/txdriver/ui/fragment/DriversMapFragment;->mMapPinGreen:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/txdriver/ui/fragment/DriversMapFragment;->mMapPinRed:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-direct {v2, v1, v3, v4}, Lcom/txdriver/ui/fragment/map/Item;-><init>(Ljava/lang/String;Lcom/txdriver/ui/fragment/map/Point;Landroid/graphics/drawable/Drawable;)V

    .line 101
    invoke-virtual {v0, v2}, Lcom/txdriver/ui/fragment/map/Map;->addOverlayItem(Lcom/txdriver/ui/fragment/map/Item;)V

    goto/16 :goto_3

    .line 106
    :cond_1
    iget-boolean v0, p1, Lcom/txdriver/json/DriverLocation;->free:Z

    if-eqz v0, :cond_7

    .line 107
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/DriversMapFragment;->getMap()Lcom/txdriver/ui/fragment/map/Map;

    move-result-object v0

    new-instance v2, Lcom/txdriver/ui/fragment/map/Item;

    new-instance v3, Lcom/txdriver/ui/fragment/map/Point;

    iget-object v4, p1, Lcom/txdriver/json/DriverLocation;->location:Lorg/osmdroid/util/GeoPoint;

    .line 108
    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    iget-object v6, p1, Lcom/txdriver/json/DriverLocation;->location:Lorg/osmdroid/util/GeoPoint;

    .line 109
    invoke-virtual {v6}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/txdriver/ui/fragment/map/Point;-><init>(DD)V

    iget-object v4, p0, Lcom/txdriver/ui/fragment/DriversMapFragment;->mMapPinGreen:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v1, v3, v4}, Lcom/txdriver/ui/fragment/map/Item;-><init>(Ljava/lang/String;Lcom/txdriver/ui/fragment/map/Point;Landroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-virtual {v0, v2}, Lcom/txdriver/ui/fragment/map/Map;->addOverlayItem(Lcom/txdriver/ui/fragment/map/Item;)V

    goto/16 :goto_3

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriversMapFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->showBusyDriversOnMap()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/DriversMapFragment;->getMap()Lcom/txdriver/ui/fragment/map/Map;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/fragment/map/Item;

    iget-object v2, p1, Lcom/txdriver/json/DriverLocation;->callSign:Ljava/lang/String;

    new-instance v3, Lcom/txdriver/ui/fragment/map/Point;

    iget-object v4, p1, Lcom/txdriver/json/DriverLocation;->location:Lorg/osmdroid/util/GeoPoint;

    .line 116
    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    iget-object v6, p1, Lcom/txdriver/json/DriverLocation;->location:Lorg/osmdroid/util/GeoPoint;

    .line 117
    invoke-virtual {v6}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/txdriver/ui/fragment/map/Point;-><init>(DD)V

    iget-boolean v4, p1, Lcom/txdriver/json/DriverLocation;->free:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/txdriver/ui/fragment/DriversMapFragment;->mMapPinGreen:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/txdriver/ui/fragment/DriversMapFragment;->mMapPinRed:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-direct {v1, v2, v3, v4}, Lcom/txdriver/ui/fragment/map/Item;-><init>(Ljava/lang/String;Lcom/txdriver/ui/fragment/map/Point;Landroid/graphics/drawable/Drawable;)V

    .line 115
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/map/Map;->addOverlayItem(Lcom/txdriver/ui/fragment/map/Item;)V

    goto/16 :goto_3

    .line 120
    :cond_4
    iget-boolean v0, p1, Lcom/txdriver/json/DriverLocation;->free:Z

    if-eqz v0, :cond_7

    .line 121
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/DriversMapFragment;->getMap()Lcom/txdriver/ui/fragment/map/Map;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/fragment/map/Item;

    iget-object v2, p1, Lcom/txdriver/json/DriverLocation;->callSign:Ljava/lang/String;

    new-instance v3, Lcom/txdriver/ui/fragment/map/Point;

    iget-object v4, p1, Lcom/txdriver/json/DriverLocation;->location:Lorg/osmdroid/util/GeoPoint;

    .line 122
    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    iget-object v6, p1, Lcom/txdriver/json/DriverLocation;->location:Lorg/osmdroid/util/GeoPoint;

    .line 123
    invoke-virtual {v6}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/txdriver/ui/fragment/map/Point;-><init>(DD)V

    iget-object v4, p0, Lcom/txdriver/ui/fragment/DriversMapFragment;->mMapPinGreen:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v2, v3, v4}, Lcom/txdriver/ui/fragment/map/Item;-><init>(Ljava/lang/String;Lcom/txdriver/ui/fragment/map/Point;Landroid/graphics/drawable/Drawable;)V

    .line 121
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/map/Map;->addOverlayItem(Lcom/txdriver/ui/fragment/map/Item;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    .line 129
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriversMapFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->showBusyDriversOnMap()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 130
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/DriversMapFragment;->getMap()Lcom/txdriver/ui/fragment/map/Map;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/fragment/map/Item;

    iget-object v2, p1, Lcom/txdriver/json/DriverLocation;->callSign:Ljava/lang/String;

    new-instance v3, Lcom/txdriver/ui/fragment/map/Point;

    iget-object v4, p1, Lcom/txdriver/json/DriverLocation;->location:Lorg/osmdroid/util/GeoPoint;

    .line 131
    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    iget-object v6, p1, Lcom/txdriver/json/DriverLocation;->location:Lorg/osmdroid/util/GeoPoint;

    .line 132
    invoke-virtual {v6}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/txdriver/ui/fragment/map/Point;-><init>(DD)V

    iget-boolean p1, p1, Lcom/txdriver/json/DriverLocation;->free:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/txdriver/ui/fragment/DriversMapFragment;->mMapPinGreen:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/txdriver/ui/fragment/DriversMapFragment;->mMapPinRed:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-direct {v1, v2, v3, p1}, Lcom/txdriver/ui/fragment/map/Item;-><init>(Ljava/lang/String;Lcom/txdriver/ui/fragment/map/Point;Landroid/graphics/drawable/Drawable;)V

    .line 130
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/map/Map;->addOverlayItem(Lcom/txdriver/ui/fragment/map/Item;)V

    goto :goto_3

    .line 135
    :cond_6
    iget-boolean v0, p1, Lcom/txdriver/json/DriverLocation;->free:Z

    if-eqz v0, :cond_7

    .line 136
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/DriversMapFragment;->getMap()Lcom/txdriver/ui/fragment/map/Map;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/fragment/map/Item;

    iget-object v2, p1, Lcom/txdriver/json/DriverLocation;->callSign:Ljava/lang/String;

    new-instance v3, Lcom/txdriver/ui/fragment/map/Point;

    iget-object v4, p1, Lcom/txdriver/json/DriverLocation;->location:Lorg/osmdroid/util/GeoPoint;

    .line 137
    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    iget-object p1, p1, Lcom/txdriver/json/DriverLocation;->location:Lorg/osmdroid/util/GeoPoint;

    .line 138
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/txdriver/ui/fragment/map/Point;-><init>(DD)V

    iget-object p1, p0, Lcom/txdriver/ui/fragment/DriversMapFragment;->mMapPinGreen:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v2, v3, p1}, Lcom/txdriver/ui/fragment/map/Item;-><init>(Ljava/lang/String;Lcom/txdriver/ui/fragment/map/Point;Landroid/graphics/drawable/Drawable;)V

    .line 136
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/map/Map;->addOverlayItem(Lcom/txdriver/ui/fragment/map/Item;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private startReceiveDrivers()V
    .locals 6

    .line 42
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/DriversMapFragment;->mTimer:Ljava/util/Timer;

    .line 43
    new-instance v1, Lcom/txdriver/ui/fragment/DriversMapFragment$1;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/fragment/DriversMapFragment$1;-><init>(Lcom/txdriver/ui/fragment/DriversMapFragment;)V

    sget-wide v4, Lcom/txdriver/ui/fragment/DriversMapFragment;->UPDATE_INTERVAL:J

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private stopReceiveDrivers()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriversMapFragment;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/MapFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/DriversMapFragment;->getMap()Lcom/txdriver/ui/fragment/map/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriversMapFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/fragment/map/Map;->scrollToLocation(Landroid/location/Location;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 78
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/DriversMapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08009c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/fragment/DriversMapFragment;->mMapPinGreen:Landroid/graphics/drawable/Drawable;

    .line 79
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/DriversMapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08009d

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/fragment/DriversMapFragment;->mMapPinRed:Landroid/graphics/drawable/Drawable;

    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/txdriver/ui/fragment/MapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/DriversMapFragment;->onResponse(Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/json/DriverLocation;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/DriversMapFragment;->getMap()Lcom/txdriver/ui/fragment/map/Map;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/ui/fragment/map/Map;->clearOverlayItems()V

    .line 92
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/json/DriverLocation;

    .line 93
    invoke-direct {p0, v0}, Lcom/txdriver/ui/fragment/DriversMapFragment;->showDriver(Lcom/txdriver/json/DriverLocation;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 35
    invoke-super {p0}, Lcom/txdriver/ui/fragment/MapFragment;->onStart()V

    .line 36
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriversMapFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->isShowDriversOnMap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/DriversMapFragment;->startReceiveDrivers()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 62
    invoke-super {p0}, Lcom/txdriver/ui/fragment/MapFragment;->onStop()V

    .line 63
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/DriversMapFragment;->stopReceiveDrivers()V

    .line 64
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriversMapFragment;->request:Lcom/txdriver/http/request/DriversLocationsRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/DriversLocationsRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    :cond_0
    return-void
.end method
