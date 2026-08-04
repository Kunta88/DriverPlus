.class public final Lru/yandex/ac;
.super Landroid/os/Handler;


# instance fields
.field private final a:Lru/yandex/yandexmapkit/MapSurfaceView;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/MapSurfaceView;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lru/yandex/ac;->a:Lru/yandex/yandexmapkit/MapSurfaceView;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lru/yandex/ac;->a:Lru/yandex/yandexmapkit/MapSurfaceView;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapSurfaceView;->doQuit()V

    :goto_0
    return-void

    :cond_1
    iget-object p1, p0, Lru/yandex/ac;->a:Lru/yandex/yandexmapkit/MapSurfaceView;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapSurfaceView;->doRepaint()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
