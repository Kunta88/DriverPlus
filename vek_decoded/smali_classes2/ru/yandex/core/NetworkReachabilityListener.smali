.class public Lru/yandex/core/NetworkReachabilityListener;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private cancelled:Z

.field private ctx:Landroid/content/Context;

.field private lastStatus:I

.field private nativeHandle:J


# direct methods
.method constructor <init>(JLandroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/core/NetworkReachabilityListener;->cancelled:Z

    const/4 v0, -0x1

    iput v0, p0, Lru/yandex/core/NetworkReachabilityListener;->lastStatus:I

    iput-wide p1, p0, Lru/yandex/core/NetworkReachabilityListener;->nativeHandle:J

    iput-object p3, p0, Lru/yandex/core/NetworkReachabilityListener;->ctx:Landroid/content/Context;

    return-void
.end method

.method static getNetworkReachabilityStatus(Landroid/content/Context;)I
    .locals 3

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v0, 0x2

    if-eqz p0, :cond_2

    if-eq p0, v0, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/4 v1, 0x5

    if-eq p0, v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private static native signal(J)V
.end method


# virtual methods
.method cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/core/NetworkReachabilityListener;->cancelled:Z

    iget-object v0, p0, Lru/yandex/core/NetworkReachabilityListener;->ctx:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-boolean p2, p0, Lru/yandex/core/NetworkReachabilityListener;->cancelled:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lru/yandex/core/NetworkReachabilityListener;->getNetworkReachabilityStatus(Landroid/content/Context;)I

    move-result p1

    iget p2, p0, Lru/yandex/core/NetworkReachabilityListener;->lastStatus:I

    if-eq p1, p2, :cond_1

    iput p1, p0, Lru/yandex/core/NetworkReachabilityListener;->lastStatus:I

    iget-wide p1, p0, Lru/yandex/core/NetworkReachabilityListener;->nativeHandle:J

    invoke-static {p1, p2}, Lru/yandex/core/NetworkReachabilityListener;->signal(J)V

    :cond_1
    return-void
.end method

.method start()V
    .locals 3

    iget-object v0, p0, Lru/yandex/core/NetworkReachabilityListener;->ctx:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
