.class public Ljavassist/scopedpool/ScopedClassPool;
.super Ljavassist/ClassPool;
.source "ScopedClassPool.java"


# instance fields
.field protected classLoader:Ljava/lang/ref/WeakReference;

.field protected classPath:Ljavassist/LoaderClassPath;

.field isBootstrapCl:Z

.field protected repository:Ljavassist/scopedpool/ScopedClassPoolRepository;

.field protected softcache:Ljavassist/scopedpool/SoftValueHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 49
    sput-boolean v0, Ljavassist/ClassPool;->doPruning:Z

    .line 50
    sput-boolean v0, Ljavassist/ClassPool;->releaseUnmodifiedClassFile:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljavassist/scopedpool/ScopedClassPoolRepository;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3, v0}, Ljavassist/scopedpool/ScopedClassPool;-><init>(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljavassist/scopedpool/ScopedClassPoolRepository;Z)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljavassist/scopedpool/ScopedClassPoolRepository;Z)V
    .locals 0

    .line 83
    invoke-direct {p0, p2}, Ljavassist/ClassPool;-><init>(Ljavassist/ClassPool;)V

    .line 44
    new-instance p2, Ljavassist/scopedpool/SoftValueHashMap;

    invoke-direct {p2}, Ljavassist/scopedpool/SoftValueHashMap;-><init>()V

    iput-object p2, p0, Ljavassist/scopedpool/ScopedClassPool;->softcache:Ljavassist/scopedpool/SoftValueHashMap;

    const/4 p2, 0x1

    .line 46
    iput-boolean p2, p0, Ljavassist/scopedpool/ScopedClassPool;->isBootstrapCl:Z

    .line 84
    iput-object p3, p0, Ljavassist/scopedpool/ScopedClassPool;->repository:Ljavassist/scopedpool/ScopedClassPoolRepository;

    .line 85
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Ljavassist/scopedpool/ScopedClassPool;->classLoader:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 87
    new-instance p3, Ljavassist/LoaderClassPath;

    invoke-direct {p3, p1}, Ljavassist/LoaderClassPath;-><init>(Ljava/lang/ClassLoader;)V

    iput-object p3, p0, Ljavassist/scopedpool/ScopedClassPool;->classPath:Ljavassist/LoaderClassPath;

    .line 88
    invoke-virtual {p0, p3}, Ljavassist/scopedpool/ScopedClassPool;->insertClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;

    .line 90
    :cond_0
    iput-boolean p2, p0, Ljavassist/scopedpool/ScopedClassPool;->childFirstLookup:Z

    if-nez p4, :cond_1

    if-nez p1, :cond_1

    .line 93
    iput-boolean p2, p0, Ljavassist/scopedpool/ScopedClassPool;->isBootstrapCl:Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 224
    invoke-super {p0, p1, p2, p3}, Ljavassist/ClassPool;->cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object p3, p0, Ljavassist/scopedpool/ScopedClassPool;->repository:Ljavassist/scopedpool/ScopedClassPoolRepository;

    invoke-interface {p3}, Ljavassist/scopedpool/ScopedClassPoolRepository;->isPrune()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 228
    invoke-virtual {p2}, Ljavassist/CtClass;->prune()V

    .line 229
    :cond_1
    iget-object p3, p0, Ljavassist/scopedpool/ScopedClassPool;->softcache:Ljavassist/scopedpool/SoftValueHashMap;

    invoke-virtual {p3, p1, p2}, Ljavassist/scopedpool/SoftValueHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 120
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->classPath:Ljavassist/LoaderClassPath;

    invoke-virtual {p0, v0}, Ljavassist/scopedpool/ScopedClassPool;->removeClassPath(Ljavassist/ClassPath;)V

    .line 121
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->classPath:Ljavassist/LoaderClassPath;

    invoke-virtual {v0}, Ljavassist/LoaderClassPath;->close()V

    .line 122
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->classes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 123
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->softcache:Ljavassist/scopedpool/SoftValueHashMap;

    invoke-virtual {v0}, Ljavassist/scopedpool/SoftValueHashMap;->clear()V

    return-void
.end method

