.class public Lorg/msgpack/template/TemplateRegistry;
.super Ljava/lang/Object;
.source "TemplateRegistry.java"


# instance fields
.field cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lorg/msgpack/template/Template<",
            "Ljava/lang/reflect/Type;",
            ">;>;"
        }
    .end annotation
.end field

.field private chain:Lorg/msgpack/template/builder/TemplateBuilderChain;

.field private genericCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lorg/msgpack/template/GenericTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private parent:Lorg/msgpack/template/TemplateRegistry;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lorg/msgpack/template/TemplateRegistry;->parent:Lorg/msgpack/template/TemplateRegistry;

    .line 77
    iput-object v0, p0, Lorg/msgpack/template/TemplateRegistry;->parent:Lorg/msgpack/template/TemplateRegistry;

    .line 78
    invoke-virtual {p0}, Lorg/msgpack/template/TemplateRegistry;->createTemplateBuilderChain()Lorg/msgpack/template/builder/TemplateBuilderChain;

    move-result-object v0

    iput-object v0, p0, Lorg/msgpack/template/TemplateRegistry;->chain:Lorg/msgpack/template/builder/TemplateBuilderChain;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/msgpack/template/TemplateRegistry;->genericCache:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/msgpack/template/TemplateRegistry;->cache:Ljava/util/Map;

    .line 81
    invoke-direct {p0}, Lorg/msgpack/template/TemplateRegistry;->registerTemplates()V

    .line 82
    iget-object v0, p0, Lorg/msgpack/template/TemplateRegistry;->cache:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/msgpack/template/TemplateRegistry;->cache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/msgpack/template/TemplateRegistry;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lorg/msgpack/template/TemplateRegistry;->parent:Lorg/msgpack/template/TemplateRegistry;

    if-eqz p1, :cond_0

    .line 91
    iput-object p1, p0, Lorg/msgpack/template/TemplateRegistry;->parent:Lorg/msgpack/template/TemplateRegistry;

    goto :goto_0

    .line 93
    :cond_0
    new-instance p1, Lorg/msgpack/template/TemplateRegistry;

    invoke-direct {p1}, Lorg/msgpack/template/TemplateRegistry;-><init>()V

    iput-object p1, p0, Lorg/msgpack/template/TemplateRegistry;->parent:Lorg/msgpack/template/TemplateRegistry;

    .line 95
    :goto_0
    invoke-virtual {p0}, Lorg/msgpack/template/TemplateRegistry;->createTemplateBuilderChain()Lorg/msgpack/template/builder/TemplateBuilderChain;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/template/TemplateRegistry;->chain:Lorg/msgpack/template/builder/TemplateBuilderChain;

    .line 96
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/msgpack/template/TemplateRegistry;->cache:Ljava/util/Map;

    .line 97
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/msgpack/template/TemplateRegistry;->genericCache:Ljava/util/Map;

    .line 98
    invoke-virtual {p0}, Lorg/msgpack/template/TemplateRegistry;->registerTemplatesWhichRefersRegistry()V

    return-void
.end method

