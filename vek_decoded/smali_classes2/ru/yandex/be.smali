.class public final Lru/yandex/be;
.super Lru/yandex/yandexmapkit/overlay/Overlay;

# interfaces
.implements Lru/yandex/yandexmapkit/StartupController$StartupListener;
.implements Lru/yandex/yandexmapkit/map/OnMapListener;
.implements Lru/yandex/yandexmapkit/net/DownloadHandler;


# static fields
.field public static b:I = 0x4


# instance fields
.field public final a:[Lru/yandex/bf;

.field private f:Z

.field private g:Lru/yandex/bc;

.field private final h:Lru/yandex/yandexmapkit/MapController;

.field private final i:Landroid/graphics/Paint;

.field private final j:Ljava/util/ArrayList;

.field private k:Lru/yandex/bh;

.field private l:Z

.field private m:Z

.field private final n:Lru/yandex/bd;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lru/yandex/yandexmapkit/MapController;)V
    .locals 3

    invoke-direct {p0, p1}, Lru/yandex/yandexmapkit/overlay/Overlay;-><init>(Lru/yandex/yandexmapkit/MapController;)V

    new-instance v0, Lru/yandex/yandexmapkit/utils/Point;

    invoke-direct {v0}, Lru/yandex/yandexmapkit/utils/Point;-><init>()V

    iput-object p1, p0, Lru/yandex/be;->h:Lru/yandex/yandexmapkit/MapController;

    const/16 v0, 0x17

    new-array v0, v0, [Lru/yandex/bf;

    iput-object v0, p0, Lru/yandex/be;->a:[Lru/yandex/bf;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/yandex/be;->j:Ljava/util/ArrayList;

    new-instance v0, Lru/yandex/bd;

    invoke-direct {v0, p0}, Lru/yandex/bd;-><init>(Lru/yandex/be;)V

    iput-object v0, p0, Lru/yandex/be;->n:Lru/yandex/bd;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lru/yandex/be;->i:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->getTiledSurface()Lru/yandex/yandexmapkit/map/TiledSurface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lru/yandex/yandexmapkit/map/TiledSurface;->addTileRenderListener(Lru/yandex/yandexmapkit/map/TileRenderListener;)V

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->getStartupController()Lru/yandex/yandexmapkit/StartupController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lru/yandex/yandexmapkit/StartupController;->addStartupListener(Lru/yandex/yandexmapkit/StartupController$StartupListener;)V

    invoke-virtual {p1, p0}, Lru/yandex/yandexmapkit/MapController;->addMapListener(Lru/yandex/yandexmapkit/map/OnMapListener;)V

    return-void
.end method

.method private declared-synchronized a(Lru/yandex/bf;)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_4

    :try_start_0
    iget v0, p1, Lru/yandex/bf;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lru/yandex/bf;->i:Lru/yandex/bi;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewJamsDownloaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lru/yandex/bf;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p1, Lru/yandex/bf;->d:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lru/yandex/be;->a:[Lru/yandex/bf;

    iget-byte v1, p1, Lru/yandex/bf;->d:B

    aput-object p1, v0, v1

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lru/yandex/be;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/yandex/as;

    iget v2, v1, Lru/yandex/as;->c:I

    iget-byte v3, p1, Lru/yandex/bf;->d:B

    if-ne v2, v3, :cond_0

    iget v2, v1, Lru/yandex/as;->a:I

    iget v3, p1, Lru/yandex/bf;->k:I

    if-le v2, v3, :cond_0

    iget v2, v1, Lru/yandex/as;->a:I

    iget v3, p1, Lru/yandex/bf;->k:I

    iget v4, p1, Lru/yandex/bf;->m:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    iget v2, v1, Lru/yandex/as;->b:I

    iget v3, p1, Lru/yandex/bf;->l:I

    if-le v2, v3, :cond_0

    iget v2, v1, Lru/yandex/as;->b:I

    iget v3, p1, Lru/yandex/bf;->l:I

    iget v4, p1, Lru/yandex/bf;->n:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    iget-object v0, p0, Lru/yandex/be;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p1, Lru/yandex/bf;->i:Lru/yandex/bi;

    iget-wide v0, p1, Lru/yandex/bi;->a:J

    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Lru/yandex/be;->a:[Lru/yandex/bf;

    array-length v3, v2

    if-ge p1, v3, :cond_3

    aget-object v2, v2, p1

    if-eqz v2, :cond_2

    iget-object v2, v2, Lru/yandex/bf;->i:Lru/yandex/bi;

    iget-wide v2, v2, Lru/yandex/bi;->a:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_2

    iget-object v2, p0, Lru/yandex/be;->a:[Lru/yandex/bf;

    const/4 v3, 0x0

    aput-object v3, v2, p1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lru/yandex/be;->b(Z)V

    iget-object p1, p0, Lru/yandex/be;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_4
    :goto_1
    monitor-exit p0

    return-void
.end method

.method private a(Lru/yandex/as;)Z
    .locals 8

    iget-object v0, p0, Lru/yandex/be;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getWidth()I

    move-result v0

    iget-object v1, p0, Lru/yandex/be;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/MapController;->getHeight()I

    move-result v1

    iget v2, p1, Lru/yandex/as;->c:I

    rsub-int/lit8 v2, v2, 0x17

    shl-int/2addr v0, v2

    shl-int/2addr v1, v2

    iget v2, p1, Lru/yandex/as;->a:I

    sub-int/2addr v2, v0

    iget v3, p1, Lru/yandex/as;->b:I

    sub-int/2addr v3, v1

    iget v4, p1, Lru/yandex/as;->a:I

    add-int/2addr v4, v0

    iget v0, p1, Lru/yandex/as;->b:I

    add-int/2addr v0, v1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lru/yandex/be;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/yandex/as;

    iget v6, v5, Lru/yandex/as;->c:I

    iget v7, p1, Lru/yandex/as;->c:I

    if-ne v6, v7, :cond_0

    iget v6, v5, Lru/yandex/as;->a:I

    if-le v6, v2, :cond_0

    iget v6, v5, Lru/yandex/as;->a:I

    if-ge v6, v4, :cond_0

    iget v6, v5, Lru/yandex/as;->b:I

    if-le v6, v3, :cond_0

    iget v5, v5, Lru/yandex/as;->b:I

    if-ge v5, v0, :cond_0

    const/4 p1, 0x1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method private b(Lru/yandex/as;)V
    .locals 3

    iget-object v0, p0, Lru/yandex/be;->g:Lru/yandex/bc;

    if-eqz v0, :cond_0

    iget v0, p1, Lru/yandex/as;->c:I

    sget v1, Lru/yandex/be;->b:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lru/yandex/be;->a(Lru/yandex/as;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lru/yandex/yandexmapkit/net/Downloader;->b:Lru/yandex/br;

    if-eqz v0, :cond_0

    sget-object v0, Lru/yandex/yandexmapkit/net/Downloader;->b:Lru/yandex/br;

    const-string v1, "semaphores"

    iget v2, p1, Lru/yandex/as;->c:I

    invoke-virtual {v0, v1, v2}, Lru/yandex/br;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lru/yandex/yandexmapkit/net/Downloader;->b:Lru/yandex/br;

    iget-object v0, v0, Lru/yandex/br;->f:Ljava/util/Map;

    const-string v1, "semaphores"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lru/yandex/be;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lru/yandex/be;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/yandex/be;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lru/yandex/be;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lru/yandex/be;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->getDownloader()Lru/yandex/yandexmapkit/net/Downloader;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Lru/yandex/yandexmapkit/net/Downloader;->downloadProccess(Lru/yandex/yandexmapkit/net/DownloadHandler;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected a()Lru/yandex/bc;
    .locals 1

    iget-object v0, p0, Lru/yandex/be;->g:Lru/yandex/bc;

    return-object v0
.end method

.method public declared-synchronized a(Lru/yandex/yandexmapkit/map/Tile;)Lru/yandex/bf;
    .locals 12

    monitor-enter p0

    :try_start_0
    iget v0, p1, Lru/yandex/yandexmapkit/map/Tile;->zoom:I

    sget v1, Lru/yandex/be;->b:I

    if-lt v0, v1, :cond_5

    iget v0, p1, Lru/yandex/yandexmapkit/map/Tile;->zoom:I

    iget-object v1, p0, Lru/yandex/be;->a:[Lru/yandex/bf;

    iget v2, p1, Lru/yandex/yandexmapkit/map/Tile;->zoom:I

    aget-object v1, v1, v2

    if-nez v1, :cond_4

    add-int/lit8 v2, v0, -0x1

    :goto_0
    sget v3, Lru/yandex/be;->b:I

    if-lt v2, v3, :cond_1

    iget-object v3, p0, Lru/yandex/be;->a:[Lru/yandex/bf;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v2, v0, 0x1

    :goto_2
    const/16 v3, 0x11

    if-gt v2, v3, :cond_4

    iget-object v3, p0, Lru/yandex/be;->a:[Lru/yandex/bf;

    aget-object v3, v3, v2

    if-eqz v3, :cond_3

    if-eqz v1, :cond_2

    iget-byte v2, v1, Lru/yandex/bf;->d:B

    sub-int v2, v0, v2

    iget-byte v4, v3, Lru/yandex/bf;->d:B

    sub-int/2addr v4, v0

    if-le v2, v4, :cond_4

    :cond_2
    move-object v1, v3

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget v0, p1, Lru/yandex/yandexmapkit/map/Tile;->zoom:I

    rsub-int/lit8 v0, v0, 0x17

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorScaleTile()F

    move-result v2

    iget v3, p1, Lru/yandex/yandexmapkit/map/Tile;->i:I

    shl-int/lit8 v3, v3, 0x7

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v4, v3

    iget p1, p1, Lru/yandex/yandexmapkit/map/Tile;->j:I

    shl-int/lit8 p1, p1, 0x7

    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-int v5, p1

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getSizeTile()I

    move-result p1

    int-to-float p1, p1

    mul-float v0, v0, p1

    mul-float v0, v0, v2

    float-to-int v7, v0

    iget v8, v1, Lru/yandex/bf;->k:I

    iget v9, v1, Lru/yandex/bf;->l:I

    iget v10, v1, Lru/yandex/bf;->m:I

    iget v11, v1, Lru/yandex/bf;->n:I

    move v6, v7

    invoke-static/range {v4 .. v11}, Lru/yandex/yandexmapkit/utils/Utils;->a(IIIIIIII)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_5

    monitor-exit p0

    return-object v1

    :cond_5
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public a(Z)V
    .locals 30

    move-object/from16 v1, p0

    move/from16 v0, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v2, v1, Lru/yandex/be;->g:Lru/yandex/bc;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lru/yandex/be;->f:Z

    if-eqz v2, :cond_0

    iget-object v0, v1, Lru/yandex/be;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getDownloader()Lru/yandex/yandexmapkit/net/Downloader;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lru/yandex/yandexmapkit/net/Downloader;->downloadProccess(Lru/yandex/yandexmapkit/net/DownloadHandler;I)V

    return-void

    :cond_0
    iget-object v2, v1, Lru/yandex/be;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/MapController;->getMapModel()Lru/yandex/yandexmapkit/MapModel;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2}, Lru/yandex/yandexmapkit/MapModel;->getX()I

    move-result v4

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/MapModel;->getY()I

    move-result v5

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/MapModel;->getZoom()I

    move-result v6

    iget-object v7, v1, Lru/yandex/be;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v7}, Lru/yandex/yandexmapkit/MapController;->getMapRotator()Lru/yandex/ap;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v1, Lru/yandex/be;->a:[Lru/yandex/bf;

    aget-object v2, v2, v6

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lru/yandex/bf;->b()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v1, Lru/yandex/be;->a:[Lru/yandex/bf;

    array-length v8, v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_2

    iget-object v10, v1, Lru/yandex/be;->a:[Lru/yandex/bf;

    aget-object v11, v10, v9

    if-eqz v11, :cond_1

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lru/yandex/bf;->b()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v1, Lru/yandex/be;->a:[Lru/yandex/bf;

    const/4 v11, 0x0

    aput-object v11, v10, v9

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    xor-int/lit8 v9, v8, 0x1

    invoke-virtual {v1, v9}, Lru/yandex/be;->b(Z)V

    if-eqz v8, :cond_4

    iget-object v8, v1, Lru/yandex/be;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v8}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    :cond_4
    if-nez v0, :cond_8

    iget-boolean v0, v1, Lru/yandex/be;->f:Z

    if-eqz v0, :cond_7

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lru/yandex/bf;->a()Z

    move-result v0

    if-nez v0, :cond_8

    sget v0, Lru/yandex/be;->b:I

    if-lt v6, v0, :cond_5

    iget-object v0, v1, Lru/yandex/be;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getWidth()I

    move-result v0

    iget-object v8, v1, Lru/yandex/be;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v8}, Lru/yandex/yandexmapkit/MapController;->getHeight()I

    move-result v8

    rsub-int/lit8 v9, v6, 0x17

    shl-int/2addr v0, v9

    shl-int/2addr v8, v9

    shr-int/lit8 v9, v0, 0x1

    sub-int v9, v4, v9

    shr-int/lit8 v10, v8, 0x1

    sub-int v10, v5, v10

    int-to-long v11, v9

    int-to-long v13, v10

    int-to-long v9, v0

    int-to-long v7, v8

    iget v15, v2, Lru/yandex/bf;->k:I

    int-to-long v0, v15

    iget v15, v2, Lru/yandex/bf;->l:I

    move/from16 v27, v4

    int-to-long v3, v15

    iget v15, v2, Lru/yandex/bf;->m:I

    move/from16 v28, v5

    move/from16 v29, v6

    int-to-long v5, v15

    iget v2, v2, Lru/yandex/bf;->n:I

    move-wide/from16 v23, v5

    int-to-long v5, v2

    move-wide v15, v9

    move-wide/from16 v17, v7

    move-wide/from16 v19, v0

    move-wide/from16 v21, v3

    move-wide/from16 v25, v5

    invoke-static/range {v11 .. v26}, Lru/yandex/yandexmapkit/utils/Utils;->a(JJJJJJJJ)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v29, v6

    :cond_6
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    move-object/from16 v1, p0

    goto :goto_4

    :cond_8
    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v29, v6

    :goto_3
    new-instance v0, Lru/yandex/as;

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lru/yandex/as;-><init>(III)V

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lru/yandex/be;->b(Lru/yandex/as;)V

    :goto_4
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public b(Z)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lru/yandex/be;->f:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    :try_start_0
    iget-object v1, v0, Lru/yandex/be;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/MapController;->getMapModel()Lru/yandex/yandexmapkit/MapModel;

    move-result-object v1

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/MapModel;->getX()I

    move-result v1

    iget-object v4, v0, Lru/yandex/be;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v4}, Lru/yandex/yandexmapkit/MapController;->getMapModel()Lru/yandex/yandexmapkit/MapModel;

    move-result-object v4

    invoke-virtual {v4}, Lru/yandex/yandexmapkit/MapModel;->getY()I

    move-result v4

    iget-object v5, v0, Lru/yandex/be;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v5}, Lru/yandex/yandexmapkit/MapController;->getMapModel()Lru/yandex/yandexmapkit/MapModel;

    move-result-object v5

    invoke-virtual {v5}, Lru/yandex/yandexmapkit/MapModel;->getZoom()I

    move-result v5

    sget v6, Lru/yandex/be;->b:I

    if-lt v5, v6, :cond_5

    iget-object v6, v0, Lru/yandex/be;->a:[Lru/yandex/bf;

    aget-object v6, v6, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v6, :cond_4

    add-int/lit8 v7, v5, -0x1

    :goto_0
    :try_start_1
    sget v8, Lru/yandex/be;->b:I

    if-lt v7, v8, :cond_1

    iget-object v8, v0, Lru/yandex/be;->a:[Lru/yandex/bf;

    aget-object v8, v8, v7

    if-eqz v8, :cond_0

    move-object v6, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v7, v5, 0x1

    :goto_2
    const/16 v8, 0x11

    if-gt v7, v8, :cond_4

    iget-object v8, v0, Lru/yandex/be;->a:[Lru/yandex/bf;

    aget-object v8, v8, v7

    if-eqz v8, :cond_3

    if-eqz v6, :cond_2

    iget-byte v7, v6, Lru/yandex/bf;->d:B

    sub-int v7, v5, v7

    iget-byte v9, v8, Lru/yandex/bf;->d:B

    sub-int/2addr v9, v5

    if-le v7, v9, :cond_4

    :cond_2
    move-object v6, v8

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catchall_0
    nop

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz v6, :cond_6

    iget v5, v6, Lru/yandex/bf;->k:I

    if-lt v1, v5, :cond_5

    iget v5, v6, Lru/yandex/bf;->k:I

    iget v7, v6, Lru/yandex/bf;->m:I

    add-int/2addr v5, v7

    if-gt v1, v5, :cond_5

    iget v1, v6, Lru/yandex/bf;->l:I

    if-lt v4, v1, :cond_5

    iget v1, v6, Lru/yandex/bf;->l:I

    iget v5, v6, Lru/yandex/bf;->n:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v1, v5

    if-le v4, v1, :cond_6

    :catchall_1
    :cond_5
    const/4 v6, 0x0

    :cond_6
    :goto_4
    if-eqz v6, :cond_a

    iget v1, v6, Lru/yandex/bf;->g:I

    if-lez v1, :cond_9

    iget-object v1, v6, Lru/yandex/bf;->j:[Lru/yandex/bh;

    aget-object v1, v1, v2

    iput-object v1, v0, Lru/yandex/be;->k:Lru/yandex/bh;

    iget-object v1, v0, Lru/yandex/be;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/MapController;->getMapModel()Lru/yandex/yandexmapkit/MapModel;

    move-result-object v1

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/MapModel;->getPosition()Lru/yandex/as;

    move-result-object v1

    invoke-virtual {v1}, Lru/yandex/as;->a()Lru/yandex/yandexmapkit/utils/GeoPoint;

    move-result-object v1

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v7, -0x1

    const/4 v8, 0x0

    :goto_5
    iget v9, v6, Lru/yandex/bf;->g:I

    if-ge v8, v9, :cond_8

    iget-object v9, v6, Lru/yandex/bf;->j:[Lru/yandex/bh;

    aget-object v9, v9, v8

    if-eqz v9, :cond_7

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLat()D

    move-result-wide v10

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLon()D

    move-result-wide v12

    iget-wide v14, v9, Lru/yandex/bh;->a:D

    iget-wide v2, v9, Lru/yandex/bh;->b:D

    move-wide/from16 v16, v2

    invoke-static/range {v10 .. v17}, Lru/yandex/yandexmapkit/utils/CoordConversion;->getDistance(DDDD)D

    move-result-wide v2

    cmpg-double v9, v2, v4

    if-gez v9, :cond_7

    move-wide v4, v2

    move v7, v8

    :cond_7
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    goto :goto_5

    :cond_8
    if-ltz v7, :cond_9

    iget-object v1, v6, Lru/yandex/bf;->j:[Lru/yandex/bh;

    aget-object v1, v1, v7

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    if-nez p1, :cond_b

    :goto_6
    iput-object v1, v0, Lru/yandex/be;->k:Lru/yandex/bh;

    :cond_b
    move-object v3, v6

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    move-object v3, v1

    :goto_7
    if-nez v3, :cond_e

    iget-object v1, v0, Lru/yandex/be;->k:Lru/yandex/bh;

    if-nez v1, :cond_e

    iget-object v1, v0, Lru/yandex/be;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lru/yandex/be;->g:Lru/yandex/bc;

    if-nez v1, :cond_e

    :cond_d
    iget-boolean v1, v0, Lru/yandex/be;->f:Z

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    goto :goto_8

    :cond_e
    const/4 v2, 0x0

    :goto_8
    iput-boolean v2, v0, Lru/yandex/be;->l:Z

    iget-object v1, v0, Lru/yandex/be;->h:Lru/yandex/yandexmapkit/MapController;

    iget-object v2, v0, Lru/yandex/be;->k:Lru/yandex/bh;

    invoke-virtual {v1, v2}, Lru/yandex/yandexmapkit/MapController;->jamsInformerIsUpdated(Lru/yandex/bh;)V

    iget-object v1, v0, Lru/yandex/be;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/be;->l:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/be;->m:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/be;->f:Z

    return v0
.end method

.method public onCreateDownloadJob(I)Lru/yandex/yandexmapkit/net/DownloadJob;
    .locals 12

    const/4 v0, 0x7

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lru/yandex/yandexmapkit/net/Downloader;->getServer(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/tjamstyles.gz"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lru/yandex/yandexmapkit/net/DownloadJob;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lru/yandex/yandexmapkit/net/DownloadJob;-><init>(ILjava/lang/String;Lru/yandex/yandexmapkit/net/DownloadHandler;)V

    return-object v0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lru/yandex/be;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->getMapModel()Lru/yandex/yandexmapkit/MapModel;

    move-result-object p1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapModel;->getPosition()Lru/yandex/as;

    move-result-object p1

    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget v5, p1, Lru/yandex/as;->c:I

    aput v5, v3, v4

    iget-object v4, p0, Lru/yandex/be;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v4}, Lru/yandex/yandexmapkit/MapController;->getWidth()I

    move-result v4

    iget-object v5, p0, Lru/yandex/be;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v5}, Lru/yandex/yandexmapkit/MapController;->getHeight()I

    move-result v5

    iget v6, p1, Lru/yandex/as;->c:I

    rsub-int/lit8 v6, v6, 0x17

    shl-int/2addr v4, v6

    shl-int/2addr v5, v6

    iget v6, p1, Lru/yandex/as;->a:I

    shr-int/lit8 v7, v4, 0x1

    sub-int/2addr v6, v7

    iget v7, p1, Lru/yandex/as;->b:I

    shr-int/lit8 v8, v5, 0x1

    sub-int/2addr v7, v8

    new-instance v8, Lru/yandex/yandexmapkit/utils/Point;

    invoke-direct {v8}, Lru/yandex/yandexmapkit/utils/Point;-><init>()V

    sub-int v9, v6, v4

    int-to-long v9, v9

    iput-wide v9, v8, Lru/yandex/yandexmapkit/utils/Point;->x:J

    sub-int v9, v7, v5

    int-to-long v9, v9

    iput-wide v9, v8, Lru/yandex/yandexmapkit/utils/Point;->y:J

    iget-wide v9, v8, Lru/yandex/yandexmapkit/utils/Point;->x:J

    long-to-int v10, v9

    aput v10, v3, v1

    iget-wide v9, v8, Lru/yandex/yandexmapkit/utils/Point;->y:J

    long-to-int v10, v9

    aput v10, v3, v2

    invoke-static {v8}, Lru/yandex/yandexmapkit/utils/CoordConversion;->toLL(Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/GeoPoint;

    move-result-object v9

    shl-int/2addr v4, v1

    add-int/2addr v6, v4

    int-to-long v10, v6

    iput-wide v10, v8, Lru/yandex/yandexmapkit/utils/Point;->x:J

    shl-int/lit8 v4, v5, 0x1

    add-int/2addr v7, v4

    int-to-long v4, v7

    iput-wide v4, v8, Lru/yandex/yandexmapkit/utils/Point;->y:J

    const/4 v4, 0x3

    iget-wide v5, v8, Lru/yandex/yandexmapkit/utils/Point;->x:J

    long-to-int v6, v5

    aget v1, v3, v1

    sub-int/2addr v6, v1

    aput v6, v3, v4

    const/4 v1, 0x4

    iget-wide v4, v8, Lru/yandex/yandexmapkit/utils/Point;->y:J

    long-to-int v5, v4

    aget v4, v3, v2

    sub-int/2addr v5, v4

    aput v5, v3, v1

    invoke-static {v8}, Lru/yandex/yandexmapkit/utils/CoordConversion;->toLL(Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/GeoPoint;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lru/yandex/yandexmapkit/net/Downloader;->getServer(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/jamsvec?"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "zoom="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lru/yandex/as;->c:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&tl_lat="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLat()D

    move-result-wide v5

    invoke-static {v5, v6}, Lru/yandex/yandexmapkit/utils/Utils;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&tl_lon="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLon()D

    move-result-wide v5

    invoke-static {v5, v6}, Lru/yandex/yandexmapkit/utils/Utils;->a(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&br_lat="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLat()D

    move-result-wide v6

    invoke-static {v6, v7}, Lru/yandex/yandexmapkit/utils/Utils;->a(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&br_lon="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/utils/GeoPoint;->getLon()D

    move-result-wide v7

    invoke-static {v7, v8}, Lru/yandex/yandexmapkit/utils/Utils;->a(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x32

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lru/yandex/as;->c:I

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {}, Lru/yandex/yandexmapkit/net/Downloader;->getUUIDBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lru/yandex/yandexmapkit/net/Downloader;->a([B[B)J

    move-result-wide v0

    const-string p1, "&packetid="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "&gzip"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&betajams"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lru/yandex/yandexmapkit/net/DownloadJob;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0, p0}, Lru/yandex/yandexmapkit/net/DownloadJob;-><init>(ILjava/lang/String;Lru/yandex/yandexmapkit/net/DownloadHandler;)V

    invoke-virtual {p1, v3}, Lru/yandex/yandexmapkit/net/DownloadJob;->a(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onFinishDownload(Lru/yandex/yandexmapkit/net/DownloadJob;Z)Z
    .locals 13

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->f()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_c

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->k()[B

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->k()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-boolean v2, p0, Lru/yandex/be;->m:Z

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->j()I

    move-result v4

    const/4 v5, 0x0

    if-eq v4, v3, :cond_5

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    goto/16 :goto_6

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->k()[B

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->k()[B

    move-result-object v4

    invoke-static {v4}, Lru/yandex/yandexmapkit/utils/Utils;->a([B)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, v4

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->i()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    new-instance v4, Lru/yandex/bf;

    aget v8, p1, v2

    aget v9, p1, v3

    aget v10, p1, v6

    const/4 v5, 0x3

    aget v11, p1, v5

    aget v12, p1, v1

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lru/yandex/bf;-><init>(IIIII)V

    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v4, p1}, Lru/yandex/cx;->a(Lru/yandex/cw;Ljava/io/Reader;)V

    invoke-direct {p0, v4}, Lru/yandex/be;->a(Lru/yandex/bf;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-object v5, v0

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz v5, :cond_3

    :goto_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    nop

    goto :goto_3

    :catchall_1
    :goto_2
    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    :goto_3
    if-nez v2, :cond_4

    if-eqz p2, :cond_4

    iput-boolean v3, p0, Lru/yandex/be;->m:Z

    :cond_4
    return v2

    :cond_5
    :try_start_3
    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->k()[B

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->k()[B

    move-result-object p1

    invoke-static {p1}, Lru/yandex/yandexmapkit/utils/Utils;->a([B)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v0, p1

    :cond_6
    :try_start_4
    new-instance p1, Lru/yandex/bc;

    invoke-direct {p1}, Lru/yandex/bc;-><init>()V

    iput-object p1, p0, Lru/yandex/be;->g:Lru/yandex/bc;

    new-instance v1, Lru/yandex/ci;

    invoke-direct {v1, v0}, Lru/yandex/ci;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1, v1}, Lru/yandex/cx;->a(Lru/yandex/cw;Ljava/io/Reader;)V

    iget-boolean p1, p0, Lru/yandex/be;->f:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lru/yandex/be;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->getMapModel()Lru/yandex/yandexmapkit/MapModel;

    move-result-object p1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapModel;->getPosition()Lru/yandex/as;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/yandex/be;->b(Lru/yandex/as;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_7
    move-object v5, v0

    const/4 v2, 0x1

    :cond_8
    if-eqz v5, :cond_9

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    nop

    goto :goto_4

    :catchall_2
    move-object v0, v5

    :catchall_3
    :try_start_6
    iput-object v5, p0, Lru/yandex/be;->g:Lru/yandex/bc;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v0, :cond_9

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_9
    :goto_4
    if-nez v2, :cond_a

    if-eqz p2, :cond_a

    iput-boolean v3, p0, Lru/yandex/be;->m:Z

    :cond_a
    return v2

    :catchall_4
    move-exception p1

    if-eqz v0, :cond_b

    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    :cond_b
    throw p1

    :cond_c
    invoke-virtual {p0}, Lru/yandex/be;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_e

    iget-boolean p2, p0, Lru/yandex/be;->m:Z

    if-nez p2, :cond_d

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->c()I

    move-result p1

    if-lt p1, v1, :cond_e

    :cond_d
    const/4 p1, 0x1

    goto :goto_5

    :cond_e
    const/4 p1, 0x0

    :goto_5
    iput-boolean p1, p0, Lru/yandex/be;->m:Z

    monitor-enter p0

    :try_start_9
    iget-object p1, p0, Lru/yandex/be;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    invoke-virtual {p0, v3}, Lru/yandex/be;->b(Z)V

    :goto_6
    return v2

    :catchall_5
    move-exception p1

    monitor-exit p0

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public onMapActionEvent(Lru/yandex/yandexmapkit/map/MapEvent;)V
    .locals 1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/MapEvent;->getMsg()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lru/yandex/be;->a(Z)V

    :goto_0
    return-void
.end method

.method public onStartDownload(I)V
    .locals 0

    return-void
.end method

.method public onStartup(Lru/yandex/br;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lru/yandex/be;->a(Z)V

    return-void
.end method

.method public declared-synchronized setVisible(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lru/yandex/be;->f:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lru/yandex/be;->a(Z)V

    iget-object p1, p0, Lru/yandex/be;->h:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
