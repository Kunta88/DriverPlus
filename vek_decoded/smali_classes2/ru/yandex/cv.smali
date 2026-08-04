.class public final Lru/yandex/cv;
.super Ljava/lang/Object;


# instance fields
.field public a:[Ljava/lang/String;

.field public b:[Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lru/yandex/cv;->a:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lru/yandex/cv;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lru/yandex/cv;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget v0, p0, Lru/yandex/cv;->c:I

    iget-object v1, p0, Lru/yandex/cv;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, p0, Lru/yandex/cv;->b:[Ljava/lang/String;

    aget-object p1, p1, v2

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lru/yandex/cv;->c:I

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lru/yandex/cv;->a:[Ljava/lang/String;

    iget v1, p0, Lru/yandex/cv;->c:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lru/yandex/cv;->b:[Ljava/lang/String;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lru/yandex/cv;->c:I

    array-length p1, v0

    if-lt v1, p1, :cond_0

    shl-int/lit8 p1, v1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {v0, p2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lru/yandex/cv;->a:[Ljava/lang/String;

    iget p1, p0, Lru/yandex/cv;->c:I

    shl-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lru/yandex/cv;->b:[Ljava/lang/String;

    invoke-static {v1, p2, v0, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lru/yandex/cv;->b:[Ljava/lang/String;

    :cond_0
    return-void
.end method
