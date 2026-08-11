.class public Lru/yandex/yandexmapkit/overlay/OverlayIRender;
.super Ljava/lang/Object;

# interfaces
.implements Lru/yandex/yandexmapkit/overlay/IRender;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lru/yandex/yandexmapkit/overlay/OverlayItem;)V
    .locals 1

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getRectBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method
