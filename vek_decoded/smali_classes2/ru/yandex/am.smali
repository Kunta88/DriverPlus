.class public final Lru/yandex/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static A:I

.field public static a:I

.field private static final e:[B

.field private static final f:I

.field private static final g:[C

.field private static q:I


# instance fields
.field private final B:Ljava/lang/String;

.field private volatile C:Z

.field private D:Landroid/content/Context;

.field private E:Lru/yandex/ay;

.field private F:Lru/yandex/ah;

.field private G:Z

.field public volatile b:Z

.field public volatile c:Z

.field public volatile d:Z

.field private final h:Ljava/lang/Object;

.field private final i:Ljava/lang/Object;

.field private volatile j:Ljava/lang/Thread;

.field private final k:Ljava/util/ArrayList;

.field private final l:Ljava/util/ArrayList;

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private final p:[I

.field private r:Z

.field private volatile s:I

.field private t:Z

.field private u:Z

.field private final v:C

.field private w:[I

.field private x:[B

.field private final y:[C

.field private final z:[[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lru/yandex/am;->e:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/yandex/yandexmapkit/utils/Utils;->a([BI)I

    move-result v0

    sput v0, Lru/yandex/am;->f:I

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lru/yandex/am;->g:[C

    const/4 v0, -0x1

    sput v0, Lru/yandex/am;->a:I

    const/4 v0, 0x1

    sput v0, Lru/yandex/am;->q:I

    return-void

    nop

    :array_0
    .array-data 1
        0x59t
        0x4et
        0x44t
        0x58t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lru/yandex/am;->h:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lru/yandex/am;->i:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/yandex/am;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/yandex/am;->l:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lru/yandex/am;->o:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lru/yandex/am;->s:I

    iput-boolean v0, p0, Lru/yandex/am;->t:Z

    const/16 v1, 0x258

    new-array v1, v1, [I

    iput-object v1, p0, Lru/yandex/am;->w:[I

    const/16 v1, 0x1770

    new-array v1, v1, [B

    iput-object v1, p0, Lru/yandex/am;->x:[B

    const/16 v1, 0x12c

    new-array v1, v1, [C

    iput-object v1, p0, Lru/yandex/am;->y:[C

    const/16 v1, 0x17

    new-array v1, v1, [[C

    iput-object v1, p0, Lru/yandex/am;->z:[[C

    iput-boolean v0, p0, Lru/yandex/am;->G:Z

    if-nez p2, :cond_0

    const-string p2, "ru-RU"

    :cond_0
    new-instance v0, Lru/yandex/ah;

    invoke-direct {v0, p1}, Lru/yandex/ah;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/yandex/am;->F:Lru/yandex/ah;

    const/4 v0, 0x0

    iput-object v0, p0, Lru/yandex/am;->j:Ljava/lang/Thread;

    iput-object p2, p0, Lru/yandex/am;->B:Ljava/lang/String;

    sget-char p2, Ljava/io/File;->separatorChar:C

    iput-char p2, p0, Lru/yandex/am;->v:C

    iput-object p1, p0, Lru/yandex/am;->D:Landroid/content/Context;

    invoke-virtual {p0}, Lru/yandex/am;->d()V

    const/16 p2, 0x18

    new-array p2, p2, [I

    iput-object p2, p0, Lru/yandex/am;->p:[I

    invoke-virtual {p0, p1}, Lru/yandex/am;->a(Landroid/content/Context;)V

    return-void
.end method

.method private b(Lru/yandex/yandexmapkit/map/Tile;)V
    .locals 2

    iget-object v0, p0, Lru/yandex/am;->E:Lru/yandex/ay;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Lru/yandex/yandexmapkit/map/Tile;->q:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lru/yandex/am;->E:Lru/yandex/ay;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lru/yandex/ay;->a(Lru/yandex/yandexmapkit/map/Tile;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private b([Lru/yandex/yandexmapkit/map/Tile;)[Lru/yandex/yandexmapkit/map/Tile;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-eqz v0, :cond_19

    array-length v2, v0

    if-eqz v2, :cond_19

    iget-boolean v2, v1, Lru/yandex/am;->b:Z

    if-eqz v2, :cond_0

    goto/16 :goto_15

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    const/4 v6, 0x6

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ge v3, v4, :cond_4

    aget-object v4, v0, v3

    iget-object v9, v1, Lru/yandex/am;->z:[[C

    iget v10, v4, Lru/yandex/yandexmapkit/map/Tile;->zoom:I

    aget-object v9, v9, v10

    iget-object v10, v1, Lru/yandex/am;->y:[C

    array-length v11, v9

    invoke-static {v9, v2, v10, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v9

    iget-object v10, v1, Lru/yandex/am;->p:[I

    iget v11, v4, Lru/yandex/yandexmapkit/map/Tile;->zoom:I

    aget v10, v10, v11

    add-int/lit8 v11, v10, -0x1

    mul-int/lit8 v11, v11, 0x4

    shl-int v11, v8, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_1
    add-int/lit8 v2, v10, -0x2

    if-ge v12, v2, :cond_3

    iget v2, v4, Lru/yandex/yandexmapkit/map/Tile;->i:I

    sub-int/2addr v2, v15

    div-int v13, v2, v11

    iget v2, v4, Lru/yandex/yandexmapkit/map/Tile;->j:I

    sub-int v2, v2, v16

    div-int v14, v2, v11

    mul-int v2, v11, v13

    add-int/2addr v15, v2

    mul-int v2, v11, v14

    add-int v16, v16, v2

    shr-int/2addr v11, v7

    add-int/lit8 v2, v10, -0x3

    if-ge v12, v2, :cond_1

    iget-object v7, v1, Lru/yandex/am;->y:[C

    add-int/lit8 v18, v9, 0x1

    sget-object v19, Lru/yandex/am;->g:[C

    aget-char v20, v19, v13

    aput-char v20, v7, v9

    add-int/lit8 v9, v18, 0x1

    aget-char v19, v19, v14

    aput-char v19, v7, v18

    :cond_1
    if-ge v12, v2, :cond_2

    iget-object v2, v1, Lru/yandex/am;->y:[C

    add-int/lit8 v7, v9, 0x1

    iget-char v5, v1, Lru/yandex/am;->v:C

    aput-char v5, v2, v9

    move v9, v7

    :cond_2
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x4

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lru/yandex/am;->y:[C

    add-int/lit8 v5, v9, 0x1

    sget-object v7, Lru/yandex/am;->g:[C

    aget-char v10, v7, v13

    aput-char v10, v2, v9

    add-int/lit8 v9, v5, 0x1

    aget-char v10, v7, v14

    aput-char v10, v2, v5

    iget v2, v4, Lru/yandex/yandexmapkit/map/Tile;->i:I

    sub-int/2addr v2, v15

    iget v5, v4, Lru/yandex/yandexmapkit/map/Tile;->j:I

    sub-int v5, v5, v16

    shl-int/lit8 v10, v2, 0x8

    or-int/2addr v2, v10

    const v10, 0xff00ff

    and-int/2addr v2, v10

    shl-int/lit8 v11, v2, 0x4

    or-int/2addr v2, v11

    const v11, 0xf0f0f0f

    and-int/2addr v2, v11

    shl-int/lit8 v12, v2, 0x2

    or-int/2addr v2, v12

    const v12, 0x33333333

    and-int/2addr v2, v12

    shl-int/lit8 v13, v2, 0x1

    or-int/2addr v2, v13

    const v13, 0x55555555

    and-int/2addr v2, v13

    shl-int/lit8 v14, v5, 0x8

    or-int/2addr v5, v14

    and-int/2addr v5, v10

    shl-int/lit8 v10, v5, 0x4

    or-int/2addr v5, v10

    and-int/2addr v5, v11

    shl-int/lit8 v10, v5, 0x2

    or-int/2addr v5, v10

    and-int/2addr v5, v12

    shl-int/lit8 v10, v5, 0x1

    or-int/2addr v5, v10

    and-int/2addr v5, v13

    shl-int/2addr v5, v8

    or-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0x6

    iget-object v5, v1, Lru/yandex/am;->y:[C

    add-int/lit8 v6, v9, 0x1

    iget v8, v4, Lru/yandex/yandexmapkit/map/Tile;->type:I

    const/16 v10, 0xf

    and-int/2addr v8, v10

    aget-char v7, v7, v8

    aput-char v7, v5, v9

    iget-object v5, v1, Lru/yandex/am;->y:[C

    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lru/yandex/yandexmapkit/map/Tile;->q:Ljava/lang/String;

    iput v2, v4, Lru/yandex/yandexmapkit/map/Tile;->o:I

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_a

    move v3, v2

    :goto_3
    if-lez v3, :cond_9

    add-int/lit8 v4, v3, -0x1

    aget-object v5, v0, v4

    iget-object v5, v5, Lru/yandex/yandexmapkit/map/Tile;->q:Ljava/lang/String;

    aget-object v7, v0, v3

    iget-object v7, v7, Lru/yandex/yandexmapkit/map/Tile;->q:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eq v9, v10, :cond_5

    :goto_4
    const/4 v5, 0x0

    goto :goto_6

    :cond_5
    sget v10, Lru/yandex/am;->A:I

    add-int/lit8 v9, v9, -0x1

    :goto_5
    if-le v9, v10, :cond_7

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v11, v12, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    :cond_7
    const/4 v5, 0x1

    :goto_6
    if-eqz v5, :cond_8

    aget-object v5, v0, v4

    iget v5, v5, Lru/yandex/yandexmapkit/map/Tile;->o:I

    aget-object v7, v0, v3

    iget v7, v7, Lru/yandex/yandexmapkit/map/Tile;->o:I

    if-le v5, v7, :cond_9

    goto :goto_7

    :cond_8
    aget-object v5, v0, v4

    iget-object v5, v5, Lru/yandex/yandexmapkit/map/Tile;->q:Ljava/lang/String;

    aget-object v7, v0, v3

    iget-object v7, v7, Lru/yandex/yandexmapkit/map/Tile;->q:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_9

    :goto_7
    aget-object v5, v0, v3

    aget-object v7, v0, v4

    aput-object v7, v0, v3

    aput-object v5, v0, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_8
    array-length v4, v0

    if-ge v7, v4, :cond_19

    aget-object v4, v0, v7

    iget-object v4, v4, Lru/yandex/yandexmapkit/map/Tile;->q:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    :try_start_0
    new-instance v3, Ljava/io/File;

    aget-object v5, v0, v7

    iget-object v5, v5, Lru/yandex/yandexmapkit/map/Tile;->q:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_b

    :catch_0
    :goto_9
    const/4 v2, 0x0

    const/16 v17, 0x4

    const/16 v18, 0xf

    goto/16 :goto_12

    :cond_b
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v9, "r"

    invoke-direct {v5, v3, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v1, Lru/yandex/am;->x:[B

    const/16 v9, 0xa

    const/4 v10, 0x0

    invoke-virtual {v5, v3, v10, v9}, Ljava/io/RandomAccessFile;->readFully([BII)V

    iget-object v3, v1, Lru/yandex/am;->x:[B

    invoke-static {v3, v10}, Lru/yandex/yandexmapkit/utils/Utils;->a([BI)I

    move-result v3

    iget-object v10, v1, Lru/yandex/am;->x:[B

    const/4 v11, 0x4

    invoke-static {v10, v11}, Lru/yandex/yandexmapkit/utils/Utils;->b([BI)I

    move-result v10

    sget v11, Lru/yandex/am;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v3, v11, :cond_c

    :try_start_2
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    :cond_c
    if-eq v10, v8, :cond_d

    :try_start_3
    sget v3, Lru/yandex/am;->q:I

    if-ge v10, v3, :cond_d

    invoke-virtual {v1, v10, v8}, Lru/yandex/am;->a(IZ)V

    :cond_d
    iget-object v3, v1, Lru/yandex/am;->x:[B

    invoke-static {v3, v6}, Lru/yandex/yandexmapkit/utils/Utils;->a([BI)I

    move-result v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_a
    array-length v12, v0

    if-ge v10, v12, :cond_10

    aget-object v12, v0, v10

    iget-object v12, v12, Lru/yandex/yandexmapkit/map/Tile;->q:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_f

    aget-object v12, v0, v10

    invoke-virtual {v12}, Lru/yandex/yandexmapkit/map/Tile;->e()[B

    move-result-object v12

    if-nez v12, :cond_f

    iget-object v12, v1, Lru/yandex/am;->w:[I

    aput v10, v12, v11

    add-int/lit8 v11, v11, 0x1

    array-length v13, v12

    if-lt v11, v13, :cond_e

    array-length v13, v12

    shl-int/2addr v13, v8

    new-array v13, v13, [I

    array-length v14, v12

    const/4 v15, 0x0

    invoke-static {v12, v15, v13, v15, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v13, v1, Lru/yandex/am;->w:[I

    :cond_e
    aget-object v12, v0, v10

    iget v12, v12, Lru/yandex/yandexmapkit/map/Tile;->o:I

    add-int/2addr v12, v3

    int-to-long v12, v12

    invoke-virtual {v5, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v12, v1, Lru/yandex/am;->x:[B

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13, v6}, Ljava/io/RandomAccessFile;->readFully([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v12, v1, Lru/yandex/am;->x:[B

    invoke-static {v12, v13}, Lru/yandex/yandexmapkit/utils/Utils;->a([BI)I

    move-result v12

    iget-object v13, v1, Lru/yandex/am;->x:[B

    const/4 v14, 0x4

    invoke-static {v13, v14}, Lru/yandex/yandexmapkit/utils/Utils;->b([BI)I

    move-result v13

    aget-object v14, v0, v10

    iput v12, v14, Lru/yandex/yandexmapkit/map/Tile;->n:I

    aget-object v12, v0, v10

    iput v13, v12, Lru/yandex/yandexmapkit/map/Tile;->p:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_b

    :catch_1
    :try_start_6
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    return-object v0

    :cond_f
    :goto_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_10
    const/4 v3, 0x0

    :goto_c
    if-ge v3, v11, :cond_12

    move v10, v3

    :goto_d
    if-lez v10, :cond_11

    :try_start_7
    iget-object v12, v1, Lru/yandex/am;->w:[I

    add-int/lit8 v13, v10, -0x1

    aget v12, v12, v13

    aget-object v12, v0, v12

    iget v12, v12, Lru/yandex/yandexmapkit/map/Tile;->n:I

    iget-object v14, v1, Lru/yandex/am;->w:[I

    aget v14, v14, v10

    aget-object v14, v0, v14

    iget v14, v14, Lru/yandex/yandexmapkit/map/Tile;->n:I

    if-le v12, v14, :cond_11

    iget-object v12, v1, Lru/yandex/am;->w:[I

    aget v14, v12, v10

    aget v15, v12, v13

    aput v15, v12, v10

    aput v14, v12, v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    add-int/lit8 v10, v10, -0x1

    goto :goto_d

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_12
    const/4 v3, 0x0

    :goto_e
    if-ge v3, v11, :cond_16

    :try_start_8
    iget-object v10, v1, Lru/yandex/am;->w:[I

    aget v10, v10, v3

    aget-object v10, v0, v10
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget v12, v10, Lru/yandex/yandexmapkit/map/Tile;->n:I

    if-lez v12, :cond_15

    iget v12, v10, Lru/yandex/yandexmapkit/map/Tile;->n:I

    int-to-long v12, v12

    invoke-virtual {v5, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/16 v12, 0x26

    :try_start_a
    iget v13, v10, Lru/yandex/yandexmapkit/map/Tile;->p:I

    add-int/2addr v13, v12

    new-array v13, v13, [B
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_f

    :catch_3
    :try_start_b
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const-wide/16 v13, 0xfa

    :try_start_c
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catch_4
    :try_start_d
    iget v13, v10, Lru/yandex/yandexmapkit/map/Tile;->p:I

    add-int/2addr v13, v12

    new-array v13, v13, [B

    :goto_f
    iget v14, v10, Lru/yandex/yandexmapkit/map/Tile;->p:I

    sget v15, Lru/yandex/yandexmapkit/map/Tile;->a:I

    const/4 v2, 0x0

    invoke-static {v15, v13, v2}, Lru/yandex/yandexmapkit/utils/Utils;->a(I[BI)V

    const/4 v15, 0x4

    invoke-static {v8, v13, v15}, Lru/yandex/yandexmapkit/utils/Utils;->b(I[BI)V

    invoke-static {v8, v13, v6}, Lru/yandex/yandexmapkit/utils/Utils;->b(I[BI)V

    const/16 v15, 0x10

    new-array v12, v15, [B

    aput-byte v2, v12, v2

    aput-byte v2, v12, v8

    const/16 v19, 0x2

    aput-byte v2, v12, v19

    const/16 v19, 0x3

    aput-byte v2, v12, v19

    const/16 v17, 0x4

    aput-byte v2, v12, v17

    const/16 v19, 0x5

    aput-byte v2, v12, v19

    aput-byte v2, v12, v6

    const/16 v19, 0x7

    aput-byte v2, v12, v19

    const/16 v6, 0x8

    aput-byte v2, v12, v6

    const/16 v20, 0x9

    aput-byte v2, v12, v20

    aput-byte v2, v12, v9

    const/16 v20, 0xb

    aput-byte v2, v12, v20

    const/16 v20, 0xc

    aput-byte v2, v12, v20

    const/16 v20, 0xd

    aput-byte v2, v12, v20

    const/16 v20, 0xe

    aput-byte v2, v12, v20

    const/16 v18, 0xf

    aput-byte v2, v12, v18

    invoke-static {v12, v2, v13, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v6, Lru/yandex/am;->q:I

    const/16 v12, 0x18

    invoke-static {v6, v13, v12}, Lru/yandex/yandexmapkit/utils/Utils;->b(I[BI)V

    const/16 v6, 0x1a

    invoke-static {v2, v13, v6}, Lru/yandex/yandexmapkit/utils/Utils;->a(I[BI)V

    const/16 v6, 0x1e

    invoke-static {v8, v13, v6}, Lru/yandex/yandexmapkit/utils/Utils;->a(I[BI)V

    const/16 v6, 0x22

    invoke-static {v14, v13, v6}, Lru/yandex/yandexmapkit/utils/Utils;->a(I[BI)V

    array-length v6, v13

    const/16 v12, 0x26

    sub-int/2addr v6, v12

    invoke-virtual {v5, v13, v12, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v6

    :goto_10
    add-int/lit8 v12, v6, 0x26

    array-length v14, v13

    if-ge v12, v14, :cond_14

    array-length v14, v13

    sub-int/2addr v14, v6

    const/16 v15, 0x26

    sub-int/2addr v14, v15

    invoke-virtual {v5, v13, v12, v14}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const/4 v14, -0x1

    if-eq v12, v14, :cond_13

    add-int/2addr v6, v12

    goto :goto_10

    :cond_13
    :try_start_e
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    :catch_5
    return-object v0

    :cond_14
    :try_start_f
    invoke-virtual {v10, v13}, Lru/yandex/yandexmapkit/map/Tile;->a([B)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_11

    :cond_15
    const/4 v2, 0x0

    const/16 v17, 0x4

    const/16 v18, 0xf

    goto :goto_11

    :catch_6
    const/4 v2, 0x0

    const/16 v17, 0x4

    const/16 v18, 0xf

    :try_start_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "j = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " tilesInCurrentFile.len = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, v1, Lru/yandex/am;->w:[I

    array-length v10, v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " tileRequests.len "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v10, v0

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :catch_7
    :try_start_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " tilesInCurrentFile[j] = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, v1, Lru/yandex/am;->w:[I

    aget v10, v10, v3

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :catch_8
    :goto_11
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x6

    goto/16 :goto_e

    :cond_16
    const/4 v2, 0x0

    const/16 v17, 0x4

    const/16 v18, 0xf

    :try_start_12
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    :catch_9
    :goto_12
    move-object v3, v4

    goto :goto_14

    :catchall_0
    move-exception v0

    move-object v2, v5

    goto :goto_13

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    :goto_13
    if-eqz v2, :cond_17

    :try_start_13
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a

    :catch_a
    :cond_17
    throw v0

    :cond_18
    const/4 v2, 0x0

    const/16 v17, 0x4

    const/16 v18, 0xf

    :goto_14
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x6

    goto/16 :goto_8

    :cond_19
    :goto_15
    return-object v0
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lru/yandex/am;->j:Ljava/lang/Thread;

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/yandex/am;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lru/yandex/am;->j:Ljava/lang/Thread;

    iget-object v1, p0, Lru/yandex/am;->j:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v1, p0, Lru/yandex/am;->j:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    return-void
.end method

.method private declared-synchronized h()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/yandex/am;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lru/yandex/am;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lru/yandex/am;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/yandex/yandexmapkit/map/Tile;

    invoke-direct {p0, v1}, Lru/yandex/am;->b(Lru/yandex/yandexmapkit/map/Tile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
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

.method private i()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/yandex/am;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "200"

    goto :goto_0

    :cond_0
    const-string v1, "100"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lru/yandex/am;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lru/yandex/am;->d()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lru/yandex/am;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lru/yandex/am;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lru/yandex/am;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lru/yandex/am;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Ljava/lang/Thread;
    .locals 4

    iget-object v0, p0, Lru/yandex/am;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lru/yandex/am;->j:Ljava/lang/Thread;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lru/yandex/am;->t:Z

    const/4 v3, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lru/yandex/am;->u:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lru/yandex/am;->c:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lru/yandex/am;->j:Ljava/lang/Thread;

    iput-boolean v3, p0, Lru/yandex/am;->b:Z

    :goto_1
    iget-boolean p1, p0, Lru/yandex/am;->u:Z

    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lru/yandex/am;->u:Z

    :cond_2
    iget-object p1, p0, Lru/yandex/am;->i:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public a(IZ)V
    .locals 2

    sput p1, Lru/yandex/am;->q:I

    sget-object v0, Lru/yandex/am;->e:[B

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Lru/yandex/yandexmapkit/utils/Utils;->b(I[BI)V

    iget-boolean p1, p0, Lru/yandex/am;->r:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lru/yandex/am;->r:Z

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/am;->D:Landroid/content/Context;

    invoke-virtual {p0}, Lru/yandex/am;->c()V

    return-void
.end method

.method public a(Lru/yandex/ay;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/am;->E:Lru/yandex/ay;

    return-void
.end method

.method public a(Lru/yandex/yandexmapkit/map/Tile;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/Tile;->i()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lru/yandex/yandexmapkit/map/Tile;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lru/yandex/am;->F:Lru/yandex/ah;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/Tile;->i()J

    move-result-wide v1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/Tile;->e()[B

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lru/yandex/ah;->a(J[B)V

    return-void
.end method

.method public a(Lru/yandex/yandexmapkit/map/Tile;Lru/yandex/ay;)V
    .locals 3

    invoke-static {}, Lru/yandex/ch;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lru/yandex/ay;->e()Lru/yandex/yandexmapkit/MapController;

    move-result-object p2

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/MapController;->getApiKey()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/Tile;->e()[B

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/Tile;->e()[B

    move-result-object p2

    array-length p2, p2

    const/16 v0, 0x8

    if-lt p2, v0, :cond_4

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/Tile;->e()[B

    move-result-object p2

    array-length p2, p2

    const/high16 v0, 0x10000

    if-ge p2, v0, :cond_4

    iget p2, p1, Lru/yandex/yandexmapkit/map/Tile;->i:I

    iget v0, p1, Lru/yandex/yandexmapkit/map/Tile;->j:I

    iget v1, p1, Lru/yandex/yandexmapkit/map/Tile;->zoom:I

    if-ltz p2, :cond_1

    if-ltz v0, :cond_1

    if-ltz v1, :cond_1

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    shl-int v1, v2, v1

    if-ge p2, v1, :cond_1

    if-ge v0, v1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lru/yandex/am;->d:Z

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/Tile;->g()Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    :goto_1
    if-nez p2, :cond_3

    iget-boolean p2, p1, Lru/yandex/yandexmapkit/map/Tile;->e:Z

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object p2, p0, Lru/yandex/am;->h:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    iget-object v0, p0, Lru/yandex/am;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0}, Lru/yandex/am;->g()V

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p2

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method public a([Lru/yandex/yandexmapkit/map/Tile;)V
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lru/yandex/am;->F:Lru/yandex/ah;

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/map/Tile;->i()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lru/yandex/ah;->a(J)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lru/yandex/yandexmapkit/map/Tile;->a([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()C
    .locals 1

    iget-char v0, p0, Lru/yandex/am;->v:C

    return v0
.end method

.method public b(Lru/yandex/yandexmapkit/map/Tile;Lru/yandex/ay;)V
    .locals 8

    iget-boolean v0, p0, Lru/yandex/am;->b:Z

    if-nez v0, :cond_3

    invoke-static {}, Lru/yandex/ch;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lru/yandex/ay;->e()Lru/yandex/yandexmapkit/MapController;

    move-result-object p2

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/MapController;->getApiKey()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lru/yandex/am;->h:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget v0, p1, Lru/yandex/yandexmapkit/map/Tile;->i:I

    iget v1, p1, Lru/yandex/yandexmapkit/map/Tile;->j:I

    iget v2, p1, Lru/yandex/yandexmapkit/map/Tile;->zoom:I

    iget v3, p1, Lru/yandex/yandexmapkit/map/Tile;->type:I

    iget-object v4, p0, Lru/yandex/am;->l:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    iget-object v6, p0, Lru/yandex/am;->l:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lru/yandex/yandexmapkit/map/Tile;

    iget v7, v6, Lru/yandex/yandexmapkit/map/Tile;->i:I

    if-ne v7, v0, :cond_1

    iget v7, v6, Lru/yandex/yandexmapkit/map/Tile;->j:I

    if-ne v7, v1, :cond_1

    iget v7, v6, Lru/yandex/yandexmapkit/map/Tile;->zoom:I

    if-ne v7, v2, :cond_1

    iget v6, v6, Lru/yandex/yandexmapkit/map/Tile;->type:I

    if-ne v6, v3, :cond_1

    monitor-exit p2

    return-void

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lru/yandex/am;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lru/yandex/am;->g()V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lru/yandex/am;->b(Lru/yandex/yandexmapkit/map/Tile;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-boolean v0, p0, Lru/yandex/am;->G:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lru/yandex/am;->G:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lru/yandex/am;->a(Z)Ljava/lang/Thread;

    invoke-virtual {p0}, Lru/yandex/am;->c()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/am;->d:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lru/yandex/am;->b:Z

    iput-boolean v1, p0, Lru/yandex/am;->n:Z

    iput-boolean v1, p0, Lru/yandex/am;->m:Z

    iget-object v2, p0, Lru/yandex/am;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lru/yandex/am;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x18

    if-ge v2, v3, :cond_1

    const-wide/16 v3, 0x4

    shl-int/lit8 v5, v2, 0x1

    shl-long/2addr v3, v5

    const-wide/16 v5, 0x1

    const/4 v7, 0x0

    :goto_1
    cmp-long v8, v5, v3

    if-gez v8, :cond_0

    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0x8

    shl-long/2addr v5, v8

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lru/yandex/am;->p:[I

    aput v7, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lru/yandex/am;->c:Z

    iput-boolean v1, p0, Lru/yandex/am;->r:Z

    sget v1, Lru/yandex/am;->a:I

    sget v2, Lru/yandex/am;->q:I

    if-le v1, v2, :cond_2

    invoke-virtual {p0, v1, v0}, Lru/yandex/am;->a(IZ)V

    :cond_2
    return-void
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/yandex/am;->D:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/yandex/am;->o:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lru/yandex/am;->i:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lru/yandex/am;->m:Z

    iput-boolean v1, p0, Lru/yandex/am;->n:Z

    iget-object v1, p0, Lru/yandex/am;->i:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lru/yandex/am;->i:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lru/yandex/am;->n:Z

    iget-object v1, p0, Lru/yandex/am;->i:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public run()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lru/yandex/am;->d()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lru/yandex/am;->z:[[C

    array-length v5, v4

    if-ge v3, v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lru/yandex/am;->o:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "cache"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-char v6, p0, Lru/yandex/am;->v:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-char v6, p0, Lru/yandex/am;->v:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    aget-object v3, v4, v2

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    sput v3, Lru/yandex/am;->A:I

    iput-boolean v2, p0, Lru/yandex/am;->m:Z

    iput-boolean v1, p0, Lru/yandex/am;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :cond_1
    :goto_1
    iget-object v5, p0, Lru/yandex/am;->j:Ljava/lang/Thread;

    if-eqz v5, :cond_13

    iget-boolean v5, p0, Lru/yandex/am;->b:Z

    if-nez v5, :cond_13

    iget-object v5, p0, Lru/yandex/am;->h:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-object v6, p0, Lru/yandex/am;->l:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lru/yandex/am;->k:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    const-wide/16 v8, 0x3a98

    cmp-long v10, v6, v8

    if-lez v10, :cond_2

    :goto_2
    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    iget-object v6, p0, Lru/yandex/am;->k:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0xa

    if-lt v6, v7, :cond_2

    goto :goto_2

    :goto_3
    if-nez v6, :cond_5

    iget-boolean v6, p0, Lru/yandex/am;->m:Z

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move-object v6, v0

    goto :goto_5

    :cond_5
    :goto_4
    iput-boolean v2, p0, Lru/yandex/am;->m:Z

    iget-object v6, p0, Lru/yandex/am;->k:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lru/yandex/yandexmapkit/map/Tile;

    iget-object v7, p0, Lru/yandex/am;->k:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v7, p0, Lru/yandex/am;->k:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :goto_5
    iget-boolean v7, p0, Lru/yandex/am;->c:Z

    if-nez v7, :cond_6

    iget-object v7, p0, Lru/yandex/am;->l:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    new-array v7, v7, [Lru/yandex/yandexmapkit/map/Tile;

    iget-object v8, p0, Lru/yandex/am;->l:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v8, p0, Lru/yandex/am;->l:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto :goto_6

    :cond_6
    move-object v7, v0

    :goto_6
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-boolean v5, p0, Lru/yandex/am;->C:Z

    if-nez v5, :cond_8

    if-eqz v6, :cond_8

    array-length v5, v6

    if-lez v5, :cond_8

    const/4 v3, 0x0

    :goto_7
    :try_start_2
    array-length v4, v6

    if-ge v3, v4, :cond_7

    aget-object v4, v6, v3

    invoke-virtual {p0, v4}, Lru/yandex/am;->a(Lru/yandex/yandexmapkit/map/Tile;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :catch_0
    iput-boolean v2, p0, Lru/yandex/am;->d:Z

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :cond_8
    iget-boolean v5, p0, Lru/yandex/am;->c:Z

    if-nez v5, :cond_13

    if-eqz v7, :cond_11

    :try_start_3
    invoke-virtual {p0, v7}, Lru/yandex/am;->a([Lru/yandex/yandexmapkit/map/Tile;)V

    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v7

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_8
    array-length v8, v7

    if-ge v6, v8, :cond_e

    aget-object v8, v7, v6

    invoke-virtual {v8}, Lru/yandex/yandexmapkit/map/Tile;->e()[B

    move-result-object v8

    if-eqz v8, :cond_a

    aget-object v8, v7, v6

    invoke-virtual {v8}, Lru/yandex/yandexmapkit/map/Tile;->e()[B

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_9

    goto :goto_9

    :cond_9
    aget-object v8, v7, v6

    iput-boolean v2, v8, Lru/yandex/yandexmapkit/map/Tile;->u:Z

    aget-object v8, v7, v6

    aget-object v9, v7, v6

    invoke-virtual {v9}, Lru/yandex/yandexmapkit/map/Tile;->e()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lru/yandex/yandexmapkit/map/Tile;->a([B)V

    goto :goto_b

    :cond_a
    :goto_9
    aget-object v8, v7, v6

    instance-of v8, v8, Lru/yandex/bn;

    if-nez v8, :cond_d

    aget-object v8, v7, v6

    iput-boolean v1, v8, Lru/yandex/yandexmapkit/map/Tile;->u:Z

    aget-object v8, v7, v6

    iget v8, v8, Lru/yandex/yandexmapkit/map/Tile;->i:I

    if-ltz v8, :cond_c

    aget-object v8, v7, v6

    iget v8, v8, Lru/yandex/yandexmapkit/map/Tile;->j:I

    if-gez v8, :cond_b

    goto :goto_a

    :cond_b
    aget-object v8, v7, v6

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_c
    :goto_a
    aget-object v8, v7, v6

    sget-object v9, Lru/yandex/yandexmapkit/map/TiledSurface;->c:[B

    invoke-virtual {v8, v9}, Lru/yandex/yandexmapkit/map/Tile;->a([B)V

    :cond_d
    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_f

    new-array v6, v2, [Lru/yandex/yandexmapkit/map/Tile;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lru/yandex/yandexmapkit/map/Tile;

    invoke-direct {p0, v5}, Lru/yandex/am;->b([Lru/yandex/yandexmapkit/map/Tile;)[Lru/yandex/yandexmapkit/map/Tile;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_c

    :catch_1
    iput-boolean v2, p0, Lru/yandex/am;->d:Z

    :catch_2
    :cond_f
    :goto_c
    array-length v5, v7

    sub-int/2addr v5, v1

    :goto_d
    if-ltz v5, :cond_10

    aget-object v6, v7, v5

    invoke-direct {p0, v6}, Lru/yandex/am;->b(Lru/yandex/yandexmapkit/map/Tile;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_d

    :cond_10
    iget-object v5, p0, Lru/yandex/am;->E:Lru/yandex/ay;

    invoke-virtual {v5}, Lru/yandex/ay;->e()Lru/yandex/yandexmapkit/MapController;

    move-result-object v5

    invoke-virtual {v5}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    :cond_11
    iget-boolean v5, p0, Lru/yandex/am;->b:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lru/yandex/am;->c:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lru/yandex/am;->i:Ljava/lang/Object;

    monitor-enter v5

    :try_start_4
    iget-boolean v6, p0, Lru/yandex/am;->n:Z

    if-nez v6, :cond_12

    iget-boolean v6, p0, Lru/yandex/am;->t:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v6, :cond_12

    :try_start_5
    iget-object v6, p0, Lru/yandex/am;->i:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_e

    :cond_12
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->yield()V

    :catch_3
    :goto_e
    iput-boolean v2, p0, Lru/yandex/am;->n:Z

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_13
    iget-object v3, p0, Lru/yandex/am;->k:Ljava/util/ArrayList;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_14
    iput-object v0, p0, Lru/yandex/am;->j:Ljava/lang/Thread;

    iput-boolean v1, p0, Lru/yandex/am;->b:Z

    iput-boolean v2, p0, Lru/yandex/am;->c:Z

    :goto_f
    invoke-direct {p0}, Lru/yandex/am;->h()V

    return-void

    :catchall_2
    nop

    iget-object v2, p0, Lru/yandex/am;->k:Ljava/util/ArrayList;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_15
    iput-object v0, p0, Lru/yandex/am;->j:Ljava/lang/Thread;

    iput-object v0, p0, Lru/yandex/am;->D:Landroid/content/Context;

    iput-boolean v1, p0, Lru/yandex/am;->b:Z

    goto :goto_f
.end method
