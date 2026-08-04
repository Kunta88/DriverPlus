.class public final Lru/yandex/ay;
.super Ljava/lang/Object;


# static fields
.field public static c:Lru/yandex/au; = null

.field public static d:Z = false

.field public static e:Z = false


# instance fields
.field public a:Lru/yandex/yandexmapkit/map/Tile;

.field public b:Lru/yandex/au;

.field private final f:Lru/yandex/am;

.field private final g:Lru/yandex/yandexmapkit/MapController;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lru/yandex/am;Lru/yandex/yandexmapkit/MapController;)V
    .locals 15

    move-object v12, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->j()Z

    move-result v0

    const/4 v13, 0x1

    xor-int/2addr v0, v13

    iput-boolean v0, v12, Lru/yandex/ay;->h:Z

    move-object/from16 v0, p2

    iput-object v0, v12, Lru/yandex/ay;->g:Lru/yandex/yandexmapkit/MapController;

    move-object/from16 v1, p1

    iput-object v1, v12, Lru/yandex/ay;->f:Lru/yandex/am;

    invoke-virtual {p0}, Lru/yandex/ay;->a()V

    new-instance v14, Lru/yandex/yandexmapkit/map/Tile;

    invoke-virtual/range {p2 .. p2}, Lru/yandex/yandexmapkit/MapController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v3, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v9, ""

    move-object v0, v14

    move-object v2, p0

    invoke-direct/range {v0 .. v11}, Lru/yandex/yandexmapkit/map/Tile;-><init>(Landroid/content/Context;Lru/yandex/ay;JIIIILjava/lang/String;ZZ)V

    iput-object v14, v12, Lru/yandex/ay;->a:Lru/yandex/yandexmapkit/map/Tile;

    const/4 v0, 0x4

    iput-byte v0, v14, Lru/yandex/yandexmapkit/map/Tile;->l:B

    iget-object v0, v12, Lru/yandex/ay;->a:Lru/yandex/yandexmapkit/map/Tile;

    sget-object v1, Lru/yandex/yandexmapkit/map/TiledSurface;->c:[B

    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/map/Tile;->a([B)V

    iget-object v0, v12, Lru/yandex/ay;->a:Lru/yandex/yandexmapkit/map/Tile;

    sget-object v1, Lru/yandex/yandexmapkit/map/TiledSurface;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/map/Tile;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, v12, Lru/yandex/ay;->a:Lru/yandex/yandexmapkit/map/Tile;

    iput-byte v13, v0, Lru/yandex/yandexmapkit/map/Tile;->k:B

    iput-byte v13, v0, Lru/yandex/yandexmapkit/map/Tile;->h:B

    return-void
.end method


# virtual methods
.method public a(IIII)Lru/yandex/yandexmapkit/map/Tile;
    .locals 17

    move-object/from16 v12, p0

    invoke-static/range {p1 .. p3}, Lru/yandex/yandexmapkit/utils/Utils;->a(III)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static/range {p1 .. p4}, Lru/yandex/yandexmapkit/map/Tile;->a(IIII)J

    move-result-wide v13

    iget-object v0, v12, Lru/yandex/ay;->b:Lru/yandex/au;

    invoke-virtual {v0, v13, v14}, Lru/yandex/au;->a(J)Lru/yandex/yandexmapkit/map/Tile;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v1, v12, Lru/yandex/ay;->g:Lru/yandex/yandexmapkit/MapController;

    move/from16 v8, p4

    invoke-virtual {v1, v8}, Lru/yandex/yandexmapkit/MapController;->getMapLayerByLayerId(I)Lru/yandex/yandexmapkit/map/MapLayer;

    move-result-object v15

    if-eqz v15, :cond_2

    iget-boolean v0, v15, Lru/yandex/yandexmapkit/map/MapLayer;->isService:Z

    if-eqz v0, :cond_0

    new-instance v11, Lru/yandex/bn;

    iget-object v0, v12, Lru/yandex/ay;->g:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v9, v15, Lru/yandex/yandexmapkit/map/MapLayer;->requestName:Ljava/lang/String;

    const/4 v10, 0x1

    move-object v0, v11

    move-object/from16 v2, p0

    move-wide v3, v13

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v0 .. v10}, Lru/yandex/bn;-><init>(Landroid/content/Context;Lru/yandex/ay;JIIIILjava/lang/String;Z)V

    goto :goto_1

    :cond_0
    new-instance v16, Lru/yandex/yandexmapkit/map/Tile;

    iget-object v0, v12, Lru/yandex/ay;->g:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v9, v15, Lru/yandex/yandexmapkit/map/MapLayer;->requestName:Ljava/lang/String;

    const/4 v10, 0x0

    iget-boolean v0, v15, Lru/yandex/yandexmapkit/map/MapLayer;->isAllowNightMode:Z

    if-eqz v0, :cond_1

    iget-object v0, v12, Lru/yandex/ay;->g:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->isNightMode()Z

    move-result v0

    move v11, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_0
    move-object/from16 v0, v16

    move-object/from16 v2, p0

    move-wide v3, v13

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v0 .. v11}, Lru/yandex/yandexmapkit/map/Tile;-><init>(Landroid/content/Context;Lru/yandex/ay;JIIIILjava/lang/String;ZZ)V

    :goto_1
    iget-boolean v1, v15, Lru/yandex/yandexmapkit/map/MapLayer;->isCustom:Z

    iput-boolean v1, v0, Lru/yandex/yandexmapkit/map/Tile;->g:Z

    iget-object v1, v12, Lru/yandex/ay;->b:Lru/yandex/au;

    invoke-virtual {v1, v13, v14, v0}, Lru/yandex/au;->a(JLru/yandex/yandexmapkit/map/Tile;)V

    :cond_2
    return-object v0

    :cond_3
    iget-object v0, v12, Lru/yandex/ay;->a:Lru/yandex/yandexmapkit/map/Tile;

    return-object v0
