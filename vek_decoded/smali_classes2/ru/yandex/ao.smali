.class public final Lru/yandex/ao;
.super Lru/yandex/cw;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:F

.field public i:F

.field public j:J

.field public k:J

.field public l:I

.field public m:I

.field public n:Ljava/lang/String;

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lru/yandex/cw;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/ao;->p:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lru/yandex/cv;)V
    .locals 7

    const-string v0, "error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput v1, p0, Lru/yandex/ao;->m:I

    iput-boolean v1, p0, Lru/yandex/ao;->p:Z

    iput-boolean v1, p0, Lru/yandex/ao;->o:Z

    return-void

    :cond_0
    const-string v0, "coordinates"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    const-string p1, "latitude"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lru/yandex/ao;->h:F

    const-string p1, "longitude"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lru/yandex/ao;->i:F

    new-instance p1, Lru/yandex/yandexmapkit/utils/GeoPoint;

    iget v0, p0, Lru/yandex/ao;->h:F

    float-to-double v2, v0

    iget v0, p0, Lru/yandex/ao;->i:F

    float-to-double v4, v0

    invoke-direct {p1, v2, v3, v4, v5}, Lru/yandex/yandexmapkit/utils/GeoPoint;-><init>(DD)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/yandex/yandexmapkit/utils/CoordConversion;->toXY(Lru/yandex/yandexmapkit/utils/GeoPoint;Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/Point;

    move-result-object p1

    iget-wide v2, p1, Lru/yandex/yandexmapkit/utils/Point;->x:J

    iput-wide v2, p0, Lru/yandex/ao;->j:J

    iget-wide v2, p1, Lru/yandex/yandexmapkit/utils/Point;->y:J

    iput-wide v2, p0, Lru/yandex/ao;->k:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "nlatitude"

    invoke-virtual {p2, v0}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const-string v2, "nlongitude"

    invoke-virtual {p2, v2}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    new-instance v2, Lru/yandex/yandexmapkit/utils/GeoPoint;

    float-to-double v3, v0

    float-to-double v5, p2

    invoke-direct {v2, v3, v4, v5, v6}, Lru/yandex/yandexmapkit/utils/GeoPoint;-><init>(DD)V

    invoke-static {v2, p1}, Lru/yandex/yandexmapkit/utils/CoordConversion;->toXY(Lru/yandex/yandexmapkit/utils/GeoPoint;Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/Point;

    iget-wide v2, p0, Lru/yandex/ao;->j:J

    iget-wide v4, p1, Lru/yandex/yandexmapkit/utils/Point;->x:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lru/yandex/ao;->k:J

    iget-wide p1, p1, Lru/yandex/yandexmapkit/utils/Point;->y:J

    sub-long/2addr v4, p1

    mul-long v2, v2, v2

    mul-long v4, v4, v4

    add-long/2addr v2, v4

    long-to-double p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lru/yandex/ao;->l:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :try_start_2
    iput p1, p0, Lru/yandex/ao;->l:I

    :goto_0
    iput-boolean v1, p0, Lru/yandex/ao;->o:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method public a([CI)V
    .locals 2

    iget-boolean v0, p0, Lru/yandex/ao;->p:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lru/yandex/ao;->n:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    iget v0, p0, Lru/yandex/ao;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/io/InputStream;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lru/yandex/ao;->o:Z

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0, v0}, Lru/yandex/cx;->a(Lru/yandex/cw;Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-boolean p1, p0, Lru/yandex/ao;->o:Z

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    check-cast p1, Lru/yandex/ao;

    iget-object v1, p0, Lru/yandex/ao;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lru/yandex/ao;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lru/yandex/ao;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_0
    return v0

    :cond_3
    iget-object v1, p0, Lru/yandex/ao;->c:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lru/yandex/ao;->c:Ljava/lang/String;

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lru/yandex/ao;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_1
    return v0

    :cond_5
    iget v1, p0, Lru/yandex/ao;->d:I

    iget v2, p1, Lru/yandex/ao;->d:I

    if-eq v1, v2, :cond_6

    return v0

    :cond_6
    iget v1, p0, Lru/yandex/ao;->e:I

    iget v2, p1, Lru/yandex/ao;->e:I

    if-eq v1, v2, :cond_7

    return v0

    :cond_7
    iget-object v1, p0, Lru/yandex/ao;->a:Ljava/lang/String;

    if-nez v1, :cond_8

    iget-object v2, p1, Lru/yandex/ao;->a:Ljava/lang/String;

    if-nez v2, :cond_9

    :cond_8
    if-eqz v1, :cond_a

    iget-object p1, p1, Lru/yandex/ao;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    :cond_9
    return v0

    :cond_a
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lru/yandex/ao;->d:I

    add-int/lit8 v0, v0, 0x33

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Lru/yandex/ao;->e:I

    add-int/2addr v0, v1

    return v0
.end method
