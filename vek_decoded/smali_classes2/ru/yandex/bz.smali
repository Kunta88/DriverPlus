.class public final Lru/yandex/bz;
.super Landroid/os/Handler;


# instance fields
.field private final a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lru/yandex/bz;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    const/4 v3, 0x6

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_1

    const/4 p1, 0x7

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lru/yandex/bz;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->e()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lru/yandex/bz;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    iget p1, p1, Landroid/os/Message;->what:I

    if-ne v3, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->a(Z)V

    iget-object p1, p0, Lru/yandex/bz;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->e()V

    return-void

    :cond_3
    iget-object p1, p0, Lru/yandex/bz;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->i()Lru/yandex/by;

    move-result-object p1

    invoke-virtual {p1}, Lru/yandex/by;->a()V

    return-void

    :cond_4
    iget-object p1, p0, Lru/yandex/bz;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->j()Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;

    move-result-object p1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;->a()V

    invoke-virtual {p0, v1}, Lru/yandex/bz;->removeMessages(I)V

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Lru/yandex/bz;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "msg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lru/yandex/bz;->a:Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
