.class public Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;
.super Lru/yandex/yandexmapkit/overlay/OverlayItem;


# static fields
.field public static final GPS:I = 0x1

.field public static final LBS:I = 0x2


# instance fields
.field private j:I

.field private k:F

.field private l:F

.field private m:I

.field private n:J

.field private o:Z


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/utils/GeoPoint;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lru/yandex/yandexmapkit/overlay/OverlayItem;-><init>(Lru/yandex/yandexmapkit/utils/GeoPoint;Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    iput p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->j:I

    const/4 p2, 0x0

    iput p2, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->k:F

    iput p2, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->l:F

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->o:Z

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    iput p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->k:F

    return-void
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->j:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->n:J

    return-void
.end method

.method public b(F)V
    .locals 0

    iput p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->l:F

    return-void
.end method

.method protected b(I)V
    .locals 0

    iput p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->m:I

    return-void
.end method

.method b(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->o:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->o:Z

    return v0
.end method

.method public getBearing()F
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->l:F

    return v0
.end method

.method public getRadius()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->j:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->k:F

    return v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->n:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->m:I

    return v0
.end method