.end method

.method public a()V
    .locals 8

    iget-boolean v0, p0, Lru/yandex/ay;->h:Z

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->j()Z

    move-result v1

    if-eq v0, v1, :cond_6

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->j()Z

    move-result v0

    iput-boolean v0, p0, Lru/yandex/ay;->h:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lru/yandex/ay;->g:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/MapController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getSizeTile()I

    move-result v0

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    int-to-double v4, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    add-double/2addr v2, v6

    double-to-int v0, v2

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x3

    mul-int v0, v0, v1

    :cond_0
    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x25

    goto :goto_0

    :cond_1
    const/16 v1, 0x96

    :goto_0
    if-ge v1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x64

    goto :goto_2

    :cond_3
    const/16 v1, 0x190

    :goto_2
    invoke-static {}, Lru/yandex/yandexmapkit/MapView;->isShareMemory()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lru/yandex/ay;->c:Lru/yandex/au;

    if-nez v2, :cond_4

    new-instance v2, Lru/yandex/au;

    invoke-direct {v2, v0, v1}, Lru/yandex/au;-><init>(II)V

    sput-object v2, Lru/yandex/ay;->c:Lru/yandex/au;

    :cond_4
    sget-object v0, Lru/yandex/ay;->c:Lru/yandex/au;

    iput-object v0, p0, Lru/yandex/ay;->b:Lru/yandex/au;

    return-void

    :cond_5
    new-instance v2, Lru/yandex/au;

    invoke-direct {v2, v0, v1}, Lru/yandex/au;-><init>(II)V

    iput-object v2, p0, Lru/yandex/ay;->b:Lru/yandex/au;

    :cond_6
    return-void
.end method

