.class public Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;
.super Lru/yandex/yandexmapkit/overlay/Overlay;


# static fields
.field public static a:I = 0x190


# instance fields
.field private b:Z

.field private f:Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

.field private g:Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;

.field private h:Landroid/view/ViewGroup;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lru/yandex/yandexmapkit/MapController;)V
    .locals 4

    invoke-direct {p0, p1}, Lru/yandex/yandexmapkit/overlay/Overlay;-><init>(Lru/yandex/yandexmapkit/MapController;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->b:Z

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->i:Z

    const/16 v0, 0x7e

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->setPriority(B)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->h:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->getParentViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->h:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;

    invoke-direct {v0, p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->g:Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->setIRender(Lru/yandex/yandexmapkit/overlay/IRender;)V

    new-instance v0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    new-instance v1, Lru/yandex/yandexmapkit/utils/GeoPoint;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Lru/yandex/yandexmapkit/utils/GeoPoint;-><init>(DD)V

    invoke-direct {v0, p1, v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;-><init>(Landroid/content/Context;Lru/yandex/yandexmapkit/utils/GeoPoint;)V

    iput-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->f:Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->addOverlayItem(Lru/yandex/yandexmapkit/overlay/OverlayItem;)V

    return-void
.end method

.method public static synthetic a(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V
    .locals 10

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getPoint()Lru/yandex/yandexmapkit/utils/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/MapController;->getScreenPoint(Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/ScreenPoint;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOffsetX()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOffsetCenterX()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOffsetY()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOffsetCenterY()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->g:Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->a()F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->g:Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;

    invoke-virtual {v3}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->a()F

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v4}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    shr-int/2addr v4, v5

    iget-object v6, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v6}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    shr-int/2addr v6, v5

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->d()I

    move-result v7

    sub-int v7, v0, v7

    iget-object v8, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->g:Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;

    iget v8, v8, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->b:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    if-gez v7, :cond_0

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->d()I

    move-result v7

    sub-int/2addr v0, v7

    iget-object v7, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->g:Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;

    iget v7, v7, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->b:I

    sub-int/2addr v0, v7

    sub-int/2addr v0, v2

    :goto_0
    add-int/2addr v4, v0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v7}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    iget-object v9, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->g:Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;

    iget v9, v9, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->c:I

    sub-int/2addr v7, v9

    if-le v0, v7, :cond_2

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOverlayItem()Lru/yandex/yandexmapkit/overlay/OverlayItem;

    move-result-object v7

    invoke-virtual {v7}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOverlayItem()Lru/yandex/yandexmapkit/overlay/OverlayItem;

    move-result-object v7

    invoke-virtual {v7}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    shr-int/lit8 v8, v7, 0x1

    :cond_1
    iget-object v7, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v7}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v0, v7

    iget-object v7, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->g:Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;

    iget v7, v7, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->c:I

    add-int/2addr v0, v7

    add-int/2addr v0, v8

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v7, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->g:Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;

    iget v7, v7, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->a:I

    sub-int/2addr v0, v7

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->c()I

    move-result v7

    shr-int/2addr v7, v5

    add-int/2addr v7, v1

    sub-int v9, v0, v2

    if-le v7, v9, :cond_3

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->c()I

    move-result v7

    sub-int/2addr v7, v0

    add-int/2addr v7, v1

    add-int/2addr v7, v2

    invoke-virtual {p1, v7}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->a(I)V

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->e()I

    move-result v7

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->c()I

    move-result v9

    sub-int/2addr v9, v3

    if-le v7, v9, :cond_5

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->c()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {p1, v7}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->a(I)V

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->c()I

    move-result v7

    sub-int/2addr v7, v0

    add-int/2addr v7, v1

    add-int/2addr v7, v2

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->c()I

    move-result p1

    sub-int/2addr p1, v3

    sub-int/2addr v7, p1

    add-int/2addr v6, v7

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->c()I

    move-result v0

    shr-int/2addr v0, v5

    sub-int v0, v1, v0

    if-ge v0, v2, :cond_4

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->a(I)V

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->e()I

    move-result v0

    if-ge v0, v3, :cond_5

    invoke-virtual {p1, v3}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->a(I)V

    sub-int/2addr v3, v1

    sub-int/2addr v6, v3

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->c()I

    move-result v0

    shr-int/2addr v0, v5

    invoke-virtual {p1, v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->a(I)V

    :cond_5
    move v5, v8

    :goto_2
    if-eqz v5, :cond_6

    iget-boolean p1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->b:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object p1

    iget-object p0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    new-instance v0, Lru/yandex/yandexmapkit/utils/ScreenPoint;

    int-to-float v1, v6

    int-to-float v2, v4

    invoke-direct {v0, v1, v2}, Lru/yandex/yandexmapkit/utils/ScreenPoint;-><init>(FF)V

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/MapController;->get23Point(Lru/yandex/yandexmapkit/utils/ScreenPoint;)Lru/yandex/yandexmapkit/utils/Point;

    move-result-object p0

    invoke-virtual {p1, p0}, Lru/yandex/yandexmapkit/MapController;->setPositionAnimationTo(Lru/yandex/yandexmapkit/utils/Point;)V

    :cond_6
    return-void
.end method

.method private a(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;II)Z
    .locals 10

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getScreenPoint()Lru/yandex/yandexmapkit/utils/ScreenPoint;

    move-result-object v0

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOffsetY()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOffsetCenterY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOffsetX()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOffsetCenterX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v3, v2

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->e()I

    move-result v2

    sub-int v4, v3, v2

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->d()I

    move-result v1

    sub-int v1, v0, v1

    iget-object v2, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->g:Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;

    iget v2, v2, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->b:I

    sub-int v5, v1, v2

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->c()I

    move-result v1

    add-int/2addr v3, v1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->e()I

    move-result p1

    sub-int/2addr v3, p1

    sub-int v6, v3, v4

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->g:Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;

    iget p1, p1, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->b:I

    sub-int/2addr v0, p1

    sub-int v7, v0, v5

    move v8, p2

    move v9, p3

    invoke-static/range {v4 .. v9}, Lru/yandex/yandexmapkit/utils/Utils;->a(IIIIII)Z

    move-result p1

    return p1
.end method

.method public static synthetic a(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->b:Z

    return p0
.end method

.method public static synthetic a(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->b:Z

    return p1
.end method

.method public static synthetic b(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;)Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;
    .locals 0

    iget-object p0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->g:Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;

    return-object p0
.end method

.method public static synthetic b(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V
    .locals 2

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->g:Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->a()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    iput v0, p1, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->p:F

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOnBalloonListener()Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;->onBalloonAnimationStart(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V

    :cond_0
    new-instance v1, Lru/yandex/bv;

    invoke-direct {v1, p0, p1, v0}, Lru/yandex/bv;-><init>(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;)V

    iget-object p0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b(FF)Z
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->getPrepareDrawList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/yandex/yandexmapkit/overlay/OverlayItem;

    check-cast v2, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    move/from16 v12, p1

    if-eqz v2, :cond_1

    float-to-int v4, v12

    move/from16 v13, p2

    float-to-int v5, v13

    invoke-direct {v0, v2, v4, v5}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->a(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;II)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-wide v4, v14

    move-wide v6, v14

    move/from16 v9, p1

    move/from16 v10, p2

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v2, v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->a(Landroid/view/MotionEvent;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v2, v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->a(Landroid/view/MotionEvent;)Z

    invoke-virtual {v2, v3}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->a(Z)V

    iget-object v1, v0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    const/4 v1, 0x1

    return v1

    :cond_1
    move/from16 v13, p2

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static synthetic c(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->h:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic d(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;)Lru/yandex/yandexmapkit/MapController;
    .locals 0

    iget-object p0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    return-object p0
.end method

.method public static synthetic e(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;)Lru/yandex/yandexmapkit/MapController;
    .locals 0

    iget-object p0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    return-object p0
.end method

.method public static synthetic f(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;)Lru/yandex/yandexmapkit/MapController;
    .locals 0

    iget-object p0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    return-object p0
.end method


# virtual methods
.method public getBalloonItem()Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;
    .locals 2

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->getOverlayItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    return-object v0
.end method

.method public onDoubleTap(FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->b(FF)Z

    move-result p1

    return p1
.end method

.method public onDown(FF)Z
    .locals 4

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->getPrepareDrawList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/yandex/yandexmapkit/overlay/OverlayItem;

    check-cast v1, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    if-eqz v1, :cond_0

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-direct {p0, v1, v2, v3}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->a(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->a(Z)V

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->i:Z

    iget-object p2, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->b(FF)Z

    move-result p1

    return p1
.end method

.method public onScroll(FFFF)Z
    .locals 6

    add-float/2addr p1, p3

    add-float/2addr p2, p4

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->getPrepareDrawList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/yandex/yandexmapkit/overlay/OverlayItem;

    check-cast v1, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->i:Z

    if-eqz v3, :cond_0

    float-to-int v3, p3

    float-to-int v4, p4

    invoke-direct {p0, v1, v3, v4}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->a(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;II)Z

    move-result v3

    float-to-int v4, p1

    float-to-int v5, p2

    invoke-direct {p0, v1, v4, v5}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->a(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;II)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-nez v4, :cond_1

    invoke-virtual {v1, v5}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->a(Z)V

    :goto_1
    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    return v5

    :cond_1
    if-nez v3, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v1, v2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->a(Z)V

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    return v5

    :cond_3
    if-nez v3, :cond_0

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->a(Z)V

    iget-object v1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    goto :goto_0

    :cond_4
    return v2
.end method

.method public onSingleTapUp(FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->b(FF)Z

    move-result p1

    return p1
.end method

.method public onUp(FF)Z
    .locals 5

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->getPrepareDrawList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/yandex/yandexmapkit/overlay/OverlayItem;

    check-cast v3, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    if-eqz v3, :cond_0

    float-to-int v2, p1

    float-to-int v4, p2

    invoke-direct {p0, v3, v2, v4}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->a(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;II)Z

    move-result v2

    iget-boolean v4, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->i:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3, v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->a(Z)V

    :cond_1
    iget-object v3, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v3}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->i:Z

    return v2
.end method

.method public prepareDraw()Ljava/util/List;
    .locals 14

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->d:Ljava/util/List;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->getBalloonItem()Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->b:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->h:Landroid/view/ViewGroup;

    new-instance v2, Lru/yandex/bu;

    invoke-direct {v2, p0, v0}, Lru/yandex/bu;-><init>(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/yandex/yandexmapkit/overlay/OverlayItem;

    check-cast v1, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    iget-boolean v2, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->b:Z

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getPoint()Lru/yandex/yandexmapkit/utils/Point;

    move-result-object v3

    invoke-virtual {v2, v3}, Lru/yandex/yandexmapkit/MapController;->getScreenPoint(Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/ScreenPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->setScreenPoint(Lru/yandex/yandexmapkit/utils/ScreenPoint;)V

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOffsetX()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOffsetCenterX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOffsetY()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOffsetCenterY()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v5, v3

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->e()I

    move-result v3

    sub-int v6, v5, v3

    add-int/2addr v2, v4

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->d()I

    move-result v3

    sub-int v3, v2, v3

    iget-object v4, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->g:Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;

    iget v4, v4, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->b:I

    sub-int v7, v3, v4

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->c()I

    move-result v3

    add-int/2addr v5, v3

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->e()I

    move-result v3

    sub-int/2addr v5, v3

    sub-int v8, v5, v6

    sub-int v9, v2, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v2, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v12

    iget-object v2, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v13

    invoke-static/range {v6 .. v13}, Lru/yandex/yandexmapkit/utils/Utils;->a(IIIIIIII)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->getPrepareDrawList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setBalloonItem(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V
    .locals 1

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->addOverlayItem(Lru/yandex/yandexmapkit/overlay/OverlayItem;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->b:Z

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    invoke-super {p0, p1}, Lru/yandex/yandexmapkit/overlay/Overlay;->setVisible(Z)V

    return-void
.end method
