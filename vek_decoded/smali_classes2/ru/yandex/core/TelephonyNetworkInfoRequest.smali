.class public final Lru/yandex/core/TelephonyNetworkInfoRequest;
.super Ljava/lang/Object;


# instance fields
.field private cancelled:Z

.field private nativeHandle:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/core/TelephonyNetworkInfoRequest;->cancelled:Z

    iput-wide p1, p0, Lru/yandex/core/TelephonyNetworkInfoRequest;->nativeHandle:J

    return-void
.end method

.method public static synthetic access$000(Lru/yandex/core/TelephonyNetworkInfoRequest;)Z
    .locals 0

    iget-boolean p0, p0, Lru/yandex/core/TelephonyNetworkInfoRequest;->cancelled:Z

    return p0
.end method

.method public static synthetic access$100(Lru/yandex/core/TelephonyNetworkInfoRequest;)J
    .locals 2

    iget-wide v0, p0, Lru/yandex/core/TelephonyNetworkInfoRequest;->nativeHandle:J

    return-wide v0
.end method

.method public static synthetic access$200(JIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lru/yandex/core/TelephonyNetworkInfoRequest;->signal(JIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static native signal(JIILjava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/core/TelephonyNetworkInfoRequest;->cancelled:Z

    return-void
.end method

.method public start()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sget-object v1, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    new-instance v2, Lru/yandex/o;

    invoke-direct {v2, p0, v1}, Lru/yandex/o;-><init>(Lru/yandex/core/TelephonyNetworkInfoRequest;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
