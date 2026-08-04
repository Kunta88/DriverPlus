.class public Lru/yandex/cb;
.super Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;


# static fields
.field static j:Landroid/graphics/drawable/shapes/Shape;

.field static k:Landroid/graphics/drawable/ShapeDrawable;


# instance fields
.field private l:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    sput-object v0, Lru/yandex/cb;->j:Landroid/graphics/drawable/shapes/Shape;

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    sget-object v1, Lru/yandex/cb;->j:Landroid/graphics/drawable/shapes/Shape;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    sput-object v0, Lru/yandex/cb;->k:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    new-instance v0, Lru/yandex/yandexmapkit/utils/GeoPoint;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lru/yandex/yandexmapkit/utils/GeoPoint;-><init>(DD)V

    sget-object v1, Lru/yandex/cb;->k:Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p0, v0, v1}, Lru/yandex/cb;-><init>(Lru/yandex/yandexmapkit/utils/GeoPoint;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private constructor <init>(Lru/yandex/yandexmapkit/utils/GeoPoint;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;-><init>(Lru/yandex/yandexmapkit/utils/GeoPoint;Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    iput p1, p0, Lru/yandex/cb;->l:F

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lru/yandex/cb;->b(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lru/yandex/cb;->setVisible(Z)V

    const/16 p1, -0x80

    invoke-virtual {p0, p1}, Lru/yandex/cb;->setPriority(B)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lru/yandex/cb;->l:F

    return v0
.end method

.method public c(F)V
    .locals 0

    iput p1, p0, Lru/yandex/cb;->l:F

    return-void
.end method

.method public getRectBounds()Landroid/graphics/Rect;
    .locals 5

    invoke-virtual {p0}, Lru/yandex/cb;->a()F

    move-result v0

    invoke-virtual {p0}, Lru/yandex/cb;->getScreenPoint()Lru/yandex/yandexmapkit/utils/ScreenPoint;

    move-result-object v1

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getX()F

    move-result v1

    invoke-virtual {p0}, Lru/yandex/cb;->getScreenPoint()Lru/yandex/yandexmapkit/utils/ScreenPoint;

    move-result-object v2

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getY()F

    move-result v2

    iget-object v3, p0, Lru/yandex/cb;->i:Landroid/graphics/Rect;

    sub-float v4, v1, v0

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lru/yandex/cb;->i:Landroid/graphics/Rect;

    sub-float v4, v2, v0

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lru/yandex/cb;->i:Landroid/graphics/Rect;

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, v3, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lru/yandex/cb;->i:Landroid/graphics/Rect;

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lru/yandex/cb;->i:Landroid/graphics/Rect;

    return-object v0
.end method
