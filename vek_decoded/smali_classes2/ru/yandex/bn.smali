.class public Lru/yandex/bn;
.super Lru/yandex/yandexmapkit/map/Tile;


# instance fields
.field private A:Lru/yandex/bm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lru/yandex/ay;JIIIILjava/lang/String;Z)V
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lru/yandex/yandexmapkit/map/Tile;-><init>(Landroid/content/Context;Lru/yandex/ay;JIIIILjava/lang/String;ZZ)V

    const/4 v0, 0x0

    move-object v1, p0

    iput-object v0, v1, Lru/yandex/bn;->A:Lru/yandex/bm;

    return-void
.end method


# virtual methods
.method public a(Lru/yandex/bo;)V
    .locals 2

    iget-boolean v0, p0, Lru/yandex/bn;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lru/yandex/bn;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lru/yandex/bo;->a()V

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lru/yandex/bn;->h()[B

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    invoke-virtual {p1, v0}, Lru/yandex/bo;->a([B)Lru/yandex/bm;

    move-result-object v0

    iput-object v0, p0, Lru/yandex/bn;->A:Lru/yandex/bm;

    invoke-virtual {p1}, Lru/yandex/bo;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lru/yandex/bn;->A:Lru/yandex/bm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
