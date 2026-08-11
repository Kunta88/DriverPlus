.class public Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;
.super Ljava/lang/Object;

# interfaces
.implements Lru/yandex/yandexmapkit/overlay/IRender;


# instance fields
.field public a:I

.field public final b:I

.field final c:I

.field private d:Landroid/graphics/Bitmap;

.field private e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    iput v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->a:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->e:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->e:F

    :goto_0
    sget v0, Lru/yandex/yandexmapkit/R$drawable;->ymk_balloon_tail_black:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->c:I

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->b:I

    iget p1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->a:I

    int-to-float p1, p1

    iget v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->e:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->a:I

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->e:F

    return v0
.end method

.method public a(Landroid/graphics/Canvas;Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V
    .locals 12

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getScreenPoint()Lru/yandex/yandexmapkit/utils/ScreenPoint;

    move-result-object v1

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOffsetX()I

    move-result v2

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOffsetCenterX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOffsetY()I

    move-result v3

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOffsetCenterY()I

    move-result v4

    sub-int/2addr v3, v4

    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getX()F

    move-result v5

    int-to-float v2, v2

    add-float/2addr v5, v2

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->e()I

    move-result v6

    int-to-float v6, v6

    iget v7, p2, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->p:F

    mul-float v6, v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getY()F

    move-result v6

    iget v8, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->b:I

    int-to-float v8, v8

    sub-float/2addr v6, v8

    int-to-float v8, v3

    add-float/2addr v6, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, p2, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->p:F

    mul-float v9, v9, v10

    div-float/2addr v9, v7

    sub-float/2addr v6, v9

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getX()F

    move-result v9

    add-float/2addr v9, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->e()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget p2, p2, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->p:F

    mul-float v10, v10, p2

    div-float/2addr v10, v7

    add-float/2addr v9, v10

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getY()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget v7, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->b:I

    sub-int/2addr p2, v7

    add-int/2addr p2, v3

    int-to-float p2, p2

    invoke-direct {v4, v5, v6, v9, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getX()F

    move-result p2

    add-float/2addr p2, v2

    iget-object v2, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    sub-float/2addr p2, v2

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getY()F

    move-result v1

    add-float/2addr v1, v8

    iget-object v2, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->d:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v5, 0x0

    invoke-direct {p2, v5, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0, p2, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;Lru/yandex/yandexmapkit/overlay/OverlayItem;)V
    .locals 0

    check-cast p2, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    invoke-virtual {p0, p1, p2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->a(Landroid/graphics/Canvas;Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V

    return-void
.end method
