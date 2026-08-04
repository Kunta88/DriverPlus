.class public Lru/yandex/yandexmapkit/map/TileRenderEntry;
.super Ljava/lang/Object;


# instance fields
.field private a:Lru/yandex/yandexmapkit/map/TileRenderListener;

.field private b:I


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/map/TileRenderListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/yandex/yandexmapkit/map/TileRenderEntry;->a:Lru/yandex/yandexmapkit/map/TileRenderListener;

    const/4 p1, -0x1

    iput p1, p0, Lru/yandex/yandexmapkit/map/TileRenderEntry;->b:I

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lru/yandex/yandexmapkit/map/TileRenderEntry;->b:I

    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lru/yandex/yandexmapkit/map/TileRenderEntry;

    iget-object v1, p0, Lru/yandex/yandexmapkit/map/TileRenderEntry;->a:Lru/yandex/yandexmapkit/map/TileRenderListener;

    invoke-direct {v0, v1}, Lru/yandex/yandexmapkit/map/TileRenderEntry;-><init>(Lru/yandex/yandexmapkit/map/TileRenderListener;)V

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/map/TileRenderEntry;->fillClone(Lru/yandex/yandexmapkit/map/TileRenderEntry;)V

    return-object v0
.end method

.method public fillClone(Lru/yandex/yandexmapkit/map/TileRenderEntry;)V
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/map/TileRenderEntry;->b:I

    iput v0, p1, Lru/yandex/yandexmapkit/map/TileRenderEntry;->b:I

    return-void
.end method

.method public getRenderListener()Lru/yandex/yandexmapkit/map/TileRenderListener;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/TileRenderEntry;->a:Lru/yandex/yandexmapkit/map/TileRenderListener;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/map/TileRenderEntry;->b:I

    return v0
.end method

.method public setRenderListener(Lru/yandex/yandexmapkit/map/TileRenderListener;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/yandexmapkit/map/TileRenderEntry;->a:Lru/yandex/yandexmapkit/map/TileRenderListener;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lru/yandex/yandexmapkit/map/TileRenderEntry;->b:I

    return-void
.end method
