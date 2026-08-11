.class public Lru/yandex/av;
.super Ljava/lang/Object;

# interfaces
.implements Lru/yandex/yandexmapkit/net/DownloadHandler;


# instance fields
.field private a:Lru/yandex/yandexmapkit/StartupController;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/StartupController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/yandex/av;->a:Lru/yandex/yandexmapkit/StartupController;

    return-void
.end method


# virtual methods
.method public a(Lru/yandex/yandexmapkit/net/DownloadJob;)Z
    .locals 4

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->f()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->k()[B

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->k()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->k()[B

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/net/DownloadJob;->k()[B

    move-result-object p1

    invoke-static {p1}, Lru/yandex/yandexmapkit/utils/Utils;->a([B)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iget-object p1, p0, Lru/yandex/av;->a:Lru/yandex/yandexmapkit/StartupController;

    invoke-virtual {p1, v0}, Lru/yandex/yandexmapkit/StartupController;->onStartupReady(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    const/4 p1, 0x1

    return p1

    :catchall_0
    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_3
    return v1
.end method

.method public onCreateDownloadJob(I)Lru/yandex/yandexmapkit/net/DownloadJob;
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lru/yandex/ch;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/startup/?ymk_version="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "200"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&app_platform=android&screen_w="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "400"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&screen_h="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "800"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&manufacturer="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lru/yandex/yandexmapkit/utils/Utils;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/yandex/yandexmapkit/utils/Utils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&model="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Lru/yandex/yandexmapkit/utils/Utils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&os_version="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Lru/yandex/yandexmapkit/utils/Utils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&utf"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lru/yandex/yandexmapkit/net/DownloadJob;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1, p1, p0}, Lru/yandex/yandexmapkit/net/DownloadJob;-><init>(ILjava/lang/String;Lru/yandex/yandexmapkit/net/DownloadHandler;)V

    return-object v0
.end method

.method public onFinishDownload(Lru/yandex/yandexmapkit/net/DownloadJob;Z)Z
    .locals 1

    invoke-virtual {p0, p1}, Lru/yandex/av;->a(Lru/yandex/yandexmapkit/net/DownloadJob;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onStartDownload(I)V
    .locals 0

    return-void
.end method
