.class public Lru/yandex/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lru/yandex/core/WifiScanRequest;


# direct methods
.method public constructor <init>(Lru/yandex/core/WifiScanRequest;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/p;->a:Lru/yandex/core/WifiScanRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lru/yandex/p;->a:Lru/yandex/core/WifiScanRequest;

    invoke-static {v0}, Lru/yandex/core/WifiScanRequest;->access$000(Lru/yandex/core/WifiScanRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/String;

    new-array v0, v0, [I

    iget-object v3, p0, Lru/yandex/p;->a:Lru/yandex/core/WifiScanRequest;

    invoke-static {v3}, Lru/yandex/core/WifiScanRequest;->access$100(Lru/yandex/core/WifiScanRequest;)J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2, v0}, Lru/yandex/core/WifiScanRequest;->access$200(J[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-void
.end method
