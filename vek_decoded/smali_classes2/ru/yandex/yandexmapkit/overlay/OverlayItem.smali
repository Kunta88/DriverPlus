.class public Lru/yandex/yandexmapkit/overlay/OverlayItem;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field protected a:Lru/yandex/yandexmapkit/utils/GeoPoint;

.field protected b:Lru/yandex/yandexmapkit/utils/Point;

.field protected c:Lru/yandex/yandexmapkit/utils/ScreenPoint;

.field protected d:Landroid/graphics/drawable/Drawable;

.field protected e:Z

.field protected f:B

.field protected g:I

.field protected h:I

.field protected i:Landroid/graphics/Rect;

.field private j:Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

.field private k:I

.field private l:I

.field private m:Lru/yandex/yandexmapkit/overlay/OnOverlayItemListener;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/utils/GeoPoint;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->e:Z

    const/4 v1, 0x0

    iput-byte v1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->f:B

    iput v1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->g:I

    iput v1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->h:I

    iput v1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->k:I

    iput v1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->l:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->i:Landroid/graphics/Rect;

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->a:Lru/yandex/yandexmapkit/utils/GeoPoint;

    iput-object p2, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->d:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lru/yandex/yandexmapkit/utils/CoordConversion;->toXY(Lru/yandex/yandexmapkit/utils/GeoPoint;Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/Point;

    move-result-object p1

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->b:Lru/yandex/yandexmapkit/utils/Point;

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    shr-int/2addr p1, v0

    iput p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->l:I

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    shr-int/2addr p1, v0

    iput p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->k:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lru/yandex/yandexmapkit/overlay/OverlayItem;)I
    .locals 6

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getPriority()B

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getPoint()Lru/yandex/yandexmapkit/utils/Point;

    move-result-object v3

    iget-wide v3, v3, Lru/yandex/yandexmapkit/utils/Point;->y:J

    long-to-int v4, v3

    int-to-long v3, v4

    or-long/2addr v0, v3

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getPriority()B

    move-result v3

    int-to-long v3, v3

    shl-long v2, v3, v2

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getPoint()Lru/yandex/yandexmapkit/utils/Point;

    move-result-object p1

    iget-wide v4, p1, Lru/yandex/yandexmapkit/utils/Point;->y:J

    long-to-int p1, v4

    int-to-long v4, p1

    or-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lru/yandex/yandexmapkit/overlay/OverlayItem;

    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->a(Lru/yandex/yandexmapkit/overlay/OverlayItem;)I

    move-result p1

    return p1
.end method

.method public getBalloonItem()Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->j:Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getGeoPoint()Lru/yandex/yandexmapkit/utils/GeoPoint;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->a:Lru/yandex/yandexmapkit/utils/GeoPoint;

    return-object v0
.end method

.method public getOffsetCenterX()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->l:I

    return v0
.end method

.method public getOffsetCenterY()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->k:I

    return v0
.end method

.method public getOffsetX()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->h:I

    return v0
.end method

.method public getOffsetY()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->g:I

    return v0
.end method

.method public getOverlayItemListener()Lru/yandex/yandexmapkit/overlay/OnOverlayItemListener;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->m:Lru/yandex/yandexmapkit/overlay/OnOverlayItemListener;

    return-object v0
.end method

.method public getPoint()Lru/yandex/yandexmapkit/utils/Point;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->b:Lru/yandex/yandexmapkit/utils/Point;

    return-object v0
.end method

.method public getPriority()B
    .locals 1

    iget-byte v0, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->f:B

    return v0
.end method

.method public getRectBounds()Landroid/graphics/Rect;
    .locals 4

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getOffsetCenterX()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getOffsetX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getOffsetCenterY()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getOffsetY()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->i:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getScreenPoint()Lru/yandex/yandexmapkit/utils/ScreenPoint;

    move-result-object v3

    invoke-virtual {v3}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getX()F

    move-result v3

    int-to-float v0, v0

    add-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, v2, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->i:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getScreenPoint()Lru/yandex/yandexmapkit/utils/ScreenPoint;

    move-result-object v2

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getY()F

    move-result v2

    int-to-float v1, v1

    add-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->i:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->i:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->i:Landroid/graphics/Rect;

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getScreenPoint()Lru/yandex/yandexmapkit/utils/ScreenPoint;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->c:Lru/yandex/yandexmapkit/utils/ScreenPoint;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->e:Z

    return v0
.end method

.method public setBalloonItem(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V
    .locals 2

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->j:Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    if-eqz p1, :cond_0

    iget v0, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->h:I

    invoke-virtual {p1, v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->setOffsetCenterX(I)V

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->j:Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    iget v0, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->k:I

    iget v1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->g:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->setOffsetCenterY(I)V

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->j:Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    invoke-virtual {p1, p0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->setOverlayItem(Lru/yandex/yandexmapkit/overlay/OverlayItem;)V

    :cond_0
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    shr-int/lit8 p1, p1, 0x1

    iput p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->l:I

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    shr-int/lit8 p1, p1, 0x1

    iput p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->k:I

    :cond_0
    return-void
.end method

.method public setGeoPoint(Lru/yandex/yandexmapkit/utils/GeoPoint;)V
    .locals 1

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->a:Lru/yandex/yandexmapkit/utils/GeoPoint;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/yandex/yandexmapkit/utils/CoordConversion;->toXY(Lru/yandex/yandexmapkit/utils/GeoPoint;Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/Point;

    move-result-object v0

    iput-object v0, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->b:Lru/yandex/yandexmapkit/utils/Point;

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getBalloonItem()Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getBalloonItem()Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->setGeoPoint(Lru/yandex/yandexmapkit/utils/GeoPoint;)V

    :cond_0
    return-void
.end method

.method protected setOffsetCenterX(I)V
    .locals 0

    iput p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->l:I

    return-void
.end method

.method protected setOffsetCenterY(I)V
    .locals 0

    iput p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->k:I

    return-void
.end method

.method public setOffsetX(I)V
    .locals 1

    iput p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->h:I

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->j:Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->setOffsetCenterX(I)V

    :cond_0
    return-void
.end method

.method public setOffsetY(I)V
    .locals 2

    iput p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->g:I

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->j:Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    if-eqz v0, :cond_0

    iget v1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->k:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->setOffsetCenterY(I)V

    :cond_0
    return-void
.end method

.method public setOverlayItemListener(Lru/yandex/yandexmapkit/overlay/OnOverlayItemListener;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->m:Lru/yandex/yandexmapkit/overlay/OnOverlayItemListener;

    return-void
.end method

.method public setPriority(B)V
    .locals 0

    iput-byte p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->f:B

    return-void
.end method

.method public setScreenPoint(Lru/yandex/yandexmapkit/utils/ScreenPoint;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->c:Lru/yandex/yandexmapkit/utils/ScreenPoint;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/overlay/OverlayItem;->e:Z

    return-void
.end method
