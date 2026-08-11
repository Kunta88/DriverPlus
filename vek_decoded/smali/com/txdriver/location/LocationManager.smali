.class public Lcom/txdriver/location/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/location/LocationManager$GpsDisableListener;,
        Lcom/txdriver/location/LocationManager$LocationChangeListener;
    }
.end annotation


# static fields
.field private static final MILLISECONDS_PER_SECOND:I = 0x3e8

.field private static final SMALLEST_DISPLACEMENT:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "LocationManager"

.field private static final UPDATE_INTERVAL:J

.field public static final UPDATE_INTERVAL_IN_SECONDS:I


# instance fields
.field private app:Lcom/txdriver/App;

.field private lastLocation:Landroid/location/Location;

.field private mGpsDisableListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/location/LocationManager$GpsDisableListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/location/LocationManager$LocationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mUpdatesRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/location/LocationManager;->mLocationChangeListeners:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/location/LocationManager;->mGpsDisableListeners:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/txdriver/location/LocationManager;->app:Lcom/txdriver/App;

    const-string v0, "location"

    .line 42
    invoke-virtual {p1, v0}, Lcom/txdriver/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/txdriver/location/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method private hasGpsProvider()Z
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/txdriver/location/LocationManager;->app:Lcom/txdriver/App;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/txdriver/location/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private hasNetworkProvider()Z
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/txdriver/location/LocationManager;->app:Lcom/txdriver/App;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/txdriver/location/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public declared-synchronized addGpsDisableListener(Lcom/txdriver/location/LocationManager$GpsDisableListener;)V
    .locals 1

    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/txdriver/location/LocationManager;->mGpsDisableListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addLocationChangeListener(Lcom/txdriver/location/LocationManager$LocationChangeListener;)V
    .locals 1

    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/txdriver/location/LocationManager;->mLocationChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getLastGpsLocation()Landroid/location/Location;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/txdriver/location/LocationManager;->app:Lcom/txdriver/App;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/txdriver/location/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getLastLocation()Landroid/location/Location;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/txdriver/location/LocationManager;->lastLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getLastNetworkLocation()Landroid/location/Location;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/txdriver/location/LocationManager;->app:Lcom/txdriver/App;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/txdriver/location/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized notifyGpsDisableListeners()V
    .locals 2

    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/txdriver/location/LocationManager;->mGpsDisableListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/location/LocationManager$GpsDisableListener;

    .line 139
    invoke-interface {v1}, Lcom/txdriver/location/LocationManager$GpsDisableListener;->onGpsDisabled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 141
    :cond_0
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

.method public declared-synchronized notifyLocationChangeListeners(Landroid/location/Location;)V
    .locals 2

    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/txdriver/location/LocationManager;->mLocationChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/location/LocationManager$LocationChangeListener;

    .line 145
    invoke-interface {v1, p1}, Lcom/txdriver/location/LocationManager$LocationChangeListener;->onLocationChanged(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 147
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 113
    new-instance v0, Lcom/txdriver/location/GPSLocation;

    invoke-direct {v0, p1}, Lcom/txdriver/location/GPSLocation;-><init>(Landroid/location/Location;)V

    .line 114
    iget-object p1, p0, Lcom/txdriver/location/LocationManager;->lastLocation:Landroid/location/Location;

    invoke-static {v0, p1}, Lcom/txdriver/location/LocationUtils;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p0, v0}, Lcom/txdriver/location/LocationManager;->notifyLocationChangeListeners(Landroid/location/Location;)V

    .line 116
    iput-object v0, p0, Lcom/txdriver/location/LocationManager;->lastLocation:Landroid/location/Location;

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    const-string v0, "gps"

    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/txdriver/location/LocationManager;->notifyGpsDisableListeners()V

    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized removeGpsDisableListener(Lcom/txdriver/location/LocationManager$GpsDisableListener;)V
    .locals 1

    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/txdriver/location/LocationManager;->mGpsDisableListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeLocationChangeListener(Lcom/txdriver/location/LocationManager$LocationChangeListener;)V
    .locals 1

    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/txdriver/location/LocationManager;->mLocationChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startUpdates()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 64
    invoke-virtual {p0, v0, v1}, Lcom/txdriver/location/LocationManager;->startUpdates(J)V

    return-void
.end method

.method public startUpdates(J)V
    .locals 7

    .line 69
    iget-boolean v0, p0, Lcom/txdriver/location/LocationManager;->mUpdatesRequested:Z

    if-eqz v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/txdriver/location/LocationManager;->hasGpsProvider()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/txdriver/location/LocationManager;->app:Lcom/txdriver/App;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/txdriver/location/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const/4 v5, 0x0

    const-string v2, "gps"

    move-wide v3, p1

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 78
    :cond_2
    invoke-direct {p0}, Lcom/txdriver/location/LocationManager;->hasNetworkProvider()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    iget-object v0, p0, Lcom/txdriver/location/LocationManager;->app:Lcom/txdriver/App;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 82
    :cond_3
    iget-object v1, p0, Lcom/txdriver/location/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const/4 v5, 0x0

    const-string v2, "network"

    move-wide v3, p1

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_4
    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/txdriver/location/LocationManager;->mUpdatesRequested:Z

    return-void
.end method

.method public stopUpdates()V
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/txdriver/location/LocationManager;->mUpdatesRequested:Z

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/txdriver/location/LocationManager;->hasGpsProvider()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/txdriver/location/LocationManager;->hasNetworkProvider()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/txdriver/location/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_2
    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/txdriver/location/LocationManager;->mUpdatesRequested:Z

    return-void
.end method
