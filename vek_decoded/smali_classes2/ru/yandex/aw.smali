.class public final Lru/yandex/aw;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:[B

.field public c:I

.field public d:Ljava/util/List;

.field public e:I

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lru/yandex/yandexmapkit/utils/Utils;->b([BI)I

    move-result v1

    iput v1, p0, Lru/yandex/aw;->a:I

    const/16 v1, 0x10

    new-array v2, v1, [B

    iput-object v2, p0, Lru/yandex/aw;->b:[B

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-static {p1, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lru/yandex/aw;->b:[B

    invoke-static {v1}, Lru/yandex/cn;->a([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lru/yandex/aw;->f:Ljava/lang/String;

    const/16 v1, 0x18

    invoke-static {p1, v1}, Lru/yandex/yandexmapkit/utils/Utils;->b([BI)I

    move-result v1

    iput v1, p0, Lru/yandex/aw;->c:I

    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lru/yandex/aw;->a:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lru/yandex/aw;->d:Ljava/util/List;

    const/16 v1, 0x1e

    const/16 v2, 0x1e

    :goto_0
    iget v3, p0, Lru/yandex/aw;->a:I

    if-ge v4, v3, :cond_0

    new-instance v3, Lru/yandex/ax;

    invoke-direct {v3}, Lru/yandex/ax;-><init>()V

    invoke-static {p1, v2}, Lru/yandex/yandexmapkit/utils/Utils;->b([BI)I

    move-result v5

    iput v5, v3, Lru/yandex/ax;->a:I

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    iget-object v5, p0, Lru/yandex/aw;->d:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, v3, 0x3

    add-int/2addr p1, v1

    iput p1, p0, Lru/yandex/aw;->e:I

    return-void
.end method
