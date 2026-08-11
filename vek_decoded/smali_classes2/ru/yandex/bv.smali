.class public Lru/yandex/bv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:J

.field b:[[F

.field final synthetic c:Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

.field final synthetic d:Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;

.field final synthetic e:Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;)V
    .locals 5

    iput-object p1, p0, Lru/yandex/bv;->e:Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    iput-object p2, p0, Lru/yandex/bv;->c:Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    iput-object p3, p0, Lru/yandex/bv;->d:Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lru/yandex/bv;->a:J

    const/4 p2, 0x3

    new-array p3, p2, [[F

    new-array v0, p2, [F

    sget v1, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->a:I

    int-to-float v1, v1

    const v2, 0x3ee66666    # 0.45f

    mul-float v1, v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->a:I

    int-to-float v1, v1

    const v3, 0x3eb33333    # 0.35f

    mul-float v1, v1, v3

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->a:I

    int-to-float v1, v1

    const v4, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v4

    const/4 v4, 0x2

    aput v1, v0, v4

    aput-object v0, p3, v2

    new-array v0, p2, [F

    invoke-static {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->b(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;)Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;

    move-result-object p1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonRender;->a()F

    move-result p1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float p1, p1, v1

    aput p1, v0, v2

    const/high16 p1, 0x42dc0000    # 110.0f

    aput p1, v0, v3

    const/high16 p1, 0x42c40000    # 98.0f

    aput p1, v0, v4

    aput-object v0, p3, v3

    new-array p1, p2, [F

    fill-array-data p1, :array_0

    aput-object p1, p3, v4

    iput-object p3, p0, Lru/yandex/bv;->b:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x42dc0000    # 110.0f
        0x42c40000    # 98.0f
        0x42c80000    # 100.0f
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lru/yandex/bv;->a:J

    sub-long/2addr v0, v2

    sget v2, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->a:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v0, p0, Lru/yandex/bv;->c:Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, v0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->p:F

    iget-object v0, p0, Lru/yandex/bv;->d:Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lru/yandex/bv;->c:Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    invoke-interface {v0, v1}, Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;->onBalloonAnimationEnd(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V

    :cond_0
    iget-object v0, p0, Lru/yandex/bv;->e:Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    invoke-static {v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->d(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;)Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lru/yandex/bv;->b:[[F

    aget-object v7, v6, v2

    array-length v7, v7

    if-ge v3, v7, :cond_3

    aget-object v7, v6, v2

    aget v7, v7, v3

    float-to-int v7, v7

    add-int/2addr v4, v7

    int-to-long v7, v4

    cmp-long v9, v0, v7

    if-gez v9, :cond_2

    iget-object v4, p0, Lru/yandex/bv;->c:Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    const/4 v7, 0x1

    aget-object v8, v6, v7

    aget v8, v8, v3

    const/4 v9, 0x2

    aget-object v9, v6, v9

    aget v9, v9, v3

    aget-object v7, v6, v7

    aget v7, v7, v3

    sub-float/2addr v9, v7

    aget-object v2, v6, v2

    aget v2, v2, v3

    div-float/2addr v9, v2

    int-to-long v2, v5

    sub-long/2addr v0, v2

    long-to-float v0, v0

    mul-float v9, v9, v0

    add-float/2addr v8, v9

    iput v8, v4, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->p:F

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lru/yandex/bv;->e:Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    invoke-static {v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->e(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;)Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    iget-object v0, p0, Lru/yandex/bv;->e:Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    invoke-static {v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->f(Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;)Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
