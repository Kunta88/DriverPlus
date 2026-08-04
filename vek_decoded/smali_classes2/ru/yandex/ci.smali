.class public final Lru/yandex/ci;
.super Ljava/io/Reader;


# instance fields
.field private a:[B

.field private final b:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Lru/yandex/ci;->b:Ljava/io/InputStream;

    const/16 p1, 0x2000

    new-array p1, p1, [B

    iput-object p1, p0, Lru/yandex/ci;->a:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lru/yandex/ci;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read([CII)I
    .locals 5

    iget-object v0, p0, Lru/yandex/ci;->a:[B

    array-length v0, v0

    if-le p3, v0, :cond_0

    add-int/lit8 v0, p3, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lru/yandex/ci;->a:[B

    :cond_0
    iget-object v0, p0, Lru/yandex/ci;->b:Ljava/io/InputStream;

    iget-object v1, p0, Lru/yandex/ci;->a:[B

    array-length v2, v1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p3}, Lru/yandex/yandexmapkit/utils/Utils;->b(Ljava/io/InputStream;[BII)I

    move-result p3

    if-lez p3, :cond_7

    iget-object v0, p0, Lru/yandex/ci;->a:[B

    :goto_0
    if-ge v2, p3, :cond_7

    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0x80

    if-le v1, v3, :cond_6

    const/16 v3, 0xbf

    if-le v1, v3, :cond_1

    add-int/lit16 v1, v1, 0x350

    goto :goto_1

    :cond_1
    const/16 v4, 0xa8

    if-eq v1, v4, :cond_5

    const/16 v4, 0xaa

    if-eq v1, v4, :cond_4

    const/16 v4, 0xaf

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_0
    const/16 v1, 0x454

    goto :goto_1

    :pswitch_1
    const/16 v1, 0x2116

    goto :goto_1

    :pswitch_2
    const/16 v1, 0x451

    goto :goto_1

    :pswitch_3
    const/16 v1, 0x491

    goto :goto_1

    :pswitch_4
    const/16 v1, 0x456

    goto :goto_1

    :pswitch_5
    const/16 v1, 0x406

    goto :goto_1

    :cond_2
    const/16 v1, 0xef

    goto :goto_1

    :cond_3
    const/16 v1, 0xcf

    goto :goto_1

    :cond_4
    const/16 v1, 0x404

    goto :goto_1

    :cond_5
    const/16 v1, 0x401

    :cond_6
    :goto_1
    int-to-char v1, v1

    aput-char v1, p1, p2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_7
    return p3

    nop

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
