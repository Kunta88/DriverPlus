.class public abstract Lru/yandex/core/KDView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private surfaceView:Lru/yandex/core/KDSurfaceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lru/yandex/core/KDView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lru/yandex/core/KDView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lru/yandex/core/KDView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lru/yandex/core/KDSurfaceView;

    invoke-direct {v0, p1}, Lru/yandex/core/KDSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/yandex/core/KDView;->surfaceView:Lru/yandex/core/KDSurfaceView;

    invoke-virtual {p0}, Lru/yandex/core/KDView;->getGestureDispatcherConfig()I

    move-result p1

    invoke-virtual {v0, p1}, Lru/yandex/core/KDSurfaceView;->setupGestureRecognizers(I)V

    iget-object p1, p0, Lru/yandex/core/KDView;->surfaceView:Lru/yandex/core/KDSurfaceView;

    invoke-virtual {p0, p1}, Lru/yandex/core/KDView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected abstract getGestureDispatcherConfig()I
.end method

.method public getSurfaceView()Lru/yandex/core/KDSurfaceView;
    .locals 1

    iget-object v0, p0, Lru/yandex/core/KDView;->surfaceView:Lru/yandex/core/KDSurfaceView;

    return-object v0
.end method
