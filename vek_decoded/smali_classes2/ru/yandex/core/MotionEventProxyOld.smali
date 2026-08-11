.class public Lru/yandex/core/MotionEventProxyOld;
.super Lru/yandex/core/MotionEventProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lru/yandex/core/MotionEventProxy;-><init>()V

    return-void
.end method


# virtual methods
.method getHistoricalEventTime(I)J
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method getHistoricalX(II)F
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method getHistoricalY(II)F
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method getHistorySize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getPointerCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method getX(I)F
    .locals 0

    iget-object p1, p0, Lru/yandex/core/MotionEventProxyOld;->ev:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1
.end method

.method getY(I)F
    .locals 0

    iget-object p1, p0, Lru/yandex/core/MotionEventProxyOld;->ev:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1
.end method
