.class public Lru/yandex/yandexmapkit/StartupController;
.super Ljava/lang/Object;


# instance fields
.field private downloader:Lru/yandex/yandexmapkit/net/Downloader;

.field private listeners:Ljava/util/List;

.field private mapController:Lru/yandex/yandexmapkit/MapController;

.field private nativeHandle:J

.field private startupParser:Lru/yandex/yandexmapkit/StartupController$StartupParser;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/MapController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/yandex/yandexmapkit/StartupController;->listeners:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lru/yandex/yandexmapkit/StartupController;->nativeHandle:J

    iput-object p1, p0, Lru/yandex/yandexmapkit/StartupController;->mapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->getDownloader()Lru/yandex/yandexmapkit/net/Downloader;

    move-result-object p1

    iput-object p1, p0, Lru/yandex/yandexmapkit/StartupController;->downloader:Lru/yandex/yandexmapkit/net/Downloader;

    new-instance p1, Lru/yandex/yandexmapkit/StartupController$StartupParser;

    invoke-direct {p1}, Lru/yandex/yandexmapkit/StartupController$StartupParser;-><init>()V

    iput-object p1, p0, Lru/yandex/yandexmapkit/StartupController;->startupParser:Lru/yandex/yandexmapkit/StartupController$StartupParser;

    return-void
.end method

