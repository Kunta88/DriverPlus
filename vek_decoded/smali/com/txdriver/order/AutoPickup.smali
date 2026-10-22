.class public final Lcom/txdriver/order/AutoPickup;
.super Ljava/lang/Object;
.source "AutoPickup.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final WAIT_MS:J = 0x493e0L

.field private static instance:Lcom/txdriver/order/AutoPickup;


# instance fields
.field private final app:Lcom/txdriver/App;

.field private final arrivalGate:Lcom/txdriver/order/ArrivalGate;

.field private boundKey:Ljava/lang/String;

.field private button:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private deadline:J

.field private final departureGate:Lcom/txdriver/order/DepartureGate;

.field private final dwellGate:Lcom/txdriver/order/DwellGate;

.field private final handler:Landroid/os/Handler;

.field private key:Ljava/lang/String;

.field private lastSend:J

.field private lastState:B

.field private lastTick:J

.field private final prefs:Landroid/content/SharedPreferences;

.field private relevant:Z


# direct methods
.method private constructor <init>(Lcom/txdriver/App;)V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/txdriver/order/AutoPickup;->handler:Landroid/os/Handler;

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/txdriver/order/AutoPickup;->button:Ljava/lang/ref/WeakReference;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/txdriver/order/AutoPickup;->boundKey:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/txdriver/order/AutoPickup;->key:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/txdriver/order/ArrivalGate;

    invoke-direct {v0}, Lcom/txdriver/order/ArrivalGate;-><init>()V

    iput-object v0, p0, Lcom/txdriver/order/AutoPickup;->arrivalGate:Lcom/txdriver/order/ArrivalGate;

    .line 35
    new-instance v0, Lcom/txdriver/order/DepartureGate;

    invoke-direct {v0}, Lcom/txdriver/order/DepartureGate;-><init>()V

    iput-object v0, p0, Lcom/txdriver/order/AutoPickup;->departureGate:Lcom/txdriver/order/DepartureGate;

    .line 36
    new-instance v0, Lcom/txdriver/order/DwellGate;

    invoke-direct {v0}, Lcom/txdriver/order/DwellGate;-><init>()V

    iput-object v0, p0, Lcom/txdriver/order/AutoPickup;->dwellGate:Lcom/txdriver/order/DwellGate;

    .line 39
    iput-object p1, p0, Lcom/txdriver/order/AutoPickup;->app:Lcom/txdriver/App;

    .line 40
    const-string v0, "auto_pickup_wait"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/txdriver/App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/order/AutoPickup;->prefs:Landroid/content/SharedPreferences;

    .line 41
    return-void
.end method

