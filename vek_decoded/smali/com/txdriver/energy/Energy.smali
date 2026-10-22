.class public final Lcom/txdriver/energy/Energy;
.super Ljava/lang/Object;
.source "Energy.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final GPS:Ljava/lang/String; = "energy_gps"

.field public static final HIDDEN:Ljava/lang/String; = "energy_hidden"

.field public static final PICKUP:Ljava/lang/String; = "energy_pickup"

.field public static final SCREEN:Ljava/lang/String; = "energy_screen"

.field public static final UI:Ljava/lang/String; = "energy_ui"

.field private static instance:Lcom/txdriver/energy/Energy;


# instance fields
.field private final app:Lcom/txdriver/App;

.field private final frames:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private gpsInterval:J

.field private final handler:Landroid/os/Handler;

.field private locationPermission:I

.field private lock:Landroid/os/PowerManager$WakeLock;

.field private lockFlags:I

.field private final power:Landroid/os/PowerManager;

.field private final prefs:Landroid/content/SharedPreferences;

.field private running:Z


# direct methods
.method private constructor <init>(Lcom/txdriver/App;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/txdriver/energy/Energy;->handler:Landroid/os/Handler;

    .line 30
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/txdriver/energy/Energy;->frames:Ljava/util/WeakHashMap;

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/txdriver/energy/Energy;->gpsInterval:J

    .line 35
    const/4 v0, -0x2

    iput v0, p0, Lcom/txdriver/energy/Energy;->locationPermission:I

    .line 38
    iput-object p1, p0, Lcom/txdriver/energy/Energy;->app:Lcom/txdriver/App;

    .line 39
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/energy/Energy;->prefs:Landroid/content/SharedPreferences;

    .line 40
    const-string v0, "power"

    invoke-virtual {p1, v0}, Lcom/txdriver/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/txdriver/energy/Energy;->power:Landroid/os/PowerManager;

    .line 41
    iget-object p1, p0, Lcom/txdriver/energy/Energy;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 42
    return-void
.end method

.method private apply(Lcom/txdriver/db/Order;)V
    .registers 9

    .line 104
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/txdriver/energy/Energy;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getStatus()I

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    .line 105
    :goto_14
    iget-object v2, p0, Lcom/txdriver/energy/Energy;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "energy_gps"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_23

    if-nez p1, :cond_23

    const-wide/16 v2, 0x1388

    goto :goto_25

    :cond_23
    const-wide/16 v2, 0x0

    .line 106
    :goto_25
    iget-wide v4, p0, Lcom/txdriver/energy/Energy;->gpsInterval:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3f

    .line 108
    iget-object v4, p0, Lcom/txdriver/energy/Energy;->app:Lcom/txdriver/App;

    invoke-virtual {v4}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/txdriver/location/LocationManager;->stopUpdates()V

    .line 109
    iget-object v4, p0, Lcom/txdriver/energy/Energy;->app:Lcom/txdriver/App;

    invoke-virtual {v4}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/txdriver/location/LocationManager;->startUpdates(J)V

    .line 110
    iput-wide v2, p0, Lcom/txdriver/energy/Energy;->gpsInterval:J

    .line 112
    :cond_3f
    iget-object v2, p0, Lcom/txdriver/energy/Energy;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "energy_screen"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4d

    if-nez p1, :cond_4d

    .line 113
    const/4 v2, 0x1

    goto :goto_50

    :cond_4d
    const v2, 0x3000001a

    .line 114
    :goto_50
    iget-object v4, p0, Lcom/txdriver/energy/Energy;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5b

    if-nez p1, :cond_5b

    goto :goto_5c

    :cond_5b
    const/4 v0, 0x0

    :goto_5c
    invoke-static {v0}, Lcom/txdriver/compat/ModernCompat;->applyScreenPolicy(Z)V

    .line 115
    iget-object p1, p0, Lcom/txdriver/energy/Energy;->lock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_67

    iget p1, p0, Lcom/txdriver/energy/Energy;->lockFlags:I

    if-eq v2, p1, :cond_87

    .line 116
    :cond_67
    iget-object p1, p0, Lcom/txdriver/energy/Energy;->power:Landroid/os/PowerManager;

    const-string v0, "DriverPlus:Energy"

    invoke-virtual {p1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 118
    iget-object v0, p0, Lcom/txdriver/energy/Energy;->lock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/txdriver/energy/Energy;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/txdriver/energy/Energy;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 119
    :cond_83
    iput-object p1, p0, Lcom/txdriver/energy/Energy;->lock:Landroid/os/PowerManager$WakeLock;

    .line 120
    iput v2, p0, Lcom/txdriver/energy/Energy;->lockFlags:I

    .line 122
    :cond_87
    return-void
.end method

.method private static get(Landroid/content/Context;)Lcom/txdriver/energy/Energy;
    .registers 2

    .line 45
    sget-object v0, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    if-nez v0, :cond_11

    new-instance v0, Lcom/txdriver/energy/Energy;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/txdriver/App;

    invoke-direct {v0, p0}, Lcom/txdriver/energy/Energy;-><init>(Lcom/txdriver/App;)V

    sput-object v0, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    .line 46
    :cond_11
    sget-object p0, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    return-object p0
.end method

.method public static mayRender(Landroid/view/View;)Z
    .registers 5

    .line 147
    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 148
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/txdriver/energy/Energy;->get(Landroid/content/Context;)Lcom/txdriver/energy/Energy;

    move-result-object v1

    .line 149
    iget-object v2, v1, Lcom/txdriver/energy/Energy;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "energy_hidden"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v1, v1, Lcom/txdriver/energy/Energy;->power:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    if-eqz p0, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    nop

    .line 149
    :goto_2e
    return v0
.end method

.method public static option(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 50
    invoke-static {p0}, Lcom/txdriver/energy/Energy;->get(Landroid/content/Context;)Lcom/txdriver/energy/Energy;

    move-result-object p0

    iget-object p0, p0, Lcom/txdriver/energy/Energy;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "energy_gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "energy_screen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static pickupEnabled()Z
    .registers 3

    .line 54
    sget-object v0, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    sget-object v0, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    iget-object v0, v0, Lcom/txdriver/energy/Energy;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "energy_pickup"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :cond_13
    :goto_13
    return v1
.end method

.method public static refreshLocation()V
    .registers 3

    .line 87
    sget-object v0, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    if-eqz v0, :cond_29

    sget-object v0, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    iget-boolean v0, v0, Lcom/txdriver/energy/Energy;->running:Z

    if-nez v0, :cond_b

    goto :goto_29

    .line 88
    :cond_b
    sget-object v0, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    iget-object v0, v0, Lcom/txdriver/energy/Energy;->app:Lcom/txdriver/App;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Lcom/txdriver/App;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 89
    sget-object v1, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    iget v1, v1, Lcom/txdriver/energy/Energy;->locationPermission:I

    if-eq v0, v1, :cond_28

    .line 90
    sget-object v1, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    iput v0, v1, Lcom/txdriver/energy/Energy;->locationPermission:I

    .line 91
    sget-object v0, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/txdriver/energy/Energy;->gpsInterval:J

    .line 92
    invoke-static {}, Lcom/txdriver/energy/Energy;->signal()V

    .line 94
    :cond_28
    return-void

    .line 87
    :cond_29
    :goto_29
    return-void
.end method

.method public static setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 4

    .line 154
    if-nez p0, :cond_3

    return-void

    .line 155
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "energy_ui"

    invoke-static {v0, v1}, Lcom/txdriver/energy/Energy;->option(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 156
    :cond_19
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_1c
    return-void
.end method

.method public static shouldRender(Landroid/view/View;)Z
    .registers 11

    .line 133
    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 134
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/txdriver/energy/Energy;->get(Landroid/content/Context;)Lcom/txdriver/energy/Energy;

    move-result-object v1

    .line 135
    iget-object v2, v1, Lcom/txdriver/energy/Energy;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "energy_hidden"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_37

    iget-object v2, v1, Lcom/txdriver/energy/Energy;->power:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_36

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 137
    invoke-virtual {p0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_37

    :cond_36
    return v3

    .line 138
    :cond_37
    iget-object v2, v1, Lcom/txdriver/energy/Energy;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "energy_ui"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_42

    return v0

    .line 139
    :cond_42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 140
    iget-object v2, v1, Lcom/txdriver/energy/Energy;->frames:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 141
    if-eqz v2, :cond_5d

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0x3e8

    cmp-long v2, v6, v8

    if-gez v2, :cond_5d

    return v3

    .line 142
    :cond_5d
    iget-object v1, v1, Lcom/txdriver/energy/Energy;->frames:Ljava/util/WeakHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return v0
.end method

.method public static signal()V
    .registers 2

    .line 75
    sget-object v0, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    iget-boolean v0, v0, Lcom/txdriver/energy/Energy;->running:Z

    if-eqz v0, :cond_1c

    .line 76
    sget-object v0, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    iget-object v0, v0, Lcom/txdriver/energy/Energy;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 77
    sget-object v0, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    iget-object v0, v0, Lcom/txdriver/energy/Energy;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    :cond_1c
    invoke-static {}, Lcom/txdriver/order/AutoPickup;->signal()V

    .line 80
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .registers 3

    .line 58
    invoke-static {p0}, Lcom/txdriver/energy/Energy;->get(Landroid/content/Context;)Lcom/txdriver/energy/Energy;

    move-result-object p0

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txdriver/energy/Energy;->running:Z

    .line 60
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/txdriver/energy/Energy;->gpsInterval:J

    .line 61
    invoke-virtual {p0}, Lcom/txdriver/energy/Energy;->run()V

    .line 62
    return-void
.end method

.method public static stop()V
    .registers 3

    .line 65
    sget-object v0, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    if-nez v0, :cond_5

    return-void

    .line 66
    :cond_5
    sget-object v0, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/txdriver/energy/Energy;->running:Z

    .line 67
    sget-object v0, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    iget-object v0, v0, Lcom/txdriver/energy/Energy;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    sget-object v0, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    iget-object v0, v0, Lcom/txdriver/energy/Energy;->lock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    iget-object v0, v0, Lcom/txdriver/energy/Energy;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    iget-object v0, v0, Lcom/txdriver/energy/Energy;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 69
    :cond_2a
    sget-object v0, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/txdriver/energy/Energy;->lock:Landroid/os/PowerManager$WakeLock;

    .line 70
    sget-object v0, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    iput v1, v0, Lcom/txdriver/energy/Energy;->lockFlags:I

    .line 71
    return-void
.end method

.method public static update(Lcom/txdriver/db/Order;)V
    .registers 2

    .line 83
    sget-object v0, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    iget-boolean v0, v0, Lcom/txdriver/energy/Energy;->running:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/txdriver/energy/Energy;->instance:Lcom/txdriver/energy/Energy;

    invoke-direct {v0, p0}, Lcom/txdriver/energy/Energy;->apply(Lcom/txdriver/db/Order;)V

    .line 84
    :cond_f
    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    .line 125
    if-eqz p2, :cond_15

    const-string p1, "energy_"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 126
    iget-object p1, p0, Lcom/txdriver/energy/Energy;->frames:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->clear()V

    .line 127
    invoke-static {}, Lcom/txdriver/energy/Energy;->signal()V

    .line 128
    invoke-static {}, Lcom/txdriver/order/AutoPickup;->refreshOptions()V

    .line 130
    :cond_15
    return-void
.end method

.method public run()V
    .registers 4

    .line 97
    iget-boolean v0, p0, Lcom/txdriver/energy/Energy;->running:Z

    if-nez v0, :cond_5

    return-void

    .line 98
    :cond_5
    :try_start_5
    invoke-static {}, Lcom/txdriver/db/Order;->getCurrentOrder()Lcom/txdriver/db/Order;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/txdriver/energy/Energy;->apply(Lcom/txdriver/db/Order;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_c} :catch_d

    .line 99
    goto :goto_15

    :catch_d
    move-exception v0

    const-string v1, "Energy"

    const-string v2, "Cannot apply idle policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    :goto_15
    return-void
.end method
