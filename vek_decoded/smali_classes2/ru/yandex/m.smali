.class public Lru/yandex/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lru/yandex/core/SignalStrengthRequest;


# direct methods
.method public constructor <init>(Lru/yandex/core/SignalStrengthRequest;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/m;->a:Lru/yandex/core/SignalStrengthRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lru/yandex/m;->a:Lru/yandex/core/SignalStrengthRequest;

    invoke-static {v0}, Lru/yandex/core/SignalStrengthRequest;->access$000(Lru/yandex/core/SignalStrengthRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lru/yandex/core/SignalStrengthRequest;->lastSignalStrengthKnown:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/yandex/m;->a:Lru/yandex/core/SignalStrengthRequest;

    invoke-static {v0}, Lru/yandex/core/SignalStrengthRequest;->access$100(Lru/yandex/core/SignalStrengthRequest;)J

    move-result-wide v0

    const/4 v2, 0x1

    sget v3, Lru/yandex/core/SignalStrengthRequest;->lastSignalStrength:I

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lru/yandex/core/SignalStrengthRequest;->access$200(JZI)V

    return-void

    :cond_1
    iget-object v0, p0, Lru/yandex/m;->a:Lru/yandex/core/SignalStrengthRequest;

    invoke-static {v0}, Lru/yandex/core/SignalStrengthRequest;->access$100(Lru/yandex/core/SignalStrengthRequest;)J

    move-result-wide v0

    const/4 v2, 0x0

    const/16 v3, 0x63

    goto :goto_0
.end method
