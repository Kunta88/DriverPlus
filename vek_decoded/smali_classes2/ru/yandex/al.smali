.class public final Lru/yandex/al;
.super Ljava/lang/Object;


# instance fields
.field a:[[Lru/yandex/yandexmapkit/map/Tile;

.field b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v0, [[Lru/yandex/yandexmapkit/map/Tile;

    iput-object p1, p0, Lru/yandex/al;->a:[[Lru/yandex/yandexmapkit/map/Tile;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lru/yandex/al;->b:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    iget-object v0, p0, Lru/yandex/al;->a:[[Lru/yandex/yandexmapkit/map/Tile;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lru/yandex/al;->a:[[Lru/yandex/yandexmapkit/map/Tile;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method a(J)V
    .locals 5

    iget-object v0, p0, Lru/yandex/al;->a:[[Lru/yandex/yandexmapkit/map/Tile;

    long-to-int v1, p1

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v3, v2

    xor-int/2addr v1, v3

    iget v2, p0, Lru/yandex/al;->b:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/map/Tile;->i()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    const/4 p1, 0x0

    aput-object p1, v0, v1

    return-void

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method a(JLru/yandex/yandexmapkit/map/Tile;)V
    .locals 3

    long-to-int v0, p1

    const/16 v1, 0x20

    ushr-long/2addr p1, v1

    long-to-int p2, p1

    xor-int p1, v0, p2

    iget p2, p0, Lru/yandex/al;->b:I

    and-int/2addr p1, p2

    iget-object p2, p0, Lru/yandex/al;->a:[[Lru/yandex/yandexmapkit/map/Tile;

    aget-object v0, p2, p1

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Lru/yandex/yandexmapkit/map/Tile;

    aput-object v0, p2, p1

    :cond_0
    aget-object p2, p2, p1

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    aget-object v1, p2, v0

    if-nez v1, :cond_1

    aput-object p3, p2, v0

    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    array-length v0, p2

    shl-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lru/yandex/yandexmapkit/map/Tile;

    const/4 v2, 0x0

    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lru/yandex/al;->a:[[Lru/yandex/yandexmapkit/map/Tile;

    aput-object v1, p2, p1

    aput-object p3, v1, v0

    return-void
.end method

.method b(J)Z
    .locals 6

    iget-object v0, p0, Lru/yandex/al;->a:[[Lru/yandex/yandexmapkit/map/Tile;

    long-to-int v1, p1

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v3, v2

    xor-int/2addr v1, v3

    iget v2, p0, Lru/yandex/al;->b:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lru/yandex/yandexmapkit/map/Tile;->i()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method c(J)Lru/yandex/yandexmapkit/map/Tile;
    .locals 6

    iget-object v0, p0, Lru/yandex/al;->a:[[Lru/yandex/yandexmapkit/map/Tile;

    long-to-int v1, p1

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v3, v2

    xor-int/2addr v1, v3

    iget v2, p0, Lru/yandex/al;->b:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/map/Tile;->i()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
