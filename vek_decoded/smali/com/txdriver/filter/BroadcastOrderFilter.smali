.class public Lcom/txdriver/filter/BroadcastOrderFilter;
.super Ljava/lang/Object;
.source "BroadcastOrderFilter.java"


# instance fields
.field private final app:Lcom/txdriver/App;

.field private order:Lcom/txdriver/socket/data/OrderData;

.field private final preferences:Lcom/txdriver/filter/FilterPreferences;

.field private final tab:Lcom/txdriver/db/OrderTab;


# direct methods
.method public constructor <init>(Lcom/txdriver/App;Lcom/txdriver/socket/data/OrderData;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/txdriver/filter/BroadcastOrderFilter;->app:Lcom/txdriver/App;

    .line 23
    iput-object p2, p0, Lcom/txdriver/filter/BroadcastOrderFilter;->order:Lcom/txdriver/socket/data/OrderData;

    .line 24
    invoke-interface {p2}, Lcom/txdriver/socket/data/OrderData;->getOrderType()I

    move-result p2

    invoke-static {p2}, Lcom/txdriver/db/OrderTab;->getByOrderType(I)Lcom/txdriver/db/OrderTab;

    move-result-object p2

    iput-object p2, p0, Lcom/txdriver/filter/BroadcastOrderFilter;->tab:Lcom/txdriver/db/OrderTab;

    .line 25
    new-instance v0, Lcom/txdriver/filter/FilterPreferences;

    if-eqz p2, :cond_0

    iget p2, p2, Lcom/txdriver/db/OrderTab;->tabId:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {v0, p1, p2}, Lcom/txdriver/filter/FilterPreferences;-><init>(Lcom/txdriver/App;I)V

    iput-object v0, p0, Lcom/txdriver/filter/BroadcastOrderFilter;->preferences:Lcom/txdriver/filter/FilterPreferences;

    return-void
.end method


# virtual methods
.method public isAutoAccept()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/txdriver/filter/BroadcastOrderFilter;->tab:Lcom/txdriver/db/OrderTab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/txdriver/filter/BroadcastOrderFilter;->preferences:Lcom/txdriver/filter/FilterPreferences;

    invoke-virtual {v0}, Lcom/txdriver/filter/FilterPreferences;->isAutoAcceptFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/txdriver/filter/BroadcastOrderFilter;->preferences:Lcom/txdriver/filter/FilterPreferences;

    invoke-virtual {v0}, Lcom/txdriver/filter/FilterPreferences;->isFilterEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/txdriver/filter/BroadcastOrderFilter;->preferences:Lcom/txdriver/filter/FilterPreferences;

    invoke-virtual {v0}, Lcom/txdriver/filter/FilterPreferences;->isAutoAccept()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFilter()Z
    .locals 12

    .line 40
    iget-object v0, p0, Lcom/txdriver/filter/BroadcastOrderFilter;->tab:Lcom/txdriver/db/OrderTab;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/txdriver/filter/BroadcastOrderFilter;->preferences:Lcom/txdriver/filter/FilterPreferences;

    invoke-virtual {v0}, Lcom/txdriver/filter/FilterPreferences;->isFilterEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/txdriver/filter/BroadcastOrderFilter;->preferences:Lcom/txdriver/filter/FilterPreferences;

    invoke-virtual {v0}, Lcom/txdriver/filter/FilterPreferences;->isRadiusFilterEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/txdriver/filter/BroadcastOrderFilter;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    .line 48
    iget-object v3, p0, Lcom/txdriver/filter/BroadcastOrderFilter;->preferences:Lcom/txdriver/filter/FilterPreferences;

    invoke-virtual {v3}, Lcom/txdriver/filter/FilterPreferences;->getRadiusFilter()I

    move-result v3

    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    iget-object v0, p0, Lcom/txdriver/filter/BroadcastOrderFilter;->order:Lcom/txdriver/socket/data/OrderData;

    invoke-interface {v0}, Lcom/txdriver/socket/data/OrderData;->getLat()D

    move-result-wide v8

    iget-object v0, p0, Lcom/txdriver/filter/BroadcastOrderFilter;->order:Lcom/txdriver/socket/data/OrderData;

    invoke-interface {v0}, Lcom/txdriver/socket/data/OrderData;->getLng()D

    move-result-wide v10

    invoke-static/range {v4 .. v11}, Lcom/txdriver/location/LocationUtils;->distanceBetween(DDDD)D

    move-result-wide v4

    int-to-double v6, v3

    cmpl-double v0, v4, v6

    if-lez v0, :cond_2

    return v2

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/txdriver/filter/BroadcastOrderFilter;->preferences:Lcom/txdriver/filter/FilterPreferences;

    invoke-virtual {v0}, Lcom/txdriver/filter/FilterPreferences;->isDestionationFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 54
    iget-object v0, p0, Lcom/txdriver/filter/BroadcastOrderFilter;->preferences:Lcom/txdriver/filter/FilterPreferences;

    invoke-virtual {v0}, Lcom/txdriver/filter/FilterPreferences;->getDestinationParkingFilter()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 55
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 56
    :goto_0
    iget-object v4, p0, Lcom/txdriver/filter/BroadcastOrderFilter;->order:Lcom/txdriver/socket/data/OrderData;

    invoke-interface {v4}, Lcom/txdriver/socket/data/OrderData;->getDestinationParkingId()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/txdriver/filter/BroadcastOrderFilter;->order:Lcom/txdriver/socket/data/OrderData;

    invoke-interface {v4}, Lcom/txdriver/socket/data/OrderData;->getDestinationParkingId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_4
    const/4 v4, -0x1

    :goto_1
    if-eqz v3, :cond_5

    .line 57
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    .line 61
    :cond_5
    iget-object v0, p0, Lcom/txdriver/filter/BroadcastOrderFilter;->preferences:Lcom/txdriver/filter/FilterPreferences;

    invoke-virtual {v0}, Lcom/txdriver/filter/FilterPreferences;->isPriceFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 62
    iget-object v0, p0, Lcom/txdriver/filter/BroadcastOrderFilter;->order:Lcom/txdriver/socket/data/OrderData;

    invoke-interface {v0}, Lcom/txdriver/socket/data/OrderData;->getPrice()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/txdriver/filter/BroadcastOrderFilter;->preferences:Lcom/txdriver/filter/FilterPreferences;

    invoke-virtual {v0}, Lcom/txdriver/filter/FilterPreferences;->isNonePriceOrders()Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/txdriver/filter/BroadcastOrderFilter;->order:Lcom/txdriver/socket/data/OrderData;

    invoke-interface {v0}, Lcom/txdriver/socket/data/OrderData;->getPrice()D

    move-result-wide v3

    .line 63
    :goto_2
    iget-object v0, p0, Lcom/txdriver/filter/BroadcastOrderFilter;->preferences:Lcom/txdriver/filter/FilterPreferences;

    invoke-virtual {v0}, Lcom/txdriver/filter/FilterPreferences;->getPriceFilter()I

    move-result v0

    int-to-double v5, v0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method public isFilterEnabled()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/txdriver/filter/BroadcastOrderFilter;->preferences:Lcom/txdriver/filter/FilterPreferences;

    invoke-virtual {v0}, Lcom/txdriver/filter/FilterPreferences;->isFilterEnabled()Z

    move-result v0

    return v0
.end method
