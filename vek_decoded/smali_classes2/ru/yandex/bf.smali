.class public final Lru/yandex/bf;
.super Lru/yandex/cw;


# static fields
.field private static u:I


# instance fields
.field public a:I

.field public final b:I

.field public c:J

.field public d:B

.field public e:I

.field public f:I

.field public g:I

.field public h:[Lru/yandex/bl;

.field public i:Lru/yandex/bi;

.field public j:[Lru/yandex/bh;

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field private o:I

.field private p:F

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private v:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1

    invoke-direct {p0}, Lru/yandex/cw;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lru/yandex/bf;->a:I

    int-to-byte p1, p1

    iput-byte p1, p0, Lru/yandex/bf;->d:B

    iput p2, p0, Lru/yandex/bf;->k:I

    iput p3, p0, Lru/yandex/bf;->l:I

    iput p4, p0, Lru/yandex/bf;->m:I

    iput p5, p0, Lru/yandex/bf;->n:I

    sget p1, Lru/yandex/bf;->u:I

    add-int/lit8 p2, p1, 0x1

    sput p2, Lru/yandex/bf;->u:I

    iput p1, p0, Lru/yandex/bf;->b:I

    const/16 p1, 0x32

    new-array p1, p1, [Lru/yandex/bl;

    iput-object p1, p0, Lru/yandex/bf;->h:[Lru/yandex/bl;

    const/16 p1, 0x14

    new-array p1, p1, [Lru/yandex/bh;

    iput-object p1, p0, Lru/yandex/bf;->j:[Lru/yandex/bh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lru/yandex/bf;->c:J

    iput-wide p1, p0, Lru/yandex/bf;->v:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "meta"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput v1, p0, Lru/yandex/bf;->t:I

    new-instance p1, Lru/yandex/bi;

    iget-wide v0, p0, Lru/yandex/bf;->v:J

    invoke-direct {p1, v0, v1}, Lru/yandex/bi;-><init>(J)V

    iput-object p1, p0, Lru/yandex/bf;->i:Lru/yandex/bi;

    return-void

    :cond_0
    const-string v0, "jam_informers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput v1, p0, Lru/yandex/bf;->t:I

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Lru/yandex/cv;)V
    .locals 11

    const/4 v0, 0x0

    iput v0, p0, Lru/yandex/bf;->s:I

    iget v1, p0, Lru/yandex/bf;->t:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    const-string v0, "track"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/16 p1, 0x9

    iput p1, p0, Lru/yandex/bf;->s:I

    :try_start_0
    const-string p1, "style_id"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lru/yandex/bf;->o:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const-string p1, "avg_speed"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lru/yandex/bf;->p:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    :cond_0
    iput v1, p0, Lru/yandex/bf;->p:F

    :goto_1
    const-string p1, "street_category"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lru/yandex/bf;->q:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    iput v3, p0, Lru/yandex/bf;->q:I

    return-void

    :cond_1
    iput v3, p0, Lru/yandex/bf;->q:I

    return-void

    :cond_2
    const-string v1, "tracks"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput v2, p0, Lru/yandex/bf;->t:I

    iput v2, p0, Lru/yandex/bf;->s:I

    return-void

    :cond_3
    const-string v1, "tjam_tracks"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :try_start_3
    const-string p1, "error"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lru/yandex/bf;->a:I

    return-void

    :cond_4
    const/4 p1, -0x1

    iput p1, p0, Lru/yandex/bf;->a:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void

    :cond_5
    const-string v1, "meta"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput v3, p0, Lru/yandex/bf;->t:I

    iput v3, p0, Lru/yandex/bf;->s:I

    return-void

    :cond_6
    iget v1, p0, Lru/yandex/bf;->t:I

    const/16 v2, 0x8

    if-ne v1, v3, :cond_c

    const-string p2, "time"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p1, 0x3

    iput p1, p0, Lru/yandex/bf;->s:I

    return-void

    :cond_7
    const-string p2, "next_update"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const/4 p1, 0x4

    iput p1, p0, Lru/yandex/bf;->s:I

    return-void

    :cond_8
    const-string p2, "informer_expire_in"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const/4 p1, 0x5

    iput p1, p0, Lru/yandex/bf;->s:I

    return-void

    :cond_9
    const-string p2, "jams_expire_in"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    const/4 p1, 0x6

    iput p1, p0, Lru/yandex/bf;->s:I

    return-void

    :cond_a
    const-string p2, "retry_timeout"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    const/4 p1, 0x7

    iput p1, p0, Lru/yandex/bf;->s:I

    return-void

    :cond_b
    const-string p2, "jam_informers"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iput v2, p0, Lru/yandex/bf;->t:I

    iput v2, p0, Lru/yandex/bf;->s:I

    return-void

    :cond_c
    if-ne v1, v2, :cond_e

    const-string v1, "informer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    :try_start_4
    const-string p1, "lat"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-string p1, "lon"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    const-string p1, "value"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-string p1, "color"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance p1, Lru/yandex/bh;

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lru/yandex/bh;-><init>(DDILjava/lang/String;)V

    iget p2, p0, Lru/yandex/bf;->g:I

    iget-object v1, p0, Lru/yandex/bf;->j:[Lru/yandex/bh;

    array-length v2, v1

    if-lt p2, v2, :cond_d

    array-length p2, v1

    shl-int/2addr p2, v3

    new-array p2, p2, [Lru/yandex/bh;

    array-length v2, v1

    invoke-static {v1, v0, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p2, p0, Lru/yandex/bf;->j:[Lru/yandex/bh;

    :cond_d
    iget-object p2, p0, Lru/yandex/bf;->j:[Lru/yandex/bh;

    iget v0, p0, Lru/yandex/bf;->g:I

    aput-object p1, p2, v0

    add-int/2addr v0, v3

    iput v0, p0, Lru/yandex/bf;->g:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_e
    return-void
.end method

.method public a([CI)V
    .locals 10

    iget v0, p0, Lru/yandex/bf;->s:I

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, v3, p2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iget v4, p0, Lru/yandex/bf;->s:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_9

    const/4 v5, 0x4

    if-eq v4, v5, :cond_8

    const/4 v5, 0x5

    if-eq v4, v5, :cond_6

    const/4 v5, 0x6

    if-eq v4, v5, :cond_7

    const/4 v5, 0x7

    if-eq v4, v5, :cond_6

    if-eq v4, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->yield()V

    new-instance v0, Lru/yandex/bl;

    iget v1, p0, Lru/yandex/bf;->o:I

    iget v4, p0, Lru/yandex/bf;->p:F

    iget v5, p0, Lru/yandex/bf;->q:I

    div-int/lit8 v6, p2, 0x7

    invoke-direct {v0, v1, v4, v5, v6}, Lru/yandex/bl;-><init>(IFII)V

    new-instance v1, Lru/yandex/yandexmapkit/utils/GeoPoint;

    invoke-direct {v1}, Lru/yandex/yandexmapkit/utils/GeoPoint;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x1

    if-ge v4, p2, :cond_4

    aget-char v8, p1, v4

    const/16 v9, 0x20

    if-ne v8, v9, :cond_3

    invoke-static {p1, v5, v4}, Lru/yandex/yandexmapkit/utils/Utils;->a([CII)F

    move-result v5

    float-to-double v8, v5

    if-eqz v6, :cond_2

    invoke-virtual {v1, v8, v9}, Lru/yandex/yandexmapkit/utils/GeoPoint;->setLon(D)V

    invoke-virtual {v0, v1}, Lru/yandex/bl;->a(Lru/yandex/yandexmapkit/utils/GeoPoint;)V

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v8, v9}, Lru/yandex/yandexmapkit/utils/GeoPoint;->setLat(D)V

    const/4 v6, 0x1

    :goto_2
    add-int/lit8 v5, v4, 0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget p1, p0, Lru/yandex/bf;->f:I

    iget-object p2, p0, Lru/yandex/bf;->h:[Lru/yandex/bl;

    array-length v1, p2

    if-lt p1, v1, :cond_5

    array-length p1, p2

    shl-int/2addr p1, v7

    new-array p1, p1, [Lru/yandex/bl;

    array-length v1, p2

    invoke-static {p2, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lru/yandex/bf;->h:[Lru/yandex/bl;

    :cond_5
    iput-object v2, v0, Lru/yandex/bl;->j:Lru/yandex/yandexmapkit/utils/Point;

    iget-object p1, p0, Lru/yandex/bf;->h:[Lru/yandex/bl;

    iget p2, p0, Lru/yandex/bf;->f:I

    aput-object v0, p1, p2

    add-int/2addr p2, v7

    iput p2, p0, Lru/yandex/bf;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_6
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :cond_7
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lru/yandex/bf;->e:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    const p1, 0x927c0

    iput p1, p0, Lru/yandex/bf;->e:I

    goto :goto_3

    :cond_8
    :try_start_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lru/yandex/bf;->r:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    const p1, 0x1d4c0

    iput p1, p0, Lru/yandex/bf;->r:I

    goto :goto_3

    :cond_9
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lru/yandex/bf;->v:J

    :catch_2
    :catchall_0
    :goto_3
    iput v3, p0, Lru/yandex/bf;->s:I

    return-void
.end method

.method a()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lru/yandex/bf;->c:J

    iget v4, p0, Lru/yandex/bf;->r:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method b()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lru/yandex/bf;->c:J

    iget v4, p0, Lru/yandex/bf;->e:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
