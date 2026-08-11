.class public Lru/yandex/bk;
.super Lru/yandex/yandexmapkit/map/TileRenderEntry;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/map/TileRenderListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lru/yandex/yandexmapkit/map/TileRenderEntry;-><init>(Lru/yandex/yandexmapkit/map/TileRenderListener;)V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    invoke-super {p0}, Lru/yandex/yandexmapkit/map/TileRenderEntry;->cleanup()V

    const/4 v0, -0x1

    iput v0, p0, Lru/yandex/bk;->a:I

    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lru/yandex/bk;

    invoke-virtual {p0}, Lru/yandex/bk;->getRenderListener()Lru/yandex/yandexmapkit/map/TileRenderListener;

    move-result-object v1

    invoke-direct {v0, v1}, Lru/yandex/bk;-><init>(Lru/yandex/yandexmapkit/map/TileRenderListener;)V

    invoke-virtual {p0, v0}, Lru/yandex/bk;->fillClone(Lru/yandex/yandexmapkit/map/TileRenderEntry;)V

    return-object v0
.end method

.method protected fillClone(Lru/yandex/yandexmapkit/map/TileRenderEntry;)V
    .locals 1

    invoke-super {p0, p1}, Lru/yandex/yandexmapkit/map/TileRenderEntry;->fillClone(Lru/yandex/yandexmapkit/map/TileRenderEntry;)V

    check-cast p1, Lru/yandex/bk;

    iget v0, p0, Lru/yandex/bk;->a:I

    iput v0, p1, Lru/yandex/bk;->a:I

    return-void
.end method
