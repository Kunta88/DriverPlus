.class public Lru/yandex/ca;
.super Ljava/lang/Object;

# interfaces
.implements Lru/yandex/yandexmapkit/overlay/IRender;


# instance fields
.field a:Landroid/graphics/Paint;

.field b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lru/yandex/ca;->a:Landroid/graphics/Paint;

    const v1, 0x33bb9f82

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lru/yandex/ca;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lru/yandex/ca;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lru/yandex/ca;->b:Landroid/graphics/Paint;

    const v2, -0x697c8d

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lru/yandex/ca;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lru/yandex/ca;->b:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lru/yandex/ca;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;)V
    .locals 4

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getOffsetCenterX()I

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getOffsetX()I

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getOffsetCenterY()I

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getOffsetY()I

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lru/yandex/ca;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getRectBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lru/yandex/ca;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getRectBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_1
    move-object v0, p2

    check-cast v0, Lru/yandex/cc;

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getRectBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lru/yandex/cc;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, -0xffff01

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :goto_1
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_3
    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getRectBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getBearing()F

    move-result v1

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getScreenPoint()Lru/yandex/yandexmapkit/utils/ScreenPoint;

    move-result-object v2

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getX()F

    move-result v2

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getScreenPoint()Lru/yandex/yandexmapkit/utils/ScreenPoint;

    move-result-object v3

    invoke-virtual {v3}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getRectBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;Lru/yandex/yandexmapkit/overlay/OverlayItem;)V
    .locals 0

    check-cast p2, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;

    invoke-virtual {p0, p1, p2}, Lru/yandex/ca;->a(Landroid/graphics/Canvas;Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;)V

    return-void
.end method
