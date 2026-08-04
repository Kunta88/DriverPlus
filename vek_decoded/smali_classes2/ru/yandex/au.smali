.class public final Lru/yandex/au;
.super Ljava/lang/Object;


# static fields
.field public static volatile a:I


# instance fields
.field private b:I

.field private final c:I

.field private final d:I

.field private e:I

.field private f:Lru/yandex/yandexmapkit/map/Tile;

.field private g:Lru/yandex/yandexmapkit/map/Tile;

.field private final h:Lru/yandex/al;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lru/yandex/al;

    invoke-direct {v0, p2}, Lru/yandex/al;-><init>(I)V

    iput-object v0, p0, Lru/yandex/au;->h:Lru/yandex/al;

    iput p2, p0, Lru/yandex/au;->b:I

    iput p1, p0, Lru/yandex/au;->c:I

    div-int/lit8 p1, p1, 0x6

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lru/yandex/au;->d:I

    const/4 p1, 0x0

    sput p1, Lru/yandex/au;->a:I

    iput p1, p0, Lru/yandex/au;->e:I

    return-void
.end method

.method private declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    :goto_0
    :try_start_0
    iget v0, p0, Lru/yandex/au;->e:I

    if-le v0, p1, :cond_1

    invoke-direct {p0}, Lru/yandex/au;->c()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lru/yandex/au;->h:Lru/yandex/al;

    invoke-virtual {p1}, Lru/yandex/al;->a()V

    const/4 p1, 0x0

    iput-object p1, p0, Lru/yandex/au;->g:Lru/yandex/yandexmapkit/map/Tile;

    iput-object p1, p0, Lru/yandex/au;->f:Lru/yandex/yandexmapkit/map/Tile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private declared-synchronized c()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lru/yandex/au;->d()Lru/yandex/yandexmapkit/map/Tile;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/map/Tile;->d()V

    :cond_0
    iget-object v1, p0, Lru/yandex/au;->h:Lru/yandex/al;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/map/Tile;->i()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lru/yandex/al;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()Lru/yandex/yandexmapkit/map/Tile;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/yandex/au;->g:Lru/yandex/yandexmapkit/map/Tile;

    if-eqz v0, :cond_1

    iget v1, p0, Lru/yandex/au;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lru/yandex/au;->e:I

    const/4 v1, 0x0

    iput-object v1, v0, Lru/yandex/yandexmapkit/map/Tile;->z:Lru/yandex/yandexmapkit/map/Tile;

    iget-object v2, v0, Lru/yandex/yandexmapkit/map/Tile;->y:Lru/yandex/yandexmapkit/map/Tile;

    iput-object v1, v0, Lru/yandex/yandexmapkit/map/Tile;->y:Lru/yandex/yandexmapkit/map/Tile;

    if-nez v2, :cond_0

    iget-object v1, p0, Lru/yandex/au;->f:Lru/yandex/yandexmapkit/map/Tile;

    iput-object v1, p0, Lru/yandex/au;->g:Lru/yandex/yandexmapkit/map/Tile;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lru/yandex/au;->g:Lru/yandex/yandexmapkit/map/Tile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d(Lru/yandex/yandexmapkit/map/Tile;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lru/yandex/au;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lru/yandex/au;->e:I

    iget-object v0, p0, Lru/yandex/au;->f:Lru/yandex/yandexmapkit/map/Tile;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object p1, p0, Lru/yandex/au;->f:Lru/yandex/yandexmapkit/map/Tile;

    iput-object p1, p0, Lru/yandex/au;->g:Lru/yandex/yandexmapkit/map/Tile;

    iput-object v1, p1, Lru/yandex/yandexmapkit/map/Tile;->y:Lru/yandex/yandexmapkit/map/Tile;

    iput-object v1, p1, Lru/yandex/yandexmapkit/map/Tile;->z:Lru/yandex/yandexmapkit/map/Tile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, v0, Lru/yandex/yandexmapkit/map/Tile;->y:Lru/yandex/yandexmapkit/map/Tile;

    iput-object v1, p1, Lru/yandex/yandexmapkit/map/Tile;->y:Lru/yandex/yandexmapkit/map/Tile;

    iget-object v0, p0, Lru/yandex/au;->f:Lru/yandex/yandexmapkit/map/Tile;

    iput-object v0, p1, Lru/yandex/yandexmapkit/map/Tile;->z:Lru/yandex/yandexmapkit/map/Tile;

    iput-object p1, p0, Lru/yandex/au;->f:Lru/yandex/yandexmapkit/map/Tile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized e(Lru/yandex/yandexmapkit/map/Tile;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/yandex/au;->f:Lru/yandex/yandexmapkit/map/Tile;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lru/yandex/au;->g:Lru/yandex/yandexmapkit/map/Tile;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object v0, p1, Lru/yandex/yandexmapkit/map/Tile;->y:Lru/yandex/yandexmapkit/map/Tile;

    iput-object v0, p0, Lru/yandex/au;->g:Lru/yandex/yandexmapkit/map/Tile;

    iput-object v1, v0, Lru/yandex/yandexmapkit/map/Tile;->z:Lru/yandex/yandexmapkit/map/Tile;

    iput-object v1, p1, Lru/yandex/yandexmapkit/map/Tile;->y:Lru/yandex/yandexmapkit/map/Tile;

    iget-object v0, p0, Lru/yandex/au;->f:Lru/yandex/yandexmapkit/map/Tile;

    iput-object v0, p1, Lru/yandex/yandexmapkit/map/Tile;->z:Lru/yandex/yandexmapkit/map/Tile;

    iget-object v0, p0, Lru/yandex/au;->f:Lru/yandex/yandexmapkit/map/Tile;

    iput-object p1, v0, Lru/yandex/yandexmapkit/map/Tile;->y:Lru/yandex/yandexmapkit/map/Tile;

    iput-object p1, p0, Lru/yandex/au;->f:Lru/yandex/yandexmapkit/map/Tile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p1, Lru/yandex/yandexmapkit/map/Tile;->y:Lru/yandex/yandexmapkit/map/Tile;

    iget-object v2, p1, Lru/yandex/yandexmapkit/map/Tile;->z:Lru/yandex/yandexmapkit/map/Tile;

    iput-object v2, v0, Lru/yandex/yandexmapkit/map/Tile;->z:Lru/yandex/yandexmapkit/map/Tile;

    iget-object v0, p1, Lru/yandex/yandexmapkit/map/Tile;->z:Lru/yandex/yandexmapkit/map/Tile;

    iget-object v2, p1, Lru/yandex/yandexmapkit/map/Tile;->y:Lru/yandex/yandexmapkit/map/Tile;

    iput-object v2, v0, Lru/yandex/yandexmapkit/map/Tile;->y:Lru/yandex/yandexmapkit/map/Tile;

    iput-object v1, p1, Lru/yandex/yandexmapkit/map/Tile;->y:Lru/yandex/yandexmapkit/map/Tile;

    iput-object v1, p1, Lru/yandex/yandexmapkit/map/Tile;->z:Lru/yandex/yandexmapkit/map/Tile;

    iget-object v0, p0, Lru/yandex/au;->f:Lru/yandex/yandexmapkit/map/Tile;

    if-nez v0, :cond_1

    iput-object p1, p0, Lru/yandex/au;->f:Lru/yandex/yandexmapkit/map/Tile;

    iput-object p1, p0, Lru/yandex/au;->g:Lru/yandex/yandexmapkit/map/Tile;

    iput-object v1, p1, Lru/yandex/yandexmapkit/map/Tile;->y:Lru/yandex/yandexmapkit/map/Tile;

    iput-object v1, p1, Lru/yandex/yandexmapkit/map/Tile;->z:Lru/yandex/yandexmapkit/map/Tile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iput-object p1, v0, Lru/yandex/yandexmapkit/map/Tile;->y:Lru/yandex/yandexmapkit/map/Tile;

    iput-object v1, p1, Lru/yandex/yandexmapkit/map/Tile;->y:Lru/yandex/yandexmapkit/map/Tile;

    iget-object v0, p0, Lru/yandex/au;->f:Lru/yandex/yandexmapkit/map/Tile;

    iput-object v0, p1, Lru/yandex/yandexmapkit/map/Tile;->z:Lru/yandex/yandexmapkit/map/Tile;

    iput-object p1, p0, Lru/yandex/au;->f:Lru/yandex/yandexmapkit/map/Tile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized a(J)Lru/yandex/yandexmapkit/map/Tile;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/yandex/au;->h:Lru/yandex/al;

    invoke-virtual {v0, p1, p2}, Lru/yandex/al;->c(J)Lru/yandex/yandexmapkit/map/Tile;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lru/yandex/au;->b:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lru/yandex/au;->h:Lru/yandex/al;

    invoke-virtual {v1, p1, p2}, Lru/yandex/al;->b(J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lru/yandex/au;->e(Lru/yandex/yandexmapkit/map/Tile;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lru/yandex/au;->d(Lru/yandex/yandexmapkit/map/Tile;)V

    iget-object v1, p0, Lru/yandex/au;->h:Lru/yandex/al;

    invoke-virtual {v1, p1, p2, v0}, Lru/yandex/al;->a(JLru/yandex/yandexmapkit/map/Tile;)V

    iget p1, p0, Lru/yandex/au;->e:I

    iget p2, p0, Lru/yandex/au;->b:I

    if-le p1, p2, :cond_1

    invoke-direct {p0}, Lru/yandex/au;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lru/yandex/au;->d:I

    iget-object v1, p0, Lru/yandex/au;->g:Lru/yandex/yandexmapkit/map/Tile;

    :goto_0
    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lru/yandex/yandexmapkit/map/Tile;->w:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/map/Tile;->d()V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget-object v1, v1, Lru/yandex/yandexmapkit/map/Tile;->y:Lru/yandex/yandexmapkit/map/Tile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized a(JLru/yandex/yandexmapkit/map/Tile;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lru/yandex/au;->b:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lru/yandex/au;->h:Lru/yandex/al;

    invoke-virtual {v0, p1, p2}, Lru/yandex/al;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Lru/yandex/au;->d(Lru/yandex/yandexmapkit/map/Tile;)V

    iget-object v0, p0, Lru/yandex/au;->h:Lru/yandex/al;

    invoke-virtual {v0, p1, p2, p3}, Lru/yandex/al;->a(JLru/yandex/yandexmapkit/map/Tile;)V

    iget p1, p0, Lru/yandex/au;->e:I

    iget p2, p0, Lru/yandex/au;->b:I

    if-le p1, p2, :cond_0

    invoke-direct {p0}, Lru/yandex/au;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lru/yandex/yandexmapkit/map/Tile;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lru/yandex/au;->b:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lru/yandex/au;->h:Lru/yandex/al;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/Tile;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lru/yandex/al;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lru/yandex/au;->e(Lru/yandex/yandexmapkit/map/Tile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lru/yandex/yandexmapkit/map/TileRenderListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/yandex/au;->f:Lru/yandex/yandexmapkit/map/Tile;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/map/Tile;->b(Lru/yandex/yandexmapkit/map/TileRenderListener;)Z

    iget-object v0, v0, Lru/yandex/yandexmapkit/map/Tile;->z:Lru/yandex/yandexmapkit/map/Tile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method b()V
    .locals 2

    iget v0, p0, Lru/yandex/au;->b:I

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lru/yandex/au;->a(I)V

    invoke-direct {p0, v0}, Lru/yandex/au;->a(I)V

    return-void
.end method

.method public declared-synchronized b(Lru/yandex/yandexmapkit/map/Tile;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/yandex/au;->h:Lru/yandex/al;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/Tile;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lru/yandex/al;->b(J)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lru/yandex/au;->a:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lru/yandex/au;->a:I

    iget v0, p0, Lru/yandex/au;->c:I

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lru/yandex/au;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lru/yandex/yandexmapkit/map/Tile;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/yandex/au;->h:Lru/yandex/al;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/Tile;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lru/yandex/al;->b(J)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lru/yandex/au;->a:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lru/yandex/au;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
