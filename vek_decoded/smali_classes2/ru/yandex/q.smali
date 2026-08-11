.class public Lru/yandex/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lru/yandex/core/WifiScanRequest;


# direct methods
.method public constructor <init>(Lru/yandex/core/WifiScanRequest;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/q;->b:Lru/yandex/core/WifiScanRequest;

    iput-object p2, p0, Lru/yandex/q;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lru/yandex/q;->b:Lru/yandex/core/WifiScanRequest;

    invoke-static {v0}, Lru/yandex/core/WifiScanRequest;->access$000(Lru/yandex/core/WifiScanRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lru/yandex/q;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-array v2, v0, [Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/String;

    new-array v4, v0, [I

    if-lez v0, :cond_2

    iget-object v0, p0, Lru/yandex/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v6, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    iget-object v6, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v6, v3, v1

    iget v5, v5, Landroid/net/wifi/ScanResult;->level:I

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lru/yandex/q;->b:Lru/yandex/core/WifiScanRequest;

    invoke-static {v0}, Lru/yandex/core/WifiScanRequest;->access$100(Lru/yandex/core/WifiScanRequest;)J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3, v4}, Lru/yandex/core/WifiScanRequest;->access$200(J[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-void
.end method
