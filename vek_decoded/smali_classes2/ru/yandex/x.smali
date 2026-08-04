.class public Lru/yandex/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lru/yandex/yandexmapkit/MapController;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/MapController;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/x;->a:Lru/yandex/yandexmapkit/MapController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lru/yandex/x;->a:Lru/yandex/yandexmapkit/MapController;

    invoke-static {v0}, Lru/yandex/yandexmapkit/MapController;->access$000(Lru/yandex/yandexmapkit/MapController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lru/yandex/x;->a:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->zoomIn()V

    return-void

    :cond_0
    iget-object v0, p0, Lru/yandex/x;->a:Lru/yandex/yandexmapkit/MapController;

    invoke-static {v0}, Lru/yandex/yandexmapkit/MapController;->access$100(Lru/yandex/yandexmapkit/MapController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lru/yandex/x;->a:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->zoomOut()V

    return-void

    :cond_1
    iget-object v0, p0, Lru/yandex/x;->a:Lru/yandex/yandexmapkit/MapController;

    invoke-static {v0}, Lru/yandex/yandexmapkit/MapController;->access$200(Lru/yandex/yandexmapkit/MapController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lru/yandex/x;->a:Lru/yandex/yandexmapkit/MapController;

    invoke-static {p1}, Lru/yandex/yandexmapkit/MapController;->access$300(Lru/yandex/yandexmapkit/MapController;)Lru/yandex/yandexmapkit/OverlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/OverlayManager;->getMyLocation()Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;

    move-result-object p1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->findMe()V

    return-void

    :cond_2
    iget-object v0, p0, Lru/yandex/x;->a:Lru/yandex/yandexmapkit/MapController;

    invoke-static {v0}, Lru/yandex/yandexmapkit/MapController;->access$400(Lru/yandex/yandexmapkit/MapController;)Lru/yandex/yandexmapkit/map/jams/JamsButton;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lru/yandex/x;->a:Lru/yandex/yandexmapkit/MapController;

    invoke-static {p1}, Lru/yandex/yandexmapkit/MapController;->access$500(Lru/yandex/yandexmapkit/MapController;)Lru/yandex/be;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/be;->isVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lru/yandex/yandexmapkit/MapController;->setJamsVisible(Z)V

    :cond_3
    return-void
.end method
