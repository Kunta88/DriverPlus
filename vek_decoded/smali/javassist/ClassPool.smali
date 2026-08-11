.class public Ljavassist/ClassPool;
.super Ljava/lang/Object;
.source "ClassPool.java"


# static fields
.field private static final COMPRESS_THRESHOLD:I = 0x64

.field private static final INIT_HASH_SIZE:I = 0xbf

.field private static defaultPool:Ljavassist/ClassPool;

.field private static defineClass1:Ljava/lang/reflect/Method;

.field private static defineClass2:Ljava/lang/reflect/Method;

.field private static definePackage:Ljava/lang/reflect/Method;

.field public static doPruning:Z

.field public static releaseUnmodifiedClassFile:Z


# instance fields
.field private cflow:Ljava/util/Hashtable;

.field public childFirstLookup:Z

.field protected classes:Ljava/util/Hashtable;

.field private compressCount:I

.field private importedPackages:Ljava/util/ArrayList;

.field protected parent:Ljavassist/ClassPool;

.field protected source:Ljavassist/ClassPoolTail;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 77
    :try_start_0
    new-instance v0, Ljavassist/ClassPool$1;

    invoke-direct {v0}, Ljavassist/ClassPool$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 128
    sput-boolean v0, Ljavassist/ClassPool;->doPruning:Z

    const/4 v0, 0x1

    .line 143
    sput-boolean v0, Ljavassist/ClassPool;->releaseUnmodifiedClassFile:Z

    const/4 v0, 0x0

    .line 235
    sput-object v0, Ljavassist/ClassPool;->defaultPool:Ljavassist/ClassPool;

    return-void

    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v0

    const-string v2, "cannot initialize ClassPool"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, v0}, Ljavassist/ClassPool;-><init>(Ljavassist/ClassPool;)V

    return-void
.end method

.method public constructor <init>(Ljavassist/ClassPool;)V
    .locals 6

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Ljavassist/ClassPool;->childFirstLookup:Z

    const/4 v1, 0x0

    .line 152
    iput-object v1, p0, Ljavassist/ClassPool;->cflow:Ljava/util/Hashtable;

    .line 188
    new-instance v2, Ljava/util/Hashtable;

    const/16 v3, 0xbf

    invoke-direct {v2, v3}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v2, p0, Ljavassist/ClassPool;->classes:Ljava/util/Hashtable;

    .line 189
    new-instance v2, Ljavassist/ClassPoolTail;

    invoke-direct {v2}, Ljavassist/ClassPoolTail;-><init>()V

    iput-object v2, p0, Ljavassist/ClassPool;->source:Ljavassist/ClassPoolTail;

    .line 190
    iput-object p1, p0, Ljavassist/ClassPool;->parent:Ljavassist/ClassPool;

    if-nez p1, :cond_0

    .line 192
    sget-object p1, Ljavassist/CtClass;->primitiveTypes:[Ljavassist/CtClass;

    const/4 v2, 0x0

    .line 193
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 194
    iget-object v3, p0, Ljavassist/ClassPool;->classes:Ljava/util/Hashtable;

    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, p1, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :cond_0
    iput-object v1, p0, Ljavassist/ClassPool;->cflow:Ljava/util/Hashtable;

    .line 198
    iput v0, p0, Ljavassist/ClassPool;->compressCount:I

    .line 199
    invoke-virtual {p0}, Ljavassist/ClassPool;->clearImportedPackages()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 175
    invoke-direct {p0, v0}, Ljavassist/ClassPool;-><init>(Ljavassist/ClassPool;)V

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p0}, Ljavassist/ClassPool;->appendSystemPath()Ljavassist/ClassPath;

    :cond_0
    return-void
.end method

