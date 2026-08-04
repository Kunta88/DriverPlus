.class public Lru/yandex/bx;
.super Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;


# instance fields
.field private j:Z

.field private k:Lru/yandex/yandexmapkit/utils/Point;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/utils/GeoPoint;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;-><init>(Lru/yandex/yandexmapkit/utils/GeoPoint;Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lru/yandex/bx;->j:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lru/yandex/bx;->k:Lru/yandex/yandexmapkit/utils/Point;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lru/yandex/bx;->b(I)V

    invoke-virtual {p0, p1}, Lru/yandex/bx;->setVisible(Z)V

    const/16 p1, 0x7e

    invoke-virtual {p0, p1}, Lru/yandex/bx;->setPriority(B)V

    return-void
.end method


# virtual methods
.method public a(Lru/yandex/yandexmapkit/utils/Point;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/bx;->k:Lru/yandex/yandexmapkit/utils/Point;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/yandex/bx;->j:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/bx;->j:Z

    return v0
.end method

.method public b()Lru/yandex/yandexmapkit/utils/Point;
    .locals 1

    iget-object v0, p0, Lru/yandex/bx;->k:Lru/yandex/yandexmapkit/utils/Point;

    return-object v0
.end method