.method private declared-synchronized buildAndRegister(Lorg/msgpack/template/builder/TemplateBuilder;Ljava/lang/Class;ZLorg/msgpack/template/FieldList;)Lorg/msgpack/template/Template;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 554
    :try_start_0
    iget-object v1, p0, Lorg/msgpack/template/TemplateRegistry;->cache:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    iget-object v1, p0, Lorg/msgpack/template/TemplateRegistry;->cache:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/msgpack/template/Template;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 557
    :goto_0
    :try_start_1
    new-instance v2, Lorg/msgpack/template/TemplateReference;

    invoke-direct {v2, p0, p2}, Lorg/msgpack/template/TemplateReference;-><init>(Lorg/msgpack/template/TemplateRegistry;Ljava/lang/reflect/Type;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    :try_start_2
    iget-object v3, p0, Lorg/msgpack/template/TemplateRegistry;->cache:Ljava/util/Map;

    invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 560
    iget-object p1, p0, Lorg/msgpack/template/TemplateRegistry;->chain:Lorg/msgpack/template/builder/TemplateBuilderChain;

    invoke-virtual {p1, p2, p3}, Lorg/msgpack/template/builder/TemplateBuilderChain;->select(Ljava/lang/reflect/Type;Z)Lorg/msgpack/template/builder/TemplateBuilder;

    move-result-object p1

    :cond_1
    if-eqz p4, :cond_2

    .line 562
    invoke-interface {p1, p2, p4}, Lorg/msgpack/template/builder/TemplateBuilder;->buildTemplate(Ljava/lang/Class;Lorg/msgpack/template/FieldList;)Lorg/msgpack/template/Template;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-interface {p1, p2}, Lorg/msgpack/template/builder/TemplateBuilder;->buildTemplate(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    if-eqz p1, :cond_3

    .line 579
    :try_start_3
    iget-object p3, p0, Lorg/msgpack/template/TemplateRegistry;->cache:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v2, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    :goto_2
    if-eqz v1, :cond_4

    .line 567
    :try_start_4
    iget-object p3, p0, Lorg/msgpack/template/TemplateRegistry;->cache:Ljava/util/Map;

    invoke-interface {p3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 569
    :cond_4
    iget-object p3, p0, Lorg/msgpack/template/TemplateRegistry;->cache:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 572
    :goto_3
    :try_start_5
    instance-of p3, p1, Lorg/msgpack/MessageTypeException;

    if-eqz p3, :cond_5

    .line 573
    check-cast p1, Lorg/msgpack/MessageTypeException;

    throw p1

    .line 575
    :cond_5
    new-instance p3, Lorg/msgpack/MessageTypeException;

    invoke-direct {p3, p1}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/Throwable;)V

    throw p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_1
    move-exception p1

    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_6

    .line 579
    :try_start_6
    iget-object p3, p0, Lorg/msgpack/template/TemplateRegistry;->cache:Ljava/util/Map;

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static isPrimitiveType(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "byte"

    .line 585
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "short"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "double"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "char"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private lookupAfterBuilding(Ljava/lang/Class;)Lorg/msgpack/template/Template;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/msgpack/template/Template<",
            "TT;>;"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lorg/msgpack/template/TemplateRegistry;->chain:Lorg/msgpack/template/builder/TemplateBuilderChain;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/msgpack/template/builder/TemplateBuilderChain;->select(Ljava/lang/reflect/Type;Z)Lorg/msgpack/template/builder/TemplateBuilder;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 467
    iget-object v3, p0, Lorg/msgpack/template/TemplateRegistry;->chain:Lorg/msgpack/template/builder/TemplateBuilderChain;

    invoke-virtual {v3}, Lorg/msgpack/template/builder/TemplateBuilderChain;->getForceBuilder()Lorg/msgpack/template/builder/TemplateBuilder;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/msgpack/template/builder/TemplateBuilder;->loadTemplate(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 469
    invoke-virtual {p0, p1, v3}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    return-object v3

    .line 472
    :cond_0
    invoke-direct {p0, v0, p1, v1, v2}, Lorg/msgpack/template/TemplateRegistry;->buildAndRegister(Lorg/msgpack/template/builder/TemplateBuilder;Ljava/lang/Class;ZLorg/msgpack/template/FieldList;)Lorg/msgpack/template/Template;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method private lookupCache(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lorg/msgpack/template/Template<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lorg/msgpack/template/TemplateRegistry;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/msgpack/template/Template;

    if-eqz v0, :cond_0

    return-object v0

    .line 456
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/msgpack/template/TemplateRegistry;->parent:Lorg/msgpack/template/TemplateRegistry;

    invoke-direct {v1, p1}, Lorg/msgpack/template/TemplateRegistry;->lookupCache(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private lookupGenericArrayType(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lorg/msgpack/template/Template<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 369
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 373
    :cond_0
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .line 374
    invoke-direct {p0, p1}, Lorg/msgpack/template/TemplateRegistry;->lookupGenericArrayTypeImpl(Ljava/lang/reflect/GenericArrayType;)Lorg/msgpack/template/Template;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 380
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/msgpack/template/TemplateRegistry;->parent:Lorg/msgpack/template/TemplateRegistry;

    invoke-direct {v0, p1}, Lorg/msgpack/template/TemplateRegistry;->lookupGenericArrayTypeImpl(Ljava/lang/reflect/GenericArrayType;)Lorg/msgpack/template/Template;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    return-object p1

    :catch_0
    :cond_2
    return-object v1
.end method

.method private lookupGenericArrayTypeImpl(Ljava/lang/reflect/GenericArrayType;)Lorg/msgpack/template/Template;
    .locals 7

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\["

    .line 392
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    if-lez v2, :cond_6

    if-gt v2, v3, :cond_5

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 402
    invoke-static {p1}, Lorg/msgpack/template/TemplateRegistry;->isPrimitiveType(Ljava/lang/String;)Z

    move-result v0

    .line 403
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    const/16 v6, 0x5b

    .line 405
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/16 v0, 0x4c

    .line 408
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 409
    invoke-static {p1}, Lorg/msgpack/template/TemplateRegistry;->toJvmReferenceTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x3b

    .line 410
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 412
    :cond_1
    invoke-static {p1}, Lorg/msgpack/template/TemplateRegistry;->toJvmPrimitiveTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 419
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 421
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 423
    invoke-direct {p0, v0}, Lorg/msgpack/template/TemplateRegistry;->lookupAfterBuilding(Ljava/lang/Class;)Lorg/msgpack/template/Template;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 429
    :catch_0
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 431
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 433
    invoke-direct {p0, v0}, Lorg/msgpack/template/TemplateRegistry;->lookupAfterBuilding(Ljava/lang/Class;)Lorg/msgpack/template/Template;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 439
    :catch_1
    :cond_3
    :try_start_2
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 441
    invoke-direct {p0, v0}, Lorg/msgpack/template/TemplateRegistry;->lookupAfterBuilding(Ljava/lang/Class;)Lorg/msgpack/template/Template;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    .line 445
    :catch_2
    :cond_4
    new-instance v0, Lorg/msgpack/MessageTypeException;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "cannot find template of %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const-string v0, "Not implemented template generation of %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 394
    :cond_6
    new-instance p1, Lorg/msgpack/MessageTypeException;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const-string v0, "fatal error: type="

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private lookupGenericInterfaceTypes(Ljava/lang/reflect/ParameterizedType;)Lorg/msgpack/template/Template;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Lorg/msgpack/template/Template<",
            "TT;>;"
        }
    .end annotation

    .line 327
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    .line 331
    :try_start_0
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 332
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 333
    invoke-direct {p0, p1, v4}, Lorg/msgpack/template/TemplateRegistry;->lookupGenericTypeImpl0(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-object v1
.end method

.method private lookupGenericSuperclasses(Ljava/lang/reflect/ParameterizedType;)Lorg/msgpack/template/Template;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Lorg/msgpack/template/Template<",
            "TT;>;"
        }
    .end annotation

    .line 345
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    .line 349
    :try_start_0
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 354
    :cond_0
    :goto_0
    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_2

    .line 355
    invoke-direct {p0, p1, v0}, Lorg/msgpack/template/TemplateRegistry;->lookupGenericTypeImpl0(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 357
    invoke-virtual {p0, p1, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    return-object v1

    .line 354
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    return-object v1
.end method

.method private lookupGenericType(Ljava/lang/reflect/ParameterizedType;)Lorg/msgpack/template/Template;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Lorg/msgpack/template/Template<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 280
    invoke-direct {p0, p1}, Lorg/msgpack/template/TemplateRegistry;->lookupGenericTypeImpl(Ljava/lang/reflect/ParameterizedType;)Lorg/msgpack/template/Template;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 286
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/msgpack/template/TemplateRegistry;->parent:Lorg/msgpack/template/TemplateRegistry;

    invoke-direct {v0, p1}, Lorg/msgpack/template/TemplateRegistry;->lookupGenericTypeImpl(Ljava/lang/reflect/ParameterizedType;)Lorg/msgpack/template/Template;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    return-object v0

    :catch_0
    nop

    .line 293
    :cond_1
    invoke-direct {p0, p1}, Lorg/msgpack/template/TemplateRegistry;->lookupGenericInterfaceTypes(Ljava/lang/reflect/ParameterizedType;)Lorg/msgpack/template/Template;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 298
    :cond_2
    invoke-direct {p0, p1}, Lorg/msgpack/template/TemplateRegistry;->lookupGenericSuperclasses(Ljava/lang/reflect/ParameterizedType;)Lorg/msgpack/template/Template;

    move-result-object p1

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private lookupGenericTypeImpl(Ljava/lang/reflect/ParameterizedType;)Lorg/msgpack/template/Template;
    .locals 1

    .line 307
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 308
    invoke-direct {p0, p1, v0}, Lorg/msgpack/template/TemplateRegistry;->lookupGenericTypeImpl0(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object p1

    return-object p1
.end method

.method private lookupGenericTypeImpl0(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;
    .locals 3

    .line 312
    iget-object v0, p0, Lorg/msgpack/template/TemplateRegistry;->genericCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/msgpack/template/GenericTemplate;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 317
    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 318
    array-length v0, p1

    new-array v0, v0, [Lorg/msgpack/template/Template;

    const/4 v1, 0x0

    .line 319
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 320
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/msgpack/template/TemplateRegistry;->lookup(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    :cond_1
    invoke-interface {p2, v0}, Lorg/msgpack/template/GenericTemplate;->build([Lorg/msgpack/template/Template;)Lorg/msgpack/template/Template;

    move-result-object p1

    return-object p1
.end method

.method private lookupInterfaceTypes(Ljava/lang/Class;)Lorg/msgpack/template/Template;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/msgpack/template/Template<",
            "TT;>;"
        }
    .end annotation

    .line 478
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 480
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v2, v0, v3

    .line 481
    iget-object v4, p0, Lorg/msgpack/template/TemplateRegistry;->cache:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/msgpack/template/Template;

    if-eqz v4, :cond_0

    .line 483
    invoke-virtual {p0, p1, v4}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    return-object v4

    .line 487
    :cond_0
    :try_start_0
    iget-object v5, p0, Lorg/msgpack/template/TemplateRegistry;->parent:Lorg/msgpack/template/TemplateRegistry;

    invoke-direct {v5, v2}, Lorg/msgpack/template/TemplateRegistry;->lookupCache(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 489
    invoke-virtual {p0, p1, v4}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    :cond_1
    move-object v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private lookupSuperclassInterfaceTypes(Ljava/lang/Class;)Lorg/msgpack/template/Template;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/msgpack/template/Template<",
            "TT;>;"
        }
    .end annotation

    .line 525
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 528
    :goto_0
    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_2

    .line 529
    invoke-direct {p0, v0}, Lorg/msgpack/template/TemplateRegistry;->lookupInterfaceTypes(Ljava/lang/Class;)Lorg/msgpack/template/Template;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 531
    invoke-virtual {p0, p1, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    return-object v1

    .line 535
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/msgpack/template/TemplateRegistry;->parent:Lorg/msgpack/template/TemplateRegistry;

    invoke-direct {v2, v0}, Lorg/msgpack/template/TemplateRegistry;->lookupCache(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 537
    invoke-virtual {p0, p1, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 528
    :catch_0
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private lookupSuperclasses(Ljava/lang/Class;)Lorg/msgpack/template/Template;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/msgpack/template/Template<",
            "TT;>;"
        }
    .end annotation

    .line 500
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 503
    :goto_0
    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_2

    .line 505
    iget-object v1, p0, Lorg/msgpack/template/TemplateRegistry;->cache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/msgpack/template/Template;

    if-eqz v1, :cond_0

    .line 507
    invoke-virtual {p0, p1, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    return-object v1

    .line 511
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/msgpack/template/TemplateRegistry;->parent:Lorg/msgpack/template/TemplateRegistry;

    invoke-direct {v2, v0}, Lorg/msgpack/template/TemplateRegistry;->lookupCache(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 513
    invoke-virtual {p0, p1, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 503
    :catch_0
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private registerTemplates()V
    .locals 2

    .line 110
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {}, Lorg/msgpack/template/BooleanTemplate;->getInstance()Lorg/msgpack/template/BooleanTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 111
    const-class v0, Ljava/lang/Boolean;

    invoke-static {}, Lorg/msgpack/template/BooleanTemplate;->getInstance()Lorg/msgpack/template/BooleanTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 112
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {}, Lorg/msgpack/template/ByteTemplate;->getInstance()Lorg/msgpack/template/ByteTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 113
    const-class v0, Ljava/lang/Byte;

    invoke-static {}, Lorg/msgpack/template/ByteTemplate;->getInstance()Lorg/msgpack/template/ByteTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 114
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {}, Lorg/msgpack/template/ShortTemplate;->getInstance()Lorg/msgpack/template/ShortTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 115
    const-class v0, Ljava/lang/Short;

    invoke-static {}, Lorg/msgpack/template/ShortTemplate;->getInstance()Lorg/msgpack/template/ShortTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 116
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {}, Lorg/msgpack/template/IntegerTemplate;->getInstance()Lorg/msgpack/template/IntegerTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 117
    const-class v0, Ljava/lang/Integer;

    invoke-static {}, Lorg/msgpack/template/IntegerTemplate;->getInstance()Lorg/msgpack/template/IntegerTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 118
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {}, Lorg/msgpack/template/LongTemplate;->getInstance()Lorg/msgpack/template/LongTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 119
    const-class v0, Ljava/lang/Long;

    invoke-static {}, Lorg/msgpack/template/LongTemplate;->getInstance()Lorg/msgpack/template/LongTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 120
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {}, Lorg/msgpack/template/FloatTemplate;->getInstance()Lorg/msgpack/template/FloatTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 121
    const-class v0, Ljava/lang/Float;

    invoke-static {}, Lorg/msgpack/template/FloatTemplate;->getInstance()Lorg/msgpack/template/FloatTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 122
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {}, Lorg/msgpack/template/DoubleTemplate;->getInstance()Lorg/msgpack/template/DoubleTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 123
    const-class v0, Ljava/lang/Double;

    invoke-static {}, Lorg/msgpack/template/DoubleTemplate;->getInstance()Lorg/msgpack/template/DoubleTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 124
    const-class v0, Ljava/math/BigInteger;

    invoke-static {}, Lorg/msgpack/template/BigIntegerTemplate;->getInstance()Lorg/msgpack/template/BigIntegerTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 125
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {}, Lorg/msgpack/template/CharacterTemplate;->getInstance()Lorg/msgpack/template/CharacterTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 126
    const-class v0, Ljava/lang/Character;

    invoke-static {}, Lorg/msgpack/template/CharacterTemplate;->getInstance()Lorg/msgpack/template/CharacterTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 127
    const-class v0, [Z

    invoke-static {}, Lorg/msgpack/template/BooleanArrayTemplate;->getInstance()Lorg/msgpack/template/BooleanArrayTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 128
    const-class v0, [S

    invoke-static {}, Lorg/msgpack/template/ShortArrayTemplate;->getInstance()Lorg/msgpack/template/ShortArrayTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 129
    const-class v0, [I

    invoke-static {}, Lorg/msgpack/template/IntegerArrayTemplate;->getInstance()Lorg/msgpack/template/IntegerArrayTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 130
    const-class v0, [J

    invoke-static {}, Lorg/msgpack/template/LongArrayTemplate;->getInstance()Lorg/msgpack/template/LongArrayTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 131
    const-class v0, [F

    invoke-static {}, Lorg/msgpack/template/FloatArrayTemplate;->getInstance()Lorg/msgpack/template/FloatArrayTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 132
    const-class v0, [D

    invoke-static {}, Lorg/msgpack/template/DoubleArrayTemplate;->getInstance()Lorg/msgpack/template/DoubleArrayTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 133
    const-class v0, Ljava/lang/String;

    invoke-static {}, Lorg/msgpack/template/StringTemplate;->getInstance()Lorg/msgpack/template/StringTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 134
    const-class v0, [B

    invoke-static {}, Lorg/msgpack/template/ByteArrayTemplate;->getInstance()Lorg/msgpack/template/ByteArrayTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 135
    const-class v0, Ljava/nio/ByteBuffer;

    invoke-static {}, Lorg/msgpack/template/ByteBufferTemplate;->getInstance()Lorg/msgpack/template/ByteBufferTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 136
    const-class v0, Lorg/msgpack/type/Value;

    invoke-static {}, Lorg/msgpack/template/ValueTemplate;->getInstance()Lorg/msgpack/template/ValueTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 137
    const-class v0, Ljava/math/BigDecimal;

    invoke-static {}, Lorg/msgpack/template/BigDecimalTemplate;->getInstance()Lorg/msgpack/template/BigDecimalTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 138
    const-class v0, Ljava/util/Date;

    invoke-static {}, Lorg/msgpack/template/DateTemplate;->getInstance()Lorg/msgpack/template/DateTemplate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 140
    invoke-virtual {p0}, Lorg/msgpack/template/TemplateRegistry;->registerTemplatesWhichRefersRegistry()V

    return-void
.end method

.method private static toJvmPrimitiveTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "byte"

    .line 602
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "B"

    return-object p0

    :cond_0
    const-string v0, "short"

    .line 604
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "S"

    return-object p0

    :cond_1
    const-string v0, "int"

    .line 606
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "I"

    return-object p0

    :cond_2
    const-string v0, "long"

    .line 608
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "J"

    return-object p0

    :cond_3
    const-string v0, "float"

    .line 610
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "F"

    return-object p0

    :cond_4
    const-string v0, "double"

    .line 612
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "D"

    return-object p0

    :cond_5
    const-string v0, "boolean"

    .line 614
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "Z"

    return-object p0

    :cond_6
    const-string v0, "char"

    .line 616
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "C"

    return-object p0

    .line 619
    :cond_7
    new-instance v0, Lorg/msgpack/MessageTypeException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "fatal error: type=%s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toJvmReferenceTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x6

    .line 598
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected createTemplateBuilderChain()Lorg/msgpack/template/builder/TemplateBuilderChain;
    .locals 1

    .line 102
    new-instance v0, Lorg/msgpack/template/builder/TemplateBuilderChain;

    invoke-direct {v0, p0}, Lorg/msgpack/template/builder/TemplateBuilderChain;-><init>(Lorg/msgpack/template/TemplateRegistry;)V

    return-object v0
.end method

.method public declared-synchronized lookup(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;
    .locals 3

    monitor-enter p0

    .line 202
    :try_start_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 204
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 205
    invoke-direct {p0, p1}, Lorg/msgpack/template/TemplateRegistry;->lookupGenericType(Ljava/lang/reflect/ParameterizedType;)Lorg/msgpack/template/Template;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 207
    monitor-exit p0

    return-object v0

    .line 209
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 212
    :cond_1
    invoke-direct {p0, p1}, Lorg/msgpack/template/TemplateRegistry;->lookupGenericArrayType(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 214
    monitor-exit p0

    return-object v0

    .line 217
    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lorg/msgpack/template/TemplateRegistry;->lookupCache(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 219
    monitor-exit p0

    return-object v0

    .line 222
    :cond_3
    :try_start_3
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-nez v0, :cond_b

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 230
    :cond_4
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    .line 233
    const-class v1, Lorg/msgpack/MessagePackable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 237
    new-instance p1, Lorg/msgpack/template/MessagePackableTemplate;

    invoke-direct {p1, v0}, Lorg/msgpack/template/MessagePackableTemplate;-><init>(Ljava/lang/Class;)V

    .line 238
    invoke-virtual {p0, v0, p1}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 239
    monitor-exit p0

    return-object p1

    .line 242
    :cond_5
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 245
    new-instance v0, Lorg/msgpack/template/AnyTemplate;

    invoke-direct {v0, p0}, Lorg/msgpack/template/AnyTemplate;-><init>(Lorg/msgpack/template/TemplateRegistry;)V

    .line 246
    invoke-virtual {p0, p1, v0}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 247
    monitor-exit p0

    return-object v0

    .line 251
    :cond_6
    :try_start_5
    invoke-direct {p0, v0}, Lorg/msgpack/template/TemplateRegistry;->lookupAfterBuilding(Ljava/lang/Class;)Lorg/msgpack/template/Template;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p1, :cond_7

    .line 253
    monitor-exit p0

    return-object p1

    .line 257
    :cond_7
    :try_start_6
    invoke-direct {p0, v0}, Lorg/msgpack/template/TemplateRegistry;->lookupInterfaceTypes(Ljava/lang/Class;)Lorg/msgpack/template/Template;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p1, :cond_8

    .line 259
    monitor-exit p0

    return-object p1

    .line 263
    :cond_8
    :try_start_7
    invoke-direct {p0, v0}, Lorg/msgpack/template/TemplateRegistry;->lookupSuperclasses(Ljava/lang/Class;)Lorg/msgpack/template/Template;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz p1, :cond_9

    .line 265
    monitor-exit p0

    return-object p1

    .line 269
    :cond_9
    :try_start_8
    invoke-direct {p0, v0}, Lorg/msgpack/template/TemplateRegistry;->lookupSuperclassInterfaceTypes(Ljava/lang/Class;)Lorg/msgpack/template/Template;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz p1, :cond_a

    .line 271
    monitor-exit p0

    return-object p1

    .line 274
    :cond_a
    :try_start_9
    new-instance p1, Lorg/msgpack/MessageTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find template for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " class.  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Try to add @Message annotation to the class or call MessagePack.register(Type)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_b
    :goto_0
    new-instance v0, Lorg/msgpack/template/AnyTemplate;

    invoke-direct {v0, p0}, Lorg/msgpack/template/AnyTemplate;-><init>(Lorg/msgpack/template/TemplateRegistry;)V

    .line 226
    invoke-virtual {p0, p1, v0}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 227
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public register(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 158
    invoke-direct {p0, v0, p1, v1, v0}, Lorg/msgpack/template/TemplateRegistry;->buildAndRegister(Lorg/msgpack/template/builder/TemplateBuilder;Ljava/lang/Class;ZLorg/msgpack/template/FieldList;)Lorg/msgpack/template/Template;

    return-void
.end method

.method public register(Ljava/lang/Class;Lorg/msgpack/template/FieldList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/msgpack/template/FieldList;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 166
    invoke-direct {p0, v0, p1, v1, p2}, Lorg/msgpack/template/TemplateRegistry;->buildAndRegister(Lorg/msgpack/template/builder/TemplateBuilder;Ljava/lang/Class;ZLorg/msgpack/template/FieldList;)Lorg/msgpack/template/Template;

    return-void

    .line 163
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "FieldList object is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V
    .locals 1

    monitor-enter p0

    if-eqz p2, :cond_1

    .line 174
    :try_start_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/msgpack/template/TemplateRegistry;->cache:Ljava/util/Map;

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/msgpack/template/TemplateRegistry;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 171
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Template object is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerGeneric(Ljava/lang/reflect/Type;Lorg/msgpack/template/GenericTemplate;)V
    .locals 1

    monitor-enter p0

    .line 182
    :try_start_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lorg/msgpack/template/TemplateRegistry;->genericCache:Ljava/util/Map;

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/msgpack/template/TemplateRegistry;->genericCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected registerTemplatesWhichRefersRegistry()V
    .locals 3

    .line 145
    new-instance v0, Lorg/msgpack/template/AnyTemplate;

    invoke-direct {v0, p0}, Lorg/msgpack/template/AnyTemplate;-><init>(Lorg/msgpack/template/TemplateRegistry;)V

    .line 147
    const-class v1, Ljava/util/List;

    new-instance v2, Lorg/msgpack/template/ListTemplate;

    invoke-direct {v2, v0}, Lorg/msgpack/template/ListTemplate;-><init>(Lorg/msgpack/template/Template;)V

    invoke-virtual {p0, v1, v2}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 148
    const-class v1, Ljava/util/Set;

    new-instance v2, Lorg/msgpack/template/SetTemplate;

    invoke-direct {v2, v0}, Lorg/msgpack/template/SetTemplate;-><init>(Lorg/msgpack/template/Template;)V

    invoke-virtual {p0, v1, v2}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 149
    const-class v1, Ljava/util/Collection;

    new-instance v2, Lorg/msgpack/template/CollectionTemplate;

    invoke-direct {v2, v0}, Lorg/msgpack/template/CollectionTemplate;-><init>(Lorg/msgpack/template/Template;)V

    invoke-virtual {p0, v1, v2}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 150
    const-class v1, Ljava/util/Map;

    new-instance v2, Lorg/msgpack/template/MapTemplate;

    invoke-direct {v2, v0, v0}, Lorg/msgpack/template/MapTemplate;-><init>(Lorg/msgpack/template/Template;Lorg/msgpack/template/Template;)V

    invoke-virtual {p0, v1, v2}, Lorg/msgpack/template/TemplateRegistry;->register(Ljava/lang/reflect/Type;Lorg/msgpack/template/Template;)V

    .line 151
    const-class v0, Ljava/util/List;

    new-instance v1, Lorg/msgpack/template/GenericCollectionTemplate;

    const-class v2, Lorg/msgpack/template/ListTemplate;

    invoke-direct {v1, p0, v2}, Lorg/msgpack/template/GenericCollectionTemplate;-><init>(Lorg/msgpack/template/TemplateRegistry;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->registerGeneric(Ljava/lang/reflect/Type;Lorg/msgpack/template/GenericTemplate;)V

    .line 152
    const-class v0, Ljava/util/Set;

    new-instance v1, Lorg/msgpack/template/GenericCollectionTemplate;

    const-class v2, Lorg/msgpack/template/SetTemplate;

    invoke-direct {v1, p0, v2}, Lorg/msgpack/template/GenericCollectionTemplate;-><init>(Lorg/msgpack/template/TemplateRegistry;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->registerGeneric(Ljava/lang/reflect/Type;Lorg/msgpack/template/GenericTemplate;)V

    .line 153
    const-class v0, Ljava/util/Collection;

    new-instance v1, Lorg/msgpack/template/GenericCollectionTemplate;

    const-class v2, Lorg/msgpack/template/CollectionTemplate;

    invoke-direct {v1, p0, v2}, Lorg/msgpack/template/GenericCollectionTemplate;-><init>(Lorg/msgpack/template/TemplateRegistry;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->registerGeneric(Ljava/lang/reflect/Type;Lorg/msgpack/template/GenericTemplate;)V

    .line 154
    const-class v0, Ljava/util/Map;

    new-instance v1, Lorg/msgpack/template/GenericMapTemplate;

    const-class v2, Lorg/msgpack/template/MapTemplate;

    invoke-direct {v1, p0, v2}, Lorg/msgpack/template/GenericMapTemplate;-><init>(Lorg/msgpack/template/TemplateRegistry;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/template/TemplateRegistry;->registerGeneric(Ljava/lang/reflect/Type;Lorg/msgpack/template/GenericTemplate;)V

    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 106
    new-instance v0, Lorg/msgpack/template/builder/TemplateBuilderChain;

    invoke-direct {v0, p0, p1}, Lorg/msgpack/template/builder/TemplateBuilderChain;-><init>(Lorg/msgpack/template/TemplateRegistry;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lorg/msgpack/template/TemplateRegistry;->chain:Lorg/msgpack/template/builder/TemplateBuilderChain;

    return-void
.end method

.method public declared-synchronized unregister()V
    .locals 1

    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lorg/msgpack/template/TemplateRegistry;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregister(Ljava/lang/reflect/Type;)Z
    .locals 1

    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v0, p0, Lorg/msgpack/template/TemplateRegistry;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/msgpack/template/Template;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 192
    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
