.class public Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;
.super Ljava/lang/Object;
.source "ScopedClassPoolRepositoryImpl.java"

# interfaces
.implements Ljavassist/scopedpool/ScopedClassPoolRepository;


# static fields
.field private static final instance:Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;


# instance fields
.field protected classpool:Ljavassist/ClassPool;

.field protected factory:Ljavassist/scopedpool/ScopedClassPoolFactory;

.field private prune:Z

.field pruneWhenCached:Z

.field protected registeredCLs:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;

    invoke-direct {v0}, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;-><init>()V

    sput-object v0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->instance:Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->prune:Z

    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->registeredCLs:Ljava/util/Map;

    .line 53
    new-instance v0, Ljavassist/scopedpool/ScopedClassPoolFactoryImpl;

    invoke-direct {v0}, Ljavassist/scopedpool/ScopedClassPoolFactoryImpl;-><init>()V

    iput-object v0, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->factory:Ljavassist/scopedpool/ScopedClassPoolFactory;

    .line 68
    invoke-static {}, Ljavassist/ClassPool;->getDefault()Ljavassist/ClassPool;

    move-result-object v0

    iput-object v0, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->classpool:Ljavassist/ClassPool;

    .line 70
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 71
    iget-object v1, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->classpool:Ljavassist/ClassPool;

    new-instance v2, Ljavassist/LoaderClassPath;

    invoke-direct {v2, v0}, Ljavassist/LoaderClassPath;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v1, v2}, Ljavassist/ClassPool;->insertClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;

    return-void
.end method

.method public static getInstance()Ljavassist/scopedpool/ScopedClassPoolRepository;
    .locals 1

    .line 61
    sget-object v0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->instance:Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;

    return-object v0
.end method


# virtual methods
.method public clearUnregisteredClassLoaders()V
    .locals 5

    .line 146
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->registeredCLs:Ljava/util/Map;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->registeredCLs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 148
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/scopedpool/ScopedClassPool;

    .line 150
    invoke-virtual {v3}, Ljavassist/scopedpool/ScopedClassPool;->isUnloadedClassLoader()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 152
    invoke-virtual {v3}, Ljavassist/scopedpool/ScopedClassPool;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const/4 v1, 0x0

    .line 162
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 163
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ClassLoader;

    invoke-virtual {p0, v3}, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->unregisterClassLoader(Ljava/lang/ClassLoader;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 166
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public createScopedClassPool(Ljava/lang/ClassLoader;Ljavassist/ClassPool;)Ljavassist/scopedpool/ScopedClassPool;
    .locals 1

    .line 100
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->factory:Ljavassist/scopedpool/ScopedClassPoolFactory;

    invoke-interface {v0, p1, p2, p0}, Ljavassist/scopedpool/ScopedClassPoolFactory;->create(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljavassist/scopedpool/ScopedClassPoolRepository;)Ljavassist/scopedpool/ScopedClassPool;

    move-result-object p1

    return-object p1
.end method

.method public findClassPool(Ljava/lang/ClassLoader;)Ljavassist/ClassPool;
    .locals 0

    if-nez p1, :cond_0

    .line 105
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->registerClassLoader(Ljava/lang/ClassLoader;)Ljavassist/ClassPool;

    move-result-object p1

    return-object p1

    .line 107
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->registerClassLoader(Ljava/lang/ClassLoader;)Ljavassist/ClassPool;

    move-result-object p1

    return-object p1
.end method

.method public getClassPoolFactory()Ljavassist/scopedpool/ScopedClassPoolFactory;
    .locals 1

    .line 186
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->factory:Ljavassist/scopedpool/ScopedClassPoolFactory;

    return-object v0
.end method

.method public getRegisteredCLs()Ljava/util/Map;
    .locals 1

    .line 136
    invoke-virtual {p0}, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->clearUnregisteredClassLoaders()V

    .line 137
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->registeredCLs:Ljava/util/Map;

    return-object v0
.end method

.method public insertDelegate(Ljavassist/scopedpool/ScopedClassPoolRepository;)V
    .locals 0

    return-void
.end method

.method public isPrune()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->prune:Z

    return v0
.end method

.method public registerClassLoader(Ljava/lang/ClassLoader;)Ljavassist/ClassPool;
    .locals 3

    .line 117
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->registeredCLs:Ljava/util/Map;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object v1, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->registeredCLs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->registeredCLs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavassist/ClassPool;

    monitor-exit v0

    return-object p1

    .line 126
    :cond_0
    iget-object v1, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->classpool:Ljavassist/ClassPool;

    invoke-virtual {p0, p1, v1}, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->createScopedClassPool(Ljava/lang/ClassLoader;Ljavassist/ClassPool;)Ljavassist/scopedpool/ScopedClassPool;

    move-result-object v1

    .line 127
    iget-object v2, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->registeredCLs:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 129
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setClassPoolFactory(Ljavassist/scopedpool/ScopedClassPoolFactory;)V
    .locals 0

    .line 182
    iput-object p1, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->factory:Ljavassist/scopedpool/ScopedClassPoolFactory;

    return-void
.end method

.method public setPrune(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->prune:Z

    return-void
.end method

.method public unregisterClassLoader(Ljava/lang/ClassLoader;)V
    .locals 2

    .line 170
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->registeredCLs:Ljava/util/Map;

    monitor-enter v0

    .line 171
    :try_start_0
    iget-object v1, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->registeredCLs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavassist/scopedpool/ScopedClassPool;

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p1}, Ljavassist/scopedpool/ScopedClassPool;->close()V

    .line 174
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
