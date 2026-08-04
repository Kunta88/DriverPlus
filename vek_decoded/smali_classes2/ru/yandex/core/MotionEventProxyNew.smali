.class public Lru/yandex/core/MotionEventProxyNew;
.super Lru/yandex/core/MotionEventProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lru/yandex/core/MotionEventProxy;-><init>()V

    return-void
.end method


# virtual methods
.method getHistoricalEventTime(I)J
    .locals 2

    iget-object v0, p0, Lru/yandex/core/MotionEventProxyNew;->ev:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getHistoricalX(II)F
    .locals 1

    iget-object v0, p0, Lru/yandex/core/MotionEventProxyNew;->ev:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1, p2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result p1

    return p1
.end method

.method getHistoricalY(II)F
    .locals 1

    iget-object v0, p0, Lru/yandex/core/MotionEventProxyNew;->ev:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1, p2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result p1

    return p1
.end method

.method getHistorySize()I
    .locals 1

    iget-object v0, p0, Lru/yandex/core/MotionEventProxyNew;->ev:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    return v0
.end method

.method getPointerCount()I
    .locals 1

    iget-object v0, p0, Lru/yandex/core/MotionEventProxyNew;->ev:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    return v0
.end method

.method getX(I)F
    .locals 1

    iget-object v0, p0, Lru/yandex/core/MotionEventProxyNew;->ev:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    return p1
.end method

.method getY(I)F
    .locals 1

    iget-object v0, p0, Lru/yandex/core/MotionEventProxyNew;->ev:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    return p1
.end method