.method static synthetic access$002(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    .line 70
    sput-object p0, Ljavassist/ClassPool;->defineClass1:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$102(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    .line 70
    sput-object p0, Ljavassist/ClassPool;->defineClass2:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$202(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    .line 70
    sput-object p0, Ljavassist/ClassPool;->definePackage:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 1022
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getDefault()Ljavassist/ClassPool;
    .locals 3

    const-class v0, Ljavassist/ClassPool;

    monitor-enter v0

    .line 227
    :try_start_0
    sget-object v1, Ljavassist/ClassPool;->defaultPool:Ljavassist/ClassPool;

    if-nez v1, :cond_0

    .line 228
    new-instance v1, Ljavassist/ClassPool;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavassist/ClassPool;-><init>(Ljavassist/ClassPool;)V

    sput-object v1, Ljavassist/ClassPool;->defaultPool:Ljavassist/ClassPool;

    .line 229
    invoke-virtual {v1}, Ljavassist/ClassPool;->appendSystemPath()Ljavassist/ClassPath;

    .line 232
    :cond_0
    sget-object v1, Ljavassist/ClassPool;->defaultPool:Ljavassist/ClassPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized toClass2(Ljava/lang/reflect/Method;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Ljavassist/ClassPool;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1110
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 1112
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1115
    :try_start_2
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public appendClassPath(Ljava/lang/String;)Ljavassist/ClassPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 933
    iget-object v0, p0, Ljavassist/ClassPool;->source:Ljavassist/ClassPoolTail;

    invoke-virtual {v0, p1}, Ljavassist/ClassPoolTail;->appendClassPath(Ljava/lang/String;)Ljavassist/ClassPath;

    move-result-object p1

    return-object p1
.end method

.method public appendClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;
    .locals 1

    .line 897
    iget-object v0, p0, Ljavassist/ClassPool;->source:Ljavassist/ClassPoolTail;

    invoke-virtual {v0, p1}, Ljavassist/ClassPoolTail;->appendClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;

    move-result-object p1

    return-object p1
.end method

.method public appendPathList(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 958
    sget-char v0, Ljava/io/File;->pathSeparatorChar:C

    const/4 v1, 0x0

    .line 961
    :goto_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_0

    .line 963
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavassist/ClassPool;->appendClassPath(Ljava/lang/String;)Ljavassist/ClassPath;

    return-void

    .line 967
    :cond_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavassist/ClassPool;->appendClassPath(Ljava/lang/String;)Ljavassist/ClassPath;

    add-int/lit8 v1, v2, 0x1

    goto :goto_0
.end method

.method public appendSystemPath()Ljavassist/ClassPath;
    .locals 1

    .line 871
    iget-object v0, p0, Ljavassist/ClassPool;->source:Ljavassist/ClassPoolTail;

    invoke-virtual {v0}, Ljavassist/ClassPoolTail;->appendSystemPath()Ljavassist/ClassPath;

    move-result-object v0

    return-object v0
.end method

.method protected cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V
    .locals 0

    .line 256
    iget-object p3, p0, Ljavassist/ClassPool;->classes:Ljava/util/Hashtable;

    invoke-virtual {p3, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method checkNotExists(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 3

    .line 627
    invoke-virtual {p0, p1}, Ljavassist/ClassPool;->getCached(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    if-nez v0, :cond_0

    .line 629
    iget-boolean v1, p0, Ljavassist/ClassPool;->childFirstLookup:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Ljavassist/ClassPool;->parent:Ljavassist/ClassPool;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 631
    :try_start_0
    invoke-virtual {v1, p1, v2}, Ljavassist/ClassPool;->get0(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method checkNotFrozen(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 602
    invoke-virtual {p0, p1}, Ljavassist/ClassPool;->getCached(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    if-nez v0, :cond_1

    .line 604
    iget-boolean v1, p0, Ljavassist/ClassPool;->childFirstLookup:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Ljavassist/ClassPool;->parent:Ljavassist/ClassPool;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 606
    :try_start_0
    invoke-virtual {v1, p1, v2}, Ljavassist/ClassPool;->get0(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-nez v0, :cond_0

    goto :goto_1

    .line 610
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is in a parent ClassPool.  Use the parent."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_1
    invoke-virtual {v0}, Ljavassist/CtClass;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    return-void

    .line 616
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": frozen class (cannot edit)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method declared-synchronized classNameChanged(Ljava/lang/String;Ljavassist/CtClass;)V
    .locals 1

    monitor-enter p0

    .line 417
    :try_start_0
    invoke-virtual {p0, p1}, Ljavassist/ClassPool;->getCached(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 419
    invoke-virtual {p0, p1}, Ljavassist/ClassPool;->removeCached(Ljava/lang/String;)Ljavassist/CtClass;

    .line 421
    :cond_0
    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    .line 422
    invoke-virtual {p0, p1}, Ljavassist/ClassPool;->checkNotFrozen(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 423
    invoke-virtual {p0, p1, p2, v0}, Ljavassist/ClassPool;->cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clearImportedPackages()V
    .locals 2

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/ClassPool;->importedPackages:Ljava/util/ArrayList;

    const-string v1, "java.lang"

    .line 320
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method compress()V
    .locals 2

    .line 282
    iget v0, p0, Ljavassist/ClassPool;->compressCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljavassist/ClassPool;->compressCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 283
    iput v0, p0, Ljavassist/ClassPool;->compressCount:I

    .line 284
    iget-object v0, p0, Ljavassist/ClassPool;->classes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 285
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/CtClass;

    invoke-virtual {v1}, Ljavassist/CtClass;->compress()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected createCtClass(Ljava/lang/String;Z)Ljavassist/CtClass;
    .locals 4

    const/4 v0, 0x0

    .line 563
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 564
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->toClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v1, "[]"

    .line 566
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 567
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 568
    invoke-virtual {p0, v0}, Ljavassist/ClassPool;->getCached(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p2

    if-nez p2, :cond_2

    :cond_1
    invoke-virtual {p0, v0}, Ljavassist/ClassPool;->find(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p2

    if-nez p2, :cond_2

    return-object v3

    .line 571
    :cond_2
    new-instance p2, Ljavassist/CtArray;

    invoke-direct {p2, p1, p0}, Ljavassist/CtArray;-><init>(Ljava/lang/String;Ljavassist/ClassPool;)V

    return-object p2

    .line 574
    :cond_3
    invoke-virtual {p0, p1}, Ljavassist/ClassPool;->find(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p2

    if-nez p2, :cond_4

    return-object v3

    .line 577
    :cond_4
    new-instance p2, Ljavassist/CtClassType;

    invoke-direct {p2, p1, p0}, Ljavassist/CtClassType;-><init>(Ljava/lang/String;Ljavassist/ClassPool;)V

    return-object p2
.end method

.method public find(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    .line 590
    iget-object v0, p0, Ljavassist/ClassPool;->source:Ljavassist/ClassPoolTail;

    invoke-virtual {v0, p1}, Ljavassist/ClassPoolTail;->find(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 447
    invoke-virtual {p0, p1, v0}, Ljavassist/ClassPool;->get0(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {v0}, Ljavassist/CtClass;->incGetCounter()V

    return-object v0

    .line 450
    :cond_1
    new-instance v0, Ljavassist/NotFoundException;

    invoke-direct {v0, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get([Ljava/lang/String;)[Ljavassist/CtClass;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljavassist/CtClass;

    return-object p1

    .line 666
    :cond_0
    array-length v1, p1

    .line 667
    new-array v2, v1, [Ljavassist/CtClass;

    :goto_0
    if-ge v0, v1, :cond_1

    .line 669
    aget-object v3, p1, v0

    invoke-virtual {p0, v3}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method protected declared-synchronized get0(Ljava/lang/String;Z)Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 528
    :try_start_0
    invoke-virtual {p0, p1}, Ljavassist/ClassPool;->getCached(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 530
    monitor-exit p0

    return-object v0

    .line 533
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ljavassist/ClassPool;->childFirstLookup:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ljavassist/ClassPool;->parent:Ljavassist/ClassPool;

    if-eqz v0, :cond_1

    .line 534
    invoke-virtual {v0, p1, p2}, Ljavassist/ClassPool;->get0(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 536
    monitor-exit p0

    return-object v0

    .line 539
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1, p2}, Ljavassist/ClassPool;->createCtClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 543
    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ljavassist/ClassPool;->cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 545
    :cond_2
    monitor-exit p0

    return-object v0

    .line 548
    :cond_3
    :try_start_3
    iget-boolean v1, p0, Ljavassist/ClassPool;->childFirstLookup:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Ljavassist/ClassPool;->parent:Ljavassist/ClassPool;

    if-eqz v1, :cond_4

    .line 549
    invoke-virtual {v1, p1, p2}, Ljavassist/ClassPool;->get0(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 551
    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAndRename(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 399
    invoke-virtual {p0, p1, v0}, Ljavassist/ClassPool;->get0(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 403
    instance-of p1, v0, Ljavassist/CtClassType;

    if-eqz p1, :cond_0

    .line 404
    move-object p1, v0

    check-cast p1, Ljavassist/CtClassType;

    invoke-virtual {p1, p0}, Ljavassist/CtClassType;->setClassPool(Ljavassist/ClassPool;)V

    .line 406
    :cond_0
    invoke-virtual {v0, p2}, Ljavassist/CtClass;->setName(Ljava/lang/String;)V

    return-object v0

    .line 401
    :cond_1
    new-instance p2, Ljavassist/NotFoundException;

    invoke-direct {p2, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected getCached(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 1

    .line 245
    iget-object v0, p0, Ljavassist/ClassPool;->classes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavassist/CtClass;

    return-object p1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 1014
    invoke-static {}, Ljavassist/ClassPool;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getCtClass(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 512
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    .line 513
    invoke-static {p1, p0}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object p1

    return-object p1

    .line 515
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p1

    return-object p1
.end method

.method public getImportedPackages()Ljava/util/Iterator;
    .locals 1

    .line 330
    iget-object v0, p0, Ljavassist/ClassPool;->importedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getMethod(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 684
    invoke-virtual {p0, p1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p1

    .line 685
    invoke-virtual {p1, p2}, Ljavassist/CtClass;->getDeclaredMethod(Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object p1

    return-object p1
.end method

.method public getOrNull(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 481
    :try_start_0
    invoke-virtual {p0, p1, v1}, Ljavassist/ClassPool;->get0(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_1

    .line 486
    invoke-virtual {v0}, Ljavassist/CtClass;->incGetCounter()V

    :cond_1
    return-object v0
.end method

.method public importPackage(Ljava/lang/String;)V
    .locals 1

    .line 308
    iget-object v0, p0, Ljavassist/ClassPool;->importedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public insertClassPath(Ljava/lang/String;)Ljavassist/ClassPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 915
    iget-object v0, p0, Ljavassist/ClassPool;->source:Ljavassist/ClassPoolTail;

    invoke-virtual {v0, p1}, Ljavassist/ClassPoolTail;->insertClassPath(Ljava/lang/String;)Ljavassist/ClassPath;

    move-result-object p1

    return-object p1
.end method

.method public insertClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;
    .locals 1

    .line 884
    iget-object v0, p0, Ljavassist/ClassPool;->source:Ljavassist/ClassPoolTail;

    invoke-virtual {v0, p1}, Ljavassist/ClassPoolTail;->insertClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;

    move-result-object p1

    return-object p1
.end method

.method public lookupCflow(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1

    .line 372
    iget-object v0, p0, Ljavassist/ClassPool;->cflow:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavassist/ClassPool;->cflow:Ljava/util/Hashtable;

    .line 375
    :cond_0
    iget-object v0, p0, Ljavassist/ClassPool;->cflow:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    return-object p1
.end method

.method public makeClass(Ljava/io/InputStream;)Ljavassist/CtClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 706
    invoke-virtual {p0, p1, v0}, Ljavassist/ClassPool;->makeClass(Ljava/io/InputStream;Z)Ljavassist/CtClass;

    move-result-object p1

    return-object p1
.end method

.method public makeClass(Ljava/io/InputStream;Z)Ljavassist/CtClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 726
    invoke-virtual {p0}, Ljavassist/ClassPool;->compress()V

    .line 727
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 728
    new-instance p1, Ljavassist/CtClassType;

    invoke-direct {p1, v0, p0}, Ljavassist/CtClassType;-><init>(Ljava/io/InputStream;Ljavassist/ClassPool;)V

    .line 729
    invoke-virtual {p1}, Ljavassist/CtClass;->checkModify()V

    .line 730
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 732
    invoke-virtual {p0, v0}, Ljavassist/ClassPool;->checkNotFrozen(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x1

    .line 734
    invoke-virtual {p0, v0, p1, p2}, Ljavassist/ClassPool;->cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V

    return-object p1
.end method

.method public makeClass(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 787
    invoke-virtual {p0, p1, v0}, Ljavassist/ClassPool;->makeClass(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized makeClass(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    monitor-enter p0

    .line 810
    :try_start_0
    invoke-virtual {p0, p1}, Ljavassist/ClassPool;->checkNotFrozen(Ljava/lang/String;)V

    .line 811
    new-instance v0, Ljavassist/CtNewClass;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1, p2}, Ljavassist/CtNewClass;-><init>(Ljava/lang/String;Ljavassist/ClassPool;ZLjavassist/CtClass;)V

    const/4 p2, 0x1

    .line 812
    invoke-virtual {p0, p1, v0, p2}, Ljavassist/ClassPool;->cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public makeClassIfNew(Ljava/io/InputStream;)Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 756
    invoke-virtual {p0}, Ljavassist/ClassPool;->compress()V

    .line 757
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 758
    new-instance p1, Ljavassist/CtClassType;

    invoke-direct {p1, v0, p0}, Ljavassist/CtClassType;-><init>(Ljava/io/InputStream;Ljavassist/ClassPool;)V

    .line 759
    invoke-virtual {p1}, Ljavassist/CtClass;->checkModify()V

    .line 760
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 761
    invoke-virtual {p0, v0}, Ljavassist/ClassPool;->checkNotExists(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/4 v1, 0x1

    .line 765
    invoke-virtual {p0, v0, p1, v1}, Ljavassist/ClassPool;->cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V

    return-object p1
.end method

.method public makeInterface(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 839
    invoke-virtual {p0, p1, v0}, Ljavassist/ClassPool;->makeInterface(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized makeInterface(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    monitor-enter p0

    .line 854
    :try_start_0
    invoke-virtual {p0, p1}, Ljavassist/ClassPool;->checkNotFrozen(Ljava/lang/String;)V

    .line 855
    new-instance v0, Ljavassist/CtNewClass;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1, p2}, Ljavassist/CtNewClass;-><init>(Ljava/lang/String;Ljavassist/ClassPool;ZLjavassist/CtClass;)V

    .line 856
    invoke-virtual {p0, p1, v0, v1}, Ljavassist/ClassPool;->cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized makeNestedClass(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 3

    monitor-enter p0

    .line 824
    :try_start_0
    invoke-virtual {p0, p1}, Ljavassist/ClassPool;->checkNotFrozen(Ljava/lang/String;)V

    .line 825
    new-instance v0, Ljavassist/CtNewNestedClass;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, Ljavassist/CtNewNestedClass;-><init>(Ljava/lang/String;Ljavassist/ClassPool;ZLjavassist/CtClass;)V

    const/4 v1, 0x1

    .line 826
    invoke-virtual {p0, p1, v0, v1}, Ljavassist/ClassPool;->cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public makePackage(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    const/4 v1, 0x0

    aput-object v1, v0, p2

    const/4 p2, 0x2

    aput-object v1, v0, p2

    const/4 p2, 0x3

    aput-object v1, v0, p2

    const/4 p2, 0x4

    aput-object v1, v0, p2

    const/4 p2, 0x5

    aput-object v1, v0, p2

    const/4 p2, 0x6

    aput-object v1, v0, p2

    const/4 p2, 0x7

    aput-object v1, v0, p2

    .line 1143
    :try_start_0
    sget-object p2, Ljavassist/ClassPool;->definePackage:Ljava/lang/reflect/Method;

    invoke-static {p2, p1, v0}, Ljavassist/ClassPool;->toClass2(Ljava/lang/reflect/Method;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1147
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1150
    instance-of p1, p2, Ljava/lang/IllegalArgumentException;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    move-object p1, p2

    .line 1160
    :cond_1
    :goto_0
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method openClassfile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 642
    iget-object v0, p0, Ljavassist/ClassPool;->source:Ljavassist/ClassPoolTail;

    invoke-virtual {v0, p1}, Ljavassist/ClassPoolTail;->openClassfile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method recordCflow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 360
    iget-object v0, p0, Ljavassist/ClassPool;->cflow:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavassist/ClassPool;->cflow:Ljava/util/Hashtable;

    .line 363
    :cond_0
    iget-object v0, p0, Ljavassist/ClassPool;->cflow:Ljava/util/Hashtable;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public recordInvalidClassName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected removeCached(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 1

    .line 267
    iget-object v0, p0, Ljavassist/ClassPool;->classes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavassist/CtClass;

    return-object p1
.end method

.method public removeClassPath(Ljavassist/ClassPath;)V
    .locals 1

    .line 942
    iget-object v0, p0, Ljavassist/ClassPool;->source:Ljavassist/ClassPoolTail;

    invoke-virtual {v0, p1}, Ljavassist/ClassPoolTail;->removeClassPath(Ljavassist/ClassPath;)V

    return-void
.end method

.method public toClass(Ljavassist/CtClass;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1000
    invoke-virtual {p0}, Ljavassist/ClassPool;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljavassist/ClassPool;->toClass(Ljavassist/CtClass;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public toClass(Ljavassist/CtClass;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1042
    invoke-virtual {p0, p1, p2, v0}, Ljavassist/ClassPool;->toClass(Ljavassist/CtClass;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public toClass(Ljavassist/CtClass;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1079
    :try_start_0
    invoke-virtual {p1}, Ljavassist/CtClass;->toBytecode()[B

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-nez p3, :cond_0

    .line 1083
    sget-object p3, Ljavassist/ClassPool;->defineClass1:Ljava/lang/reflect/Method;

    new-array v4, v4, [Ljava/lang/Object;

    .line 1084
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    aput-object v0, v4, v3

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object p1, v4, v2

    new-instance p1, Ljava/lang/Integer;

    array-length v0, v0

    invoke-direct {p1, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object p1, v4, v1

    goto :goto_0

    .line 1088
    :cond_0
    sget-object v6, Ljavassist/ClassPool;->defineClass2:Ljava/lang/reflect/Method;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    .line 1089
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v5

    aput-object v0, v7, v3

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object p1, v7, v2

    new-instance p1, Ljava/lang/Integer;

    array-length v0, v0

    invoke-direct {p1, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object p1, v7, v1

    aput-object p3, v7, v4

    move-object p3, v6

    move-object v4, v7

    .line 1093
    :goto_0
    invoke-static {p3, p2, v4}, Ljavassist/ClassPool;->toClass2(Ljava/lang/reflect/Method;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1102
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1099
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 1096
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Ljavassist/ClassPool;->source:Ljavassist/ClassPoolTail;

    invoke-virtual {v0}, Ljavassist/ClassPoolTail;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeClassfile(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;,
            Ljava/io/IOException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 648
    iget-object v0, p0, Ljavassist/ClassPool;->source:Ljavassist/ClassPoolTail;

    invoke-virtual {v0, p1, p2}, Ljavassist/ClassPoolTail;->writeClassfile(Ljava/lang/String;Ljava/io/OutputStream;)V

    return-void
.end method
