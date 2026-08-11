.class public Lru/yandex/bs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final a:[Ljava/lang/String;

.field static final b:[Ljava/lang/String;

.field static final c:[Ljava/lang/String;

.field static final d:[Ljava/lang/String;

.field private static final e:[B


# instance fields
.field private volatile f:Ljava/util/concurrent/ConcurrentHashMap;

.field private final g:Lru/yandex/yandexmapkit/MapController;

.field private h:Ljava/lang/Thread;

.field private volatile i:Ljava/util/ArrayList;

.field private j:Z

.field private k:I

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "1"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lru/yandex/bs;->e:[B

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "uuid"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "protocol_ver"

    aput-object v5, v1, v4

    const/4 v6, 0x2

    const-string v7, "packetid"

    aput-object v7, v1, v6

    const/4 v8, 0x3

    const-string v9, "tiles"

    aput-object v9, v1, v8

    const/4 v10, 0x4

    const-string v11, "gzip"

    aput-object v11, v1, v10

    const/4 v12, 0x5

    const-string v13, "api_key"

    aput-object v13, v1, v12

    sput-object v1, Lru/yandex/bs;->a:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    const-string v14, "text/plain"

    aput-object v14, v1, v2

    aput-object v14, v1, v4

    aput-object v14, v1, v6

    const-string v15, "application/gzip"

    aput-object v15, v1, v8

    aput-object v14, v1, v10

    aput-object v14, v1, v12

    sput-object v1, Lru/yandex/bs;->b:[Ljava/lang/String;

    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    aput-object v3, v0, v2

    aput-object v5, v0, v4

    aput-object v7, v0, v6

    const-string v3, "scalefactor"

    aput-object v3, v0, v8

    aput-object v9, v0, v10

    aput-object v11, v0, v12

    const/4 v3, 0x6

    aput-object v13, v0, v3

    sput-object v0, Lru/yandex/bs;->c:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    aput-object v14, v0, v2

    aput-object v14, v0, v4

    aput-object v14, v0, v6

    aput-object v14, v0, v8

    aput-object v15, v0, v10

    aput-object v14, v0, v12

    aput-object v14, v0, v3

    sput-object v0, Lru/yandex/bs;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lru/yandex/yandexmapkit/MapController;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/yandex/bs;->g:Lru/yandex/yandexmapkit/MapController;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v0, 0x28

    invoke-direct {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lru/yandex/bs;->f:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x32

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p1, 0x0

    iput p1, p0, Lru/yandex/bs;->k:I

    iput-object p2, p0, Lru/yandex/bs;->l:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/ArrayList;)Lru/yandex/yandexmapkit/map/Tile;
    .locals 12

    iget-object v0, p0, Lru/yandex/bs;->f:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lru/yandex/bs;->g:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/MapController;->getTileStorage()Lru/yandex/ay;

    move-result-object v1

    const-wide v2, 0x7fffffffffffffffL

    iget-object v4, p0, Lru/yandex/bs;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    iget-object v4, p0, Lru/yandex/bs;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    iget-object v7, p0, Lru/yandex/bs;->g:Lru/yandex/yandexmapkit/MapController;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lru/yandex/yandexmapkit/map/Tile;

    invoke-virtual {v7, v8}, Lru/yandex/yandexmapkit/MapController;->isTileVisible(Lru/yandex/yandexmapkit/map/Tile;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lru/yandex/bs;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lru/yandex/yandexmapkit/map/Tile;

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lru/yandex/ay;->a(Lru/yandex/yandexmapkit/map/Tile;Z)V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lru/yandex/yandexmapkit/map/Tile;

    iget v7, v6, Lru/yandex/yandexmapkit/map/Tile;->zoom:I

    rsub-int/lit8 v7, v7, 0x17

    const/16 v8, 0x40

    shl-int/2addr v8, v7

    iget v9, v6, Lru/yandex/yandexmapkit/map/Tile;->i:I

    add-int/lit8 v7, v7, 0x7

    shl-int/2addr v9, v7

    iget v10, v6, Lru/yandex/yandexmapkit/map/Tile;->j:I

    shl-int v7, v10, v7

    add-int/2addr v9, v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lru/yandex/bs;->g:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v8}, Lru/yandex/yandexmapkit/MapController;->getMapModel()Lru/yandex/yandexmapkit/MapModel;

    move-result-object v8

    invoke-virtual {v8}, Lru/yandex/yandexmapkit/MapModel;->getX()I

    move-result v8

    sub-int/2addr v9, v8

    shr-int/lit8 v8, v9, 0xc

    int-to-long v8, v8

    iget-object v10, p0, Lru/yandex/bs;->g:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v10}, Lru/yandex/yandexmapkit/MapController;->getMapModel()Lru/yandex/yandexmapkit/MapModel;

    move-result-object v10

    invoke-virtual {v10}, Lru/yandex/yandexmapkit/MapModel;->getY()I

    move-result v10

    sub-int/2addr v7, v10

    shr-int/lit8 v7, v7, 0xc

    int-to-long v10, v7

    mul-long v8, v8, v8

    mul-long v10, v10, v10

    add-long/2addr v8, v10

    cmp-long v7, v8, v2

    if-gez v7, :cond_0

    move-object v5, v6

    move-wide v2, v8

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v5

    :catchall_0
    move-exception p1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lru/yandex/bs;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lru/yandex/bs;->n:I

    iput p1, p0, Lru/yandex/bs;->m:I

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lru/yandex/bs;->n:I

    sub-int/2addr p1, v0

    iput p1, p0, Lru/yandex/bs;->n:I

    :goto_0
    return-void

    :cond_2
    iget p1, p0, Lru/yandex/bs;->m:I

    add-int/lit8 p1, p1, 0x64

    iput p1, p0, Lru/yandex/bs;->m:I

    return-void

    :cond_3
    iget p1, p0, Lru/yandex/bs;->n:I

    add-int/2addr p1, v0

    iput p1, p0, Lru/yandex/bs;->n:I

    return-void
.end method

.method private a(Ljava/util/ArrayList;I[BII)V
    .locals 2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/yandex/yandexmapkit/map/Tile;

    iget-byte p2, p1, Lru/yandex/yandexmapkit/map/Tile;->l:B

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-boolean p2, p1, Lru/yandex/yandexmapkit/map/Tile;->s:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget p2, p1, Lru/yandex/yandexmapkit/map/Tile;->r:I

    add-int/2addr p2, v0

    iput p2, p1, Lru/yandex/yandexmapkit/map/Tile;->r:I

    iget p2, p1, Lru/yandex/yandexmapkit/map/Tile;->r:I

    const/4 p3, 0x4

    if-le p2, p3, :cond_7

    iget-object p2, p0, Lru/yandex/bs;->g:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/MapController;->getTileStorage()Lru/yandex/ay;

    move-result-object p2

    iput-byte v1, p1, Lru/yandex/yandexmapkit/map/Tile;->k:B

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lru/yandex/yandexmapkit/map/Tile;->a([B)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "reload count excess "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, p1, Lru/yandex/yandexmapkit/map/Tile;->i:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ","

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, p1, Lru/yandex/yandexmapkit/map/Tile;->j:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p2, p1, v1}, Lru/yandex/ay;->a(Lru/yandex/yandexmapkit/map/Tile;Z)V

    goto :goto_0

    :cond_1
    iput-byte v1, p1, Lru/yandex/yandexmapkit/map/Tile;->l:B

    :goto_0
    iget-object p2, p0, Lru/yandex/bs;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/Tile;->i()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lru/yandex/bs;->a(I)V

    return-void

    :cond_2
    iget-boolean p2, p1, Lru/yandex/yandexmapkit/map/Tile;->t:Z

    if-nez p2, :cond_5

    sget-object p2, Lru/yandex/yandexmapkit/map/TiledSurface;->c:[B

    if-eq p3, p2, :cond_3

    invoke-static {v1, p5}, Ljava/lang/Math;->max(II)I

    move-result p2

    new-array p2, p2, [B

    if-eqz p3, :cond_3

    invoke-static {p3, p4, p2, v1, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, p2

    :cond_3
    iget-boolean p2, p1, Lru/yandex/yandexmapkit/map/Tile;->e:Z

    if-eqz p2, :cond_4

    const/16 p2, 0x10

    iput-byte p2, p1, Lru/yandex/yandexmapkit/map/Tile;->k:B

    goto :goto_1

    :cond_4
    iput-byte v0, p1, Lru/yandex/yandexmapkit/map/Tile;->k:B

    :goto_1
    invoke-virtual {p1, p3}, Lru/yandex/yandexmapkit/map/Tile;->a([B)V

    :cond_5
    iget-object p2, p0, Lru/yandex/bs;->g:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/MapController;->getTileStorage()Lru/yandex/ay;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2, p1, v1}, Lru/yandex/ay;->a(Lru/yandex/yandexmapkit/map/Tile;Z)V

    goto :goto_2

    :cond_6
    const/4 p2, 0x3

    iput-byte p2, p1, Lru/yandex/yandexmapkit/map/Tile;->l:B

    :goto_2
    iget-object p2, p0, Lru/yandex/bs;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/Tile;->i()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lru/yandex/bs;->a(I)V

    :cond_7
    return-void
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static/range {p1 .. p1}, Lru/yandex/bs;->d(Ljava/util/ArrayList;)[B

    move-result-object v1

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {}, Lru/yandex/yandexmapkit/net/Downloader;->getUUIDBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lru/yandex/yandexmapkit/net/Downloader;->a([B[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lru/yandex/yandexmapkit/net/Downloader;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "/printer?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "protocol_ver="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lru/yandex/ch;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v7, Lru/yandex/bs;->l:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, "&api_key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v6, v7, Lru/yandex/bs;->l:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, v7, Lru/yandex/bs;->l:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    const-string v6, "&lang="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v9, v7, Lru/yandex/bs;->g:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v9}, Lru/yandex/yandexmapkit/MapController;->getContext()Landroid/content/Context;

    invoke-static {}, Lru/yandex/cm;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v6, Lru/yandex/bs;->a:[Ljava/lang/String;

    sget-object v9, Lru/yandex/bs;->b:[Ljava/lang/String;

    const/4 v10, 0x6

    new-array v10, v10, [[B

    invoke-static {}, Lru/yandex/yandexmapkit/net/Downloader;->getUUIDBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v11, 0x1

    aput-object v5, v10, v11

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v10, v5

    const/4 v13, 0x3

    aput-object v1, v10, v13

    sget-object v1, Lru/yandex/bs;->e:[B

    const/4 v2, 0x4

    aput-object v1, v10, v2

    const/4 v1, 0x5

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v10, v1

    invoke-static {v6, v9, v10}, Lru/yandex/yandexmapkit/net/Downloader;->a([Ljava/lang/String;[Ljava/lang/String;[[B)[B

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "url="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/16 v3, 0xbb8

    :try_start_1
    invoke-virtual {v14, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v14, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    if-eqz v1, :cond_1

    invoke-virtual {v14, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v3, "Content-Type"

    const-string v5, "multipart/form-data; boundary=edge_here"

    invoke-virtual {v14, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    array-length v6, v1

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v15, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v4, v3

    goto/16 :goto_15

    :catch_0
    move-object v4, v3

    goto/16 :goto_16

    :catch_1
    move-object v4, v3

    goto/16 :goto_1c

    :cond_1
    const/4 v15, 0x0

    :goto_1
    :try_start_3
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseCode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/16 v6, 0xc8

    const/16 v5, 0x198

    if-eq v1, v6, :cond_5

    if-ne v1, v5, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v8, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lru/yandex/yandexmapkit/map/Tile;

    iput-boolean v1, v4, Lru/yandex/yandexmapkit/map/Tile;->s:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    sget-object v1, Lru/yandex/yandexmapkit/map/TiledSurface;->c:[B

    :goto_4
    move-object v4, v1

    const/16 v16, 0x1

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    const/16 v16, 0x0

    :goto_5
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v5, 0x3e80

    invoke-direct {v3, v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    new-array v5, v8, [I

    new-array v1, v8, [S
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v16, :cond_8

    :try_start_5
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    const/16 v13, 0x4000

    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v13, v6, [B

    shl-int/lit8 v17, v8, 0x3

    add-int/lit8 v9, v17, 0x4

    invoke-static {v3, v13, v12, v9}, Lru/yandex/yandexmapkit/utils/Utils;->a(Ljava/io/InputStream;[BII)Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_6
    if-ge v9, v8, :cond_7

    shl-int/lit8 v17, v9, 0x3

    add-int/lit8 v11, v17, 0x4

    invoke-static {v13, v11}, Lru/yandex/yandexmapkit/utils/Utils;->b([BI)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v9

    add-int/lit8 v11, v11, 0x2

    invoke-static {v13, v11}, Lru/yandex/yandexmapkit/utils/Utils;->b([BI)I

    move-result v2

    aput v2, v5, v9

    aget v2, v5, v9

    if-le v2, v10, :cond_6

    aget v10, v5, v9

    :cond_6
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x4

    const/4 v11, 0x1

    goto :goto_6

    :cond_7
    if-le v10, v6, :cond_9

    new-array v2, v10, [B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v13, v2

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v17, v3

    goto/16 :goto_12

    :catch_2
    move-object/from16 v17, v3

    goto/16 :goto_13

    :catch_3
    move-object/from16 v17, v3

    goto/16 :goto_14

    :cond_8
    const/4 v13, 0x0

    :cond_9
    :goto_7
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_8
    if-ge v9, v8, :cond_14

    :try_start_6
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/yandex/yandexmapkit/map/Tile;

    iput-boolean v12, v2, Lru/yandex/yandexmapkit/map/Tile;->t:Z

    if-eqz v16, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "process no map "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Lru/yandex/yandexmapkit/map/TiledSurface;->c:[B

    if-ne v4, v6, :cond_a

    const/4 v6, 0x1

    goto :goto_9

    :cond_a
    const/4 v6, 0x0

    :goto_9
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v6, 0x0

    if-nez v4, :cond_b

    move-object/from16 v17, v1

    const/4 v11, 0x0

    goto :goto_a

    :cond_b
    array-length v2, v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v17, v1

    move v11, v2

    :goto_a
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v12, v3

    move v3, v9

    move-object/from16 v19, v4

    move-object/from16 v18, v5

    const/16 v0, 0x198

    move v5, v6

    move v6, v11

    :try_start_7
    invoke-direct/range {v1 .. v6}, Lru/yandex/bs;->a(Ljava/util/ArrayList;I[BII)V

    const/16 v11, 0xc8

    goto :goto_f

    :cond_c
    move-object/from16 v17, v1

    move-object v12, v3

    move-object/from16 v19, v4

    move-object/from16 v18, v5

    const/16 v0, 0x198

    aget v1, v18, v9

    const/4 v3, 0x0

    invoke-static {v12, v13, v3, v1}, Lru/yandex/yandexmapkit/utils/Utils;->a(Ljava/io/InputStream;[BII)Z

    move-result v1

    if-nez v1, :cond_d

    aput-short v0, v17, v9

    :cond_d
    aget-short v1, v17, v9

    const/16 v11, 0xc8

    if-eq v1, v11, :cond_11

    aget-short v1, v17, v9

    const/16 v3, 0x130

    if-eq v1, v3, :cond_10

    const/16 v3, 0x194

    if-eq v1, v3, :cond_f

    if-eq v1, v0, :cond_e

    const/16 v2, 0x1f4

    if-eq v1, v2, :cond_f

    goto :goto_b

    :cond_e
    const/4 v1, 0x1

    iput-boolean v1, v2, Lru/yandex/yandexmapkit/map/Tile;->s:Z

    goto :goto_b

    :cond_f
    const/4 v1, 0x1

    goto :goto_c

    :cond_10
    const/4 v1, 0x1

    iput-boolean v1, v2, Lru/yandex/yandexmapkit/map/Tile;->t:Z

    :cond_11
    :goto_b
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_12

    sget-object v2, Lru/yandex/yandexmapkit/map/TiledSurface;->c:[B

    move-object v4, v2

    goto :goto_d

    :cond_12
    move-object v4, v13

    :goto_d
    const/4 v5, 0x0

    if-eqz v1, :cond_13

    sget-object v1, Lru/yandex/yandexmapkit/map/TiledSurface;->c:[B

    array-length v1, v1

    goto :goto_e

    :cond_13
    aget v1, v18, v9

    :goto_e
    move v6, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v9

    invoke-direct/range {v1 .. v6}, Lru/yandex/bs;->a(Ljava/util/ArrayList;I[BII)V

    :goto_f
    add-int/lit8 v10, v10, 0x1

    const/4 v1, 0x0

    iput v1, v7, Lru/yandex/bs;->k:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p1

    move-object v3, v12

    move-object/from16 v1, v17

    move-object/from16 v5, v18

    move-object/from16 v4, v19

    const/4 v12, 0x0

    goto/16 :goto_8

    :catchall_2
    move-exception v0

    goto :goto_11

    :cond_14
    move-object v12, v3

    if-eqz v15, :cond_15

    :try_start_8
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    :cond_15
    :try_start_9
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_10

    :catch_5
    nop

    :goto_10
    if-eqz v14, :cond_1c

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_21

    :catchall_3
    move-exception v0

    move-object v12, v3

    :goto_11
    move-object/from16 v17, v12

    :goto_12
    move-object v4, v15

    goto/16 :goto_22

    :catch_6
    move-object v12, v3

    :catch_7
    move-object/from16 v17, v12

    :goto_13
    move-object v4, v15

    goto :goto_17

    :catch_8
    move-object v12, v3

    :catch_9
    move-object/from16 v17, v12

    :goto_14
    move-object v4, v15

    goto :goto_1d

    :catchall_4
    move-exception v0

    move-object v4, v15

    goto :goto_15

    :catch_a
    move-object v4, v15

    goto :goto_16

    :catch_b
    move-object v4, v15

    goto :goto_1c

    :catchall_5
    move-exception v0

    const/4 v4, 0x0

    goto :goto_15

    :catch_c
    const/4 v4, 0x0

    goto :goto_16

    :catch_d
    const/4 v4, 0x0

    goto :goto_1c

    :catchall_6
    move-exception v0

    const/4 v4, 0x0

    const/4 v14, 0x0

    :goto_15
    const/16 v17, 0x0

    goto/16 :goto_22

    :catch_e
    const/4 v4, 0x0

    const/4 v14, 0x0

    :goto_16
    const/16 v17, 0x0

    :goto_17
    :try_start_a
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    const-wide/16 v0, 0x1f4

    :try_start_b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_f
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_18

    :catch_f
    nop

    :goto_18
    if-eqz v4, :cond_16

    :try_start_c
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_10

    goto :goto_19

    :catch_10
    nop

    :cond_16
    :goto_19
    if-eqz v17, :cond_17

    :try_start_d
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11

    goto :goto_1a

    :catch_11
    nop

    :cond_17
    :goto_1a
    if-eqz v14, :cond_1b

    :goto_1b
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_20

    :catchall_7
    move-exception v0

    goto :goto_22

    :catch_12
    const/4 v4, 0x0

    const/4 v14, 0x0

    :goto_1c
    const/16 v17, 0x0

    :goto_1d
    const-wide/16 v0, 0x1f4

    :try_start_e
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_13
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :catch_13
    :try_start_f
    iget v0, v7, Lru/yandex/bs;->k:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_18

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lru/yandex/bs;->k:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :cond_18
    if-eqz v4, :cond_19

    :try_start_10
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_14

    goto :goto_1e

    :catch_14
    nop

    :cond_19
    :goto_1e
    if-eqz v17, :cond_1a

    :try_start_11
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_15

    goto :goto_1f

    :catch_15
    nop

    :cond_1a
    :goto_1f
    if-eqz v14, :cond_1b

    goto :goto_1b

    :cond_1b
    :goto_20
    move v10, v8

    :cond_1c
    :goto_21
    if-ge v10, v8, :cond_1d

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/yandex/yandexmapkit/map/Tile;

    const/4 v9, 0x1

    iput-boolean v9, v1, Lru/yandex/yandexmapkit/map/Tile;->s:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v10

    invoke-direct/range {v1 .. v6}, Lru/yandex/bs;->a(Ljava/util/ArrayList;I[BII)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    :cond_1d
    return-void

    :goto_22
    if-eqz v4, :cond_1e

    :try_start_12
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_16

    goto :goto_23

    :catch_16
    nop

    :cond_1e
    :goto_23
    if-eqz v17, :cond_1f

    :try_start_13
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_17

    goto :goto_24

    :catch_17
    nop

    :cond_1f
    :goto_24
    if-eqz v14, :cond_20

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_20
    goto :goto_26

    :goto_25
    throw v0

    :goto_26
    goto :goto_25
.end method

.method private c(Ljava/util/ArrayList;)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static/range {p1 .. p1}, Lru/yandex/bs;->d(Ljava/util/ArrayList;)[B

    move-result-object v1

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {}, Lru/yandex/yandexmapkit/net/Downloader;->getUUIDBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lru/yandex/yandexmapkit/net/Downloader;->a([B[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lru/yandex/yandexmapkit/net/Downloader;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "/printer?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "scalefactor=2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "&protocol_ver="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lru/yandex/ch;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v7, Lru/yandex/bs;->l:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, "&api_key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v6, v7, Lru/yandex/bs;->l:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, v7, Lru/yandex/bs;->l:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    sget-object v6, Lru/yandex/bs;->c:[Ljava/lang/String;

    sget-object v9, Lru/yandex/bs;->d:[Ljava/lang/String;

    const/4 v10, 0x7

    new-array v10, v10, [[B

    invoke-static {}, Lru/yandex/yandexmapkit/net/Downloader;->getUUIDBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v10, v13

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v11, 0x2

    aput-object v2, v10, v11

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v11, 0x3

    aput-object v2, v10, v11

    const/4 v2, 0x4

    aput-object v1, v10, v2

    const/4 v1, 0x5

    sget-object v5, Lru/yandex/bs;->e:[B

    aput-object v5, v10, v1

    const/4 v1, 0x6

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v10, v1

    invoke-static {v6, v9, v10}, Lru/yandex/yandexmapkit/net/Downloader;->a([Ljava/lang/String;[Ljava/lang/String;[[B)[B

    move-result-object v1

    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "url="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/16 v3, 0xbb8

    :try_start_1
    invoke-virtual {v14, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v14, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    if-eqz v1, :cond_1

    invoke-virtual {v14, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v3, "Content-Type"

    const-string v5, "multipart/form-data; boundary=edge_here"

    invoke-virtual {v14, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    array-length v6, v1

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v15, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v4, v3

    goto/16 :goto_15

    :catch_0
    move-object v4, v3

    goto/16 :goto_16

    :catch_1
    move-object v4, v3

    goto/16 :goto_1c

    :cond_1
    const/4 v15, 0x0

    :goto_1
    :try_start_3
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseCode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/16 v6, 0xc8

    const/16 v5, 0x198

    if-eq v1, v6, :cond_5

    if-ne v1, v5, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v8, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lru/yandex/yandexmapkit/map/Tile;

    iput-boolean v1, v4, Lru/yandex/yandexmapkit/map/Tile;->s:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    sget-object v1, Lru/yandex/yandexmapkit/map/TiledSurface;->c:[B

    :goto_4
    move-object v4, v1

    const/16 v16, 0x1

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    const/16 v16, 0x0

    :goto_5
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v5, 0x3e80

    invoke-direct {v3, v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    new-array v5, v8, [I

    new-array v1, v8, [S
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v16, :cond_8

    :try_start_5
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    const/16 v11, 0x4000

    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v11, v6, [B

    mul-int/lit8 v17, v8, 0xa

    add-int/lit8 v9, v17, 0x4

    invoke-static {v3, v11, v12, v9}, Lru/yandex/yandexmapkit/utils/Utils;->a(Ljava/io/InputStream;[BII)Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_6
    if-ge v9, v8, :cond_7

    mul-int/lit8 v17, v9, 0xa

    add-int/lit8 v13, v17, 0x4

    invoke-static {v11, v13}, Lru/yandex/yandexmapkit/utils/Utils;->b([BI)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v9

    add-int/lit8 v13, v13, 0x2

    invoke-static {v11, v13}, Lru/yandex/yandexmapkit/utils/Utils;->a([BI)I

    move-result v2

    aput v2, v5, v9

    aget v2, v5, v9

    if-le v2, v10, :cond_6

    aget v10, v5, v9

    :cond_6
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x4

    const/4 v13, 0x1

    goto :goto_6

    :cond_7
    if-le v10, v6, :cond_9

    new-array v2, v10, [B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v11, v2

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v17, v3

    goto/16 :goto_12

    :catch_2
    move-object/from16 v17, v3

    goto/16 :goto_13

    :catch_3
    move-object/from16 v17, v3

    goto/16 :goto_14

    :cond_8
    const/4 v11, 0x0

    :cond_9
    :goto_7
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_8
    if-ge v9, v8, :cond_14

    :try_start_6
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/yandex/yandexmapkit/map/Tile;

    iput-boolean v12, v2, Lru/yandex/yandexmapkit/map/Tile;->t:Z

    if-eqz v16, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "process no map "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Lru/yandex/yandexmapkit/map/TiledSurface;->c:[B

    if-ne v4, v6, :cond_a

    const/4 v6, 0x1

    goto :goto_9

    :cond_a
    const/4 v6, 0x0

    :goto_9
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v6, 0x0

    if-nez v4, :cond_b

    move-object/from16 v17, v1

    const/4 v13, 0x0

    goto :goto_a

    :cond_b
    array-length v2, v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v17, v1

    move v13, v2

    :goto_a
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v12, v3

    move v3, v9

    move-object/from16 v19, v4

    move-object/from16 v18, v5

    const/16 v0, 0x198

    move v5, v6

    move v6, v13

    :try_start_7
    invoke-direct/range {v1 .. v6}, Lru/yandex/bs;->a(Ljava/util/ArrayList;I[BII)V

    const/16 v13, 0xc8

    goto :goto_f

    :cond_c
    move-object/from16 v17, v1

    move-object v12, v3

    move-object/from16 v19, v4

    move-object/from16 v18, v5

    const/16 v0, 0x198

    aget v1, v18, v9

    const/4 v3, 0x0

    invoke-static {v12, v11, v3, v1}, Lru/yandex/yandexmapkit/utils/Utils;->a(Ljava/io/InputStream;[BII)Z

    move-result v1

    if-nez v1, :cond_d

    aput-short v0, v17, v9

    :cond_d
    aget-short v1, v17, v9

    const/16 v13, 0xc8

    if-eq v1, v13, :cond_11

    aget-short v1, v17, v9

    const/16 v3, 0x130

    if-eq v1, v3, :cond_10

    const/16 v3, 0x194

    if-eq v1, v3, :cond_f

    if-eq v1, v0, :cond_e

    const/16 v2, 0x1f4

    if-eq v1, v2, :cond_f

    goto :goto_b

    :cond_e
    const/4 v1, 0x1

    iput-boolean v1, v2, Lru/yandex/yandexmapkit/map/Tile;->s:Z

    goto :goto_b

    :cond_f
    const/4 v1, 0x1

    goto :goto_c

    :cond_10
    const/4 v1, 0x1

    iput-boolean v1, v2, Lru/yandex/yandexmapkit/map/Tile;->t:Z

    :cond_11
    :goto_b
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_12

    sget-object v2, Lru/yandex/yandexmapkit/map/TiledSurface;->c:[B

    move-object v4, v2

    goto :goto_d

    :cond_12
    move-object v4, v11

    :goto_d
    const/4 v5, 0x0

    if-eqz v1, :cond_13

    sget-object v1, Lru/yandex/yandexmapkit/map/TiledSurface;->c:[B

    array-length v1, v1

    goto :goto_e

    :cond_13
    aget v1, v18, v9

    :goto_e
    move v6, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v9

    invoke-direct/range {v1 .. v6}, Lru/yandex/bs;->a(Ljava/util/ArrayList;I[BII)V

    :goto_f
    add-int/lit8 v10, v10, 0x1

    const/4 v1, 0x0

    iput v1, v7, Lru/yandex/bs;->k:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p1

    move-object v3, v12

    move-object/from16 v1, v17

    move-object/from16 v5, v18

    move-object/from16 v4, v19

    const/4 v12, 0x0

    goto/16 :goto_8

    :catchall_2
    move-exception v0

    goto :goto_11

    :cond_14
    move-object v12, v3

    if-eqz v15, :cond_15

    :try_start_8
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    :cond_15
    :try_start_9
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_10

    :catch_5
    nop

    :goto_10
    if-eqz v14, :cond_1c

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_21

    :catchall_3
    move-exception v0

    move-object v12, v3

    :goto_11
    move-object/from16 v17, v12

    :goto_12
    move-object v4, v15

    goto/16 :goto_22

    :catch_6
    move-object v12, v3

    :catch_7
    move-object/from16 v17, v12

    :goto_13
    move-object v4, v15

    goto :goto_17

    :catch_8
    move-object v12, v3

    :catch_9
    move-object/from16 v17, v12

    :goto_14
    move-object v4, v15

    goto :goto_1d

    :catchall_4
    move-exception v0

    move-object v4, v15

    goto :goto_15

    :catch_a
    move-object v4, v15

    goto :goto_16

    :catch_b
    move-object v4, v15

    goto :goto_1c

    :catchall_5
    move-exception v0

    const/4 v4, 0x0

    goto :goto_15

    :catch_c
    const/4 v4, 0x0

    goto :goto_16

    :catch_d
    const/4 v4, 0x0

    goto :goto_1c

    :catchall_6
    move-exception v0

    const/4 v4, 0x0

    const/4 v14, 0x0

    :goto_15
    const/16 v17, 0x0

    goto/16 :goto_22

    :catch_e
    const/4 v4, 0x0

    const/4 v14, 0x0

    :goto_16
    const/16 v17, 0x0

    :goto_17
    :try_start_a
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    const-wide/16 v0, 0x1f4

    :try_start_b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_f
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_18

    :catch_f
    nop

    :goto_18
    if-eqz v4, :cond_16

    :try_start_c
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_10

    goto :goto_19

    :catch_10
    nop

    :cond_16
    :goto_19
    if-eqz v17, :cond_17

    :try_start_d
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11

    goto :goto_1a

    :catch_11
    nop

    :cond_17
    :goto_1a
    if-eqz v14, :cond_1b

    :goto_1b
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_20

    :catchall_7
    move-exception v0

    goto :goto_22

    :catch_12
    const/4 v4, 0x0

    const/4 v14, 0x0

    :goto_1c
    const/16 v17, 0x0

    :goto_1d
    const-wide/16 v0, 0x1f4

    :try_start_e
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_13
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :catch_13
    :try_start_f
    iget v0, v7, Lru/yandex/bs;->k:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_18

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lru/yandex/bs;->k:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :cond_18
    if-eqz v4, :cond_19

    :try_start_10
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_14

    goto :goto_1e

    :catch_14
    nop

    :cond_19
    :goto_1e
    if-eqz v17, :cond_1a

    :try_start_11
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_15

    goto :goto_1f

    :catch_15
    nop

    :cond_1a
    :goto_1f
    if-eqz v14, :cond_1b

    goto :goto_1b

    :cond_1b
    :goto_20
    move v10, v8

    :cond_1c
    :goto_21
    if-ge v10, v8, :cond_1d

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/yandex/yandexmapkit/map/Tile;

    const/4 v9, 0x1

    iput-boolean v9, v1, Lru/yandex/yandexmapkit/map/Tile;->s:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v10

    invoke-direct/range {v1 .. v6}, Lru/yandex/bs;->a(Ljava/util/ArrayList;I[BII)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    :cond_1d
    return-void

    :goto_22
    if-eqz v4, :cond_1e

    :try_start_12
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_16

    goto :goto_23

    :catch_16
    nop

    :cond_1e
    :goto_23
    if-eqz v17, :cond_1f

    :try_start_13
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_17

    goto :goto_24

    :catch_17
    nop

    :cond_1f
    :goto_24
    if-eqz v14, :cond_20

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_20
    goto :goto_26

    :goto_25
    throw v0

    :goto_26
    goto :goto_25
.end method

.method private static d(Ljava/util/ArrayList;)[B
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "<?xml version=\"1.0\"?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<tiles>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/yandex/yandexmapkit/map/Tile;

    const-string v5, "<tile x=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lru/yandex/yandexmapkit/map/Tile;->i:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\" y=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lru/yandex/yandexmapkit/map/Tile;->j:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\" zoom=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lru/yandex/yandexmapkit/map/Tile;->zoom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\" layer=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lru/yandex/yandexmapkit/map/Tile;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" size=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lru/yandex/yandexmapkit/map/Tile;->getTileVersion()I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, "\" ver=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lru/yandex/yandexmapkit/map/Tile;->getTileVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\" checksum=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lru/yandex/yandexmapkit/map/Tile;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v4, "\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "</tiles>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    array-length v3, p0

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lru/yandex/bs;->h:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lru/yandex/bs;->h:Ljava/lang/Thread;

    const-string v1, "ymm-downloader-tile"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lru/yandex/bs;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private f()Z
    .locals 2

    iget-object v0, p0, Lru/yandex/bs;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lru/yandex/yandexmapkit/net/Downloader;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/bs;->j:Z

    invoke-direct {p0}, Lru/yandex/bs;->e()V

    return-void
.end method

.method public a(Lru/yandex/yandexmapkit/map/Tile;)V
    .locals 5

    iget-object v0, p0, Lru/yandex/bs;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/Tile;->i()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lru/yandex/yandexmapkit/map/Tile;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lru/yandex/yandexmapkit/map/Tile;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lru/yandex/bs;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/Tile;->i()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/bs;->j:Z

    invoke-direct {p0, v0}, Lru/yandex/bs;->a(I)V

    invoke-direct {p0}, Lru/yandex/bs;->e()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QUEUED "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Lru/yandex/yandexmapkit/map/Tile;->i:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Lru/yandex/yandexmapkit/map/Tile;->j:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lru/yandex/bs;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " thread = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lru/yandex/bs;->h:Ljava/lang/Thread;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lru/yandex/bs;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " d "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lru/yandex/bs;->j:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method b()V
    .locals 6

    iget-object v0, p0, Lru/yandex/bs;->f:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lru/yandex/bs;->g:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/MapController;->getTileStorage()Lru/yandex/ay;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lru/yandex/bs;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/yandex/yandexmapkit/map/Tile;

    const/4 v4, 0x0

    iput-byte v4, v3, Lru/yandex/yandexmapkit/map/Tile;->k:B

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lru/yandex/yandexmapkit/map/Tile;->a([B)V

    iput-byte v4, v3, Lru/yandex/yandexmapkit/map/Tile;->l:B

    invoke-virtual {v1, v3, v4}, Lru/yandex/ay;->a(Lru/yandex/yandexmapkit/map/Tile;Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lru/yandex/bs;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lru/yandex/bs;->a(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Lru/yandex/bs;->b()V

    invoke-virtual {p0}, Lru/yandex/bs;->d()V

    return-void
.end method

.method d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/bs;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lru/yandex/bs;->i:Ljava/util/ArrayList;

    iget-object v0, p0, Lru/yandex/bs;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public run()V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lru/yandex/bs;->j:Z

    if-nez v0, :cond_7

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    :goto_1
    iget-boolean v0, p0, Lru/yandex/bs;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "while1 destroyed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lru/yandex/bs;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    :goto_2
    invoke-direct {p0}, Lru/yandex/bs;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "while hasJob() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lru/yandex/bs;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->j()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x5

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    goto :goto_3

    :cond_2
    const/4 v1, 0x5

    :goto_3
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_4

    :cond_3
    const/4 v2, 0x5

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v2, :cond_4

    invoke-direct {p0, v0}, Lru/yandex/bs;->a(Ljava/util/ArrayList;)Lru/yandex/yandexmapkit/map/Tile;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requests.size() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lru/yandex/bs;->f()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requests.size() job"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lru/yandex/bs;->f()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download tile packet, size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-object v0, p0, Lru/yandex/bs;->i:Ljava/util/ArrayList;

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->j()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, v0}, Lru/yandex/bs;->c(Ljava/util/ArrayList;)V

    goto :goto_5

    :cond_5
    invoke-direct {p0, v0}, Lru/yandex/bs;->b(Ljava/util/ArrayList;)V

    :goto_5
    const/4 v0, 0x0

    iput-object v0, p0, Lru/yandex/bs;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lru/yandex/bs;->f:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lru/yandex/bs;->f:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v1

    goto :goto_7

    :catch_0
    :goto_6
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "idle  qs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/yandex/bs;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ns "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lru/yandex/yandexmapkit/net/Downloader;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1

    :goto_7
    monitor-exit v0

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    nop

    goto/16 :goto_0

    :cond_7
    return-void
.end method
