.class public final Lru/yandex/core/WifiScanRequest;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private cancelled:Z

.field private ctx:Landroid/content/Context;

.field private h:Landroid/os/Handler;

.field private nativeHandle:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/core/WifiScanRequest;->cancelled:Z

    iput-wide p1, p0, Lru/yandex/core/WifiScanRequest;->nativeHandle:J

    return-void
.end method

.method public static synthetic access$000(Lru/yandex/core/WifiScanRequest;)Z
    .locals 0

    iget-boolean p0, p0, Lru/yandex/core/WifiScanRequest;->cancelled:Z

    return p0
.end method

.method public static synthetic access$100(Lru/yandex/core/WifiScanRequest;)J
    .locals 2

    iget-wide v0, p0, Lru/yandex/core/WifiScanRequest;->nativeHandle:J

    return-wide v0
.end method

.method public static synthetic access$200(J[Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lru/yandex/core/WifiScanRequest;->signal(J[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-void
.end method

.method private static native signal(J[Ljava/lang/String;[Ljava/lang/String;[I)V
.end method


# virtual methods
.method cancel()V
    .locals 1

    iget-object v0, p0, Lru/yandex/core/WifiScanRequest;->ctx:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/core/WifiScanRequest;->cancelled:Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lru/yandex/core/WifiScanRequest;->h:Landroid/os/Handler;

    new-instance v0, Lru/yandex/q;

    invoke-direct {v0, p0, p1}, Lru/yandex/q;-><init>(Lru/yandex/core/WifiScanRequest;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method start()V
    .locals 4

    sget-object v0, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    iput-object v0, p0, Lru/yandex/core/WifiScanRequest;->ctx:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lru/yandex/core/WifiScanRequest;->h:Landroid/os/Handler;

    iget-object v0, p0, Lru/yandex/core/WifiScanRequest;->ctx:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lru/yandex/core/WifiScanRequest;->ctx:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lru/yandex/core/WifiScanRequest;->h:Landroid/os/Handler;

    new-instance v1, Lru/yandex/p;

    invoke-direct {v1, p0}, Lru/yandex/p;-><init>(Lru/yandex/core/WifiScanRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
