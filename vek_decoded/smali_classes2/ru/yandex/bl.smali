.class public final Lru/yandex/bl;
.super Ljava/lang/Object;


# instance fields
.field a:[I

.field b:I

.field c:I

.field d:F

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Lru/yandex/yandexmapkit/utils/Point;

.field k:[Lru/yandex/bb;


# direct methods
.method public constructor <init>(IFII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-ge p4, v0, :cond_0

    const/4 p4, 0x2

    :cond_0
    new-array p4, p4, [I

    iput-object p4, p0, Lru/yandex/bl;->a:[I

    const/4 p4, 0x0

    iput p4, p0, Lru/yandex/bl;->b:I

    const v0, 0x7fffffff

    iput v0, p0, Lru/yandex/bl;->f:I

    iput v0, p0, Lru/yandex/bl;->g:I

    iput p4, p0, Lru/yandex/bl;->h:I

    iput p4, p0, Lru/yandex/bl;->i:I

    new-instance p4, Lru/yandex/yandexmapkit/utils/Point;

    invoke-direct {p4}, Lru/yandex/yandexmapkit/utils/Point;-><init>()V

    iput-object p4, p0, Lru/yandex/bl;->j:Lru/yandex/yandexmapkit/utils/Point;

    iput p1, p0, Lru/yandex/bl;->c:I

    iput p2, p0, Lru/yandex/bl;->d:F

    iput p3, p0, Lru/yandex/bl;->e:I

    return-void
.end method


# virtual methods
.method public a(Lru/yandex/yandexmapkit/utils/GeoPoint;)V
    .locals 4

    iget v0, p0, Lru/yandex/bl;->b:I

    iget-object v1, p0, Lru/yandex/bl;->a:[I

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lru/yandex/bl;->a:[I

    :cond_0
    iget-object v0, p0, Lru/yandex/bl;->j:Lru/yandex/yandexmapkit/utils/Point;

    invoke-static {p1, v0}, Lru/yandex/yandexmapkit/utils/CoordConversion;->toXY(Lru/yandex/yandexmapkit/utils/GeoPoint;Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/Point;

    move-result-object p1

    iget-wide v0, p1, Lru/yandex/yandexmapkit/utils/Point;->x:J

    long-to-int v1, v0

    iget-wide v2, p1, Lru/yandex/yandexmapkit/utils/Point;->y:J

    long-to-int p1, v2

    iget v0, p0, Lru/yandex/bl;->f:I

    if-ge v1, v0, :cond_1

    iput v1, p0, Lru/yandex/bl;->f:I

    :cond_1
    iget v0, p0, Lru/yandex/bl;->g:I

    if-ge p1, v0, :cond_2

    iput p1, p0, Lru/yandex/bl;->g:I

    :cond_2
    iget v0, p0, Lru/yandex/bl;->h:I

    if-le v1, v0, :cond_3

    iput v1, p0, Lru/yandex/bl;->h:I

    :cond_3
    iget v0, p0, Lru/yandex/bl;->i:I

    if-le p1, v0, :cond_4

    iput p1, p0, Lru/yandex/bl;->i:I

    :cond_4
    iget-object v0, p0, Lru/yandex/bl;->a:[I

    iget v2, p0, Lru/yandex/bl;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lru/yandex/bl;->b:I

    aput v1, v0, v2

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lru/yandex/bl;->b:I

    aput p1, v0, v3

    return-void
.end method
