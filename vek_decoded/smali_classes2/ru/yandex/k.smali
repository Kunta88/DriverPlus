.class public final Lru/yandex/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lru/yandex/k;->a:J

    iput-wide p1, p0, Lru/yandex/k;->a:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-wide v0, p0, Lru/yandex/k;->a:J

    invoke-static {v0, v1}, Lru/yandex/core/KDSurfaceView;->access$000(J)V

    return-void
.end method
