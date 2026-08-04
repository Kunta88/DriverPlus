.class public final Lru/yandex/yandexmapkit/net/DownloadJob;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private c:I

.field private d:[B

.field private e:I

.field private f:[B

.field private g:Lru/yandex/yandexmapkit/net/DownloadHandler;

.field private h:I

.field private i:Ljava/lang/Object;

.field private j:J

.field private k:J

.field private l:I

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Lru/yandex/yandexmapkit/net/DownloadHandler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->c:I

    iput v0, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->h:I

    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->k:J

    iput v0, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->l:I

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->m:Z

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->n:Z

    iput p1, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->a:I

    iput-object p2, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->b:Ljava/lang/String;

    iput-object p3, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->g:Lru/yandex/yandexmapkit/net/DownloadHandler;

    return-void
.end method

.method constructor <init>(ILru/yandex/yandexmapkit/net/DownloadHandler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lru/yandex/yandexmapkit/net/DownloadJob;-><init>(ILjava/lang/String;Lru/yandex/yandexmapkit/net/DownloadHandler;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->h:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->k:J

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->i:Ljava/lang/Object;

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->f:[B

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->n:Z

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->e:I

    return-void
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->j:J

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->m:Z

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->h:I

    return v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->k:J

    return-wide v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/net/DownloadJob;->j()I

    move-result v0

    check-cast p1, Lru/yandex/yandexmapkit/net/DownloadJob;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->j()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->g:Lru/yandex/yandexmapkit/net/DownloadHandler;

    iget-object p1, p1, Lru/yandex/yandexmapkit/net/DownloadJob;->g:Lru/yandex/yandexmapkit/net/DownloadHandler;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->e:I

    return v0
.end method

.method public g()Z
    .locals 4

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/net/DownloadJob;->c()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/net/DownloadJob;->a(I)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->g:Lru/yandex/yandexmapkit/net/DownloadHandler;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/net/DownloadJob;->c()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, p0, v2}, Lru/yandex/yandexmapkit/net/DownloadHandler;->onFinishDownload(Lru/yandex/yandexmapkit/net/DownloadJob;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    :cond_1
    return v1
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->l:I

    return v0
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->g:Lru/yandex/yandexmapkit/net/DownloadHandler;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/net/DownloadJob;->j()I

    move-result v1

    invoke-interface {v0, v1}, Lru/yandex/yandexmapkit/net/DownloadHandler;->onStartDownload(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/net/DownloadJob;->j()I

    move-result v0

    add-int/lit8 v0, v0, 0x73

    return v0
.end method

.method public i()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->a:I

    return v0
.end method

.method public k()[B
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->f:[B

    return-object v0
.end method

.method public l()J
    .locals 2

    iget-wide v0, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->j:J

    return-wide v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->b:Ljava/lang/String;

    return-object v0
.end method

.method public n()[B
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->d:[B

    return-object v0
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lru/yandex/yandexmapkit/net/DownloadJob;->l:I

    return-void
.end method
