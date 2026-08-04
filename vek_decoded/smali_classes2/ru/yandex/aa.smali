.class public Lru/yandex/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lru/yandex/yandexmapkit/MapModel;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/MapModel;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/aa;->a:Lru/yandex/yandexmapkit/MapModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lru/yandex/aa;->a:Lru/yandex/yandexmapkit/MapModel;

    invoke-static {v0}, Lru/yandex/yandexmapkit/MapModel;->access$000(Lru/yandex/yandexmapkit/MapModel;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lru/yandex/aa;->a:Lru/yandex/yandexmapkit/MapModel;

    invoke-static {v1}, Lru/yandex/yandexmapkit/MapModel;->access$100(Lru/yandex/yandexmapkit/MapModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lru/yandex/aa;->a:Lru/yandex/yandexmapkit/MapModel;

    invoke-static {v2}, Lru/yandex/yandexmapkit/MapModel;->access$200(Lru/yandex/yandexmapkit/MapModel;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lru/yandex/aa;->a:Lru/yandex/yandexmapkit/MapModel;

    invoke-static {v0}, Lru/yandex/yandexmapkit/MapModel;->access$200(Lru/yandex/yandexmapkit/MapModel;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/yandex/yandexmapkit/map/MapEvent;

    iget-object v2, p0, Lru/yandex/aa;->a:Lru/yandex/yandexmapkit/MapModel;

    invoke-static {v2}, Lru/yandex/yandexmapkit/MapModel;->access$200(Lru/yandex/yandexmapkit/MapModel;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lru/yandex/aa;->a:Lru/yandex/yandexmapkit/MapModel;

    invoke-static {v2}, Lru/yandex/yandexmapkit/MapModel;->access$100(Lru/yandex/yandexmapkit/MapModel;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    :try_start_2
    iget-object v1, p0, Lru/yandex/aa;->a:Lru/yandex/yandexmapkit/MapModel;

    invoke-static {v1}, Lru/yandex/yandexmapkit/MapModel;->access$300(Lru/yandex/yandexmapkit/MapModel;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v2, p0, Lru/yandex/aa;->a:Lru/yandex/yandexmapkit/MapModel;

    invoke-static {v2}, Lru/yandex/yandexmapkit/MapModel;->access$300(Lru/yandex/yandexmapkit/MapModel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/yandex/yandexmapkit/map/OnMapListener;

    invoke-interface {v3, v0}, Lru/yandex/yandexmapkit/map/OnMapListener;->onMapActionEvent(Lru/yandex/yandexmapkit/map/MapEvent;)V

    goto :goto_2

    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    nop

    goto :goto_0

    :cond_3
    return-void
.end method
