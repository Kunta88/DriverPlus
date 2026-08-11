.class public abstract Lru/yandex/core/MotionEventProxy;
.super Ljava/lang/Object;


# instance fields
.field ev:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create()Lru/yandex/core/MotionEventProxy;
    .locals 2

    sget v0, Lru/yandex/core/CoreApplication;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    new-instance v0, Lru/yandex/core/MotionEventProxyNew;

    invoke-direct {v0}, Lru/yandex/core/MotionEventProxyNew;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lru/yandex/core/MotionEventProxyOld;

    invoke-direct {v0}, Lru/yandex/core/MotionEventProxyOld;-><init>()V

    return-object v0
.end method


# virtual methods
.method abstract getHistoricalEventTime(I)J
.end method

.method abstract getHistoricalX(II)F
.end method

.method abstract getHistoricalY(II)F
.end method

.method abstract getHistorySize()I
.end method

.method abstract getPointerCount()I
.end method

.method abstract getX(I)F
.end method

.method abstract getY(I)F
.end method
