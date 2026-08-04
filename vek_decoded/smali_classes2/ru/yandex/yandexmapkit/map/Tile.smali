.class public Lru/yandex/yandexmapkit/map/Tile;
.super Ljava/lang/Object;


# static fields
.field private static E:F

.field private static F:I

.field private static G:Z

.field public static final a:I

.field public static b:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field private A:Lru/yandex/aw;

.field private B:Landroid/graphics/Bitmap;

.field private C:Z

.field private D:J

.field private H:Lru/yandex/ay;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:B

.field public final i:I

.field public final j:I

.field public k:B

.field public l:B

.field public m:Ljava/util/List;

.field public n:I

.field public o:I

.field public p:I

.field public pureData:[B

.field public q:Ljava/lang/String;

.field public r:I

.field public s:Z

.field public t:Z

.field public final type:I

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Lru/yandex/yandexmapkit/map/Tile;

.field public z:Lru/yandex/yandexmapkit/map/Tile;

.field public final zoom:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/yandex/yandexmapkit/utils/Utils;->a([BI)I

    move-result v0

    sput v0, Lru/yandex/yandexmapkit/map/Tile;->a:I

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lru/yandex/yandexmapkit/map/Tile;->E:F

    const/16 v0, 0x80

    sput v0, Lru/yandex/yandexmapkit/map/Tile;->F:I

    sput-boolean v1, Lru/yandex/yandexmapkit/map/Tile;->G:Z

    return-void

    :array_0
    .array-data 1
        0x59t
        0x54t
        0x4ct
        0x44t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lru/yandex/ay;JIIIILjava/lang/String;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lru/yandex/yandexmapkit/map/Tile;->c:I

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/map/Tile;->C:Z

    invoke-static {p1}, Lru/yandex/yandexmapkit/map/Tile;->a(Landroid/content/Context;)Landroid/graphics/BitmapFactory$Options;

    iput-wide p3, p0, Lru/yandex/yandexmapkit/map/Tile;->D:J

    iput p5, p0, Lru/yandex/yandexmapkit/map/Tile;->i:I

    iput p6, p0, Lru/yandex/yandexmapkit/map/Tile;->j:I

    iput p7, p0, Lru/yandex/yandexmapkit/map/Tile;->zoom:I

    iput p8, p0, Lru/yandex/yandexmapkit/map/Tile;->type:I

    iput-object p9, p0, Lru/yandex/yandexmapkit/map/Tile;->d:Ljava/lang/String;

    iput-boolean p10, p0, Lru/yandex/yandexmapkit/map/Tile;->e:Z

    iput-boolean p11, p0, Lru/yandex/yandexmapkit/map/Tile;->f:Z

    iput-object p2, p0, Lru/yandex/yandexmapkit/map/Tile;->H:Lru/yandex/ay;

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/map/Tile;->g:Z

    iput-byte v0, p0, Lru/yandex/yandexmapkit/map/Tile;->l:B

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/map/Tile;->s:Z

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/map/Tile;->t:Z

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/map/Tile;->u:Z

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/map/Tile;->x:Z

    iput v0, p0, Lru/yandex/yandexmapkit/map/Tile;->r:I

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/map/Tile;->v:Z

    return-void
.end method

.method public static a(IIII)J
    .locals 3

    int-to-long v0, p3

    const/16 p3, 0x35

    shl-long/2addr v0, p3

    int-to-long p2, p2

    const/16 v2, 0x30

    shl-long/2addr p2, v2

    or-long/2addr p2, v0

    int-to-long v0, p0

    const/16 p0, 0x18

    shl-long/2addr v0, p0

    or-long/2addr p2, v0

    int-to-long p0, p1

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Landroid/graphics/BitmapFactory$Options;
    .locals 3

    const-class v0, Lru/yandex/yandexmapkit/map/Tile;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lru/yandex/yandexmapkit/map/Tile;->b:Landroid/graphics/BitmapFactory$Options;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v1, Lru/yandex/yandexmapkit/map/Tile;->b:Landroid/graphics/BitmapFactory$Options;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v1, Lru/yandex/yandexmapkit/map/Tile;->b:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v1, Lru/yandex/yandexmapkit/map/Tile;->b:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    sget-object v1, Lru/yandex/yandexmapkit/map/Tile;->b:Landroid/graphics/BitmapFactory$Options;

    sget v2, Lru/yandex/yandexmapkit/map/Tile;->F:I

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v1, Lru/yandex/yandexmapkit/map/Tile;->b:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p0}, Lru/yandex/yandexmapkit/utils/Utils;->a(Landroid/content/Context;)I

    move-result p0

    iput p0, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    sget-object p0, Lru/yandex/yandexmapkit/map/Tile;->b:Landroid/graphics/BitmapFactory$Options;

    sget v1, Lru/yandex/yandexmapkit/map/Tile;->F:I

    mul-int v1, v1, v1

    mul-int/lit8 v1, v1, 0x5

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    :cond_0
    sget-object p0, Lru/yandex/yandexmapkit/map/Tile;->b:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lru/yandex/yandexmapkit/map/Tile;->G:Z

    return-void
.end method

.method public static declared-synchronized a(Lru/yandex/yandexmapkit/map/Tile;)Z
    .locals 5

    const-class v0, Lru/yandex/yandexmapkit/map/Tile;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lru/yandex/yandexmapkit/map/Tile;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    :try_start_1
    iget v1, p0, Lru/yandex/yandexmapkit/map/Tile;->c:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    iget-object v1, p0, Lru/yandex/yandexmapkit/map/Tile;->H:Lru/yandex/ay;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lru/yandex/ay;->b()Lru/yandex/au;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-byte v3, p0, Lru/yandex/yandexmapkit/map/Tile;->k:B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_3

    :try_start_2
    invoke-static {p0}, Lru/yandex/yandexmapkit/map/Tile;->b(Lru/yandex/yandexmapkit/map/Tile;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-byte v4, p0, Lru/yandex/yandexmapkit/map/Tile;->k:B

    iput-byte v4, p0, Lru/yandex/yandexmapkit/map/Tile;->h:B

    :cond_2
    invoke-virtual {p0, v3}, Lru/yandex/yandexmapkit/map/Tile;->a(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_3
    invoke-virtual {v1}, Lru/yandex/au;->a()V

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/map/Tile;->d()V

    :goto_0
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/map/Tile;->clearLayers()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    monitor-exit v0

    return v2

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(Lru/yandex/yandexmapkit/map/Tile;)Landroid/graphics/Bitmap;
    .locals 6

    const-class v0, Lru/yandex/yandexmapkit/map/Tile;

    monitor-enter v0

    :try_start_0
    iget-byte v1, p0, Lru/yandex/yandexmapkit/map/Tile;->k:B

    iget-boolean v2, p0, Lru/yandex/yandexmapkit/map/Tile;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v3

    :cond_0
    if-eqz v1, :cond_7

    :try_start_1
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/map/Tile;->e()[B

    move-result-object v1

    sget-object v2, Lru/yandex/yandexmapkit/map/TiledSurface;->c:[B

    if-ne v1, v2, :cond_1

    sget-object v3, Lru/yandex/yandexmapkit/map/TiledSurface;->b:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/16 :goto_3

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/map/Tile;->e()[B

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lru/yandex/yandexmapkit/map/Tile;->A:Lru/yandex/aw;

    if-eqz v1, :cond_2

    iget v1, v1, Lru/yandex/aw;->e:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lru/yandex/yandexmapkit/map/Tile;->b:Landroid/graphics/BitmapFactory$Options;

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v4, v4

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorScaleTile()F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/map/Tile;->e()[B

    move-result-object v2

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/map/Tile;->e()[B

    move-result-object v4

    array-length v4, v4

    sub-int/2addr v4, v1

    sget-object v5, Lru/yandex/yandexmapkit/map/Tile;->b:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v1, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    :try_start_3
    iget-boolean v2, p0, Lru/yandex/yandexmapkit/map/Tile;->f:Z

    if-eqz v2, :cond_3

    invoke-static {v1}, Lru/yandex/yandexmapkit/utils/Utils;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :catch_0
    move-object v3, v1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getSizeTile()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getSizeTile()I

    move-result v3

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getSizeTile()I

    move-result v4

    invoke-static {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v1, v3

    :cond_4
    if-eqz v1, :cond_6

    :try_start_5
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v3, v4, :cond_6

    :cond_5
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v3, p0

    goto :goto_3

    :catch_1
    :catchall_0
    :cond_6
    move-object v3, v1

    goto :goto_3

    :catch_2
    :goto_2
    :try_start_6
    iget-object p0, p0, Lru/yandex/yandexmapkit/map/Tile;->H:Lru/yandex/ay;

    invoke-virtual {p0}, Lru/yandex/ay;->b()Lru/yandex/au;

    move-result-object p0

    invoke-virtual {p0}, Lru/yandex/au;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_3
    :catchall_1
    :cond_7
    :goto_3
    monitor-exit v0

    return-object v3

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(I)V
    .locals 1

    sput p0, Lru/yandex/yandexmapkit/map/Tile;->F:I

    sget-object v0, Lru/yandex/yandexmapkit/map/Tile;->b:Landroid/graphics/BitmapFactory$Options;

    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object p0, Lru/yandex/yandexmapkit/map/Tile;->b:Landroid/graphics/BitmapFactory$Options;

    sget v0, Lru/yandex/yandexmapkit/map/Tile;->F:I

    mul-int v0, v0, v0

    mul-int/lit8 v0, v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    return-void
.end method

.method private c(I)Z
    .locals 1

    const/4 v0, 0x2

    shl-int p1, v0, p1

    iget v0, p0, Lru/yandex/yandexmapkit/map/Tile;->c:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static getFactorScaleTile()F
    .locals 1

    sget v0, Lru/yandex/yandexmapkit/map/Tile;->E:F

    return v0
.end method

.method public static getFactorSizeTile()F
    .locals 1

    sget v0, Lru/yandex/yandexmapkit/map/Tile;->F:I

    div-int/lit16 v0, v0, 0x80

    int-to-float v0, v0

    return v0
.end method

.method public static getSizeTile()I
    .locals 1

    sget v0, Lru/yandex/yandexmapkit/map/Tile;->F:I

    return v0
.end method

.method public static j()Z
    .locals 1

    sget-boolean v0, Lru/yandex/yandexmapkit/map/Tile;->G:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/map/Tile;->C:Z

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/Tile;->A:Lru/yandex/aw;

    if-eqz v0, :cond_0

    iput p1, v0, Lru/yandex/aw;->c:I

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/Tile;->B:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lru/yandex/yandexmapkit/map/Tile;->B:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lru/yandex/yandexmapkit/map/Tile;->H:Lru/yandex/ay;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lru/yandex/ay;->b()Lru/yandex/au;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v2, Lru/yandex/yandexmapkit/map/TiledSurface;->a:Landroid/graphics/Bitmap;

    if-eq v0, v2, :cond_1

    sget-object v2, Lru/yandex/yandexmapkit/map/TiledSurface;->b:Landroid/graphics/Bitmap;

    if-eq v0, v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Lru/yandex/au;->c(Lru/yandex/yandexmapkit/map/Tile;)V

    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lru/yandex/yandexmapkit/map/TiledSurface;->a:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_2

    sget-object v0, Lru/yandex/yandexmapkit/map/TiledSurface;->b:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Lru/yandex/au;->b(Lru/yandex/yandexmapkit/map/Tile;)V

    :cond_2
    return-void
.end method

.method public a(Lru/yandex/yandexmapkit/map/TileRenderListener;)V
    .locals 5

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/Tile;->m:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/yandex/yandexmapkit/map/Tile;->m:Ljava/util/List;

    :cond_0
    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/map/Tile;->findRenderEntry(Lru/yandex/yandexmapkit/map/TileRenderListener;)Lru/yandex/yandexmapkit/map/TileRenderEntry;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-interface {p1, p0}, Lru/yandex/yandexmapkit/map/TileRenderListener;->createEntry(Lru/yandex/yandexmapkit/map/Tile;)Lru/yandex/yandexmapkit/map/TileRenderEntry;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lru/yandex/yandexmapkit/map/Tile;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lru/yandex/yandexmapkit/map/Tile;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/yandex/yandexmapkit/map/TileRenderEntry;

    invoke-virtual {v3}, Lru/yandex/yandexmapkit/map/TileRenderEntry;->getRenderListener()Lru/yandex/yandexmapkit/map/TileRenderListener;

    move-result-object v3

    invoke-interface {v3}, Lru/yandex/yandexmapkit/map/TileRenderListener;->getPriority()B

    move-result v3

    invoke-interface {p1}, Lru/yandex/yandexmapkit/map/TileRenderListener;->getPriority()B

    move-result v4

    if-gt v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lru/yandex/yandexmapkit/map/Tile;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lru/yandex/yandexmapkit/map/Tile;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    iput v1, p0, Lru/yandex/yandexmapkit/map/Tile;->c:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/map/Tile;->C:Z

    :cond_2
    iget-object p1, p0, Lru/yandex/yandexmapkit/map/Tile;->m:Ljava/util/List;

    invoke-interface {p1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public a([B)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/yandex/yandexmapkit/utils/Utils;->a([BI)I

    move-result v0

    sget v1, Lru/yandex/yandexmapkit/map/Tile;->a:I

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lru/yandex/yandexmapkit/map/Tile;->pureData:[B

    :try_start_0
    new-instance v0, Lru/yandex/aw;

    iget-object v1, p0, Lru/yandex/yandexmapkit/map/Tile;->pureData:[B

    invoke-direct {v0, v1}, Lru/yandex/aw;-><init>([B)V

    iput-object v0, p0, Lru/yandex/yandexmapkit/map/Tile;->A:Lru/yandex/aw;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_0
    iput-object p1, p0, Lru/yandex/yandexmapkit/map/Tile;->pureData:[B

    return-void
.end method

.method public b()Z
    .locals 5

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/map/Tile;->C:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lru/yandex/yandexmapkit/map/Tile;->C:Z

    return v1

    :cond_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/map/Tile;->m:Ljava/util/List;

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lru/yandex/yandexmapkit/map/Tile;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lru/yandex/yandexmapkit/map/Tile;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/yandex/yandexmapkit/map/TileRenderEntry;

    invoke-virtual {v3}, Lru/yandex/yandexmapkit/map/TileRenderEntry;->getRenderListener()Lru/yandex/yandexmapkit/map/TileRenderListener;

    move-result-object v3

    invoke-interface {v3}, Lru/yandex/yandexmapkit/map/TileRenderListener;->isVisible()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v0}, Lru/yandex/yandexmapkit/map/Tile;->c(I)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    invoke-interface {v3, p0}, Lru/yandex/yandexmapkit/map/TileRenderListener;->needsUpdate(Lru/yandex/yandexmapkit/map/Tile;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    return v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v2
.end method

.method public b(Lru/yandex/yandexmapkit/map/TileRenderListener;)Z
    .locals 4

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/Tile;->m:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lru/yandex/yandexmapkit/map/Tile;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lru/yandex/yandexmapkit/map/Tile;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/yandex/yandexmapkit/map/TileRenderEntry;

    invoke-virtual {v3}, Lru/yandex/yandexmapkit/map/TileRenderEntry;->getRenderListener()Lru/yandex/yandexmapkit/map/TileRenderListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v2, p0, Lru/yandex/yandexmapkit/map/Tile;->C:Z

    iput-boolean v2, p0, Lru/yandex/yandexmapkit/map/Tile;->v:Z

    iget-object p1, p0, Lru/yandex/yandexmapkit/map/Tile;->m:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public c()Z
    .locals 7

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/Tile;->m:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v2, Lru/yandex/yandexmapkit/map/TiledSurface;->b:Landroid/graphics/Bitmap;

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lru/yandex/yandexmapkit/map/TiledSurface;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v0, v3, :cond_3

    :cond_2
    sget-object v0, Lru/yandex/yandexmapkit/map/TiledSurface;->a:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/map/Tile;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/map/Tile;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lru/yandex/yandexmapkit/map/Tile;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    const/4 v4, 0x2

    shl-int/2addr v4, v1

    iget-object v5, p0, Lru/yandex/yandexmapkit/map/Tile;->m:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/yandex/yandexmapkit/map/TileRenderEntry;

    invoke-virtual {v5}, Lru/yandex/yandexmapkit/map/TileRenderEntry;->getRenderListener()Lru/yandex/yandexmapkit/map/TileRenderListener;

    move-result-object v5

    invoke-interface {v5}, Lru/yandex/yandexmapkit/map/TileRenderListener;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, p0, Lru/yandex/yandexmapkit/map/Tile;->c:I

    and-int/2addr v6, v4

    if-eq v6, v4, :cond_6

    if-nez v0, :cond_5

    new-instance v0, Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    :cond_5
    invoke-interface {v5, p0, v0}, Lru/yandex/yandexmapkit/map/TileRenderListener;->renderTile(Lru/yandex/yandexmapkit/map/Tile;Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v3, p0, Lru/yandex/yandexmapkit/map/Tile;->c:I

    or-int/2addr v3, v4

    iput v3, p0, Lru/yandex/yandexmapkit/map/Tile;->c:I

    const/4 v3, 0x1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return v3
.end method

.method public c(Lru/yandex/yandexmapkit/map/TileRenderListener;)Z
    .locals 3

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/Tile;->m:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lru/yandex/yandexmapkit/map/Tile;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lru/yandex/yandexmapkit/map/Tile;->m:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/yandex/yandexmapkit/map/TileRenderEntry;

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/map/TileRenderEntry;->getRenderListener()Lru/yandex/yandexmapkit/map/TileRenderListener;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lru/yandex/yandexmapkit/map/Tile;->c(I)Z

    move-result p1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public clearLayers()V
    .locals 2

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/Tile;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/yandex/yandexmapkit/map/TileRenderEntry;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/map/TileRenderEntry;->cleanup()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lru/yandex/yandexmapkit/map/Tile;->c:I

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/map/Tile;->a(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-byte v0, p0, Lru/yandex/yandexmapkit/map/Tile;->h:B

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/map/Tile;->clearLayers()V

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/Tile;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/Tile;->pureData:[B

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/Tile;->A:Lru/yandex/aw;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lru/yandex/aw;->f:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public findRenderEntry(Lru/yandex/yandexmapkit/map/TileRenderListener;)Lru/yandex/yandexmapkit/map/TileRenderEntry;
    .locals 3

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/Tile;->m:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lru/yandex/yandexmapkit/map/Tile;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lru/yandex/yandexmapkit/map/Tile;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/yandex/yandexmapkit/map/TileRenderEntry;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/map/TileRenderEntry;->getRenderListener()Lru/yandex/yandexmapkit/map/TileRenderListener;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public g()Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/map/Tile;->e:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lru/yandex/yandexmapkit/map/Tile;->a(Lru/yandex/yandexmapkit/map/Tile;)Z

    :cond_0
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/map/Tile;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getTileScaleFactor()I
    .locals 2

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/Tile;->A:Lru/yandex/aw;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lru/yandex/aw;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/Tile;->A:Lru/yandex/aw;

    iget-object v0, v0, Lru/yandex/aw;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/Tile;->A:Lru/yandex/aw;

    iget-object v0, v0, Lru/yandex/aw;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/yandex/ax;

    iget v0, v0, Lru/yandex/ax;->a:I

    return v0

    :cond_0
    return v1
.end method

.method public getTileVersion()I
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/Tile;->A:Lru/yandex/aw;

    if-eqz v0, :cond_0

    iget v0, v0, Lru/yandex/aw;->c:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()[B
    .locals 5

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/Tile;->A:Lru/yandex/aw;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lru/yandex/yandexmapkit/map/Tile;->e:Z

    if-eqz v2, :cond_1

    iget v0, v0, Lru/yandex/aw;->e:I

    iget-object v2, p0, Lru/yandex/yandexmapkit/map/Tile;->pureData:[B

    array-length v3, v2

    sub-int/2addr v3, v0

    if-gez v3, :cond_0

    return-object v1

    :cond_0
    new-array v1, v3, [B

    const/4 v4, 0x0

    invoke-static {v2, v0, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v1
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lru/yandex/yandexmapkit/map/Tile;->D:J

    return-wide v0
.end method

.method public k()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/Tile;->B:Landroid/graphics/Bitmap;

    return-object v0
.end method
