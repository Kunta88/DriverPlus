.class public final Lru/yandex/ab;
.super Landroid/os/Handler;


# instance fields
.field private final a:Lru/yandex/yandexmapkit/MapStaticView;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/MapStaticView;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lru/yandex/ab;->a:Lru/yandex/yandexmapkit/MapStaticView;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lru/yandex/ab;->a:Lru/yandex/yandexmapkit/MapStaticView;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapStaticView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
