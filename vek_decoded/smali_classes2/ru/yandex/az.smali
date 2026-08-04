.class public Lru/yandex/az;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lru/yandex/yandexmapkit/map/TiledSurface;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/map/TiledSurface;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/az;->a:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 3

    iget-object v0, p0, Lru/yandex/az;->a:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-static {v0}, Lru/yandex/yandexmapkit/map/TiledSurface;->a(Lru/yandex/yandexmapkit/map/TiledSurface;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lru/yandex/az;->a:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-static {v1}, Lru/yandex/yandexmapkit/map/TiledSurface;->b(Lru/yandex/yandexmapkit/map/TiledSurface;)I

    move-result v1

    iget-object v2, p0, Lru/yandex/az;->a:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-static {v2}, Lru/yandex/yandexmapkit/map/TiledSurface;->c(Lru/yandex/yandexmapkit/map/TiledSurface;)I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b()Lru/yandex/bn;
    .locals 3

    iget-object v0, p0, Lru/yandex/az;->a:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-static {v0}, Lru/yandex/yandexmapkit/map/TiledSurface;->a(Lru/yandex/yandexmapkit/map/TiledSurface;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lru/yandex/az;->a:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-static {v1}, Lru/yandex/yandexmapkit/map/TiledSurface;->b(Lru/yandex/yandexmapkit/map/TiledSurface;)I

    move-result v1

    iget-object v2, p0, Lru/yandex/az;->a:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-static {v2}, Lru/yandex/yandexmapkit/map/TiledSurface;->d(Lru/yandex/yandexmapkit/map/TiledSurface;)[Lru/yandex/bn;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lru/yandex/az;->a:Lru/yandex/yandexmapkit/map/TiledSurface;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lru/yandex/yandexmapkit/map/TiledSurface;->a(Lru/yandex/yandexmapkit/map/TiledSurface;I)I

    :cond_0
    iget-object v1, p0, Lru/yandex/az;->a:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-static {v1}, Lru/yandex/yandexmapkit/map/TiledSurface;->d(Lru/yandex/yandexmapkit/map/TiledSurface;)[Lru/yandex/bn;

    move-result-object v1

    iget-object v2, p0, Lru/yandex/az;->a:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-static {v2}, Lru/yandex/yandexmapkit/map/TiledSurface;->e(Lru/yandex/yandexmapkit/map/TiledSurface;)I

    move-result v2

    aget-object v1, v1, v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lru/yandex/az;->a:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-static {v0}, Lru/yandex/yandexmapkit/map/TiledSurface;->f(Lru/yandex/yandexmapkit/map/TiledSurface;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    :goto_1
    :try_start_0
    iget-object v0, p0, Lru/yandex/az;->a:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-static {v0}, Lru/yandex/yandexmapkit/map/TiledSurface;->f(Lru/yandex/yandexmapkit/map/TiledSurface;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lru/yandex/az;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lru/yandex/az;->b()Lru/yandex/bn;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lru/yandex/az;->a:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-static {v1}, Lru/yandex/yandexmapkit/map/TiledSurface;->g(Lru/yandex/yandexmapkit/map/TiledSurface;)Lru/yandex/bo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/yandex/bn;->a(Lru/yandex/bo;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lru/yandex/az;->a:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-static {v0}, Lru/yandex/yandexmapkit/map/TiledSurface;->a(Lru/yandex/yandexmapkit/map/TiledSurface;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lru/yandex/az;->a:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-static {v1}, Lru/yandex/yandexmapkit/map/TiledSurface;->f(Lru/yandex/yandexmapkit/map/TiledSurface;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lru/yandex/az;->a()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lru/yandex/az;->a:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-static {v1}, Lru/yandex/yandexmapkit/map/TiledSurface;->a(Lru/yandex/yandexmapkit/map/TiledSurface;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    nop

    goto :goto_0

    :cond_3
    return-void
.end method
