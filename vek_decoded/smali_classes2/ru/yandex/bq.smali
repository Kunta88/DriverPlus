.class public final Lru/yandex/bq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Z

.field private b:Lru/yandex/yandexmapkit/net/Downloader;

.field private final c:Ljava/util/ArrayList;

.field private volatile d:Z

.field private e:Ljava/lang/Thread;

.field private f:Lru/yandex/yandexmapkit/net/DownloadJob;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/net/Downloader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/yandex/bq;->b:Lru/yandex/yandexmapkit/net/Downloader;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    invoke-static {}, Lru/yandex/yandexmapkit/net/Downloader;->d()Lru/yandex/br;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lru/yandex/bq;->d:Z

    return-void
.end method

.method private e()Lru/yandex/yandexmapkit/net/DownloadJob;
    .locals 10

    iget-object v0, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    monitor-exit v0

    return-object v4

    :cond_0
    iget-boolean v3, p0, Lru/yandex/bq;->d:Z

    if-nez v3, :cond_2

    invoke-static {}, Lru/yandex/yandexmapkit/net/Downloader;->d()Lru/yandex/br;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/yandex/yandexmapkit/net/DownloadJob;

    invoke-virtual {v5}, Lru/yandex/yandexmapkit/net/DownloadJob;->j()I

    move-result v6

    const/high16 v7, -0x80000000

    if-ne v6, v7, :cond_1

    invoke-virtual {v5}, Lru/yandex/yandexmapkit/net/DownloadJob;->l()J

    move-result-wide v6

    cmp-long v8, v6, v1

    if-gez v8, :cond_1

    monitor-exit v0

    return-object v5

    :cond_2
    iget-object v3, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    iget-object v6, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lru/yandex/yandexmapkit/net/DownloadJob;

    invoke-virtual {v6}, Lru/yandex/yandexmapkit/net/DownloadJob;->l()J

    move-result-wide v7

    cmp-long v9, v7, v1

    if-gez v9, :cond_3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v6

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private f()Z
    .locals 2

    iget-object v0, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lru/yandex/bq;->e()Lru/yandex/yandexmapkit/net/DownloadJob;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lru/yandex/bq;->e:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lru/yandex/bq;->e:Ljava/lang/Thread;

    const-string v2, "ymm-downloader-data"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lru/yandex/bq;->e:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/bq;->a:Z

    invoke-direct {p0}, Lru/yandex/bq;->g()V

    return-void
.end method