.method public a(Lru/yandex/yandexmapkit/map/Tile;)V
    .locals 1

    iget-object v0, p0, Lru/yandex/ay;->b:Lru/yandex/au;

    invoke-virtual {v0, p1}, Lru/yandex/au;->a(Lru/yandex/yandexmapkit/map/Tile;)V

    return-void
.end method

.method public a(Lru/yandex/yandexmapkit/map/Tile;Z)V
    .locals 8

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/Tile;->e()[B

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/Tile;->e()[B

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-boolean v0, p1, Lru/yandex/yandexmapkit/map/Tile;->e:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    iput-byte v0, p1, Lru/yandex/yandexmapkit/map/Tile;->k:B

    goto :goto_0

    :cond_1
    iput-byte v3, p1, Lru/yandex/yandexmapkit/map/Tile;->k:B

    :goto_0
    iget-object v0, p0, Lru/yandex/ay;->g:Lru/yandex/yandexmapkit/MapController;

    iget v4, p1, Lru/yandex/yandexmapkit/map/Tile;->type:I

    invoke-virtual {v0, v4}, Lru/yandex/yandexmapkit/MapController;->getMapLayerByLayerId(I)Lru/yandex/yandexmapkit/map/MapLayer;

    move-result-object v0

    sget-boolean v4, Lru/yandex/ay;->e:Z

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-nez v4, :cond_7

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/Tile;->getTileVersion()I

    move-result v4

    iget v7, v0, Lru/yandex/yandexmapkit/map/MapLayer;->version:I

    if-lt v4, v7, :cond_7

    :cond_2
    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->j()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    instance-of v4, p1, Lru/yandex/bn;

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/Tile;->e()[B

    move-result-object v4

    array-length v4, v4

    const/16 v7, 0x8

    if-lt v4, v7, :cond_4

    mul-int/lit8 v1, v1, 0x64

    add-int/lit8 v1, v1, -0x64

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/Tile;->getTileScaleFactor()I

    move-result v4

    if-eq v1, v4, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    iget-byte v0, p1, Lru/yandex/yandexmapkit/map/Tile;->l:B

    if-ne v0, v6, :cond_6

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/Tile;->a()V

    :cond_6
    iput-byte v2, p1, Lru/yandex/yandexmapkit/map/Tile;->l:B

    goto :goto_4

    :cond_7
    :goto_3
    iget-boolean v1, p1, Lru/yandex/yandexmapkit/map/Tile;->t:Z

    if-eqz v1, :cond_8

    iput-byte v2, p1, Lru/yandex/yandexmapkit/map/Tile;->l:B

    iget v0, v0, Lru/yandex/yandexmapkit/map/MapLayer;->version:I

    invoke-virtual {p1, v0}, Lru/yandex/yandexmapkit/map/Tile;->a(I)V

    goto :goto_4

    :cond_8
    sget-boolean v0, Lru/yandex/ay;->d:Z

    if-nez v0, :cond_9

    if-eqz p2, :cond_9

    iget-object v0, p0, Lru/yandex/ay;->g:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getTileDownloader()Lru/yandex/bs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/yandex/bs;->a(Lru/yandex/yandexmapkit/map/Tile;)V

    iput-byte v6, p1, Lru/yandex/yandexmapkit/map/Tile;->l:B

    :cond_9
    const/4 v5, 0x1

    :goto_4
    iput-boolean v3, p1, Lru/yandex/yandexmapkit/map/Tile;->v:Z

    if-nez p2, :cond_b

    :try_start_0
    iget-object p2, p0, Lru/yandex/ay;->g:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/MapController;->getTiledSurface()Lru/yandex/yandexmapkit/map/TiledSurface;

    move-result-object p2

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/map/TiledSurface;->f()V

    iget-byte p2, p1, Lru/yandex/yandexmapkit/map/Tile;->l:B

    if-eq p2, v6, :cond_a

    if-nez v5, :cond_a

    iget-object p2, p0, Lru/yandex/ay;->f:Lru/yandex/am;

    invoke-virtual {p2, p1, p0}, Lru/yandex/am;->a(Lru/yandex/yandexmapkit/map/Tile;Lru/yandex/ay;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_a
    return-void

    :cond_b
    iget-boolean p2, p1, Lru/yandex/yandexmapkit/map/Tile;->u:Z

    if-eqz p2, :cond_c

    iget-byte p2, p1, Lru/yandex/yandexmapkit/map/Tile;->l:B

    if-eq p2, v6, :cond_c

    if-nez v5, :cond_c

    iget-object p2, p0, Lru/yandex/ay;->f:Lru/yandex/am;

    invoke-virtual {p2, p1, p0}, Lru/yandex/am;->a(Lru/yandex/yandexmapkit/map/Tile;Lru/yandex/ay;)V

    :cond_c
    return-void

    :cond_d
    :goto_5
    const/4 v0, 0x4

    if-eqz p2, :cond_10

    :try_start_1
    sget-boolean p2, Lru/yandex/ay;->d:Z

    if-nez p2, :cond_f

    iget-boolean p2, p1, Lru/yandex/yandexmapkit/map/Tile;->g:Z

    if-nez p2, :cond_f

    iget-boolean p2, p1, Lru/yandex/yandexmapkit/map/Tile;->x:Z

    if-nez p2, :cond_e

    iget-boolean p2, p1, Lru/yandex/yandexmapkit/map/Tile;->w:Z

    if-eqz p2, :cond_f

    iget-object p2, p0, Lru/yandex/ay;->g:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p2, p1}, Lru/yandex/yandexmapkit/MapController;->isTileVisible(Lru/yandex/yandexmapkit/map/Tile;)Z

    move-result p2

    if-eqz p2, :cond_f

    :cond_e
    iput-byte v1, p1, Lru/yandex/yandexmapkit/map/Tile;->l:B

    iget-object p2, p0, Lru/yandex/ay;->g:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/MapController;->getTileDownloader()Lru/yandex/bs;

    move-result-object p2

    invoke-virtual {p2, p1}, Lru/yandex/bs;->a(Lru/yandex/yandexmapkit/map/Tile;)V

    return-void

    :cond_f
    iput-byte v2, p1, Lru/yandex/yandexmapkit/map/Tile;->l:B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    iput-byte v0, p1, Lru/yandex/yandexmapkit/map/Tile;->l:B

    return-void

    :cond_10
    iput-byte v0, p1, Lru/yandex/yandexmapkit/map/Tile;->l:B

    return-void
.end method

.method public b()Lru/yandex/au;
    .locals 1

    iget-object v0, p0, Lru/yandex/ay;->b:Lru/yandex/au;

    return-object v0
.end method

.method public b(Lru/yandex/yandexmapkit/map/Tile;)V
    .locals 1

    iget-byte v0, p1, Lru/yandex/yandexmapkit/map/Tile;->l:B

    if-eqz v0, :cond_0

    iget-byte v0, p1, Lru/yandex/yandexmapkit/map/Tile;->k:B

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-byte v0, p1, Lru/yandex/yandexmapkit/map/Tile;->l:B

    iget-object v0, p0, Lru/yandex/ay;->f:Lru/yandex/am;

    invoke-virtual {v0, p1, p0}, Lru/yandex/am;->b(Lru/yandex/yandexmapkit/map/Tile;Lru/yandex/ay;)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lru/yandex/ay;->f:Lru/yandex/am;

    invoke-virtual {v0}, Lru/yandex/am;->f()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lru/yandex/ay;->b:Lru/yandex/au;

    invoke-virtual {v0}, Lru/yandex/au;->b()V

    invoke-virtual {p0}, Lru/yandex/ay;->a()V

    return-void
.end method

.method public e()Lru/yandex/yandexmapkit/MapController;
    .locals 1

    iget-object v0, p0, Lru/yandex/ay;->g:Lru/yandex/yandexmapkit/MapController;

    return-object v0
.end method
