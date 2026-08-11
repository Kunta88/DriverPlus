.class public Lru/yandex/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lru/yandex/bh;

.field final synthetic b:Lru/yandex/yandexmapkit/MapController;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/MapController;Lru/yandex/bh;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/y;->b:Lru/yandex/yandexmapkit/MapController;

    iput-object p2, p0, Lru/yandex/y;->a:Lru/yandex/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lru/yandex/y;->b:Lru/yandex/yandexmapkit/MapController;

    invoke-static {v0}, Lru/yandex/yandexmapkit/MapController;->access$400(Lru/yandex/yandexmapkit/MapController;)Lru/yandex/yandexmapkit/map/jams/JamsButton;

    move-result-object v0

    iget-object v1, p0, Lru/yandex/y;->a:Lru/yandex/bh;

    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/map/jams/JamsButton;->a(Lru/yandex/bh;)V

    return-void
.end method
