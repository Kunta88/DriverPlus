.class public Ljavassist/Loader;
.super Ljava/lang/ClassLoader;
.source "Loader.java"


# instance fields
.field public doDelegation:Z

.field private domain:Ljava/security/ProtectionDomain;

.field private notDefinedHere:Ljava/util/Hashtable;

.field private notDefinedPackages:Ljava/util/Vector;

.field private source:Ljavassist/ClassPool;

.field private translator:Ljavassist/Translator;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, v0}, Ljavassist/Loader;-><init>(Ljavassist/ClassPool;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljavassist/ClassPool;)V
    .locals 0

    .line 180
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    const/4 p1, 0x1

    .line 154
    iput-boolean p1, p0, Ljavassist/Loader;->doDelegation:Z

    .line 181
    invoke-direct {p0, p2}, Ljavassist/Loader;->init(Ljavassist/ClassPool;)V

    return-void
.end method

.method public constructor <init>(Ljavassist/ClassPool;)V
    .locals 1

    .line 168
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Ljavassist/Loader;->doDelegation:Z

    .line 169
    invoke-direct {p0, p1}, Ljavassist/Loader;->init(Ljavassist/ClassPool;)V

    return-void
.end method

.method private init(Ljavassist/ClassPool;)V
    .locals 1

    .line 185
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavassist/Loader;->notDefinedHere:Ljava/util/Hashtable;

    .line 186
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavassist/Loader;->notDefinedPackages:Ljava/util/Vector;

    .line 187
    iput-object p1, p0, Ljavassist/Loader;->source:Ljavassist/ClassPool;

    const/4 p1, 0x0

    .line 188
    iput-object p1, p0, Ljavassist/Loader;->translator:Ljavassist/Translator;

    .line 189
    iput-object p1, p0, Ljavassist/Loader;->domain:Ljava/security/ProtectionDomain;

    const-string p1, "javassist.Loader"

    .line 190
    invoke-virtual {p0, p1}, Ljavassist/Loader;->delegateLoadingOf(Ljava/lang/String;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 257
    new-instance v0, Ljavassist/Loader;

    invoke-direct {v0}, Ljavassist/Loader;-><init>()V

    .line 258
    invoke-virtual {v0, p0}, Ljavassist/Loader;->run([Ljava/lang/String;)V

    return-void
.end method

.method private notDelegated(Ljava/lang/String;)Z
    .locals 5

    .line 413
    iget-object v0, p0, Ljavassist/Loader;->notDefinedHere:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 416
    :cond_0
    iget-object v0, p0, Ljavassist/Loader;->notDefinedPackages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 418
    iget-object v4, p0, Ljavassist/Loader;->notDefinedPackages:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method


# virtual methods
.method public addTranslator(Ljavassist/ClassPool;Ljavassist/Translator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 236
    iput-object p1, p0, Ljavassist/Loader;->source:Ljavassist/ClassPool;

    .line 237
    iput-object p2, p0, Ljavassist/Loader;->translator:Ljavassist/Translator;

    .line 238
    invoke-interface {p2, p1}, Ljavassist/Translator;->start(Ljavassist/ClassPool;)V

    return-void
.end method

.method public delegateLoadingOf(Ljava/lang/String;)V
    .locals 1

    const-string v0, "."

    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Ljavassist/Loader;->notDefinedPackages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Ljavassist/Loader;->notDefinedHere:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method protected delegateToParent(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 427
    invoke-virtual {p0}, Ljavassist/Loader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 431
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/Loader;->findSystemClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 339
    :try_start_0
    iget-object v0, p0, Ljavassist/Loader;->source:Ljavassist/ClassPool;

    const/4 v1, 0x0

    const/16 v2, 0x2e

    if-eqz v0, :cond_1

    .line 340
    iget-object v3, p0, Ljavassist/Loader;->translator:Ljavassist/Translator;

    if-eqz v3, :cond_0

    .line 341
    invoke-interface {v3, v0, p1}, Ljavassist/Translator;->onLoad(Ljavassist/ClassPool;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 344
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavassist/Loader;->source:Ljavassist/ClassPool;

    invoke-virtual {v0, p1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtClass;->toBytecode()[B

    move-result-object v0
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    return-object v1

    .line 351
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".class"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 356
    :cond_2
    invoke-static {v0}, Ljavassist/ClassPoolTail;->readStream(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 365
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v10, 0x0

    if-eq v1, v2, :cond_3

    .line 367
    invoke-virtual {p1, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-virtual {p0, v2}, Ljavassist/Loader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    .line 370
    :try_start_3
    invoke-virtual/range {v1 .. v9}, Ljavassist/Loader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 379
    :cond_3
    :goto_1
    iget-object v6, p0, Ljavassist/Loader;->domain:Ljava/security/ProtectionDomain;

    if-nez v6, :cond_4

    .line 380
    array-length v1, v0

    invoke-virtual {p0, p1, v0, v10, v1}, Ljavassist/Loader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v4, 0x0

    .line 382
    array-length v5, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Ljavassist/Loader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v0

    .line 360
    new-instance v1, Ljava/lang/ClassNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caught an exception while obtaining a class file for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 305
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 306
    monitor-enter p1

    .line 307
    :try_start_0
    invoke-virtual {p0, p1}, Ljavassist/Loader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 309
    invoke-virtual {p0, p1}, Ljavassist/Loader;->loadClassByDelegation(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 312
    invoke-virtual {p0, p1}, Ljavassist/Loader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 315
    invoke-virtual {p0, p1}, Ljavassist/Loader;->delegateToParent(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_2
    if-eqz p2, :cond_3

    .line 318
    invoke-virtual {p0, v0}, Ljavassist/Loader;->resolveClass(Ljava/lang/Class;)V

    .line 320
    :cond_3
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p2

    .line 321
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method protected loadClassByDelegation(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 399
    iget-boolean v0, p0, Ljavassist/Loader;->doDelegation:Z

    if-eqz v0, :cond_1

    const-string v0, "java."

    .line 400
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "javax."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sun."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sun."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "org.w3c."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "org.xml."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Ljavassist/Loader;->notDelegated(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/Loader;->delegateToParent(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public run(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 289
    invoke-virtual {p0, p1}, Ljavassist/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    :try_start_0
    const-string v0, "main"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 291
    const-class v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 296
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method

.method public run([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 272
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 274
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 276
    aget-object v5, p1, v4

    aput-object v5, v1, v3

    move v3, v4

    goto :goto_0

    .line 278
    :cond_0
    aget-object p1, p1, v2

    invoke-virtual {p0, p1, v1}, Ljavassist/Loader;->run(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setClassPool(Ljavassist/ClassPool;)V
    .locals 0

    .line 222
    iput-object p1, p0, Ljavassist/Loader;->source:Ljavassist/ClassPool;

    return-void
.end method

.method public setDomain(Ljava/security/ProtectionDomain;)V
    .locals 0

    .line 215
    iput-object p1, p0, Ljavassist/Loader;->domain:Ljava/security/ProtectionDomain;

    return-void
.end method