.method private static fetchStartup(JLjava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method private fetchStartup(Ljava/util/HashMap;)V
    .locals 6

    new-instance v0, Lru/yandex/co;

    invoke-direct {v0}, Lru/yandex/co;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startup host="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lru/yandex/ch;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lru/yandex/ch;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/yandex/co;->a(Ljava/lang/String;)V

    invoke-static {}, Lru/yandex/yandexmapkit/net/Downloader;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/yandex/co;->a(Ljava/lang/String;)V

    invoke-static {}, Lru/yandex/core/CoreApplication;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lru/yandex/cm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/yandex/co;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lru/yandex/ch;->d()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "app_version"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lru/yandex/ch;->a()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v3, "ymk_version"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lru/yandex/ch;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lru/yandex/yandexmapkit/StartupController;->mapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v3}, Lru/yandex/yandexmapkit/MapController;->getApiKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "api_key"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lru/yandex/yandexmapkit/StartupController;->mapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v3}, Lru/yandex/yandexmapkit/MapController;->getApiKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v3, "app_id"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lru/yandex/yandexmapkit/StartupController;->mapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v3}, Lru/yandex/yandexmapkit/MapController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :goto_1
    const-string v3, "app_platform"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "screen_w"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lru/yandex/yandexmapkit/StartupController;->mapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v5}, Lru/yandex/yandexmapkit/MapController;->getWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "screen_h"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lru/yandex/yandexmapkit/StartupController;->mapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v4}, Lru/yandex/yandexmapkit/MapController;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "manufacturer"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lru/yandex/yandexmapkit/utils/Utils;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "model"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "os_version"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lru/yandex/co;->a(I)V

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lru/yandex/co;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lru/yandex/co;->a(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lru/yandex/co;->a(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lru/yandex/co;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iget-wide v1, p0, Lru/yandex/yandexmapkit/StartupController;->nativeHandle:J

    iget-object p1, v0, Lru/yandex/co;->a:Ljava/nio/ByteBuffer;

    invoke-static {v1, v2, p1}, Lru/yandex/yandexmapkit/StartupController;->fetchStartup(JLjava/nio/ByteBuffer;)V

    return-void
.end method

.method private static nativeInit(Ljava/lang/Object;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static nativeShutdown(J)V
    .locals 0

    return-void
.end method


# virtual methods
.method public addStartupListener(Lru/yandex/yandexmapkit/StartupController$StartupListener;)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/StartupController;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onStartupReady(Ljava/io/InputStream;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p1, p0, Lru/yandex/yandexmapkit/StartupController;->startupParser:Lru/yandex/yandexmapkit/StartupController$StartupParser;

    invoke-virtual {p1, v0}, Lru/yandex/yandexmapkit/StartupController$StartupParser;->parseStartup([B)Lru/yandex/br;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-boolean v0, p1, Lru/yandex/br;->g:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lru/yandex/yandexmapkit/net/Downloader;->a(Lru/yandex/br;)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/StartupController;->downloader:Lru/yandex/yandexmapkit/net/Downloader;

    invoke-static {}, Lru/yandex/yandexmapkit/net/Downloader;->getUUID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/net/Downloader;->a(I)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/StartupController;->downloader:Lru/yandex/yandexmapkit/net/Downloader;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/net/Downloader;->b()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lru/yandex/yandexmapkit/StartupController;->listeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/yandex/yandexmapkit/StartupController$StartupListener;

    invoke-interface {v1, p1}, Lru/yandex/yandexmapkit/StartupController$StartupListener;->onStartup(Lru/yandex/br;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    return-void
.end method

.method public onStartupReady(Ljava/nio/ByteBuffer;)V
    .locals 2

    new-instance v0, Lru/yandex/co;

    invoke-direct {v0, p1}, Lru/yandex/co;-><init>(Ljava/nio/ByteBuffer;)V

    iget-object p1, v0, Lru/yandex/co;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    new-array p1, p1, [B

    iget-object v0, v0, Lru/yandex/co;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :try_start_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/StartupController;->startupParser:Lru/yandex/yandexmapkit/StartupController$StartupParser;

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/StartupController$StartupParser;->parseStartup([B)Lru/yandex/br;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v0, p1, Lru/yandex/br;->g:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lru/yandex/yandexmapkit/net/Downloader;->a(Lru/yandex/br;)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/StartupController;->downloader:Lru/yandex/yandexmapkit/net/Downloader;

    invoke-static {}, Lru/yandex/yandexmapkit/net/Downloader;->getUUID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/net/Downloader;->a(I)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/StartupController;->downloader:Lru/yandex/yandexmapkit/net/Downloader;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/net/Downloader;->b()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lru/yandex/yandexmapkit/StartupController;->listeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/yandex/yandexmapkit/StartupController$StartupListener;

    invoke-interface {v1, p1}, Lru/yandex/yandexmapkit/StartupController$StartupListener;->onStartup(Lru/yandex/br;)V

    goto :goto_1

    :catch_0
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 5

    iget-wide v0, p0, Lru/yandex/yandexmapkit/StartupController;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iput-wide v2, p0, Lru/yandex/yandexmapkit/StartupController;->nativeHandle:J

    :cond_0
    return-void
.end method

.method public removeStartupListener(Lru/yandex/yandexmapkit/StartupController$StartupListener;)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/StartupController;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resume(Ljava/util/HashMap;)V
    .locals 5

    iget-object v0, p0, Lru/yandex/yandexmapkit/StartupController;->mapController:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getDownloader()Lru/yandex/yandexmapkit/net/Downloader;

    move-result-object v0

    new-instance v1, Lru/yandex/av;

    invoke-direct {v1, p0}, Lru/yandex/av;-><init>(Lru/yandex/yandexmapkit/StartupController;)V

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Lru/yandex/yandexmapkit/net/Downloader;->downloadProccess(Lru/yandex/yandexmapkit/net/DownloadHandler;I)V

    iget-wide v0, p0, Lru/yandex/yandexmapkit/StartupController;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {p0}, Lru/yandex/yandexmapkit/StartupController;->nativeInit(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lru/yandex/yandexmapkit/StartupController;->nativeHandle:J

    invoke-direct {p0, p1}, Lru/yandex/yandexmapkit/StartupController;->fetchStartup(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public setStartupParser(Lru/yandex/yandexmapkit/StartupController$StartupParser;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/yandexmapkit/StartupController;->startupParser:Lru/yandex/yandexmapkit/StartupController$StartupParser;

    return-void
.end method
