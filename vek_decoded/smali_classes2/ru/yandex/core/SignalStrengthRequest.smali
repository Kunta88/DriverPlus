.class public final Lru/yandex/core/SignalStrengthRequest;
.super Ljava/lang/Object;


# static fields
.field public static lastSignalStrength:I

.field public static lastSignalStrengthKnown:Z


# instance fields
.field private cancelled:Z

.field private nativeHandle:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/core/SignalStrengthRequest;->cancelled:Z

    iput-wide p1, p0, Lru/yandex/core/SignalStrengthRequest;->nativeHandle:J

    return-void
.end method

.method public static synthetic access$000(Lru/yandex/core/SignalStrengthRequest;)Z
    .locals 0

    iget-boolean p0, p0, Lru/yandex/core/SignalStrengthRequest;->cancelled:Z

    return p0
.end method

.method public static synthetic access$100(Lru/yandex/core/SignalStrengthRequest;)J
    .locals 2

    iget-wide v0, p0, Lru/yandex/core/SignalStrengthRequest;->nativeHandle:J

    return-wide v0
.end method

.method public static synthetic access$200(JZI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lru/yandex/core/SignalStrengthRequest;->signal(JZI)V

    return-void
.end method

.method private static native signal(JZI)V
.end method


# virtual methods
.method cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/core/SignalStrengthRequest;->cancelled:Z

    return-void
.end method

.method start()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lru/yandex/m;

    invoke-direct {v1, p0}, Lru/yandex/m;-><init>(Lru/yandex/core/SignalStrengthRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