.method public static bind(Lcom/txdriver/db/Order;Landroid/widget/Button;)V
    .registers 4

    .line 51
    sget-object v0, Lcom/txdriver/order/AutoPickup;->instance:Lcom/txdriver/order/AutoPickup;

    if-eqz v0, :cond_21

    if-nez p0, :cond_7

    goto :goto_21

    .line 52
    :cond_7
    sget-object v0, Lcom/txdriver/order/AutoPickup;->instance:Lcom/txdriver/order/AutoPickup;

    invoke-static {p0}, Lcom/txdriver/order/AutoPickup;->identity(Lcom/txdriver/db/Order;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/txdriver/order/AutoPickup;->boundKey:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/txdriver/order/AutoPickup;->instance:Lcom/txdriver/order/AutoPickup;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/txdriver/order/AutoPickup;->button:Ljava/lang/ref/WeakReference;

    .line 54
    sget-object p1, Lcom/txdriver/order/AutoPickup;->instance:Lcom/txdriver/order/AutoPickup;

    invoke-direct {p1, p0}, Lcom/txdriver/order/AutoPickup;->render(Lcom/txdriver/db/Order;)V

    .line 55
    invoke-static {}, Lcom/txdriver/order/AutoPickup;->signal()V

    .line 56
    return-void

    .line 51
    :cond_21
    :goto_21
    return-void
.end method

.method private departedClient(Lcom/txdriver/db/Order;)Z
    .registers 21

    .line 115
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/txdriver/order/AutoPickup;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v1

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/txdriver/db/Order;->getAddress()Lcom/txdriver/db/Address;

    move-result-object v2

    .line 117
    if-eqz v1, :cond_78

    if-eqz v2, :cond_78

    iget-wide v3, v2, Lcom/txdriver/db/Address;->lat:D

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-nez v7, :cond_22

    iget-wide v3, v2, Lcom/txdriver/db/Address;->lng:D

    cmpl-double v7, v3, v5

    if-eqz v7, :cond_78

    :cond_22
    iget-wide v3, v2, Lcom/txdriver/db/Address;->lat:D

    .line 118
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_78

    iget-wide v3, v2, Lcom/txdriver/db/Address;->lng:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_78

    iget-wide v3, v2, Lcom/txdriver/db/Address;->lat:D

    .line 119
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x4056800000000000L    # 90.0

    cmpl-double v7, v3, v5

    if-gtz v7, :cond_78

    iget-wide v3, v2, Lcom/txdriver/db/Address;->lng:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x4066800000000000L    # 180.0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_51

    goto :goto_78

    .line 123
    :cond_51
    iget-object v8, v0, Lcom/txdriver/order/AutoPickup;->departureGate:Lcom/txdriver/order/DepartureGate;

    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    div-long v9, v3, v5

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-wide v3, v0, Lcom/txdriver/order/AutoPickup;->deadline:J

    const-wide/32 v5, 0x493e0

    sub-long v13, v3, v5

    .line 125
    invoke-static {v1, v2}, Lcom/txdriver/utils/DistanceUtils;->getDistance(Landroid/location/Location;Lcom/txdriver/db/Address;)D

    move-result-wide v15

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v17

    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v18

    .line 123
    invoke-virtual/range {v8 .. v18}, Lcom/txdriver/order/DepartureGate;->accept(JJJDFZ)Z

    move-result v1

    return v1

    .line 120
    :cond_78
    :goto_78
    iget-object v1, v0, Lcom/txdriver/order/AutoPickup;->departureGate:Lcom/txdriver/order/DepartureGate;

    invoke-virtual {v1}, Lcom/txdriver/order/DepartureGate;->reset()V

    .line 121
    const/4 v1, 0x0

    return v1
.end method

.method private static identity(Lcom/txdriver/db/Order;)Ljava/lang/String;
    .registers 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/txdriver/db/Order;->orderId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private nearClient(Lcom/txdriver/db/Order;)Z
    .registers 22

    .line 81
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/txdriver/order/AutoPickup;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v1

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/txdriver/db/Order;->getAddress()Lcom/txdriver/db/Address;

    move-result-object v2

    .line 83
    const/4 v3, 0x0

    if-eqz v1, :cond_84

    if-eqz v2, :cond_84

    iget-wide v4, v2, Lcom/txdriver/db/Address;->lat:D

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-nez v8, :cond_24

    iget-wide v4, v2, Lcom/txdriver/db/Address;->lng:D

    cmpl-double v8, v4, v6

    if-nez v8, :cond_24

    goto :goto_84

    .line 84
    :cond_24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    .line 85
    const-wide/16 v6, 0x0

    cmp-long v10, v4, v6

    if-ltz v10, :cond_7e

    const-wide/16 v6, 0x7530

    cmp-long v10, v4, v6

    if-lez v10, :cond_3e

    goto :goto_7e

    .line 86
    :cond_3e
    iget-object v4, v0, Lcom/txdriver/order/AutoPickup;->app:Lcom/txdriver/App;

    invoke-virtual {v4}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/txdriver/preferences/Preferences;->getArrivedStateDistance()I

    move-result v4

    .line 88
    if-gtz v4, :cond_4f

    const/16 v4, 0x64

    const/16 v17, 0x64

    goto :goto_51

    :cond_4f
    move/from16 v17, v4

    .line 89
    :goto_51
    invoke-static {v1, v2}, Lcom/txdriver/utils/DistanceUtils;->getDistance(Landroid/location/Location;Lcom/txdriver/db/Address;)D

    move-result-wide v15

    .line 90
    iget-object v2, v0, Lcom/txdriver/order/AutoPickup;->app:Lcom/txdriver/App;

    move-object/from16 v4, p1

    invoke-static {v2, v4}, Lcom/txdriver/order/OrderHelper;->isFarFromClient(Lcom/txdriver/App;Lcom/txdriver/db/Order;)Z

    move-result v2

    if-eqz v2, :cond_65

    iget-object v1, v0, Lcom/txdriver/order/AutoPickup;->arrivalGate:Lcom/txdriver/order/ArrivalGate;

    invoke-virtual {v1}, Lcom/txdriver/order/ArrivalGate;->reset()V

    return v3

    .line 91
    :cond_65
    iget-object v10, v0, Lcom/txdriver/order/AutoPickup;->arrivalGate:Lcom/txdriver/order/ArrivalGate;

    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v2

    div-long v11, v2, v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 92
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v18

    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v19

    .line 91
    invoke-virtual/range {v10 .. v19}, Lcom/txdriver/order/ArrivalGate;->accept(JJDIFZ)Z

    move-result v1

    return v1

    .line 85
    :cond_7e
    :goto_7e
    iget-object v1, v0, Lcom/txdriver/order/AutoPickup;->arrivalGate:Lcom/txdriver/order/ArrivalGate;

    invoke-virtual {v1}, Lcom/txdriver/order/ArrivalGate;->reset()V

    return v3

    .line 83
    :cond_84
    :goto_84
    iget-object v1, v0, Lcom/txdriver/order/AutoPickup;->arrivalGate:Lcom/txdriver/order/ArrivalGate;

    invoke-virtual {v1}, Lcom/txdriver/order/ArrivalGate;->reset()V

    return v3
.end method

.method private qualifiedStay(Lcom/txdriver/db/Order;)Z
    .registers 20

    .line 96
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/txdriver/order/AutoPickup;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "dwell_qualified"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_14

    .line 97
    iget-object v1, v0, Lcom/txdriver/order/AutoPickup;->dwellGate:Lcom/txdriver/order/DwellGate;

    invoke-virtual {v1}, Lcom/txdriver/order/DwellGate;->restoreQualified()V

    .line 98
    return v4

    .line 100
    :cond_14
    iget-object v1, v0, Lcom/txdriver/order/AutoPickup;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v1

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/txdriver/db/Order;->getAddress()Lcom/txdriver/db/Address;

    move-result-object v5

    .line 102
    if-eqz v1, :cond_85

    if-eqz v5, :cond_85

    iget-wide v6, v5, Lcom/txdriver/db/Address;->lat:D

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-nez v10, :cond_34

    iget-wide v6, v5, Lcom/txdriver/db/Address;->lng:D

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_85

    :cond_34
    iget-object v6, v0, Lcom/txdriver/order/AutoPickup;->app:Lcom/txdriver/App;

    .line 103
    move-object/from16 v7, p1

    invoke-static {v6, v7}, Lcom/txdriver/order/OrderHelper;->isFarFromClient(Lcom/txdriver/App;Lcom/txdriver/db/Order;)Z

    move-result v6

    if-eqz v6, :cond_3f

    goto :goto_85

    .line 104
    :cond_3f
    iget-object v3, v0, Lcom/txdriver/order/AutoPickup;->app:Lcom/txdriver/App;

    invoke-virtual {v3}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/txdriver/preferences/Preferences;->getArrivedStateDistance()I

    move-result v3

    .line 105
    if-gtz v3, :cond_50

    const/16 v3, 0x64

    const/16 v15, 0x64

    goto :goto_51

    :cond_50
    move v15, v3

    .line 106
    :goto_51
    iget-object v6, v0, Lcom/txdriver/order/AutoPickup;->dwellGate:Lcom/txdriver/order/DwellGate;

    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v7

    const-wide/32 v9, 0xf4240

    div-long/2addr v7, v9

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/txdriver/order/AutoPickup;->deadline:J

    const-wide/32 v13, 0x493e0

    sub-long/2addr v11, v13

    .line 108
    invoke-static {v1, v5}, Lcom/txdriver/utils/DistanceUtils;->getDistance(Landroid/location/Location;Lcom/txdriver/db/Address;)D

    move-result-wide v13

    .line 109
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v16

    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v17

    .line 106
    invoke-virtual/range {v6 .. v17}, Lcom/txdriver/order/DwellGate;->accept(JJJDIFZ)Z

    move-result v1

    .line 110
    if-eqz v1, :cond_84

    iget-object v3, v0, Lcom/txdriver/order/AutoPickup;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    :cond_84
    return v1

    .line 103
    :cond_85
    :goto_85
    iget-object v1, v0, Lcom/txdriver/order/AutoPickup;->dwellGate:Lcom/txdriver/order/DwellGate;

    invoke-virtual {v1}, Lcom/txdriver/order/DwellGate;->reset()V

    return v3
.end method

.method public static refreshOptions()V
    .registers 2

    .line 66
    sget-object v0, Lcom/txdriver/order/AutoPickup;->instance:Lcom/txdriver/order/AutoPickup;

    if-nez v0, :cond_5

    return-void

    .line 67
    :cond_5
    sget-object v0, Lcom/txdriver/order/AutoPickup;->instance:Lcom/txdriver/order/AutoPickup;

    iget-object v0, v0, Lcom/txdriver/order/AutoPickup;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/txdriver/order/AutoPickup;->instance:Lcom/txdriver/order/AutoPickup;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    sget-object v0, Lcom/txdriver/order/AutoPickup;->instance:Lcom/txdriver/order/AutoPickup;

    iget-object v0, v0, Lcom/txdriver/order/AutoPickup;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/txdriver/order/AutoPickup;->instance:Lcom/txdriver/order/AutoPickup;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method

.method private render(Lcom/txdriver/db/Order;)V
    .registers 12

    .line 209
    iget-object v0, p0, Lcom/txdriver/order/AutoPickup;->button:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 210
    if-eqz v0, :cond_d1

    iget-object v1, p0, Lcom/txdriver/order/AutoPickup;->boundKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/txdriver/order/AutoPickup;->identity(Lcom/txdriver/db/Order;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-direct {p0, p1}, Lcom/txdriver/order/AutoPickup;->supported(Lcom/txdriver/db/Order;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_d1

    .line 211
    :cond_1e
    invoke-static {v0}, Lcom/txdriver/energy/Energy;->mayRender(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_25

    return-void

    .line 212
    :cond_25
    iget-object v1, p0, Lcom/txdriver/order/AutoPickup;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/preferences/Preferences;->isAutoArrivalEnabled()Z

    move-result v1

    const v2, 0x7f100039

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_50

    .line 213
    iget-object v1, p1, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    sget-object v6, Lcom/txdriver/db/Order$Status;->PERFORMING:Lcom/txdriver/db/Order$Status;

    if-ne v1, v6, :cond_3f

    const/4 v3, 0x0

    :cond_3f
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 214
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 215
    iget-object v1, p0, Lcom/txdriver/order/AutoPickup;->app:Lcom/txdriver/App;

    invoke-static {v1, p1}, Lcom/txdriver/order/OrderHelper;->isFarFromClient(Lcom/txdriver/App;Lcom/txdriver/db/Order;)Z

    move-result p1

    xor-int/2addr p1, v4

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 216
    return-void

    .line 218
    :cond_50
    iget-object v1, p1, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    sget-object v6, Lcom/txdriver/db/Order$Status;->ARRIVED:Lcom/txdriver/db/Order$Status;

    if-ne v1, v6, :cond_b9

    .line 219
    iget-wide v1, p0, Lcom/txdriver/order/AutoPickup;->deadline:J

    const-wide/16 v6, 0x0

    cmp-long v3, v1, v6

    if-eqz v3, :cond_b8

    iget-object v1, p0, Lcom/txdriver/order/AutoPickup;->key:Ljava/lang/String;

    invoke-static {p1}, Lcom/txdriver/order/AutoPickup;->identity(Lcom/txdriver/db/Order;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6b

    goto :goto_b8

    .line 220
    :cond_6b
    iget-wide v1, p0, Lcom/txdriver/order/AutoPickup;->deadline:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v1, v8

    const-wide/16 v8, 0x3e7

    add-long/2addr v1, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v1, v8

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 221
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 222
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 223
    cmp-long p1, v1, v6

    if-lez p1, :cond_a3

    .line 224
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-wide/16 v6, 0x3c

    div-long v8, v1, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    rem-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    aput-object v1, v2, v4

    const-string v1, "%02d:%02d"

    invoke-static {p1, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_b4

    .line 225
    :cond_a3
    iget-object p1, p0, Lcom/txdriver/order/AutoPickup;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/socket/Client;->isSocketConnected()Z

    move-result p1

    if-eqz p1, :cond_b2

    const-string p1, "00:00"

    goto :goto_b4

    :cond_b2
    const-string p1, "\u041d\u0435\u0442 \u0441\u0432\u044f\u0437\u0438"

    .line 223
    :goto_b4
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 226
    goto :goto_d0

    .line 219
    :cond_b8
    :goto_b8
    return-void

    .line 226
    :cond_b9
    iget-object v1, p1, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    sget-object v5, Lcom/txdriver/db/Order$Status;->PERFORMING:Lcom/txdriver/db/Order$Status;

    if-ne v1, v5, :cond_cd

    .line 227
    iget-object v1, p0, Lcom/txdriver/order/AutoPickup;->app:Lcom/txdriver/App;

    invoke-static {v1, p1}, Lcom/txdriver/order/OrderHelper;->isFarFromClient(Lcom/txdriver/App;Lcom/txdriver/db/Order;)Z

    move-result p1

    xor-int/2addr p1, v4

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 228
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_d0

    .line 230
    :cond_cd
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 232
    :goto_d0
    return-void

    .line 210
    :cond_d1
    :goto_d1
    return-void
.end method

.method private restoreWait()V
    .registers 15

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 130
    iget-object v2, p0, Lcom/txdriver/order/AutoPickup;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/txdriver/order/AutoPickup;->prefs:Landroid/content/SharedPreferences;

    const-string v4, ""

    const-string v5, "order"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "boot_epoch"

    const-string v4, "deadline_wall"

    const-string v6, "deadline_elapsed"

    const-wide/32 v7, 0x493e0

    if-eqz v2, :cond_57

    .line 131
    iget-object v2, p0, Lcom/txdriver/order/AutoPickup;->prefs:Landroid/content/SharedPreferences;

    const-wide/16 v9, 0x0

    invoke-interface {v2, v6, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v0

    .line 133
    iget-object v2, p0, Lcom/txdriver/order/AutoPickup;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2, v3, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v11, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v11, 0x2710

    cmp-long v13, v2, v11

    if-gez v13, :cond_40

    .line 134
    iput-wide v5, p0, Lcom/txdriver/order/AutoPickup;->deadline:J

    goto :goto_56

    .line 136
    :cond_40
    iget-object v2, p0, Lcom/txdriver/order/AutoPickup;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2, v4, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 137
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/txdriver/order/AutoPickup;->deadline:J

    .line 139
    :goto_56
    goto :goto_89

    .line 140
    :cond_57
    add-long v9, v0, v7

    iput-wide v9, p0, Lcom/txdriver/order/AutoPickup;->deadline:J

    .line 141
    iget-object v2, p0, Lcom/txdriver/order/AutoPickup;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v9, p0, Lcom/txdriver/order/AutoPickup;->key:Ljava/lang/String;

    invoke-interface {v2, v5, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 142
    const-string v5, "dwell_qualified"

    const/4 v9, 0x0

    invoke-interface {v2, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-wide v9, p0, Lcom/txdriver/order/AutoPickup;->deadline:J

    .line 143
    invoke-interface {v2, v6, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v7

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    :goto_89
    return-void
.end method

.method private send(Lcom/txdriver/db/Order;B)V
    .registers 10

    .line 150
    iget-object v0, p0, Lcom/txdriver/order/AutoPickup;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/socket/Client;->isSocketConnected()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 151
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 152
    iget-byte v2, p0, Lcom/txdriver/order/AutoPickup;->lastState:B

    if-ne v2, p2, :cond_20

    iget-wide v2, p0, Lcom/txdriver/order/AutoPickup;->lastSend:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-gez v6, :cond_20

    return-void

    .line 153
    :cond_20
    iput-byte p2, p0, Lcom/txdriver/order/AutoPickup;->lastState:B

    .line 154
    iput-wide v0, p0, Lcom/txdriver/order/AutoPickup;->lastSend:J

    .line 155
    iget-object v0, p0, Lcom/txdriver/order/AutoPickup;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object v0

    new-instance v1, Lcom/txdriver/socket/packet/OrderStatePacket;

    iget p1, p1, Lcom/txdriver/db/Order;->orderId:I

    invoke-direct {v1, p1, p2}, Lcom/txdriver/socket/packet/OrderStatePacket;-><init>(IB)V

    invoke-virtual {v0, v1}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    .line 156
    return-void
.end method

.method public static signal()V
    .registers 4

    .line 59
    sget-object v0, Lcom/txdriver/order/AutoPickup;->instance:Lcom/txdriver/order/AutoPickup;

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/txdriver/energy/Energy;->pickupEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_30

    .line 60
    :cond_b
    sget-object v0, Lcom/txdriver/order/AutoPickup;->instance:Lcom/txdriver/order/AutoPickup;

    iget-object v0, v0, Lcom/txdriver/order/AutoPickup;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/txdriver/order/AutoPickup;->instance:Lcom/txdriver/order/AutoPickup;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Lcom/txdriver/order/AutoPickup;->instance:Lcom/txdriver/order/AutoPickup;

    iget-wide v2, v2, Lcom/txdriver/order/AutoPickup;->lastTick:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 62
    sget-object v2, Lcom/txdriver/order/AutoPickup;->instance:Lcom/txdriver/order/AutoPickup;

    iget-object v2, v2, Lcom/txdriver/order/AutoPickup;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/txdriver/order/AutoPickup;->instance:Lcom/txdriver/order/AutoPickup;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    return-void

    .line 59
    :cond_30
    :goto_30
    return-void
.end method

.method public static start(Lcom/txdriver/App;)V
    .registers 2

    .line 44
    sget-object v0, Lcom/txdriver/order/AutoPickup;->instance:Lcom/txdriver/order/AutoPickup;

    if-nez v0, :cond_14

    .line 45
    new-instance v0, Lcom/txdriver/order/AutoPickup;

    invoke-direct {v0, p0}, Lcom/txdriver/order/AutoPickup;-><init>(Lcom/txdriver/App;)V

    sput-object v0, Lcom/txdriver/order/AutoPickup;->instance:Lcom/txdriver/order/AutoPickup;

    .line 46
    sget-object p0, Lcom/txdriver/order/AutoPickup;->instance:Lcom/txdriver/order/AutoPickup;

    iget-object p0, p0, Lcom/txdriver/order/AutoPickup;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/txdriver/order/AutoPickup;->instance:Lcom/txdriver/order/AutoPickup;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    :cond_14
    return-void
.end method

.method private supported(Lcom/txdriver/db/Order;)Z
    .registers 4

    .line 76
    iget-object v0, p1, Lcom/txdriver/db/Order;->source:Lcom/txdriver/db/Order$Source;

    sget-object v1, Lcom/txdriver/db/Order$Source;->YANDEX:Lcom/txdriver/db/Order$Source;

    if-eq v0, v1, :cond_14

    iget-object v0, p1, Lcom/txdriver/db/Order;->source:Lcom/txdriver/db/Order$Source;

    sget-object v1, Lcom/txdriver/db/Order$Source;->UBER:Lcom/txdriver/db/Order$Source;

    if-eq v0, v1, :cond_14

    iget-object p1, p1, Lcom/txdriver/db/Order;->source:Lcom/txdriver/db/Order$Source;

    sget-object v0, Lcom/txdriver/db/Order$Source;->GETT:Lcom/txdriver/db/Order$Source;

    if-eq p1, v0, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method private tick()V
    .registers 8

    .line 159
    invoke-static {}, Lcom/txdriver/db/Order;->getCurrentOrder()Lcom/txdriver/db/Order;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lcom/txdriver/energy/Energy;->update(Lcom/txdriver/db/Order;)V

    .line 161
    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-direct {p0, v0}, Lcom/txdriver/order/AutoPickup;->supported(Lcom/txdriver/db/Order;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, v0, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    sget-object v3, Lcom/txdriver/db/Order$Status;->PERFORMING:Lcom/txdriver/db/Order$Status;

    if-eq v2, v3, :cond_1c

    iget-object v2, v0, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    sget-object v3, Lcom/txdriver/db/Order$Status;->ARRIVED:Lcom/txdriver/db/Order$Status;

    if-ne v2, v3, :cond_1e

    :cond_1c
    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    iput-boolean v2, p0, Lcom/txdriver/order/AutoPickup;->relevant:Z

    .line 163
    const-string v2, "order"

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_df

    invoke-direct {p0, v0}, Lcom/txdriver/order/AutoPickup;->supported(Lcom/txdriver/db/Order;)Z

    move-result v5

    if-eqz v5, :cond_df

    iget-object v5, p0, Lcom/txdriver/order/AutoPickup;->app:Lcom/txdriver/App;

    invoke-virtual {v5}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/txdriver/preferences/Preferences;->isAutoArrivalEnabled()Z

    move-result v5

    if-nez v5, :cond_3b

    goto/16 :goto_df

    .line 174
    :cond_3b
    invoke-static {v0}, Lcom/txdriver/order/AutoPickup;->identity(Lcom/txdriver/db/Order;)Ljava/lang/String;

    move-result-object v5

    .line 175
    iget-object v6, p0, Lcom/txdriver/order/AutoPickup;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5c

    .line 176
    iput-object v5, p0, Lcom/txdriver/order/AutoPickup;->key:Ljava/lang/String;

    .line 177
    iput-wide v3, p0, Lcom/txdriver/order/AutoPickup;->deadline:J

    .line 178
    iput-byte v1, p0, Lcom/txdriver/order/AutoPickup;->lastState:B

    .line 179
    iget-object v1, p0, Lcom/txdriver/order/AutoPickup;->arrivalGate:Lcom/txdriver/order/ArrivalGate;

    invoke-virtual {v1}, Lcom/txdriver/order/ArrivalGate;->reset()V

    .line 180
    iget-object v1, p0, Lcom/txdriver/order/AutoPickup;->departureGate:Lcom/txdriver/order/DepartureGate;

    invoke-virtual {v1}, Lcom/txdriver/order/DepartureGate;->reset()V

    .line 181
    iget-object v1, p0, Lcom/txdriver/order/AutoPickup;->dwellGate:Lcom/txdriver/order/DwellGate;

    invoke-virtual {v1}, Lcom/txdriver/order/DwellGate;->reset()V

    .line 183
    :cond_5c
    iget-object v1, v0, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    sget-object v5, Lcom/txdriver/db/Order$Status;->PERFORMING:Lcom/txdriver/db/Order$Status;

    if-ne v1, v5, :cond_77

    .line 184
    iget-object v1, p0, Lcom/txdriver/order/AutoPickup;->departureGate:Lcom/txdriver/order/DepartureGate;

    invoke-virtual {v1}, Lcom/txdriver/order/DepartureGate;->reset()V

    .line 185
    iget-object v1, p0, Lcom/txdriver/order/AutoPickup;->dwellGate:Lcom/txdriver/order/DwellGate;

    invoke-virtual {v1}, Lcom/txdriver/order/DwellGate;->reset()V

    .line 186
    invoke-direct {p0, v0}, Lcom/txdriver/order/AutoPickup;->nearClient(Lcom/txdriver/db/Order;)Z

    move-result v1

    if-eqz v1, :cond_db

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/txdriver/order/AutoPickup;->send(Lcom/txdriver/db/Order;B)V

    goto :goto_db

    .line 187
    :cond_77
    iget-object v1, v0, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    sget-object v5, Lcom/txdriver/db/Order$Status;->ARRIVED:Lcom/txdriver/db/Order$Status;

    if-ne v1, v5, :cond_ba

    .line 188
    iget-wide v1, p0, Lcom/txdriver/order/AutoPickup;->deadline:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_86

    invoke-direct {p0}, Lcom/txdriver/order/AutoPickup;->restoreWait()V

    .line 189
    :cond_86
    invoke-direct {p0, v0}, Lcom/txdriver/order/AutoPickup;->qualifiedStay(Lcom/txdriver/db/Order;)Z

    move-result v1

    .line 190
    const/4 v2, 0x4

    if-eqz v1, :cond_97

    invoke-direct {p0, v0}, Lcom/txdriver/order/AutoPickup;->departedClient(Lcom/txdriver/db/Order;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 193
    invoke-direct {p0, v0, v2}, Lcom/txdriver/order/AutoPickup;->send(Lcom/txdriver/db/Order;B)V

    goto :goto_b9

    .line 194
    :cond_97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/txdriver/order/AutoPickup;->deadline:J

    cmp-long v1, v3, v5

    if-ltz v1, :cond_b9

    .line 196
    iget-object v1, p0, Lcom/txdriver/order/AutoPickup;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f050006

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 197
    if-eqz v1, :cond_b6

    invoke-direct {p0, v0}, Lcom/txdriver/order/AutoPickup;->nearClient(Lcom/txdriver/db/Order;)Z

    move-result v1

    if-eqz v1, :cond_b9

    :cond_b6
    invoke-direct {p0, v0, v2}, Lcom/txdriver/order/AutoPickup;->send(Lcom/txdriver/db/Order;B)V

    .line 199
    :cond_b9
    :goto_b9
    goto :goto_db

    .line 200
    :cond_ba
    iput-wide v3, p0, Lcom/txdriver/order/AutoPickup;->deadline:J

    .line 201
    iget-object v1, p0, Lcom/txdriver/order/AutoPickup;->departureGate:Lcom/txdriver/order/DepartureGate;

    invoke-virtual {v1}, Lcom/txdriver/order/DepartureGate;->reset()V

    .line 202
    iget-object v1, p0, Lcom/txdriver/order/AutoPickup;->dwellGate:Lcom/txdriver/order/DwellGate;

    invoke-virtual {v1}, Lcom/txdriver/order/DwellGate;->reset()V

    .line 203
    iget-object v1, p0, Lcom/txdriver/order/AutoPickup;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_db

    iget-object v1, p0, Lcom/txdriver/order/AutoPickup;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 205
    :cond_db
    :goto_db
    invoke-direct {p0, v0}, Lcom/txdriver/order/AutoPickup;->render(Lcom/txdriver/db/Order;)V

    .line 206
    return-void

    .line 164
    :cond_df
    :goto_df
    const-string v5, ""

    iput-object v5, p0, Lcom/txdriver/order/AutoPickup;->key:Ljava/lang/String;

    .line 165
    iput-wide v3, p0, Lcom/txdriver/order/AutoPickup;->deadline:J

    .line 166
    iput-byte v1, p0, Lcom/txdriver/order/AutoPickup;->lastState:B

    .line 167
    iget-object v1, p0, Lcom/txdriver/order/AutoPickup;->arrivalGate:Lcom/txdriver/order/ArrivalGate;

    invoke-virtual {v1}, Lcom/txdriver/order/ArrivalGate;->reset()V

    .line 168
    iget-object v1, p0, Lcom/txdriver/order/AutoPickup;->departureGate:Lcom/txdriver/order/DepartureGate;

    invoke-virtual {v1}, Lcom/txdriver/order/DepartureGate;->reset()V

    .line 169
    iget-object v1, p0, Lcom/txdriver/order/AutoPickup;->dwellGate:Lcom/txdriver/order/DwellGate;

    invoke-virtual {v1}, Lcom/txdriver/order/DwellGate;->reset()V

    .line 170
    iget-object v1, p0, Lcom/txdriver/order/AutoPickup;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/txdriver/order/AutoPickup;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 171
    :cond_10b
    if-eqz v0, :cond_110

    invoke-direct {p0, v0}, Lcom/txdriver/order/AutoPickup;->render(Lcom/txdriver/db/Order;)V

    .line 172
    :cond_110
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 235
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/order/AutoPickup;->lastTick:J

    .line 237
    const-wide/16 v0, 0x7530

    const-wide/16 v2, 0x3e8

    :try_start_a
    invoke-direct {p0}, Lcom/txdriver/order/AutoPickup;->tick()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_d} :catch_26
    .catchall {:try_start_a .. :try_end_d} :catchall_24

    .line 241
    iget-object v4, p0, Lcom/txdriver/order/AutoPickup;->handler:Landroid/os/Handler;

    invoke-virtual {v4, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 242
    iget-object v4, p0, Lcom/txdriver/order/AutoPickup;->handler:Landroid/os/Handler;

    invoke-static {}, Lcom/txdriver/energy/Energy;->pickupEnabled()Z

    move-result v5

    if-eqz v5, :cond_1f

    iget-boolean v5, p0, Lcom/txdriver/order/AutoPickup;->relevant:Z

    if-nez v5, :cond_1f

    :goto_1e
    goto :goto_20

    :cond_1f
    move-wide v0, v2

    :goto_20
    invoke-virtual {v4, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 243
    goto :goto_40

    .line 241
    :catchall_24
    move-exception v4

    goto :goto_41

    .line 238
    :catch_26
    move-exception v4

    .line 239
    :try_start_27
    const-string v5, "AutoPickup"

    const-string v6, "Cannot update pickup state"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    .line 241
    iget-object v4, p0, Lcom/txdriver/order/AutoPickup;->handler:Landroid/os/Handler;

    invoke-virtual {v4, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 242
    iget-object v4, p0, Lcom/txdriver/order/AutoPickup;->handler:Landroid/os/Handler;

    invoke-static {}, Lcom/txdriver/energy/Energy;->pickupEnabled()Z

    move-result v5

    if-eqz v5, :cond_1f

    iget-boolean v5, p0, Lcom/txdriver/order/AutoPickup;->relevant:Z

    if-nez v5, :cond_1f

    goto :goto_1e

    .line 244
    :goto_40
    return-void

    .line 241
    :goto_41
    iget-object v5, p0, Lcom/txdriver/order/AutoPickup;->handler:Landroid/os/Handler;

    invoke-virtual {v5, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 242
    iget-object v5, p0, Lcom/txdriver/order/AutoPickup;->handler:Landroid/os/Handler;

    invoke-static {}, Lcom/txdriver/energy/Energy;->pickupEnabled()Z

    move-result v6

    if-eqz v6, :cond_53

    iget-boolean v6, p0, Lcom/txdriver/order/AutoPickup;->relevant:Z

    if-nez v6, :cond_53

    goto :goto_54

    :cond_53
    move-wide v0, v2

    :goto_54
    invoke-virtual {v5, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 243
    goto :goto_59

    :goto_58
    throw v4

    :goto_59
    goto :goto_58
.end method
