.class public Lcom/txdriver/http/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/txdriver/http/request/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private cacheTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/http/RequestManager;->cacheTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/http/RequestManager;->cache:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/http/RequestManager;)Ljava/util/Map;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/txdriver/http/RequestManager;->cache:Ljava/util/Map;

    return-object p0
.end method

.method private getFromCache(Lcom/txdriver/http/request/HttpRequest;)Lcom/txdriver/http/request/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/txdriver/http/request/HttpRequest<",
            "TT;>;)",
            "Lcom/txdriver/http/request/HttpRequest<",
            "TT;>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/txdriver/http/RequestManager;->cache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/txdriver/http/request/HttpRequest;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/http/request/HttpRequest;

    return-object p1
.end method

.method private putToCache(Lcom/txdriver/http/request/HttpRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/txdriver/http/request/HttpRequest<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    invoke-virtual {p1}, Lcom/txdriver/http/request/HttpRequest;->hashCode()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/txdriver/http/RequestManager;->cache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v1, p0, Lcom/txdriver/http/RequestManager;->cacheTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/txdriver/http/RequestManager$1;

    invoke-direct {v2, p0, v0}, Lcom/txdriver/http/RequestManager$1;-><init>(Lcom/txdriver/http/RequestManager;I)V

    .line 50
    invoke-virtual {p1}, Lcom/txdriver/http/request/HttpRequest;->getCacheTime()I

    move-result p1

    int-to-long v3, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 45
    invoke-interface {v1, v2, v3, v4, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public execute(Lcom/txdriver/http/request/HttpRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/txdriver/http/request/HttpRequest<",
            "TT;>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lcom/txdriver/http/RequestManager;->getFromCache(Lcom/txdriver/http/request/HttpRequest;)Lcom/txdriver/http/request/HttpRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Lcom/txdriver/http/request/HttpRequest;->getResponse()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {v0}, Lcom/txdriver/http/request/HttpRequest;->getResponse()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/txdriver/http/request/HttpRequest;->setResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 24
    :cond_0
    invoke-direct {p0, p1}, Lcom/txdriver/http/RequestManager;->putToCache(Lcom/txdriver/http/request/HttpRequest;)V

    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 26
    invoke-virtual {p1, v0}, Lcom/txdriver/http/request/HttpRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public request(Lcom/txdriver/http/request/HttpRequest;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/txdriver/http/request/HttpRequest<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lcom/txdriver/http/RequestManager;->getFromCache(Lcom/txdriver/http/request/HttpRequest;)Lcom/txdriver/http/request/HttpRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Lcom/txdriver/http/request/HttpRequest;->getResponse()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v0}, Lcom/txdriver/http/request/HttpRequest;->getResponse()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/txdriver/http/request/HttpRequest;->request()Ljava/lang/Object;

    move-result-object v0

    .line 35
    invoke-direct {p0, p1}, Lcom/txdriver/http/RequestManager;->putToCache(Lcom/txdriver/http/request/HttpRequest;)V

    return-object v0
.end method
