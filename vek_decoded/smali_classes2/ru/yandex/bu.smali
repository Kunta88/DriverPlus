.class public Lru/yandex/bu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

.field final synthetic b:Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/bu;->b:Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    iput-object p2, p0, Lru/yandex/bu;->a:Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lru/yandex/bu;->b:Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    invoke-static {v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->a(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/yandex/bu;->a:Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lru/yandex/bu;->b:Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lru/yandex/bu;->b:Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    invoke-static {v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->b(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;)Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;

    move-result-object v1

    iget v1, v1, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->a:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lru/yandex/bu;->a:Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    iget-object v2, p0, Lru/yandex/bu;->b:Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    invoke-static {v2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->b(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;)Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;

    move-result-object v2

    iget v2, v2, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->b:I

    invoke-virtual {v1, v0, v2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->a(II)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/yandex/bu;->b:Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    iget-object v2, p0, Lru/yandex/bu;->a:Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    invoke-static {v1, v2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->a(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V

    iget-object v1, p0, Lru/yandex/bu;->b:Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    invoke-static {v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->a(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lru/yandex/bu;->b:Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    iget-object v3, p0, Lru/yandex/bu;->a:Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    invoke-static {v1, v3}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->b(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V

    iget-object v1, p0, Lru/yandex/bu;->b:Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    invoke-static {v1, v2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->a(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;Z)Z

    :cond_1
    iget-object v1, p0, Lru/yandex/bu;->a:Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    invoke-virtual {v1, v2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->setChange(Z)V

    iget-object v1, p0, Lru/yandex/bu;->b:Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    invoke-static {v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->c(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lru/yandex/bu;->b:Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    invoke-static {v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->c(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
