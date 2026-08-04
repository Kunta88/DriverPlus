.class public Lru/yandex/ba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lru/yandex/ba;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lru/yandex/yandexmapkit/map/TileRenderListener;Lru/yandex/yandexmapkit/map/TileRenderListener;)I
    .locals 2

    invoke-interface {p1}, Lru/yandex/yandexmapkit/map/TileRenderListener;->getPriority()B

    move-result v0

    invoke-interface {p2}, Lru/yandex/yandexmapkit/map/TileRenderListener;->getPriority()B

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-interface {p1}, Lru/yandex/yandexmapkit/map/TileRenderListener;->getPriority()B

    move-result p1

    invoke-interface {p2}, Lru/yandex/yandexmapkit/map/TileRenderListener;->getPriority()B

    move-result p2

    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lru/yandex/yandexmapkit/map/TileRenderListener;

    check-cast p2, Lru/yandex/yandexmapkit/map/TileRenderListener;

    invoke-virtual {p0, p1, p2}, Lru/yandex/ba;->a(Lru/yandex/yandexmapkit/map/TileRenderListener;Lru/yandex/yandexmapkit/map/TileRenderListener;)I

    move-result p1

    return p1
.end method
