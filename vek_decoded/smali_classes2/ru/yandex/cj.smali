.class public Lru/yandex/cj;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()I
    .locals 3

    const-class v0, Lru/yandex/cj;

    monitor-enter v0

    :try_start_0
    sget v1, Lru/yandex/cj;->a:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lru/yandex/cj;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
