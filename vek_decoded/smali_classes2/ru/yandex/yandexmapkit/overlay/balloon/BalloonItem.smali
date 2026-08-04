.class public Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;
.super Lru/yandex/yandexmapkit/overlay/OverlayItem;


# instance fields
.field protected j:Landroid/widget/TextView;

.field protected k:Landroid/graphics/Bitmap;

.field protected l:Landroid/graphics/Bitmap;

.field protected m:F

.field protected model:Landroid/view/ViewGroup;

.field protected n:I

.field protected o:I

.field public p:F

.field public q:Ljava/util/Map;

.field protected r:I

.field private s:Z

.field private t:Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;

.field private u:Lru/yandex/yandexmapkit/overlay/OverlayItem;

.field private v:Ljava/lang/CharSequence;

.field private w:Z

.field private x:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lru/yandex/yandexmapkit/utils/GeoPoint;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lru/yandex/yandexmapkit/overlay/OverlayItem;-><init>(Lru/yandex/yandexmapkit/utils/GeoPoint;Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->s:Z

    iput-boolean p2, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->w:Z

    const/high16 p2, 0x42c80000    # 100.0f

    iput p2, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->p:F

    new-instance p2, Lru/yandex/bt;

    invoke-direct {p2, p0}, Lru/yandex/bt;-><init>(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V

    iput-object p2, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->x:Landroid/view/View$OnClickListener;

    const/16 p2, 0x7f

    invoke-virtual {p0, p2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->setPriority(B)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->q:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    :try_start_0
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->m:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->m:F

    :goto_0
    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->inflateView(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(II)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->model:Landroid/view/ViewGroup;

    iget-object v1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->v:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/high16 v1, -0x80000000

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-le v2, p1, :cond_1

    move v2, p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v3, v3, v2, v4}, Landroid/view/View;->layout(IIII)V

    const/4 v2, 0x0

    iget-object v4, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->j:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    iget-object v6, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->j:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v6

    cmpg-float v7, v2, v6

    if-gez v7, :cond_2

    move v2, v6

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->j:Landroid/widget/TextView;

    float-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_4
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-le v1, p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v3, v3, p1, v1}, Landroid/view/View;->layout(IIII)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v0, p1}, Landroid/view/View;->buildDrawingCache(Z)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->k:Landroid/graphics/Bitmap;

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->l:Landroid/graphics/Bitmap;

    :cond_7
    invoke-virtual {v0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->o:I

    iget-object p2, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iput p2, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->n:I

    const/high16 v0, 0x41700000    # 15.0f

    iget v1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->m:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    shl-int/lit8 p1, v0, 0x1

    sub-int/2addr p2, p1

    iput p2, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->r:I

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->model:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->r:I

    return-void
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->w:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->s:Z

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getScreenPoint()Lru/yandex/yandexmapkit/utils/ScreenPoint;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getX()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->e()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOffsetCenterX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getScreenPoint()Lru/yandex/yandexmapkit/utils/ScreenPoint;

    move-result-object v1

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->d()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOffsetCenterY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->model:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method b()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->w:Z

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->n:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->o:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->r:I

    return v0
.end method

.method public f()Landroid/graphics/Bitmap;
    .locals 1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->l:Landroid/graphics/Bitmap;

    return-object v0

    :cond_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->k:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOnBalloonListener()Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->t:Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;

    return-object v0
.end method

.method public getOverlayItem()Lru/yandex/yandexmapkit/overlay/OverlayItem;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->u:Lru/yandex/yandexmapkit/overlay/OverlayItem;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->v:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public inflateView(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lru/yandex/yandexmapkit/R$layout;->ymk_balloon_default_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v0, Lru/yandex/yandexmapkit/R$id;->ymk_balloon_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->model:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->j:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method public setChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->s:Z

    return-void
.end method

.method public setOnBalloonListener(Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;)V
    .locals 2

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->t:Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->q:Ljava/util/Map;

    iget-object v1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->model:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->model:Landroid/view/ViewGroup;

    iget-object v1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->q:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setOnBalloonViewClickListener(ILru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->model:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->q:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setOverlayItem(Lru/yandex/yandexmapkit/overlay/OverlayItem;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->u:Lru/yandex/yandexmapkit/overlay/OverlayItem;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->v:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->setChange(Z)V

    return-void
.end method
