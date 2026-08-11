.class public final Lru/yandex/yandexmapkit/map/TiledSurface;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static a:Landroid/graphics/Bitmap;

.field public static b:Landroid/graphics/Bitmap;

.field public static final c:[B


# instance fields
.field private A:D

.field private B:[Lru/yandex/bn;

.field private C:Ljava/lang/Object;

.field private D:I

.field private E:I

.field private F:Landroid/graphics/Rect;

.field private G:Landroid/graphics/RectF;

.field private H:[Lru/yandex/yandexmapkit/map/Tile;

.field private I:I

.field private J:I

.field private K:Ljava/lang/Thread;

.field private final L:Landroid/graphics/Paint;

.field private M:I

.field private N:Z

.field private O:J

.field private P:F

.field private Q:Z

.field private final R:Landroid/graphics/Matrix;

.field private S:D

.field private T:D

.field private U:Z

.field private V:F

.field private W:F

.field private X:F

.field private Y:F

.field private Z:F

.field private aa:F

.field private ab:I

.field private ac:I

.field private ad:Z

.field private final ae:Landroid/graphics/Paint;

.field private af:Lru/yandex/bo;

.field private final ag:Ljava/util/List;

.field private final ah:Lru/yandex/ba;

.field public final d:Lru/yandex/yandexmapkit/MapModel;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:I

.field private o:I

.field private p:[Lru/yandex/yandexmapkit/map/Tile;

.field private q:[Lru/yandex/yandexmapkit/map/Tile;

.field private final r:Lru/yandex/ay;

.field private s:Lru/yandex/yandexmapkit/MapController;

.field private t:Z

.field private u:Z

.field private v:[Lru/yandex/yandexmapkit/map/Tile;

.field private w:I

.field private x:I

.field private final y:Ljava/lang/Object;

.field private z:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lru/yandex/yandexmapkit/map/TiledSurface;->c:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xft
        0xft
        0xft
    .end array-data
.end method

.method public constructor <init>(Lru/yandex/yandexmapkit/MapController;Lru/yandex/yandexmapkit/MapModel;Lru/yandex/ay;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    new-array v1, v0, [Lru/yandex/yandexmapkit/map/Tile;

    iput-object v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->v:[Lru/yandex/yandexmapkit/map/Tile;

    new-array v0, v0, [Lru/yandex/bn;

    iput-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->B:[Lru/yandex/bn;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->C:Ljava/lang/Object;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->P:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->ag:Ljava/util/List;

    new-instance v0, Lru/yandex/ba;

    invoke-direct {v0}, Lru/yandex/ba;-><init>()V

    iput-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->ah:Lru/yandex/ba;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v0, Lru/yandex/az;

    invoke-direct {v0, p0}, Lru/yandex/az;-><init>(Lru/yandex/yandexmapkit/map/TiledSurface;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->ae:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->L:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object p1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->s:Lru/yandex/yandexmapkit/MapController;

    iput-boolean v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->N:Z

    iput-boolean v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->Q:Z

    iput v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->M:I

    const/4 p1, 0x1

    new-array v0, p1, [Lru/yandex/yandexmapkit/map/Tile;

    iput-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->p:[Lru/yandex/yandexmapkit/map/Tile;

    new-array v0, p1, [Lru/yandex/yandexmapkit/map/Tile;

    iput-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->q:[Lru/yandex/yandexmapkit/map/Tile;

    const/4 v0, 0x0

    iput-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->H:[Lru/yandex/yandexmapkit/map/Tile;

    iput v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->x:I

    iput v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->w:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->y:Ljava/lang/Object;

    iput v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->E:I

    iput v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->D:I

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getSizeTile()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorScaleTile()F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v1, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->F:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->G:Landroid/graphics/RectF;

    iput-object p3, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->r:Lru/yandex/ay;

    iput-object p2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->d:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/map/TiledSurface;->b()V

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->R:Landroid/graphics/Matrix;

    iget-object p2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->s:Lru/yandex/yandexmapkit/MapController;

    iget-object p2, p2, Lru/yandex/yandexmapkit/MapController;->mapLayers:Ljava/util/List;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->s:Lru/yandex/yandexmapkit/MapController;

    iget-object p3, p3, Lru/yandex/yandexmapkit/MapController;->mapLayers:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_0

    iget-object p1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->s:Lru/yandex/yandexmapkit/MapController;

    iget-object p1, p1, Lru/yandex/yandexmapkit/MapController;->mapLayers:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/yandex/yandexmapkit/map/MapLayer;

    iget p1, p1, Lru/yandex/yandexmapkit/map/MapLayer;->layerId:I

    :cond_0
    iput p1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->n:I

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->u:Z

    new-instance p1, Lru/yandex/bo;

    invoke-direct {p1}, Lru/yandex/bo;-><init>()V

    iput-object p1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->af:Lru/yandex/bo;

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1
.end method

.method public static synthetic a(Lru/yandex/yandexmapkit/map/TiledSurface;I)I
    .locals 0

    iput p1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->D:I

    return p1
.end method

.method public static synthetic a(Lru/yandex/yandexmapkit/map/TiledSurface;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->C:Ljava/lang/Object;

    return-object p0
.end method

.method private a(Lru/yandex/yandexmapkit/map/Tile;Z)Z
    .locals 10

    iget v0, p1, Lru/yandex/yandexmapkit/map/Tile;->i:I

    iget v1, p1, Lru/yandex/yandexmapkit/map/Tile;->j:I

    iget v2, p1, Lru/yandex/yandexmapkit/map/Tile;->zoom:I

    invoke-static {v0, v1, v2}, Lru/yandex/yandexmapkit/utils/Utils;->a(III)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-byte v0, p1, Lru/yandex/yandexmapkit/map/Tile;->l:B

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eqz v0, :cond_1

    iget-byte v0, p1, Lru/yandex/yandexmapkit/map/Tile;->l:B

    if-eq v0, v3, :cond_0

    iget-byte v0, p1, Lru/yandex/yandexmapkit/map/Tile;->l:B

    if-eq v0, v2, :cond_0

    iget-byte v0, p1, Lru/yandex/yandexmapkit/map/Tile;->l:B

    if-ne v0, v4, :cond_2

    :cond_0
    iget-byte v0, p1, Lru/yandex/yandexmapkit/map/Tile;->k:B

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lru/yandex/yandexmapkit/map/Tile;->w:Z

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    :cond_1
    iget-object p2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->r:Lru/yandex/ay;

    invoke-virtual {p2, p1}, Lru/yandex/ay;->b(Lru/yandex/yandexmapkit/map/Tile;)V

    :cond_2
    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    iget-boolean v5, p1, Lru/yandex/yandexmapkit/map/Tile;->e:Z

    if-nez v5, :cond_b

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v6, Lru/yandex/yandexmapkit/map/TiledSurface;->b:Landroid/graphics/Bitmap;

    if-eq v5, v6, :cond_7

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    iget-object v7, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->ag:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_8

    iget-object v7, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->ag:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lru/yandex/yandexmapkit/map/TileRenderListener;

    invoke-interface {v7}, Lru/yandex/yandexmapkit/map/TileRenderListener;->isVisible()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p1, v7}, Lru/yandex/yandexmapkit/map/Tile;->c(Lru/yandex/yandexmapkit/map/TileRenderListener;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_5

    iput-boolean v0, p1, Lru/yandex/yandexmapkit/map/Tile;->v:Z

    goto :goto_3

    :cond_5
    if-eqz v8, :cond_6

    invoke-interface {v7, p1}, Lru/yandex/yandexmapkit/map/TileRenderListener;->needsUpdate(Lru/yandex/yandexmapkit/map/Tile;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p1, v7}, Lru/yandex/yandexmapkit/map/Tile;->a(Lru/yandex/yandexmapkit/map/TileRenderListener;)V

    iput-boolean v0, p1, Lru/yandex/yandexmapkit/map/Tile;->v:Z

    const/4 v6, 0x1

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    :cond_8
    if-nez v6, :cond_a

    iget-boolean v5, p1, Lru/yandex/yandexmapkit/map/Tile;->v:Z

    if-nez v5, :cond_a

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_9

    iget-byte v5, p1, Lru/yandex/yandexmapkit/map/Tile;->l:B

    if-eq v5, v2, :cond_a

    iget-byte v2, p1, Lru/yandex/yandexmapkit/map/Tile;->l:B

    if-eq v2, v3, :cond_a

    :cond_9
    iget-boolean v2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->Q:Z

    if-eqz v2, :cond_b

    iget-byte v2, p1, Lru/yandex/yandexmapkit/map/Tile;->k:B

    if-nez v2, :cond_b

    iget-byte v2, p1, Lru/yandex/yandexmapkit/map/Tile;->h:B

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_b

    :cond_a
    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/map/TiledSurface;->a(Lru/yandex/yandexmapkit/map/Tile;)V

    :cond_b
    if-eqz p2, :cond_c

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_c

    return v0

    :cond_c
    return v1
.end method

.method public static synthetic b(Lru/yandex/yandexmapkit/map/TiledSurface;)I
    .locals 0

    iget p0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->D:I

    return p0
.end method

.method public static synthetic c(Lru/yandex/yandexmapkit/map/TiledSurface;)I
    .locals 0

    iget p0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->E:I

    return p0
.end method

.method public static synthetic d(Lru/yandex/yandexmapkit/map/TiledSurface;)[Lru/yandex/bn;
    .locals 0

    iget-object p0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->B:[Lru/yandex/bn;

    return-object p0
.end method

.method public static synthetic e(Lru/yandex/yandexmapkit/map/TiledSurface;)I
    .locals 2

    iget v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->D:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->D:I

    return v0
.end method

.method public static synthetic f(Lru/yandex/yandexmapkit/map/TiledSurface;)Z
    .locals 0

    iget-boolean p0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->t:Z

    return p0
.end method

.method public static synthetic g(Lru/yandex/yandexmapkit/map/TiledSurface;)Lru/yandex/bo;
    .locals 0

    iget-object p0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->af:Lru/yandex/bo;

    return-object p0
.end method

.method private k()Z
    .locals 3

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->y:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->x:I

    iget v2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->w:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->v:[Lru/yandex/yandexmapkit/map/Tile;

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private l()Lru/yandex/yandexmapkit/map/Tile;
    .locals 3

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->y:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->v:[Lru/yandex/yandexmapkit/map/Tile;

    iget v2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->w:I

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
.method public a(Lru/yandex/yandexmapkit/utils/Point;)Landroid/graphics/PointF;
    .locals 7

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorSizeTile()F

    move-result v0

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorScaleTile()F

    move-result v1

    mul-float v0, v0, v1

    iget v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->aa:F

    const/high16 v2, 0x41b80000    # 23.0f

    sub-float/2addr v2, v1

    float-to-double v1, v2

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->e:I

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->ab:I

    int-to-long v2, v2

    iget-wide v4, p1, Lru/yandex/yandexmapkit/utils/Point;->x:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    mul-float v2, v2, v0

    sub-float/2addr v1, v2

    iget v2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->f:I

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->ac:I

    int-to-long v3, v3

    iget-wide v5, p1, Lru/yandex/yandexmapkit/utils/Point;->y:J

    sub-long/2addr v3, v5

    long-to-float p1, v3

    mul-float p1, p1, v0

    sub-float/2addr v2, p1

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public a(FFLru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/Point;
    .locals 4

    if-nez p3, :cond_0

    new-instance p3, Lru/yandex/yandexmapkit/utils/Point;

    invoke-direct {p3}, Lru/yandex/yandexmapkit/utils/Point;-><init>()V

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/high16 v2, 0x41b80000    # 23.0f

    iget v3, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->aa:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorSizeTile()F

    move-result v1

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorScaleTile()F

    move-result v2

    mul-float v1, v1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    mul-float p1, p1, v0

    float-to-long v2, p1

    iput-wide v2, p3, Lru/yandex/yandexmapkit/utils/Point;->x:J

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    mul-float p1, p1, v0

    float-to-long p1, p1

    iput-wide p1, p3, Lru/yandex/yandexmapkit/utils/Point;->y:J

    return-object p3
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->t:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->K:Ljava/lang/Thread;

    const-string v1, "ymm-img-creator"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->K:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public declared-synchronized a(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->n:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->H:[Lru/yandex/yandexmapkit/map/Tile;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->H:[Lru/yandex/yandexmapkit/map/Tile;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iput p1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public declared-synchronized a(II)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->e:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->f:I

    iget v2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->e:I

    mul-int v2, v2, v2

    mul-int v1, v1, v1

    add-int/2addr v2, v1

    int-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->g:I

    ushr-int/lit8 v1, p1, 0x7

    add-int/2addr v1, v0

    iput v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->h:I

    and-int/lit8 p1, p1, 0x7f

    if-lez p1, :cond_0

    add-int/2addr v1, v0

    iput v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->h:I

    :cond_0
    ushr-int/lit8 p1, p2, 0x7

    add-int/2addr p1, v0

    iput p1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->i:I

    and-int/lit8 p2, p2, 0x7f

    if-lez p2, :cond_1

    add-int/2addr p1, v0

    iput p1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->i:I

    :cond_1
    ushr-int/lit8 p1, v2, 0x7

    add-int/2addr p1, v0

    iput p1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->k:I

    add-int/2addr p1, v0

    iput p1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->k:I

    and-int/lit8 p2, v2, 0x7f

    if-lez p2, :cond_2

    add-int/2addr p1, v0

    iput p1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->k:I

    :cond_2
    iget p1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->h:I

    iget p2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->i:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->j:I

    iget-object p1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->p:[Lru/yandex/yandexmapkit/map/Tile;

    if-nez p1, :cond_3

    iget p1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->k:I

    mul-int p1, p1, p1

    new-array p1, p1, [Lru/yandex/yandexmapkit/map/Tile;

    iput-object p1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->p:[Lru/yandex/yandexmapkit/map/Tile;

    :cond_3
    iget p1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->k:I

    mul-int p1, p1, p1

    new-array p1, p1, [Lru/yandex/yandexmapkit/map/Tile;

    iput-object p1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->q:[Lru/yandex/yandexmapkit/map/Tile;

    iget-object p1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->y:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget p2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->k:I

    mul-int v1, p2, p2

    shl-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->v:[Lru/yandex/yandexmapkit/map/Tile;

    array-length v2, v2

    if-le v1, v2, :cond_4

    mul-int p2, p2, p2

    shl-int/lit8 p2, p2, 0x2

    new-array p2, p2, [Lru/yandex/yandexmapkit/map/Tile;

    iput-object p2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->v:[Lru/yandex/yandexmapkit/map/Tile;

    const/4 p2, 0x0

    iput p2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->x:I

    iput p2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->w:I

    :cond_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-boolean v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->u:Z

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/map/TiledSurface;->d()Z

    iget-object p1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->s:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p2

    :try_start_3
    monitor-exit p1

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/graphics/Canvas;)V
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->u:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->U:Z

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->s:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->isNightMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_4

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_4

    :cond_1
    iget v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->l:F

    iget v3, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->m:F

    iget v4, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->j:I

    iget v5, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->k:I

    iget-object v6, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->p:[Lru/yandex/yandexmapkit/map/Tile;

    iget-object v7, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->G:Landroid/graphics/RectF;

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v8, v5, :cond_5

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v4, :cond_4

    aget-object v11, v6, v9

    iput v3, v7, Landroid/graphics/RectF;->top:F

    iput v0, v7, Landroid/graphics/RectF;->left:F

    iget v12, v7, Landroid/graphics/RectF;->top:F

    iget v13, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->Y:F

    add-float/2addr v12, v13

    add-float/2addr v12, v1

    iput v12, v7, Landroid/graphics/RectF;->bottom:F

    iget v12, v7, Landroid/graphics/RectF;->left:F

    iget v13, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->Y:F

    add-float/2addr v12, v13

    add-float/2addr v12, v1

    iput v12, v7, Landroid/graphics/RectF;->right:F

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v11}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v12

    if-nez v12, :cond_3

    iget-boolean v12, v11, Lru/yandex/yandexmapkit/map/Tile;->w:Z

    if-nez v12, :cond_2

    invoke-virtual {v11}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object v12

    sget-object v13, Lru/yandex/yandexmapkit/map/TiledSurface;->b:Landroid/graphics/Bitmap;

    if-ne v12, v13, :cond_3

    :cond_2
    invoke-virtual {v11}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object v11

    iget-object v12, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->F:Landroid/graphics/Rect;

    iget-object v13, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->ae:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {p1, v11, v12, v7, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    sget-object v11, Lru/yandex/yandexmapkit/map/TiledSurface;->a:Landroid/graphics/Bitmap;

    iget-object v12, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->F:Landroid/graphics/Rect;

    iget-object v13, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->ae:Landroid/graphics/Paint;

    goto :goto_2

    :goto_3
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->Y:F

    add-float/2addr v0, v11

    goto :goto_1

    :cond_4
    iget v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->l:F

    add-int/lit8 v8, v8, 0x1

    iget v10, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->Y:F

    add-float/2addr v3, v10

    goto :goto_0

    :cond_5
    :goto_4
    iget v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->M:I

    if-eqz v0, :cond_8

    iget v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->V:F

    iget v3, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->W:F

    iget-object v4, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->G:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_5
    iget v7, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->J:I

    if-ge v5, v7, :cond_8

    const/4 v7, 0x0

    :goto_6
    iget v8, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->I:I

    if-ge v7, v8, :cond_7

    iget-object v8, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->H:[Lru/yandex/yandexmapkit/map/Tile;

    aget-object v8, v8, v6

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_6

    iput v3, v4, Landroid/graphics/RectF;->top:F

    iput v0, v4, Landroid/graphics/RectF;->left:F

    iget v9, v4, Landroid/graphics/RectF;->top:F

    iget v10, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->X:F

    add-float/2addr v9, v10

    add-float/2addr v9, v1

    iput v9, v4, Landroid/graphics/RectF;->bottom:F

    iget v9, v4, Landroid/graphics/RectF;->left:F

    iget v10, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->X:F

    add-float/2addr v9, v10

    add-float/2addr v9, v1

    iput v9, v4, Landroid/graphics/RectF;->right:F

    const/4 v9, 0x1

    iput-boolean v9, v8, Lru/yandex/yandexmapkit/map/Tile;->w:Z

    iget-object v9, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->r:Lru/yandex/ay;

    invoke-virtual {v9, v8}, Lru/yandex/ay;->a(Lru/yandex/yandexmapkit/map/Tile;)V

    invoke-virtual {v8}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v9, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->F:Landroid/graphics/Rect;

    iget-object v10, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->L:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v4, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_6
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    iget v8, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->X:F

    add-float/2addr v0, v8

    goto :goto_6

    :cond_7
    iget v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->V:F

    add-int/lit8 v5, v5, 0x1

    iget v7, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->X:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-float/2addr v3, v7

    goto :goto_5

    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public a(Lru/yandex/yandexmapkit/map/Tile;)V
    .locals 6

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->y:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->x:I

    iget-object v2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->v:[Lru/yandex/yandexmapkit/map/Tile;

    array-length v3, v2

    iget v4, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->w:I

    :goto_0
    if-eq v4, v1, :cond_2

    if-ne v4, v3, :cond_0

    const/4 v4, -0x1

    goto :goto_1

    :cond_0
    aget-object v5, v2, v4

    if-ne p1, v5, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v1, 0x1

    aput-object p1, v2, v1

    if-ne v4, v3, :cond_3

    const/4 p1, 0x0

    iput p1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->x:I

    goto :goto_2

    :cond_3
    iput v4, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->x:I

    :goto_2
    iget-object p1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->y:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public addTileRenderListener(Lru/yandex/yandexmapkit/map/TileRenderListener;)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->ag:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->ag:Ljava/util/List;

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->ah:Lru/yandex/ba;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public b(Lru/yandex/yandexmapkit/utils/Point;)Landroid/graphics/PointF;
    .locals 2

    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/map/TiledSurface;->a(Lru/yandex/yandexmapkit/utils/Point;)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->s:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getMapRotator()Lru/yandex/ap;

    move-result-object v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Lru/yandex/ap;->a(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public b(FFLru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/Point;
    .locals 6

    if-nez p3, :cond_0

    new-instance p3, Lru/yandex/yandexmapkit/utils/Point;

    invoke-direct {p3}, Lru/yandex/yandexmapkit/utils/Point;-><init>()V

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/high16 v2, 0x41b80000    # 23.0f

    iget v3, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->aa:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorSizeTile()F

    move-result v1

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorScaleTile()F

    move-result v2

    mul-float v1, v1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->e:I

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr p1, v2

    int-to-float p1, p1

    div-float/2addr p1, v1

    mul-float p1, p1, v0

    float-to-long v2, p1

    iget p1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->ab:I

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p3, Lru/yandex/yandexmapkit/utils/Point;->x:J

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->f:I

    shr-int/lit8 p2, p2, 0x1

    sub-int/2addr p1, p2

    int-to-float p1, p1

    div-float/2addr p1, v1

    mul-float p1, p1, v0

    float-to-long p1, p1

    iget v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->ac:I

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p3, Lru/yandex/yandexmapkit/utils/Point;->y:J

    return-object p3
.end method

.method public declared-synchronized b()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->s:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getSizeTile()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorScaleTile()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    sget-object v2, Lru/yandex/yandexmapkit/map/TiledSurface;->a:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    sget-object v2, Lru/yandex/yandexmapkit/map/TiledSurface;->b:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    sget v2, Lru/yandex/yandexmapkit/R$drawable;->ymk_empty_image:I

    sget-object v3, Lru/yandex/yandexmapkit/map/Tile;->b:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lru/yandex/yandexmapkit/map/TiledSurface;->a:Landroid/graphics/Bitmap;

    sget v2, Lru/yandex/yandexmapkit/R$drawable;->ymk_no_map_image:I

    sget-object v4, Lru/yandex/yandexmapkit/map/Tile;->b:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v1, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lru/yandex/yandexmapkit/map/TiledSurface;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->s:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->isNightMode()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lru/yandex/yandexmapkit/map/TiledSurface;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lru/yandex/yandexmapkit/utils/Utils;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lru/yandex/yandexmapkit/map/TiledSurface;->a:Landroid/graphics/Bitmap;

    sget-object v0, Lru/yandex/yandexmapkit/map/TiledSurface;->b:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lru/yandex/yandexmapkit/utils/Utils;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lru/yandex/yandexmapkit/map/TiledSurface;->b:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->r:Lru/yandex/ay;

    iget-object v0, v0, Lru/yandex/ay;->a:Lru/yandex/yandexmapkit/map/Tile;

    sget-object v1, Lru/yandex/yandexmapkit/map/TiledSurface;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/map/Tile;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(II)Z
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    if-ltz v1, :cond_1

    if-gez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorScaleTile()F

    move-result v4

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorSizeTile()F

    move-result v5

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getSizeTile()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v4

    float-to-double v6, v6

    iget v8, v0, Lru/yandex/yandexmapkit/map/TiledSurface;->aa:F

    iget v9, v0, Lru/yandex/yandexmapkit/map/TiledSurface;->o:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    float-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    double-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v6, v7

    float-to-int v7, v7

    const/high16 v8, 0x41b80000    # 23.0f

    iget v9, v0, Lru/yandex/yandexmapkit/map/TiledSurface;->aa:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    iget v9, v0, Lru/yandex/yandexmapkit/map/TiledSurface;->ab:I

    int-to-long v9, v9

    long-to-float v9, v9

    mul-float v9, v9, v5

    mul-float v9, v9, v4

    div-float/2addr v9, v8

    float-to-long v9, v9

    iget v11, v0, Lru/yandex/yandexmapkit/map/TiledSurface;->e:I

    const/4 v12, 0x1

    shr-int/2addr v11, v12

    int-to-long v13, v11

    sub-long/2addr v9, v13

    iget v11, v0, Lru/yandex/yandexmapkit/map/TiledSurface;->ac:I

    int-to-long v13, v11

    long-to-float v11, v13

    mul-float v11, v11, v5

    mul-float v11, v11, v4

    div-float/2addr v11, v8

    float-to-long v4, v11

    iget v8, v0, Lru/yandex/yandexmapkit/map/TiledSurface;->f:I

    shr-int/2addr v8, v12

    int-to-long v13, v8

    sub-long/2addr v4, v13

    int-to-float v1, v1

    mul-float v1, v1, v6

    float-to-long v13, v1

    int-to-float v1, v2

    mul-float v1, v1, v6

    float-to-long v1, v1

    sub-long/2addr v13, v9

    long-to-int v8, v13

    add-int/2addr v8, v7

    sub-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v2, v7

    iget-object v1, v0, Lru/yandex/yandexmapkit/map/TiledSurface;->s:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/MapController;->getMapRotator()Lru/yandex/ap;

    move-result-object v1

    int-to-float v4, v8

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Lru/yandex/ap;->a(FF)Landroid/graphics/PointF;

    move-result-object v1

    neg-int v14, v7

    iget v2, v0, Lru/yandex/yandexmapkit/map/TiledSurface;->e:I

    float-to-int v4, v6

    add-int v15, v2, v4

    iget v2, v0, Lru/yandex/yandexmapkit/map/TiledSurface;->f:I

    add-int v16, v2, v4

    iget v2, v1, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    move v13, v14

    move/from16 v17, v2

    move/from16 v18, v1

    invoke-static/range {v13 .. v18}, Lru/yandex/yandexmapkit/utils/Utils;->a(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_1

    return v12

    :cond_1
    :goto_0
    return v3
.end method

.method public c(FFLru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/Point;
    .locals 4

    invoke-virtual {p0, p1, p2, p3}, Lru/yandex/yandexmapkit/map/TiledSurface;->b(FFLru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/Point;

    move-result-object p1

    iget-object p2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->s:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/MapController;->getMapRotator()Lru/yandex/ap;

    move-result-object p2

    iget-wide v0, p1, Lru/yandex/yandexmapkit/utils/Point;->x:J

    long-to-float p3, v0

    iget-wide v0, p1, Lru/yandex/yandexmapkit/utils/Point;->y:J

    long-to-float p1, v0

    invoke-virtual {p2, p3, p1}, Lru/yandex/ap;->c(FF)Landroid/graphics/PointF;

    move-result-object p1

    new-instance p2, Lru/yandex/yandexmapkit/utils/Point;

    iget p3, p1, Landroid/graphics/PointF;->x:F

    float-to-long v0, p3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-long v2, p1

    invoke-direct {p2, v0, v1, v2, v3}, Lru/yandex/yandexmapkit/utils/Point;-><init>(JJ)V

    return-object p2
.end method

.method public c()V
    .locals 3

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/map/TiledSurface;->b()V

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getSizeTile()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorScaleTile()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->F:Landroid/graphics/Rect;

    return-void
.end method

.method public declared-synchronized d()Z
    .locals 30

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-boolean v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->u:Z

    if-eqz v3, :cond_33

    iget-object v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->d:Lru/yandex/yandexmapkit/MapModel;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->s:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v4}, Lru/yandex/yandexmapkit/MapController;->getMapRotator()Lru/yandex/ap;

    move-result-object v4

    invoke-virtual {v4}, Lru/yandex/ap;->d()V

    iget-object v4, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->d:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v4}, Lru/yandex/yandexmapkit/MapModel;->getZoom()I

    move-result v4

    iput v4, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->o:I

    iget-object v4, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->d:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v4}, Lru/yandex/yandexmapkit/MapModel;->getX()I

    move-result v4

    iput v4, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->ab:I

    iget-object v4, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->d:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v4}, Lru/yandex/yandexmapkit/MapModel;->getY()I

    move-result v4

    iput v4, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->ac:I

    iget-object v4, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->d:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v4}, Lru/yandex/yandexmapkit/MapModel;->isZooming()Z

    move-result v4

    iput-boolean v4, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->U:Z

    iget-object v4, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->d:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v4}, Lru/yandex/yandexmapkit/MapModel;->getDeltaZoom()F

    move-result v4

    iget-object v5, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->d:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v5}, Lru/yandex/yandexmapkit/MapModel;->isDissolving()Z

    move-result v5

    iput-boolean v5, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->ad:Z

    iget-object v5, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->d:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v5}, Lru/yandex/yandexmapkit/MapModel;->getZoomCurrent()F

    move-result v5

    iput v5, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->aa:F

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorScaleTile()F

    move-result v3

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getSizeTile()I

    move-result v5

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorSizeTile()F

    move-result v6

    iget v7, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->M:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/high16 v8, 0x41b80000    # 23.0f

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    const/4 v11, 0x1

    if-nez v7, :cond_1

    :try_start_3
    iget-boolean v7, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->U:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v18, v3

    goto :goto_1

    :cond_1
    :goto_0
    float-to-double v12, v4

    :try_start_4
    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v7, v12

    iget v12, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->Z:F

    mul-float v12, v12, v7

    iput v12, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->X:F

    iget v12, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->P:F

    sub-float v12, v8, v12

    float-to-double v12, v12

    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v12, v12

    iget v13, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->ab:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    int-to-double v13, v13

    float-to-double v9, v6

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v9

    move-wide/from16 v16, v9

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v8

    move/from16 v18, v3

    :try_start_5
    iget-wide v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->S:D
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    sub-double/2addr v13, v2

    float-to-double v2, v12

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v13, v2

    double-to-float v12, v13

    :try_start_6
    iget v13, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->ac:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    int-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v16

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v8

    :try_start_7
    iget-wide v8, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->T:D
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    sub-double/2addr v13, v8

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v13, v2

    double-to-float v2, v13

    :try_start_8
    iget v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->e:I

    shr-int/2addr v3, v11

    int-to-float v3, v3

    mul-float v12, v12, v7

    sub-float/2addr v3, v12

    iput v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->V:F

    iget v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->f:I

    shr-int/2addr v3, v11

    int-to-float v3, v3

    mul-float v7, v7, v2

    sub-float/2addr v3, v7

    iput v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->W:F

    :goto_1
    iget-boolean v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->U:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v3, 0x2

    const/16 v7, 0xff

    if-eqz v2, :cond_3

    :try_start_9
    iget-object v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->L:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->L:Landroid/graphics/Paint;

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const v2, 0x3dcccccd    # 0.1f

    cmpl-float v2, v4, v2

    if-lez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    :goto_2
    iput v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->M:I

    iput-boolean v11, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->N:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_3
    const/4 v2, 0x0

    goto/16 :goto_27

    :cond_3
    :try_start_a
    iget-boolean v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->N:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/4 v4, 0x0

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    :try_start_b
    iput-boolean v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->N:Z

    iget v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->M:I

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_5

    iput-boolean v11, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->Q:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->O:J

    goto/16 :goto_8

    :cond_5
    const/4 v2, 0x0

    iput-boolean v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->Q:Z

    iget-object v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->d:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/MapModel;->getDeltaZoom()F

    move-result v2

    const v3, -0x42333333    # -0.1f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_f

    iget-object v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->H:[Lru/yandex/yandexmapkit/map/Tile;

    if-eqz v2, :cond_7

    array-length v2, v2

    sub-int/2addr v2, v11

    :goto_5
    if-ltz v2, :cond_7

    iget-object v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->H:[Lru/yandex/yandexmapkit/map/Tile;

    aget-object v3, v3, v2

    if-eqz v3, :cond_6

    const/4 v7, 0x0

    iput-boolean v7, v3, Lru/yandex/yandexmapkit/map/Tile;->w:Z

    iget-object v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->H:[Lru/yandex/yandexmapkit/map/Tile;

    aput-object v4, v3, v2

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    iput v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->M:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_8

    :cond_8
    :try_start_c
    iget v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->M:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v2, :cond_f

    :try_start_d
    iget-boolean v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->ad:Z

    if-eqz v3, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v8, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->O:J

    sub-long/2addr v2, v8

    const-wide/16 v8, 0xc8

    cmp-long v12, v2, v8

    if-lez v12, :cond_a

    iget-object v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->d:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/MapModel;->stopDissolveMap()V

    const/4 v2, 0x0

    iput v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->M:I

    iput-boolean v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->Q:Z

    iget-object v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->H:[Lru/yandex/yandexmapkit/map/Tile;

    array-length v2, v2

    sub-int/2addr v2, v11

    :goto_6
    if-ltz v2, :cond_f

    iget-object v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->H:[Lru/yandex/yandexmapkit/map/Tile;

    aget-object v3, v3, v2

    if-eqz v3, :cond_9

    const/4 v7, 0x0

    iput-boolean v7, v3, Lru/yandex/yandexmapkit/map/Tile;->w:Z

    iget-object v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->H:[Lru/yandex/yandexmapkit/map/Tile;

    aput-object v4, v3, v2

    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_a
    const-wide/16 v12, 0xff

    mul-long v2, v2, v12

    div-long/2addr v2, v8

    long-to-int v3, v2

    sub-int/2addr v7, v3

    iget-object v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->L:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_8

    :cond_b
    if-ne v2, v11, :cond_f

    iget v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->V:F

    iget v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->e:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_c

    iget v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->I:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v7, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->X:F

    mul-float v3, v3, v7

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_c

    iget v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->W:F

    iget v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->J:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float v3, v3, v7

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_c

    iget v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->f:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_f

    :cond_c
    iget-object v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->H:[Lru/yandex/yandexmapkit/map/Tile;

    array-length v2, v2

    sub-int/2addr v2, v11

    :goto_7
    if-ltz v2, :cond_e

    iget-object v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->H:[Lru/yandex/yandexmapkit/map/Tile;

    aget-object v3, v3, v2

    if-eqz v3, :cond_d

    const/4 v7, 0x0

    iput-boolean v7, v3, Lru/yandex/yandexmapkit/map/Tile;->w:Z

    iget-object v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->H:[Lru/yandex/yandexmapkit/map/Tile;

    aput-object v4, v3, v2

    :cond_d
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_e
    const/4 v2, 0x0

    iput v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->M:I

    iput-boolean v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->Q:Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_f
    :goto_8
    :try_start_e
    iget v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->aa:F

    const/high16 v3, 0x41b80000    # 23.0f

    sub-float v8, v3, v2

    float-to-double v2, v8

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->ab:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    int-to-double v7, v3

    float-to-double v12, v6

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v12

    move/from16 v3, v18

    float-to-double v10, v3

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v10

    move v14, v5

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v4

    :try_start_f
    iput-wide v7, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->z:D

    iget v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->ac:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    int-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v10

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v4

    :try_start_10
    iput-wide v7, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->A:D

    int-to-float v2, v14

    mul-float v2, v2, v3

    float-to-double v3, v2

    iget v5, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->aa:F

    iget v7, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->o:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    float-to-double v7, v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v7

    double-to-float v3, v3

    :try_start_11
    iput v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->Y:F

    iget-wide v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->z:D

    iget v5, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->e:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    const/4 v6, 0x1

    shr-int/2addr v5, v6

    int-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v7

    :try_start_12
    iget-wide v7, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->A:D

    iget v5, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->f:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    shr-int/2addr v5, v6

    int-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v7, v10

    :try_start_13
    iget-boolean v5, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->t:Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    const/4 v10, 0x0

    if-nez v5, :cond_10

    :try_start_14
    iget-object v5, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->s:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v5}, Lru/yandex/yandexmapkit/MapController;->getMapRotator()Lru/yandex/ap;

    move-result-object v5

    invoke-virtual {v5}, Lru/yandex/ap;->b()F

    move-result v5

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_10

    iget v5, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->e:I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    int-to-double v13, v5

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v13, v3

    double-to-float v5, v13

    :try_start_15
    iget v10, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->f:I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    int-to-double v13, v10

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v13, v7

    double-to-float v10, v13

    :try_start_16
    iget-object v13, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->s:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v13}, Lru/yandex/yandexmapkit/MapController;->getMapRotator()Lru/yandex/ap;

    move-result-object v13

    invoke-virtual {v13}, Lru/yandex/ap;->e()Lru/yandex/yandexmapkit/utils/ScreenPoint;

    move-result-object v13

    double-to-float v3, v3

    invoke-virtual {v13}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getX()F

    move-result v4

    add-float/2addr v4, v3

    double-to-float v7, v7

    invoke-virtual {v13}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getY()F

    move-result v8

    add-float/2addr v8, v7

    iget-object v13, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->s:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v13}, Lru/yandex/yandexmapkit/MapController;->getMapRotator()Lru/yandex/ap;

    move-result-object v13

    invoke-virtual {v13, v3, v7, v4, v8}, Lru/yandex/ap;->a(FFFF)Landroid/graphics/PointF;

    move-result-object v13

    iget-object v14, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->s:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v14}, Lru/yandex/yandexmapkit/MapController;->getMapRotator()Lru/yandex/ap;

    move-result-object v14

    invoke-virtual {v14, v5, v7, v4, v8}, Lru/yandex/ap;->a(FFFF)Landroid/graphics/PointF;

    move-result-object v7

    iget-object v14, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->s:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v14}, Lru/yandex/yandexmapkit/MapController;->getMapRotator()Lru/yandex/ap;

    move-result-object v14

    invoke-virtual {v14, v3, v10, v4, v8}, Lru/yandex/ap;->a(FFFF)Landroid/graphics/PointF;

    move-result-object v3

    iget-object v14, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->s:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v14}, Lru/yandex/yandexmapkit/MapController;->getMapRotator()Lru/yandex/ap;

    move-result-object v14

    invoke-virtual {v14, v5, v10, v4, v8}, Lru/yandex/ap;->a(FFFF)Landroid/graphics/PointF;

    move-result-object v4

    iget v5, v13, Landroid/graphics/PointF;->x:F

    iget v8, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v8, v3, Landroid/graphics/PointF;->x:F

    iget v10, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-double v14, v5

    iget v5, v13, Landroid/graphics/PointF;->x:F

    iget v8, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget v8, v3, Landroid/graphics/PointF;->x:F

    iget v10, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    iget v8, v13, Landroid/graphics/PointF;->y:F

    iget v10, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget v10, v3, Landroid/graphics/PointF;->y:F

    iget v6, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-double v9, v6

    iget v6, v13, Landroid/graphics/PointF;->y:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->e:I

    shr-int/lit8 v6, v4, 0x1

    int-to-double v6, v6

    iget-wide v11, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->z:D
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v19, v11, v14

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v6, v19

    :try_start_17
    iget v8, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->Y:F
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    move v13, v2

    move/from16 v19, v3

    float-to-double v2, v8

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    rem-double v2, v14, v2

    sub-double/2addr v6, v2

    double-to-float v2, v6

    :try_start_18
    iput v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->l:F

    iget v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->f:I

    shr-int/lit8 v6, v3, 0x1

    int-to-double v6, v6

    move-wide/from16 v20, v14

    iget-wide v14, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->A:D
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v22, v14, v9

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v6, v22

    move/from16 v22, v13

    move-wide/from16 v23, v14

    float-to-double v13, v8

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    rem-double v13, v9, v13

    sub-double/2addr v6, v13

    double-to-float v6, v6

    :try_start_19
    iput v6, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->m:F
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_3
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    const/4 v6, 0x1

    shr-int/2addr v4, v6

    int-to-double v13, v4

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v6, v11

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v13, v6

    rem-float/2addr v5, v8

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v13, v4

    double-to-float v4, v13

    const/4 v5, 0x1

    shr-int/2addr v3, v5

    int-to-double v11, v3

    move/from16 v3, v19

    float-to-double v13, v3

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v13, v13, v23

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v13

    rem-float/2addr v3, v8

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v7

    double-to-float v3, v11

    sub-float/2addr v4, v2

    div-float v4, v4, v22

    float-to-double v4, v4

    :try_start_1a
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    iput v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->j:I

    iget v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->m:F

    sub-float/2addr v3, v2

    div-float v3, v3, v22

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->k:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    move-wide v7, v9

    move-wide/from16 v3, v20

    goto :goto_a

    :cond_10
    :try_start_1b
    iget v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->Y:F
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_4
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    float-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    rem-double v11, v3, v11

    double-to-float v5, v11

    neg-float v5, v5

    const-wide/16 v11, 0x0

    cmpg-double v9, v3, v11

    if-gez v9, :cond_11

    move v9, v2

    goto :goto_9

    :cond_11
    const/4 v9, 0x0

    :goto_9
    sub-float/2addr v5, v9

    :try_start_1c
    iput v5, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->l:F
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_4
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    float-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    rem-double v11, v7, v11

    double-to-float v5, v11

    neg-float v5, v5

    const-wide/16 v11, 0x0

    cmpg-double v9, v7, v11

    if-gez v9, :cond_12

    move v10, v2

    :cond_12
    sub-float/2addr v5, v10

    :try_start_1d
    iput v5, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->m:F

    iget v5, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->e:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v2, v9

    const/4 v5, 0x1

    add-int/2addr v2, v5

    iput v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->j:I

    iget v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->f:I

    int-to-float v2, v2

    iget v5, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->Y:F

    div-float/2addr v2, v5

    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v2, v9

    const/4 v5, 0x1

    add-int/2addr v2, v5

    iput v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->k:I

    :goto_a
    iget v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->Y:F
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_4
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double v9, v3, v9

    double-to-int v5, v9

    const-wide/16 v9, 0x0

    cmpg-double v11, v3, v9

    if-gez v11, :cond_13

    const/4 v3, 0x1

    goto :goto_b

    :cond_13
    const/4 v3, 0x0

    :goto_b
    sub-int/2addr v5, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v2, v7, v2

    double-to-int v2, v2

    cmpg-double v3, v7, v9

    if-gez v3, :cond_14

    const/4 v10, 0x1

    goto :goto_c

    :cond_14
    const/4 v10, 0x0

    :goto_c
    sub-int/2addr v2, v10

    :try_start_1e
    iget v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->j:I

    add-int/2addr v3, v5

    iget v4, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->k:I

    add-int/2addr v4, v2

    iget-object v7, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->r:Lru/yandex/ay;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_4
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    if-nez v7, :cond_15

    monitor-exit p0

    const/4 v2, 0x0

    return v2

    :cond_15
    move v8, v2

    const/4 v7, 0x0

    :goto_d
    if-ge v8, v4, :cond_17

    move v9, v5

    :goto_e
    if-ge v9, v3, :cond_16

    :try_start_1f
    iget-object v11, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->r:Lru/yandex/ay;

    iget v12, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->o:I

    iget v13, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->n:I

    invoke-virtual {v11, v9, v8, v12, v13}, Lru/yandex/ay;->a(IIII)Lru/yandex/yandexmapkit/map/Tile;

    move-result-object v11

    invoke-virtual {v1, v9, v8}, Lru/yandex/yandexmapkit/map/TiledSurface;->b(II)Z

    move-result v12

    iput-boolean v12, v11, Lru/yandex/yandexmapkit/map/Tile;->w:Z

    iget-object v12, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->q:[Lru/yandex/yandexmapkit/map/Tile;

    add-int/lit8 v13, v7, 0x1

    aput-object v11, v12, v7
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_3
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    add-int/lit8 v9, v9, 0x1

    move v7, v13

    goto :goto_e

    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_17
    :try_start_20
    iget-object v7, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->s:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v7}, Lru/yandex/yandexmapkit/MapController;->getServiceMapLayer()Lru/yandex/yandexmapkit/map/MapLayer;

    iget-object v7, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->q:[Lru/yandex/yandexmapkit/map/Tile;

    array-length v7, v7
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_4
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x0

    :goto_f
    if-ge v11, v7, :cond_1d

    :try_start_21
    iget-object v12, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->q:[Lru/yandex/yandexmapkit/map/Tile;

    aget-object v12, v12, v11

    if-eqz v12, :cond_1c

    iget-boolean v13, v12, Lru/yandex/yandexmapkit/map/Tile;->w:Z

    if-eqz v13, :cond_1c

    iget-byte v13, v12, Lru/yandex/yandexmapkit/map/Tile;->h:B

    const/4 v6, 0x1

    and-int/2addr v13, v6

    if-eq v13, v6, :cond_19

    iget-byte v13, v12, Lru/yandex/yandexmapkit/map/Tile;->h:B

    const/4 v14, 0x4

    and-int/2addr v13, v14

    if-ne v13, v14, :cond_18

    goto :goto_10

    :cond_18
    const/4 v13, 0x0

    goto :goto_11

    :cond_19
    :goto_10
    const/4 v13, 0x1

    :goto_11
    and-int/2addr v9, v13

    invoke-virtual {v12}, Lru/yandex/yandexmapkit/map/Tile;->g()Landroid/graphics/Bitmap;

    move-result-object v13

    if-eqz v13, :cond_1a

    invoke-virtual {v12}, Lru/yandex/yandexmapkit/map/Tile;->g()Landroid/graphics/Bitmap;

    move-result-object v13

    sget-object v14, Lru/yandex/yandexmapkit/map/TiledSurface;->a:Landroid/graphics/Bitmap;

    if-ne v13, v14, :cond_1b

    :cond_1a
    const/4 v8, 0x1

    :cond_1b
    const/4 v10, 0x0

    invoke-direct {v1, v12, v10}, Lru/yandex/yandexmapkit/map/TiledSurface;->a(Lru/yandex/yandexmapkit/map/Tile;Z)Z

    move-result v12
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_0
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    or-int/2addr v8, v12

    :cond_1c
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :catch_0
    move-exception v0

    move-object v3, v0

    move v2, v8

    goto/16 :goto_26

    :cond_1d
    :try_start_22
    iget-object v11, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->r:Lru/yandex/ay;

    invoke-virtual {v11}, Lru/yandex/ay;->c()V

    iget v11, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->M:I

    if-eqz v11, :cond_29

    iget-boolean v12, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->ad:Z

    if-nez v12, :cond_29

    iget-boolean v12, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->U:Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_2
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    if-nez v12, :cond_29

    if-eqz v9, :cond_1f

    :try_start_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->O:J

    const/4 v9, 0x0

    iput-boolean v9, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->Q:Z

    iget v9, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->M:I

    const/4 v6, 0x1

    if-ne v9, v6, :cond_1e

    iget-object v9, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->d:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v9}, Lru/yandex/yandexmapkit/MapModel;->startDissolveMap()V

    goto/16 :goto_1a

    :cond_1e
    const/4 v9, 0x0

    iput v9, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->M:I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    goto/16 :goto_1a

    :cond_1f
    const/4 v6, 0x1

    if-ne v11, v6, :cond_29

    :try_start_24
    iget v9, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->l:F

    iget v11, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->m:F

    iget v12, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->j:I

    add-int/2addr v12, v5

    iget v13, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->k:I

    add-int/2addr v13, v2

    move v15, v2

    move v14, v11

    const/4 v11, 0x0

    :goto_12
    if-ge v15, v13, :cond_26

    move v6, v5

    :goto_13
    if-ge v6, v12, :cond_25

    iget-object v10, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->q:[Lru/yandex/yandexmapkit/map/Tile;

    aget-object v10, v10, v11

    iget-byte v10, v10, Lru/yandex/yandexmapkit/map/Tile;->h:B
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_2
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    move/from16 v17, v8

    const/4 v8, 0x1

    and-int/2addr v10, v8

    if-ne v10, v8, :cond_24

    :try_start_25
    iget v10, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->V:F

    iget v8, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->W:F

    move/from16 v18, v8

    iget v8, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->Y:F

    add-float v19, v14, v8

    add-float/2addr v8, v9

    move/from16 v20, v10

    iget-object v10, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->H:[Lru/yandex/yandexmapkit/map/Tile;

    if-eqz v10, :cond_24

    move/from16 v22, v12

    move/from16 v21, v20

    const/4 v10, 0x0

    const/16 v20, 0x0

    :goto_14
    iget v12, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->J:I

    if-ge v10, v12, :cond_23

    move/from16 v23, v10

    const/4 v12, 0x0

    :goto_15
    iget v10, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->I:I

    if-ge v12, v10, :cond_22

    iget-object v10, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->H:[Lru/yandex/yandexmapkit/map/Tile;

    aget-object v10, v10, v20

    if-eqz v10, :cond_20

    invoke-virtual {v10}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object v24

    if-eqz v24, :cond_20

    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v25, v13

    add-float v13, v18, v24

    float-to-int v13, v13

    move/from16 v26, v3

    add-float v3, v21, v24

    float-to-int v3, v3

    int-to-float v13, v13

    move/from16 v24, v4

    iget v4, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->X:F

    add-float v27, v13, v4

    const/high16 v28, 0x40800000    # 4.0f

    move/from16 v29, v2

    sub-float v2, v27, v28

    float-to-int v2, v2

    int-to-float v3, v3

    add-float/2addr v4, v3

    sub-float v4, v4, v28

    float-to-int v4, v4

    cmpl-float v13, v13, v14

    if-lez v13, :cond_21

    cmpl-float v3, v3, v9

    if-lez v3, :cond_21

    int-to-float v2, v2

    cmpg-float v2, v2, v19

    if-gez v2, :cond_21

    int-to-float v2, v4

    cmpg-float v2, v2, v8

    if-gez v2, :cond_21

    const/4 v2, 0x0

    iput-boolean v2, v10, Lru/yandex/yandexmapkit/map/Tile;->w:Z

    move/from16 v16, v23

    iget-object v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->H:[Lru/yandex/yandexmapkit/map/Tile;

    const/4 v3, 0x0

    aput-object v3, v2, v20

    goto :goto_16

    :cond_20
    move/from16 v29, v2

    move/from16 v26, v3

    move/from16 v24, v4

    move/from16 v25, v13

    :cond_21
    move/from16 v16, v23

    :goto_16
    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v12, v12, 0x1

    iget v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->X:F

    add-float v21, v21, v2

    move/from16 v23, v16

    move/from16 v4, v24

    move/from16 v13, v25

    move/from16 v3, v26

    move/from16 v2, v29

    goto :goto_15

    :cond_22
    move/from16 v29, v2

    move/from16 v26, v3

    move/from16 v24, v4

    move/from16 v25, v13

    move/from16 v16, v23

    iget v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->V:F

    add-int/lit8 v3, v16, 0x1

    iget v4, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->X:F

    add-float v18, v18, v4

    move/from16 v21, v2

    move v10, v3

    move/from16 v4, v24

    move/from16 v13, v25

    move/from16 v3, v26

    move/from16 v2, v29

    goto/16 :goto_14

    :cond_23
    move/from16 v29, v2

    move/from16 v26, v3

    move/from16 v24, v4

    goto :goto_17

    :cond_24
    move/from16 v29, v2

    move/from16 v26, v3

    move/from16 v24, v4

    move/from16 v22, v12

    :goto_17
    move/from16 v25, v13

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v6, v6, 0x1

    iget v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->Y:F

    add-float/2addr v9, v2

    move/from16 v8, v17

    move/from16 v12, v22

    move/from16 v4, v24

    move/from16 v13, v25

    move/from16 v3, v26

    move/from16 v2, v29

    goto/16 :goto_13

    :cond_25
    move/from16 v29, v2

    move/from16 v26, v3

    move/from16 v24, v4

    move/from16 v17, v8

    move/from16 v22, v12

    move/from16 v25, v13

    iget v9, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->l:F

    add-int/lit8 v15, v15, 0x1

    iget v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->Y:F

    add-float/2addr v14, v2

    move/from16 v8, v17

    move/from16 v12, v22

    move/from16 v4, v24

    move/from16 v13, v25

    move/from16 v3, v26

    move/from16 v2, v29

    goto/16 :goto_12

    :cond_26
    move/from16 v29, v2

    move/from16 v26, v3

    move/from16 v24, v4

    move/from16 v17, v8

    iget-object v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->H:[Lru/yandex/yandexmapkit/map/Tile;

    if-eqz v2, :cond_28

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_18
    if-ltz v2, :cond_28

    iget-object v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->H:[Lru/yandex/yandexmapkit/map/Tile;

    aget-object v3, v3, v2

    if-eqz v3, :cond_27

    invoke-virtual {v3}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_27

    const/4 v2, 0x0

    goto :goto_19

    :cond_27
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    :cond_28
    const/4 v2, 0x1

    :goto_19
    if-eqz v2, :cond_2a

    const/4 v2, 0x0

    iput v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->M:I

    iput-boolean v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->Q:Z

    goto :goto_1b

    :cond_29
    :goto_1a
    move/from16 v29, v2

    move/from16 v26, v3

    move/from16 v24, v4

    move/from16 v17, v8

    :cond_2a
    :goto_1b
    iget-object v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->p:[Lru/yandex/yandexmapkit/map/Tile;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1c
    if-ltz v2, :cond_2e

    iget-object v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->p:[Lru/yandex/yandexmapkit/map/Tile;

    aget-object v3, v3, v2

    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2d

    iget-object v4, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->r:Lru/yandex/ay;

    iget-object v4, v4, Lru/yandex/ay;->a:Lru/yandex/yandexmapkit/map/Tile;

    if-eq v3, v4, :cond_2d

    const/4 v4, 0x1

    add-int/lit8 v8, v7, -0x1

    :goto_1d
    if-ltz v8, :cond_2c

    iget-object v4, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->q:[Lru/yandex/yandexmapkit/map/Tile;

    aget-object v4, v4, v8

    if-eqz v4, :cond_2b

    iget v9, v3, Lru/yandex/yandexmapkit/map/Tile;->i:I

    iget v11, v4, Lru/yandex/yandexmapkit/map/Tile;->i:I

    if-ne v9, v11, :cond_2b

    iget v9, v3, Lru/yandex/yandexmapkit/map/Tile;->j:I

    iget v11, v4, Lru/yandex/yandexmapkit/map/Tile;->j:I

    if-ne v9, v11, :cond_2b

    iget v9, v3, Lru/yandex/yandexmapkit/map/Tile;->zoom:I

    iget v11, v4, Lru/yandex/yandexmapkit/map/Tile;->zoom:I

    if-ne v9, v11, :cond_2b

    iget v9, v3, Lru/yandex/yandexmapkit/map/Tile;->type:I

    iget v4, v4, Lru/yandex/yandexmapkit/map/Tile;->type:I

    if-ne v9, v4, :cond_2b

    const/4 v4, 0x0

    goto :goto_1e

    :cond_2b
    add-int/lit8 v8, v8, -0x1

    goto :goto_1d

    :cond_2c
    const/4 v4, 0x1

    :goto_1e
    if-eqz v4, :cond_2d

    const/4 v4, 0x0

    iput-boolean v4, v3, Lru/yandex/yandexmapkit/map/Tile;->w:Z

    goto :goto_1f

    :cond_2d
    const/4 v4, 0x0

    :goto_1f
    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    :cond_2e
    add-int/lit8 v2, v5, -0x1

    const/4 v3, 0x1

    add-int/lit8 v4, v29, -0x1

    move v3, v4

    :goto_20
    add-int/lit8 v7, v24, 0x1

    if-ge v3, v7, :cond_2f

    iget-object v7, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->r:Lru/yandex/ay;

    iget v8, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->o:I

    iget v9, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->n:I

    invoke-virtual {v7, v2, v3, v8, v9}, Lru/yandex/ay;->a(IIII)Lru/yandex/yandexmapkit/map/Tile;

    move-result-object v7

    const/4 v6, 0x1

    invoke-direct {v1, v7, v6}, Lru/yandex/yandexmapkit/map/TiledSurface;->a(Lru/yandex/yandexmapkit/map/Tile;Z)Z

    iget-object v7, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->r:Lru/yandex/ay;

    iget v8, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->o:I

    iget v9, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->n:I

    move/from16 v10, v26

    invoke-virtual {v7, v10, v3, v8, v9}, Lru/yandex/ay;->a(IIII)Lru/yandex/yandexmapkit/map/Tile;

    move-result-object v7

    invoke-direct {v1, v7, v6}, Lru/yandex/yandexmapkit/map/TiledSurface;->a(Lru/yandex/yandexmapkit/map/Tile;Z)Z

    add-int/lit8 v3, v3, 0x1

    move/from16 v26, v10

    goto :goto_20

    :cond_2f
    move/from16 v10, v26

    :goto_21
    if-ge v5, v10, :cond_30

    iget-object v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->r:Lru/yandex/ay;

    iget v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->o:I

    iget v7, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->n:I

    invoke-virtual {v2, v5, v4, v3, v7}, Lru/yandex/ay;->a(IIII)Lru/yandex/yandexmapkit/map/Tile;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lru/yandex/yandexmapkit/map/TiledSurface;->a(Lru/yandex/yandexmapkit/map/Tile;Z)Z

    iget-object v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->r:Lru/yandex/ay;

    iget v6, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->o:I

    iget v7, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->n:I

    move/from16 v8, v24

    invoke-virtual {v2, v5, v8, v6, v7}, Lru/yandex/ay;->a(IIII)Lru/yandex/yandexmapkit/map/Tile;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lru/yandex/yandexmapkit/map/TiledSurface;->a(Lru/yandex/yandexmapkit/map/Tile;Z)Z

    add-int/lit8 v5, v5, 0x1

    move/from16 v24, v8

    goto :goto_21

    :cond_30
    iget-object v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->r:Lru/yandex/ay;

    invoke-virtual {v2}, Lru/yandex/ay;->c()V

    iget-object v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->p:[Lru/yandex/yandexmapkit/map/Tile;

    array-length v3, v2

    iget-object v4, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->q:[Lru/yandex/yandexmapkit/map/Tile;

    array-length v5, v4

    if-eq v3, v5, :cond_31

    array-length v2, v4

    new-array v2, v2, [Lru/yandex/yandexmapkit/map/Tile;

    iput-object v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->p:[Lru/yandex/yandexmapkit/map/Tile;

    goto :goto_23

    :cond_31
    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_22
    if-ltz v2, :cond_32

    iget-object v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->p:[Lru/yandex/yandexmapkit/map/Tile;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_22

    :cond_32
    :goto_23
    iget-object v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->p:[Lru/yandex/yandexmapkit/map/Tile;

    iget-object v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->q:[Lru/yandex/yandexmapkit/map/Tile;

    iput-object v3, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->p:[Lru/yandex/yandexmapkit/map/Tile;

    iput-object v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->q:[Lru/yandex/yandexmapkit/map/Tile;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_1
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    move/from16 v2, v17

    goto :goto_27

    :catch_1
    move-exception v0

    goto :goto_24

    :catch_2
    move-exception v0

    move/from16 v17, v8

    :goto_24
    move-object v3, v0

    move/from16 v2, v17

    goto :goto_26

    :catchall_0
    move-exception v0

    const/4 v4, 0x0

    move-object v2, v0

    :try_start_26
    monitor-exit v3

    throw v2
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_3
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    :catch_3
    move-exception v0

    goto :goto_25

    :cond_33
    const/4 v4, 0x0

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_28

    :catch_4
    move-exception v0

    const/4 v4, 0x0

    :goto_25
    move-object v3, v0

    const/4 v2, 0x0

    :goto_26
    :try_start_27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    :goto_27
    monitor-exit p0

    return v2

    :goto_28
    monitor-exit p0

    goto :goto_2a

    :goto_29
    throw v2

    :goto_2a
    goto :goto_29
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->n:I

    return v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->s:Lru/yandex/yandexmapkit/MapController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    :cond_0
    return-void
.end method

.method public g()Ljava/lang/Thread;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->t:Z

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->y:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->y:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->C:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->C:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->K:Ljava/lang/Thread;

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public h()V
    .locals 7

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->d:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapModel;->isZooming()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->Q:Z

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/map/TiledSurface;->d()Z

    iget-object v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->p:[Lru/yandex/yandexmapkit/map/Tile;

    iget-object v2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->H:[Lru/yandex/yandexmapkit/map/Tile;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->H:[Lru/yandex/yandexmapkit/map/Tile;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    iput-boolean v0, v3, Lru/yandex/yandexmapkit/map/Tile;->w:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v2, v1

    new-array v2, v2, [Lru/yandex/yandexmapkit/map/Tile;

    iput-object v2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->H:[Lru/yandex/yandexmapkit/map/Tile;

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->j:I

    iput v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->I:I

    iget v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->k:I

    iput v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->J:I

    iget v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->aa:F

    iput v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->P:F

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const/high16 v3, 0x41b80000    # 23.0f

    sub-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-wide v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->z:D

    iget v3, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->e:I

    shr-int/lit8 v3, v3, 0x1

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v1, v3

    iget v3, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->l:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    iput-wide v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->S:D

    iget-wide v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->A:D

    iget v2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->f:I

    shr-int/lit8 v2, v2, 0x1

    int-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v5

    iget v2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->m:F

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    iput-wide v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->T:D

    iget v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->Y:F

    iput v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->Z:F

    :cond_2
    return-void
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->aa:F

    return v0
.end method

.method public declared-synchronized j()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->r:Lru/yandex/ay;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/yandex/ay;->d()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->p:[Lru/yandex/yandexmapkit/map/Tile;

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_1

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->q:[Lru/yandex/yandexmapkit/map/Tile;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aput-object v4, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public removeTileRenderListener(Lru/yandex/yandexmapkit/map/TileRenderListener;)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->r:Lru/yandex/ay;

    invoke-virtual {v0}, Lru/yandex/ay;->b()Lru/yandex/au;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/yandex/au;->a(Lru/yandex/yandexmapkit/map/TileRenderListener;)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/TiledSurface;->ag:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 23

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-boolean v5, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->t:Z

    const/4 v6, 0x0

    if-nez v5, :cond_12

    move-wide v4, v3

    move v3, v0

    :goto_1
    :try_start_0
    iget-boolean v0, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->t:Z

    if-nez v0, :cond_e

    invoke-direct/range {p0 .. p0}, Lru/yandex/yandexmapkit/map/TiledSurface;->k()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct/range {p0 .. p0}, Lru/yandex/yandexmapkit/map/TiledSurface;->l()Lru/yandex/yandexmapkit/map/Tile;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-byte v7, v0, Lru/yandex/yandexmapkit/map/Tile;->h:B

    iget-byte v8, v0, Lru/yandex/yandexmapkit/map/Tile;->k:B

    and-int/lit8 v9, v7, 0x4

    const/4 v10, 0x4

    const/4 v11, 0x1

    if-ne v9, v10, :cond_0

    const/4 v9, 0x1

    goto :goto_2

    :cond_0
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_1

    if-eq v8, v11, :cond_3

    :cond_1
    and-int/lit8 v7, v7, 0x1

    if-eq v7, v11, :cond_2

    iget-byte v7, v0, Lru/yandex/yandexmapkit/map/Tile;->k:B

    if-nez v7, :cond_3

    :cond_2
    invoke-virtual {v0}, Lru/yandex/yandexmapkit/map/Tile;->b()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tile = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " i ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lru/yandex/yandexmapkit/map/Tile;->i:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " j ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lru/yandex/yandexmapkit/map/Tile;->j:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v0}, Lru/yandex/yandexmapkit/map/Tile;->a(Lru/yandex/yandexmapkit/map/Tile;)Z

    move-result v7

    or-int/2addr v7, v2

    iput-boolean v2, v0, Lru/yandex/yandexmapkit/map/Tile;->v:Z

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    iget-boolean v8, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->Q:Z

    if-eqz v8, :cond_7

    iget-byte v8, v0, Lru/yandex/yandexmapkit/map/Tile;->k:B

    if-nez v8, :cond_7

    iget-byte v8, v0, Lru/yandex/yandexmapkit/map/Tile;->h:B

    and-int/2addr v8, v10

    if-eq v8, v10, :cond_7

    iget-object v8, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->H:[Lru/yandex/yandexmapkit/map/Tile;

    iget v9, v0, Lru/yandex/yandexmapkit/map/Tile;->zoom:I

    iget v12, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->P:F

    float-to-int v12, v12

    sub-int/2addr v9, v12

    const/16 v12, 0x8

    if-ge v9, v12, :cond_7

    iget v12, v0, Lru/yandex/yandexmapkit/map/Tile;->i:I

    shr-int/2addr v12, v9

    iget v13, v0, Lru/yandex/yandexmapkit/map/Tile;->j:I

    shr-int/2addr v13, v9

    if-eqz v8, :cond_7

    array-length v14, v8

    sub-int/2addr v14, v11

    :goto_4
    if-ltz v14, :cond_7

    aget-object v15, v8, v14

    if-eqz v15, :cond_6

    iget v2, v15, Lru/yandex/yandexmapkit/map/Tile;->i:I

    if-ne v2, v12, :cond_6

    iget v2, v15, Lru/yandex/yandexmapkit/map/Tile;->j:I

    if-ne v2, v13, :cond_6

    iget v2, v0, Lru/yandex/yandexmapkit/map/Tile;->c:I

    if-eqz v2, :cond_5

    invoke-virtual {v15}, Lru/yandex/yandexmapkit/map/Tile;->e()[B

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {v15}, Lru/yandex/yandexmapkit/map/Tile;->a(Lru/yandex/yandexmapkit/map/Tile;)Z

    :cond_5
    invoke-virtual {v15}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_7

    sget-object v8, Lru/yandex/yandexmapkit/map/TiledSurface;->a:Landroid/graphics/Bitmap;

    if-eq v2, v8, :cond_7

    shl-int v8, v11, v9

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getSizeTile()I

    move-result v12

    int-to-float v12, v12

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorScaleTile()F

    move-result v13

    mul-float v12, v12, v13

    float-to-int v12, v12

    shr-int v20, v12, v9

    iget v12, v0, Lru/yandex/yandexmapkit/map/Tile;->i:I

    sub-int/2addr v8, v11

    and-int v11, v12, v8

    mul-int v17, v11, v20

    iget v11, v0, Lru/yandex/yandexmapkit/map/Tile;->j:I

    and-int/2addr v8, v11

    mul-int v18, v8, v20

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    int-to-double v8, v9

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    iget-object v9, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->R:Landroid/graphics/Matrix;

    invoke-virtual {v9, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    iget-object v8, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->R:Landroid/graphics/Matrix;

    const/16 v22, 0x1

    move-object/from16 v16, v2

    move/from16 v19, v20

    move-object/from16 v21, v8

    invoke-static/range {v16 .. v22}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    goto :goto_5

    :catch_0
    move-object v2, v6

    :goto_5
    if-eqz v2, :cond_7

    :try_start_2
    invoke-virtual {v0, v2}, Lru/yandex/yandexmapkit/map/Tile;->a(Landroid/graphics/Bitmap;)V

    iget-byte v2, v15, Lru/yandex/yandexmapkit/map/Tile;->h:B

    or-int/2addr v2, v10

    and-int/lit8 v2, v2, -0x2

    int-to-byte v2, v2

    iput-byte v2, v0, Lru/yandex/yandexmapkit/map/Tile;->h:B

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/map/Tile;->clearLayers()V

    goto :goto_6

    :cond_6
    add-int/lit8 v14, v14, -0x1

    const/4 v2, 0x0

    goto :goto_4

    :cond_7
    :goto_6
    iget-boolean v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->Q:Z

    if-nez v2, :cond_8

    iget-object v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->d:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/MapModel;->isZooming()Z

    :cond_8
    invoke-virtual {v0}, Lru/yandex/yandexmapkit/map/Tile;->c()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    or-int/2addr v0, v7

    or-int/2addr v0, v3

    if-eqz v0, :cond_a

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    const-wide/16 v7, 0xfa

    cmp-long v9, v2, v7

    if-lez v9, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v4, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->d:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v4}, Lru/yandex/yandexmapkit/MapModel;->isZooming()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->d:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v4}, Lru/yandex/yandexmapkit/MapModel;->isDissolving()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lru/yandex/yandexmapkit/map/TiledSurface;->f()V

    goto :goto_7

    :cond_9
    iget-object v4, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->s:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v4}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_7
    move-wide v4, v2

    const/4 v3, 0x0

    goto :goto_8

    :catchall_0
    move-wide v4, v2

    const/4 v7, 0x0

    move v3, v0

    goto :goto_d

    :catchall_1
    move v3, v0

    goto :goto_c

    :cond_a
    move v3, v0

    :goto_8
    :try_start_5
    iget-object v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->y:Ljava/lang/Object;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    iget-object v0, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->v:[Lru/yandex/yandexmapkit/map/Tile;

    iget v7, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->w:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->w:I

    aput-object v6, v0, v7

    array-length v0, v0

    if-ne v8, v0, :cond_b

    const/4 v7, 0x0

    iput v7, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->w:I

    :cond_b
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v2

    throw v0

    :cond_c
    iget-object v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->y:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    iget-object v0, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->v:[Lru/yandex/yandexmapkit/map/Tile;

    iget v7, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->w:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->w:I

    aput-object v6, v0, v7

    array-length v0, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-ne v8, v0, :cond_d

    const/4 v7, 0x0

    :try_start_9
    iput v7, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->w:I

    goto :goto_9

    :cond_d
    const/4 v7, 0x0

    :goto_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_a
    const/4 v2, 0x0

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    goto :goto_b

    :catchall_4
    move-exception v0

    const/4 v7, 0x0

    :goto_b
    :try_start_a
    monitor-exit v2

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_5
    :cond_e
    :goto_c
    const/4 v7, 0x0

    :catchall_6
    :goto_d
    iget-object v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->y:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b
    invoke-direct/range {p0 .. p0}, Lru/yandex/yandexmapkit/map/TiledSurface;->k()Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->t:Z

    if-nez v0, :cond_11

    if-eqz v3, :cond_10

    iget-object v0, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->d:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapModel;->isZooming()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->d:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapModel;->isDissolving()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Lru/yandex/yandexmapkit/map/TiledSurface;->f()V

    goto :goto_e

    :cond_f
    iget-object v0, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->s:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    const/4 v3, 0x0

    :cond_10
    :try_start_c
    iget-object v0, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->y:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :catch_1
    :cond_11
    move v0, v3

    move-wide v3, v4

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    const/4 v2, 0x0

    goto/16 :goto_0

    :catchall_7
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_12
    const/4 v7, 0x0

    iget-object v0, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->H:[Lru/yandex/yandexmapkit/map/Tile;

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    :goto_f
    iget-object v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->H:[Lru/yandex/yandexmapkit/map/Tile;

    array-length v3, v2

    if-ge v0, v3, :cond_13

    aput-object v6, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_13
    const/4 v0, 0x0

    :goto_10
    iget-object v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->p:[Lru/yandex/yandexmapkit/map/Tile;

    array-length v3, v2

    if-ge v0, v3, :cond_14

    aput-object v6, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_14
    const/4 v0, 0x0

    :goto_11
    iget-object v2, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->q:[Lru/yandex/yandexmapkit/map/Tile;

    array-length v3, v2

    if-ge v0, v3, :cond_15

    aput-object v6, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_15
    const/4 v2, 0x0

    :goto_12
    iget-object v0, v1, Lru/yandex/yandexmapkit/map/TiledSurface;->v:[Lru/yandex/yandexmapkit/map/Tile;

    array-length v3, v0

    if-ge v2, v3, :cond_16

    aput-object v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_16
    return-void
.end method
