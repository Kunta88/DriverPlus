.class public Lru/yandex/cd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/cd;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lru/yandex/cd;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-static {v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->a(Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;)V

    iget-object v0, p0, Lru/yandex/cd;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-static {v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->b(Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;)Lru/yandex/ar;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/yandex/cd;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    new-instance v2, Lru/yandex/ar;

    iget-object v3, p0, Lru/yandex/cd;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-static {v3}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->c(Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lru/yandex/ar;-><init>(Landroid/content/Context;Z)V

    invoke-static {v0, v2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->a(Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;Lru/yandex/ar;)Lru/yandex/ar;

    :cond_0
    iget-object v0, p0, Lru/yandex/cd;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-static {v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->d(Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
