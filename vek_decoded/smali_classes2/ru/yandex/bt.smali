.class public Lru/yandex/bt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/bt;->a:Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lru/yandex/bt;->a:Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    iget-object v0, v0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lru/yandex/bt;->a:Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    invoke-interface {v0, v1, p1}, Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;->onBalloonViewClick(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;Landroid/view/View;)V

    :cond_0
    return-void
.end method