.method public declared-synchronized flushClass(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->classes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->softcache:Ljavassist/scopedpool/SoftValueHashMap;

    invoke-virtual {v0, p1}, Ljavassist/scopedpool/SoftValueHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getCached(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 8

    .line 167
    invoke-virtual {p0, p1}, Ljavassist/scopedpool/ScopedClassPool;->getCachedLocally(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    if-nez v0, :cond_5

    .line 171
    invoke-virtual {p0}, Ljavassist/scopedpool/ScopedClassPool;->getClassLoader0()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/16 v3, 0x24

    .line 173
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[\\.]"

    const-string v5, "/"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 180
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[\\.]"

    const-string v7, "/"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 185
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_5

    .line 189
    iget-object v1, p0, Ljavassist/scopedpool/ScopedClassPool;->repository:Ljavassist/scopedpool/ScopedClassPoolRepository;

    invoke-interface {v1}, Ljavassist/scopedpool/ScopedClassPoolRepository;->getRegisteredCLs()Ljava/util/Map;

    move-result-object v1

    .line 190
    monitor-enter v1

    .line 191
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 192
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 193
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/scopedpool/ScopedClassPool;

    .line 194
    invoke-virtual {v3}, Ljavassist/scopedpool/ScopedClassPool;->isUnloadedClassLoader()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 195
    iget-object v4, p0, Ljavassist/scopedpool/ScopedClassPool;->repository:Ljavassist/scopedpool/ScopedClassPoolRepository;

    invoke-virtual {v3}, Ljavassist/scopedpool/ScopedClassPool;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-interface {v4, v3}, Ljavassist/scopedpool/ScopedClassPoolRepository;->unregisterClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_1

    .line 200
    :cond_3
    invoke-virtual {v3, p1}, Ljavassist/scopedpool/ScopedClassPool;->getCachedLocally(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 202
    monitor-exit v1

    return-object v0

    .line 205
    :cond_4
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_2
    return-object v0
.end method

.method protected getCachedLocally(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 2

    .line 251
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->classes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/CtClass;

    if-eqz v0, :cond_0

    return-object v0

    .line 254
    :cond_0
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->softcache:Ljavassist/scopedpool/SoftValueHashMap;

    monitor-enter v0

    .line 255
    :try_start_0
    iget-object v1, p0, Ljavassist/scopedpool/ScopedClassPool;->softcache:Ljavassist/scopedpool/SoftValueHashMap;

    invoke-virtual {v1, p1}, Ljavassist/scopedpool/SoftValueHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavassist/CtClass;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 256
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .line 103
    invoke-virtual {p0}, Ljavassist/scopedpool/ScopedClassPool;->getClassLoader0()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_1

    .line 104
    iget-boolean v1, p0, Ljavassist/scopedpool/ScopedClassPool;->isBootstrapCl:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ClassLoader has been garbage collected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected getClassLoader0()Ljava/lang/ClassLoader;
    .locals 1

    .line 113
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->classLoader:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public declared-synchronized getLocally(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 270
    :try_start_0
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->softcache:Ljavassist/scopedpool/SoftValueHashMap;

    invoke-virtual {v0, p1}, Ljavassist/scopedpool/SoftValueHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->classes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/CtClass;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 273
    invoke-virtual {p0, p1, v0}, Ljavassist/scopedpool/ScopedClassPool;->createCtClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 276
    invoke-super {p0, p1, v0, v1}, Ljavassist/ClassPool;->cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V

    goto :goto_0

    .line 275
    :cond_0
    new-instance v0, Ljavassist/NotFoundException;

    invoke-direct {v0, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isUnloadedClassLoader()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lockInCache(Ljavassist/CtClass;)V
    .locals 2

    .line 240
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-super {p0, v0, p1, v1}, Ljavassist/ClassPool;->cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V

    return-void
.end method

.method public declared-synchronized soften(Ljavassist/CtClass;)V
    .locals 2

    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->repository:Ljavassist/scopedpool/ScopedClassPoolRepository;

    invoke-interface {v0}, Ljavassist/scopedpool/ScopedClassPoolRepository;->isPrune()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p1}, Ljavassist/CtClass;->prune()V

    .line 146
    :cond_0
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->classes:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->softcache:Ljavassist/scopedpool/SoftValueHashMap;

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljavassist/scopedpool/SoftValueHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toClass(Ljavassist/CtClass;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 306
    invoke-virtual {p0, p1}, Ljavassist/scopedpool/ScopedClassPool;->lockInCache(Ljavassist/CtClass;)V

    .line 307
    invoke-virtual {p0}, Ljavassist/scopedpool/ScopedClassPool;->getClassLoader0()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-super {p0, p1, p2, p3}, Ljavassist/ClassPool;->toClass(Ljavassist/CtClass;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