.method public a(Lru/yandex/yandexmapkit/net/DownloadJob;)V
    .locals 4

    iget-boolean v0, p0, Lru/yandex/bq;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->j()I

    move-result v1

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    iput-boolean v3, p0, Lru/yandex/bq;->d:Z

    :cond_2
    iget-object v1, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->a()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lru/yandex/bq;->f:Lru/yandex/yandexmapkit/net/DownloadJob;

    invoke-virtual {p1, v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lru/yandex/yandexmapkit/net/DownloadJob;->b(J)V

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->getPriority()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-direct {p0}, Lru/yandex/bq;->g()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/bq;->a:Z

    iget-object v0, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lru/yandex/bq;->d:Z

    iget-object v1, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public d()Ljava/lang/Thread;
    .locals 2

    iget-object v0, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lru/yandex/bq;->e:Ljava/lang/Thread;

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public run()V
    .locals 13

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lru/yandex/bq;->a:Z

    if-nez v1, :cond_30

    :catch_0
    :cond_0
    :goto_1
    invoke-direct {p0}, Lru/yandex/bq;->f()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-direct {p0}, Lru/yandex/bq;->e()Lru/yandex/yandexmapkit/net/DownloadJob;

    move-result-object v1

    iput-object v1, p0, Lru/yandex/bq;->f:Lru/yandex/yandexmapkit/net/DownloadJob;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_21
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_20
    .catchall {:try_start_0 .. :try_end_0} :catchall_15

    if-eqz v1, :cond_0

    const/high16 v2, -0x80000000

    const-wide/16 v3, 0xa

    const/4 v5, 0x4

    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->c()I

    move-result v7

    if-ge v7, v5, :cond_7

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->h()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->m()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lru/yandex/bq;->b:Lru/yandex/yandexmapkit/net/Downloader;

    if-eqz v8, :cond_4

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "&"

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    const-string v8, "?"

    goto :goto_2

    :cond_2
    :goto_3
    const-string v8, "lang="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lru/yandex/cm;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lru/yandex/ch;->d()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lru/yandex/bq;->b:Lru/yandex/yandexmapkit/net/Downloader;

    invoke-virtual {v8}, Lru/yandex/yandexmapkit/net/Downloader;->g()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    const-string v8, "&api_key="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lru/yandex/bq;->b:Lru/yandex/yandexmapkit/net/Downloader;

    invoke-virtual {v9}, Lru/yandex/yandexmapkit/net/Downloader;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {}, Lru/yandex/yandexmapkit/net/Downloader;->getUUID()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    const-string v8, "&uuid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lru/yandex/yandexmapkit/net/Downloader;->getUUID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "job id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->j()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " url="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v8, Ljava/net/URL;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/16 v8, 0x7530

    :try_start_2
    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->e()I

    move-result v8

    if-ne v8, v6, :cond_5

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->n()[B

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->n()[B

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_5

    invoke-virtual {v7, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v8, "Content-Type"

    const-string v9, "multipart/form-data; boundary=edge_here"

    invoke-virtual {v7, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->n()[B

    move-result-object v10

    array-length v10, v10

    invoke-direct {v8, v9, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->n()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    goto :goto_4

    :cond_5
    move-object v8, v0

    :goto_4
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    invoke-virtual {v1, v9}, Lru/yandex/yandexmapkit/net/DownloadJob;->b(I)V

    const/16 v10, 0x1f4

    if-eq v9, v10, :cond_6

    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const/16 v11, 0x1f40

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v9}, Lru/yandex/yandexmapkit/utils/Utils;->a(Ljava/io/InputStream;)[B

    move-result-object v10

    invoke-virtual {v1, v10}, Lru/yandex/yandexmapkit/net/DownloadJob;->a([B)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_18
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_14
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    goto :goto_5

    :cond_6
    move-object v9, v0

    goto :goto_5

    :catchall_0
    move-exception v9

    move-object v10, v0

    move-object v12, v8

    move-object v8, v7

    move-object v7, v9

    goto/16 :goto_1f

    :catch_1
    move-object v9, v0

    goto/16 :goto_b

    :catch_2
    move-object v9, v0

    goto/16 :goto_10

    :catch_3
    move-object v9, v0

    goto/16 :goto_15

    :catch_4
    move-object v9, v0

    goto/16 :goto_1a

    :catchall_1
    move-exception v8

    move-object v9, v0

    move-object v10, v9

    move-object v12, v8

    move-object v8, v7

    move-object v7, v12

    goto/16 :goto_20

    :catch_5
    move-object v8, v0

    goto/16 :goto_a

    :catch_6
    move-object v8, v0

    goto/16 :goto_f

    :catch_7
    move-object v8, v0

    goto/16 :goto_14

    :catch_8
    move-object v8, v0

    goto/16 :goto_19

    :cond_7
    move-object v7, v0

    move-object v8, v7

    move-object v9, v8

    :goto_5
    if-eqz v8, :cond_8

    :try_start_5
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_21
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_20
    .catchall {:try_start_5 .. :try_end_5} :catchall_15

    goto :goto_6

    :catch_9
    nop

    :cond_8
    :goto_6
    if-eqz v9, :cond_9

    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_21
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_20
    .catchall {:try_start_6 .. :try_end_6} :catchall_15

    goto :goto_7

    :catch_a
    nop

    :cond_9
    :goto_7
    if-eqz v7, :cond_a

    :try_start_7
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_21
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_20
    .catchall {:try_start_7 .. :try_end_7} :catchall_15

    :cond_a
    :try_start_8
    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->c()I

    move-result v7

    if-ge v7, v5, :cond_c

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->g()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_9

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->d()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lru/yandex/yandexmapkit/net/DownloadJob;->b(J)V

    iget-object v1, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_d

    :try_start_9
    iput-object v0, p0, Lru/yandex/bq;->f:Lru/yandex/yandexmapkit/net/DownloadJob;

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_8
    :try_start_a
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1b
    .catchall {:try_start_a .. :try_end_a} :catchall_d

    goto/16 :goto_1e

    :catchall_2
    move-exception v2

    :try_start_b
    monitor-exit v1

    throw v2

    :cond_c
    :goto_9
    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->j()I

    move-result v5

    if-ne v5, v2, :cond_d

    iput-boolean v6, p0, Lru/yandex/bq;->d:Z

    :cond_d
    iget-object v2, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_d

    :try_start_c
    iget-object v5, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v0, p0, Lru/yandex/bq;->f:Lru/yandex/yandexmapkit/net/DownloadJob;

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto/16 :goto_1e

    :catchall_3
    move-exception v1

    :try_start_d
    monitor-exit v2

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    :catchall_4
    move-exception v7

    move-object v8, v0

    move-object v9, v8

    move-object v10, v9

    goto/16 :goto_20

    :catch_b
    move-object v7, v0

    move-object v8, v7

    :goto_a
    move-object v9, v8

    :catch_c
    :goto_b
    :try_start_e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "job id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->j()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    if-eqz v8, :cond_e

    :try_start_f
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_21
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_f} :catch_20
    .catchall {:try_start_f .. :try_end_f} :catchall_15

    goto :goto_c

    :catch_d
    nop

    :cond_e
    :goto_c
    if-eqz v9, :cond_f

    :try_start_10
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_21
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_10} :catch_20
    .catchall {:try_start_10 .. :try_end_10} :catchall_15

    goto :goto_d

    :catch_e
    nop

    :cond_f
    :goto_d
    if-eqz v7, :cond_10

    :try_start_11
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_21
    .catch Ljava/lang/Error; {:try_start_11 .. :try_end_11} :catch_20
    .catchall {:try_start_11 .. :try_end_11} :catchall_15

    :cond_10
    :try_start_12
    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->c()I

    move-result v7

    if-ge v7, v5, :cond_12

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->g()Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_e

    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->d()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lru/yandex/yandexmapkit/net/DownloadJob;->b(J)V

    iget-object v1, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    :try_start_13
    iput-object v0, p0, Lru/yandex/bq;->f:Lru/yandex/yandexmapkit/net/DownloadJob;

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v2

    :try_start_14
    monitor-exit v1

    throw v2

    :cond_12
    :goto_e
    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->j()I

    move-result v5

    if-ne v5, v2, :cond_13

    iput-boolean v6, p0, Lru/yandex/bq;->d:Z

    :cond_13
    iget-object v2, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    :try_start_15
    iget-object v5, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v0, p0, Lru/yandex/bq;->f:Lru/yandex/yandexmapkit/net/DownloadJob;

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    goto/16 :goto_1e

    :catchall_6
    move-exception v1

    :try_start_16
    monitor-exit v2

    throw v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    :catch_f
    move-object v7, v0

    move-object v8, v7

    :goto_f
    move-object v9, v8

    :catch_10
    :goto_10
    :try_start_17
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "job id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->j()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    if-eqz v8, :cond_14

    :try_start_18
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_11
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_21
    .catch Ljava/lang/Error; {:try_start_18 .. :try_end_18} :catch_20
    .catchall {:try_start_18 .. :try_end_18} :catchall_15

    goto :goto_11

    :catch_11
    nop

    :cond_14
    :goto_11
    if-eqz v9, :cond_15

    :try_start_19
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_12
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_21
    .catch Ljava/lang/Error; {:try_start_19 .. :try_end_19} :catch_20
    .catchall {:try_start_19 .. :try_end_19} :catchall_15

    goto :goto_12

    :catch_12
    nop

    :cond_15
    :goto_12
    if-eqz v7, :cond_16

    :try_start_1a
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_21
    .catch Ljava/lang/Error; {:try_start_1a .. :try_end_1a} :catch_20
    .catchall {:try_start_1a .. :try_end_1a} :catchall_15

    :cond_16
    :try_start_1b
    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->c()I

    move-result v7

    if-ge v7, v5, :cond_18

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->g()Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_13

    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->d()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lru/yandex/yandexmapkit/net/DownloadJob;->b(J)V

    iget-object v1, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    :try_start_1c
    iput-object v0, p0, Lru/yandex/bq;->f:Lru/yandex/yandexmapkit/net/DownloadJob;

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    goto/16 :goto_8

    :catchall_7
    move-exception v2

    :try_start_1d
    monitor-exit v1

    throw v2

    :cond_18
    :goto_13
    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->j()I

    move-result v5

    if-ne v5, v2, :cond_19

    iput-boolean v6, p0, Lru/yandex/bq;->d:Z

    :cond_19
    iget-object v2, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    :try_start_1e
    iget-object v5, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v0, p0, Lru/yandex/bq;->f:Lru/yandex/yandexmapkit/net/DownloadJob;

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    goto/16 :goto_1e

    :catchall_8
    move-exception v1

    :try_start_1f
    monitor-exit v2

    throw v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_d

    :catch_13
    move-object v7, v0

    move-object v8, v7

    :goto_14
    move-object v9, v8

    :catch_14
    :goto_15
    :try_start_20
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "job id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->j()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    if-eqz v8, :cond_1a

    :try_start_21
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_15
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_21
    .catch Ljava/lang/Error; {:try_start_21 .. :try_end_21} :catch_20
    .catchall {:try_start_21 .. :try_end_21} :catchall_15

    goto :goto_16

    :catch_15
    nop

    :cond_1a
    :goto_16
    if-eqz v9, :cond_1b

    :try_start_22
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_16
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_21
    .catch Ljava/lang/Error; {:try_start_22 .. :try_end_22} :catch_20
    .catchall {:try_start_22 .. :try_end_22} :catchall_15

    goto :goto_17

    :catch_16
    nop

    :cond_1b
    :goto_17
    if-eqz v7, :cond_1c

    :try_start_23
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_21
    .catch Ljava/lang/Error; {:try_start_23 .. :try_end_23} :catch_20
    .catchall {:try_start_23 .. :try_end_23} :catchall_15

    :cond_1c
    :try_start_24
    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->c()I

    move-result v7

    if-ge v7, v5, :cond_1e

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->g()Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_18

    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->d()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lru/yandex/yandexmapkit/net/DownloadJob;->b(J)V

    iget-object v1, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_d

    :try_start_25
    iput-object v0, p0, Lru/yandex/bq;->f:Lru/yandex/yandexmapkit/net/DownloadJob;

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    goto/16 :goto_8

    :catchall_9
    move-exception v2

    :try_start_26
    monitor-exit v1

    throw v2

    :cond_1e
    :goto_18
    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->j()I

    move-result v5

    if-ne v5, v2, :cond_1f

    iput-boolean v6, p0, Lru/yandex/bq;->d:Z

    :cond_1f
    iget-object v2, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_d

    :try_start_27
    iget-object v5, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v0, p0, Lru/yandex/bq;->f:Lru/yandex/yandexmapkit/net/DownloadJob;

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    goto/16 :goto_1e

    :catchall_a
    move-exception v1

    :try_start_28
    monitor-exit v2

    throw v1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_d

    :catch_17
    move-object v7, v0

    move-object v8, v7

    :goto_19
    move-object v9, v8

    :catch_18
    :goto_1a
    :try_start_29
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "job id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->j()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_e

    if-eqz v8, :cond_20

    :try_start_2a
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_19
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_21
    .catch Ljava/lang/Error; {:try_start_2a .. :try_end_2a} :catch_20
    .catchall {:try_start_2a .. :try_end_2a} :catchall_15

    goto :goto_1b

    :catch_19
    nop

    :cond_20
    :goto_1b
    if-eqz v9, :cond_21

    :try_start_2b
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_21
    .catch Ljava/lang/Error; {:try_start_2b .. :try_end_2b} :catch_20
    .catchall {:try_start_2b .. :try_end_2b} :catchall_15

    goto :goto_1c

    :catch_1a
    nop

    :cond_21
    :goto_1c
    if-eqz v7, :cond_22

    :try_start_2c
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_21
    .catch Ljava/lang/Error; {:try_start_2c .. :try_end_2c} :catch_20
    .catchall {:try_start_2c .. :try_end_2c} :catchall_15

    :cond_22
    :try_start_2d
    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->c()I

    move-result v7

    if-ge v7, v5, :cond_24

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->g()Z

    move-result v5

    if-eqz v5, :cond_23

    goto :goto_1d

    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->d()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lru/yandex/yandexmapkit/net/DownloadJob;->b(J)V

    iget-object v1, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_d

    :try_start_2e
    iput-object v0, p0, Lru/yandex/bq;->f:Lru/yandex/yandexmapkit/net/DownloadJob;

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_b

    goto/16 :goto_8

    :catchall_b
    move-exception v2

    :try_start_2f
    monitor-exit v1

    throw v2

    :cond_24
    :goto_1d
    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->j()I

    move-result v5

    if-ne v5, v2, :cond_25

    iput-boolean v6, p0, Lru/yandex/bq;->d:Z

    :cond_25
    iget-object v2, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_d

    :try_start_30
    iget-object v5, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v0, p0, Lru/yandex/bq;->f:Lru/yandex/yandexmapkit/net/DownloadJob;

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_c

    goto :goto_1e

    :catchall_c
    move-exception v1

    :try_start_31
    monitor-exit v2

    throw v1
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_d

    :catch_1b
    :catchall_d
    :goto_1e
    :try_start_32
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_0
    .catch Ljava/lang/Error; {:try_start_32 .. :try_end_32} :catch_20
    .catchall {:try_start_32 .. :try_end_32} :catchall_15

    goto/16 :goto_1

    :catchall_e
    move-exception v10

    move-object v12, v8

    move-object v8, v7

    move-object v7, v10

    move-object v10, v9

    :goto_1f
    move-object v9, v12

    :goto_20
    if-eqz v9, :cond_26

    :try_start_33
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_21
    .catch Ljava/lang/Error; {:try_start_33 .. :try_end_33} :catch_20
    .catchall {:try_start_33 .. :try_end_33} :catchall_15

    goto :goto_21

    :catch_1c
    nop

    :cond_26
    :goto_21
    if-eqz v10, :cond_27

    :try_start_34
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_21
    .catch Ljava/lang/Error; {:try_start_34 .. :try_end_34} :catch_20
    .catchall {:try_start_34 .. :try_end_34} :catchall_15

    goto :goto_22

    :catch_1d
    nop

    :cond_27
    :goto_22
    if-eqz v8, :cond_28

    :try_start_35
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_21
    .catch Ljava/lang/Error; {:try_start_35 .. :try_end_35} :catch_20
    .catchall {:try_start_35 .. :try_end_35} :catchall_15

    :cond_28
    :try_start_36
    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->c()I

    move-result v8

    if-ge v8, v5, :cond_2a

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->g()Z

    move-result v5

    if-eqz v5, :cond_29

    goto :goto_23

    :cond_29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->d()J

    move-result-wide v8

    add-long/2addr v5, v8

    invoke-virtual {v1, v5, v6}, Lru/yandex/yandexmapkit/net/DownloadJob;->b(J)V

    iget-object v1, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_11

    :try_start_37
    iput-object v0, p0, Lru/yandex/bq;->f:Lru/yandex/yandexmapkit/net/DownloadJob;

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_f

    :try_start_38
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_1e
    .catchall {:try_start_38 .. :try_end_38} :catchall_11

    goto :goto_24

    :catchall_f
    move-exception v2

    :try_start_39
    monitor-exit v1

    throw v2

    :cond_2a
    :goto_23
    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->j()I

    move-result v3

    if-ne v3, v2, :cond_2b

    iput-boolean v6, p0, Lru/yandex/bq;->d:Z

    :cond_2b
    iget-object v2, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_11

    :try_start_3a
    iget-object v3, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v0, p0, Lru/yandex/bq;->f:Lru/yandex/yandexmapkit/net/DownloadJob;

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_10

    goto :goto_24

    :catchall_10
    move-exception v1

    :try_start_3b
    monitor-exit v2

    throw v1
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_11

    :catch_1e
    :catchall_11
    :goto_24
    :try_start_3c
    throw v7

    :cond_2c
    iget-object v1, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_21
    .catch Ljava/lang/Error; {:try_start_3c .. :try_end_3c} :catch_20
    .catchall {:try_start_3c .. :try_end_3c} :catchall_15

    :try_start_3d
    invoke-direct {p0}, Lru/yandex/bq;->f()Z

    move-result v2

    if-nez v2, :cond_2e

    iget-boolean v2, p0, Lru/yandex/bq;->a:Z
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_13

    if-nez v2, :cond_2e

    :try_start_3e
    iget-object v2, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2d

    const-wide/32 v3, 0xea60

    goto :goto_25

    :cond_2d
    const-wide/16 v3, 0x1f4

    :goto_25
    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_1f
    .catchall {:try_start_3e .. :try_end_3e} :catchall_13

    :catch_1f
    :cond_2e
    :try_start_3f
    iget-object v2, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2f

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_13

    iget-object v1, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_40
    iput-object v0, p0, Lru/yandex/bq;->e:Ljava/lang/Thread;

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_12

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2f
    :try_start_41
    monitor-exit v1

    goto/16 :goto_0

    :catchall_13
    move-exception v2

    monitor-exit v1

    throw v2
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_21
    .catch Ljava/lang/Error; {:try_start_41 .. :try_end_41} :catch_20
    .catchall {:try_start_41 .. :try_end_41} :catchall_15

    :cond_30
    iget-object v1, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_42
    iput-object v0, p0, Lru/yandex/bq;->e:Ljava/lang/Thread;

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_15
    move-exception v1

    iget-object v2, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_43
    iput-object v0, p0, Lru/yandex/bq;->e:Ljava/lang/Thread;

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_16

    throw v1

    :catchall_16
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_20
    iget-object v1, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_44
    iput-object v0, p0, Lru/yandex/bq;->e:Ljava/lang/Thread;

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_17

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_21
    iget-object v1, p0, Lru/yandex/bq;->c:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_45
    iput-object v0, p0, Lru/yandex/bq;->e:Ljava/lang/Thread;

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_18

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1

    goto :goto_27

    :goto_26
    throw v0

    :goto_27
    goto :goto_26
.end method
