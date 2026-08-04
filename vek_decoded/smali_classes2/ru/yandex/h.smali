.class public final Lru/yandex/h;
.super Ljava/lang/Object;


# instance fields
.field private a:[B

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lru/yandex/h;->a:[B

    const/4 p1, 0x0

    iput p1, p0, Lru/yandex/h;->b:I

    return-void
.end method


# virtual methods
.method public a([BII)V
    .locals 4

    iget-object v0, p0, Lru/yandex/h;->a:[B

    array-length v1, v0

    iget v2, p0, Lru/yandex/h;->b:I

    add-int/2addr v2, p3

    if-ge v1, v2, :cond_1

    array-length v0, v0

    :goto_0
    iget v1, p0, Lru/yandex/h;->b:I

    add-int v2, v1, p3

    if-ge v0, v2, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v0, [B

    iget-object v2, p0, Lru/yandex/h;->a:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lru/yandex/h;->a:[B

    :cond_1
    iget-object v0, p0, Lru/yandex/h;->a:[B

    iget v1, p0, Lru/yandex/h;->b:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lru/yandex/h;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lru/yandex/h;->b:I

    return-void
.end method

.method public a()[B
    .locals 4

    iget v0, p0, Lru/yandex/h;->b:I

    new-array v1, v0, [B

    iget-object v2, p0, Lru/yandex/h;->a:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
