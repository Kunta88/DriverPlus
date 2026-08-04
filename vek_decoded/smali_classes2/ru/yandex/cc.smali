.class public Lru/yandex/cc;
.super Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;


# instance fields
.field private j:Z

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/utils/GeoPoint;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;-><init>(Lru/yandex/yandexmapkit/utils/GeoPoint;Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lru/yandex/cc;->j:Z

    iput-object p2, p0, Lru/yandex/cc;->l:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Lru/yandex/cc;->b(I)V

    const/16 p2, 0x7e

    invoke-virtual {p0, p2}, Lru/yandex/cc;->setPriority(B)V

    invoke-virtual {p0, p1}, Lru/yandex/cc;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/cc;->k:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/yandex/cc;->j:Z

    return-void
.end method

.method a()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/cc;->j:Z

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lru/yandex/cc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/yandex/cc;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lru/yandex/cc;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lru/yandex/cc;->k:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_0
    iget-object v0, p0, Lru/yandex/cc;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lru/yandex/cc;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
