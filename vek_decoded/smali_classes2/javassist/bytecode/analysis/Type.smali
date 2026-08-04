.class public Ljavassist/bytecode/analysis/Type;
.super Ljava/lang/Object;
.source "Type.java"


# static fields
.field public static final BOGUS:Ljavassist/bytecode/analysis/Type;

.field public static final BOOLEAN:Ljavassist/bytecode/analysis/Type;

.field public static final BYTE:Ljavassist/bytecode/analysis/Type;

.field public static final CHAR:Ljavassist/bytecode/analysis/Type;

.field public static final CLONEABLE:Ljavassist/bytecode/analysis/Type;

.field public static final DOUBLE:Ljavassist/bytecode/analysis/Type;

.field public static final FLOAT:Ljavassist/bytecode/analysis/Type;

.field public static final INTEGER:Ljavassist/bytecode/analysis/Type;

.field public static final LONG:Ljavassist/bytecode/analysis/Type;

.field public static final OBJECT:Ljavassist/bytecode/analysis/Type;

.field public static final RETURN_ADDRESS:Ljavassist/bytecode/analysis/Type;

.field public static final SERIALIZABLE:Ljavassist/bytecode/analysis/Type;

.field public static final SHORT:Ljavassist/bytecode/analysis/Type;

.field public static final THROWABLE:Ljavassist/bytecode/analysis/Type;

.field public static final TOP:Ljavassist/bytecode/analysis/Type;

.field public static final UNINIT:Ljavassist/bytecode/analysis/Type;

.field public static final VOID:Ljavassist/bytecode/analysis/Type;

.field private static final prims:Ljava/util/Map;


# instance fields
.field private final clazz:Ljavassist/CtClass;

.field private final special:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 47
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    sput-object v0, Ljavassist/bytecode/analysis/Type;->prims:Ljava/util/Map;

    .line 49
    new-instance v1, Ljavassist/bytecode/analysis/Type;

    sget-object v2, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    invoke-direct {v1, v2}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    sput-object v1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    .line 51
    new-instance v2, Ljavassist/bytecode/analysis/Type;

    sget-object v3, Ljavassist/CtClass;->booleanType:Ljavassist/CtClass;

    invoke-direct {v2, v3}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    sput-object v2, Ljavassist/bytecode/analysis/Type;->BOOLEAN:Ljavassist/bytecode/analysis/Type;

    .line 53
    new-instance v3, Ljavassist/bytecode/analysis/Type;

    sget-object v4, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    invoke-direct {v3, v4}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    sput-object v3, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    .line 55
    new-instance v4, Ljavassist/bytecode/analysis/Type;

    sget-object v5, Ljavassist/CtClass;->charType:Ljavassist/CtClass;

    invoke-direct {v4, v5}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    sput-object v4, Ljavassist/bytecode/analysis/Type;->CHAR:Ljavassist/bytecode/analysis/Type;

    .line 57
    new-instance v5, Ljavassist/bytecode/analysis/Type;

    sget-object v6, Ljavassist/CtClass;->byteType:Ljavassist/CtClass;

    invoke-direct {v5, v6}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    sput-object v5, Ljavassist/bytecode/analysis/Type;->BYTE:Ljavassist/bytecode/analysis/Type;

    .line 59
    new-instance v6, Ljavassist/bytecode/analysis/Type;

    sget-object v7, Ljavassist/CtClass;->shortType:Ljavassist/CtClass;

    invoke-direct {v6, v7}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    sput-object v6, Ljavassist/bytecode/analysis/Type;->SHORT:Ljavassist/bytecode/analysis/Type;

    .line 61
    new-instance v7, Ljavassist/bytecode/analysis/Type;

    sget-object v8, Ljavassist/CtClass;->intType:Ljavassist/CtClass;

    invoke-direct {v7, v8}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    sput-object v7, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    .line 63
    new-instance v8, Ljavassist/bytecode/analysis/Type;

    sget-object v9, Ljavassist/CtClass;->floatType:Ljavassist/CtClass;

    invoke-direct {v8, v9}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    sput-object v8, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    .line 65
    new-instance v9, Ljavassist/bytecode/analysis/Type;

    sget-object v10, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    invoke-direct {v9, v10}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    sput-object v9, Ljavassist/bytecode/analysis/Type;->VOID:Ljavassist/bytecode/analysis/Type;

    .line 76
    new-instance v10, Ljavassist/bytecode/analysis/Type;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    sput-object v10, Ljavassist/bytecode/analysis/Type;->UNINIT:Ljavassist/bytecode/analysis/Type;

    .line 82
    new-instance v10, Ljavassist/bytecode/analysis/Type;

    const/4 v12, 0x1

    invoke-direct {v10, v11, v12}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;Z)V

    sput-object v10, Ljavassist/bytecode/analysis/Type;->RETURN_ADDRESS:Ljavassist/bytecode/analysis/Type;

    .line 85
    new-instance v10, Ljavassist/bytecode/analysis/Type;

    invoke-direct {v10, v11, v12}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;Z)V

    sput-object v10, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    .line 94
    new-instance v10, Ljavassist/bytecode/analysis/Type;

    invoke-direct {v10, v11, v12}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;Z)V

    sput-object v10, Ljavassist/bytecode/analysis/Type;->BOGUS:Ljavassist/bytecode/analysis/Type;

    const-string v10, "java.lang.Object"

    .line 97
    invoke-static {v10}, Ljavassist/bytecode/analysis/Type;->lookupType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v10

    sput-object v10, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    const-string v10, "java.io.Serializable"

    .line 99
    invoke-static {v10}, Ljavassist/bytecode/analysis/Type;->lookupType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v10

    sput-object v10, Ljavassist/bytecode/analysis/Type;->SERIALIZABLE:Ljavassist/bytecode/analysis/Type;

    const-string v10, "java.lang.Cloneable"

    .line 101
    invoke-static {v10}, Ljavassist/bytecode/analysis/Type;->lookupType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v10

    sput-object v10, Ljavassist/bytecode/analysis/Type;->CLONEABLE:Ljavassist/bytecode/analysis/Type;

    const-string v10, "java.lang.Throwable"

    .line 103
    invoke-static {v10}, Ljavassist/bytecode/analysis/Type;->lookupType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v10

    sput-object v10, Ljavassist/bytecode/analysis/Type;->THROWABLE:Ljavassist/bytecode/analysis/Type;

    .line 106
    sget-object v10, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v1, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v1, Ljavassist/CtClass;->charType:Ljavassist/CtClass;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Ljavassist/CtClass;->shortType:Ljavassist/CtClass;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v1, Ljavassist/CtClass;->intType:Ljavassist/CtClass;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v1, Ljavassist/CtClass;->floatType:Ljavassist/CtClass;

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v1, Ljavassist/CtClass;->byteType:Ljavassist/CtClass;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v1, Ljavassist/CtClass;->booleanType:Ljavassist/CtClass;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v1, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljavassist/CtClass;)V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;Z)V

    return-void
.end method

.method private constructor <init>(Ljavassist/CtClass;Z)V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    .line 145
    iput-boolean p2, p0, Ljavassist/bytecode/analysis/Type;->special:Z

    return-void
.end method

.method private createArray(Ljavassist/bytecode/analysis/Type;I)Ljavassist/bytecode/analysis/Type;
    .locals 1

    .line 321
    instance-of v0, p1, Ljavassist/bytecode/analysis/MultiType;

    if-eqz v0, :cond_0

    .line 322
    new-instance v0, Ljavassist/bytecode/analysis/MultiArrayType;

    check-cast p1, Ljavassist/bytecode/analysis/MultiType;

    invoke-direct {v0, p1, p2}, Ljavassist/bytecode/analysis/MultiArrayType;-><init>(Ljavassist/bytecode/analysis/MultiType;I)V

    return-object v0

    .line 324
    :cond_0
    iget-object v0, p1, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljavassist/bytecode/analysis/Type;->arrayName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 328
    :try_start_0
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Type;->getClassPool(Ljavassist/bytecode/analysis/Type;)Ljavassist/ClassPool;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p1

    invoke-static {p1}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 330
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method static eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 578
    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private findCommonInterfaces(Ljavassist/bytecode/analysis/Type;)Ljava/util/Map;
    .locals 2

    .line 474
    iget-object p1, p1, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/analysis/Type;->getAllInterfaces(Ljavassist/CtClass;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 475
    iget-object v1, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    invoke-virtual {p0, v1, v0}, Ljavassist/bytecode/analysis/Type;->getAllInterfaces(Ljavassist/CtClass;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 477
    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/analysis/Type;->findCommonInterfaces(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private static findCommonSuperClass(Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtClass;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 401
    :goto_0
    invoke-static {v0, v1}, Ljavassist/bytecode/analysis/Type;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v0

    .line 404
    :cond_0
    invoke-virtual {v0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v2

    .line 405
    invoke-virtual {v1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    if-nez v2, :cond_4

    move-object v0, v1

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    .line 430
    :goto_1
    invoke-virtual {v0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    if-nez v0, :cond_3

    .line 441
    :goto_2
    invoke-static {p0, p1}, Ljavassist/bytecode/analysis/Type;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 442
    invoke-virtual {p0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object p0

    .line 443
    invoke-virtual {p1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object p1

    goto :goto_2

    :cond_2
    return-object p0

    .line 434
    :cond_3
    invoke-virtual {p0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object p0

    goto :goto_1

    :cond_4
    move-object v0, v2

    move-object v1, v3

    goto :goto_0
.end method

.method private findExclusiveDeclaredInterfaces(Ljavassist/bytecode/analysis/Type;Ljavassist/CtClass;)Ljava/util/Map;
    .locals 2

    .line 481
    iget-object p1, p1, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/analysis/Type;->getDeclaredInterfaces(Ljavassist/CtClass;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 482
    iget-object v1, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    invoke-virtual {p0, v1, v0}, Ljavassist/bytecode/analysis/Type;->getDeclaredInterfaces(Ljavassist/CtClass;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 483
    invoke-virtual {p0, p2, v0}, Ljavassist/bytecode/analysis/Type;->getAllInterfaces(Ljavassist/CtClass;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 485
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 486
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 488
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 492
    :cond_0
    invoke-virtual {p0, p1, v1}, Ljavassist/bytecode/analysis/Type;->findCommonInterfaces(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public static get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;
    .locals 1

    .line 127
    sget-object v0, Ljavassist/bytecode/analysis/Type;->prims:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/analysis/Type;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Ljavassist/bytecode/analysis/Type;

    invoke-direct {v0, p0}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    :goto_0
    return-object v0
.end method

.method private getClassPool(Ljavassist/bytecode/analysis/Type;)Ljavassist/ClassPool;
    .locals 0

    .line 352
    iget-object p1, p1, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    invoke-virtual {p1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    invoke-static {}, Ljavassist/ClassPool;->getDefault()Ljavassist/ClassPool;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static lookupType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;
    .locals 2

    .line 133
    :try_start_0
    new-instance v0, Ljavassist/bytecode/analysis/Type;

    invoke-static {}, Ljavassist/ClassPool;->getDefault()Ljavassist/ClassPool;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private mergeArray(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;
    .locals 3

    .line 357
    invoke-virtual {p0, p1}, Ljavassist/bytecode/analysis/Type;->getRootComponent(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 358
    invoke-virtual {p0, p0}, Ljavassist/bytecode/analysis/Type;->getRootComponent(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    .line 359
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->getDimensions()I

    move-result p1

    .line 360
    invoke-virtual {p0}, Ljavassist/bytecode/analysis/Type;->getDimensions()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 364
    invoke-virtual {v1, v0}, Ljavassist/bytecode/analysis/Type;->merge(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    .line 368
    sget-object v0, Ljavassist/bytecode/analysis/Type;->BOGUS:Ljavassist/bytecode/analysis/Type;

    if-ne p1, v0, :cond_0

    .line 369
    sget-object p1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    return-object p1

    .line 371
    :cond_0
    invoke-direct {p0, p1, v2}, Ljavassist/bytecode/analysis/Type;->createArray(Ljavassist/bytecode/analysis/Type;I)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    return-object p1

    :cond_1
    if-ge p1, v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    move p1, v2

    .line 386
    :goto_0
    sget-object v1, Ljavassist/bytecode/analysis/Type;->CLONEABLE:Ljavassist/bytecode/analysis/Type;

    iget-object v1, v1, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    iget-object v2, v0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    invoke-static {v1, v2}, Ljavassist/bytecode/analysis/Type;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Ljavassist/bytecode/analysis/Type;->SERIALIZABLE:Ljavassist/bytecode/analysis/Type;

    iget-object v1, v1, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    iget-object v2, v0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    invoke-static {v1, v2}, Ljavassist/bytecode/analysis/Type;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 389
    :cond_3
    sget-object v0, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/analysis/Type;->createArray(Ljavassist/bytecode/analysis/Type;I)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    return-object p1

    .line 387
    :cond_4
    :goto_1
    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/analysis/Type;->createArray(Ljavassist/bytecode/analysis/Type;I)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    return-object p1
.end method

.method private mergeClasses(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    iget-object v1, p1, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    invoke-static {v0, v1}, Ljavassist/bytecode/analysis/Type;->findCommonSuperClass(Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v1

    if-nez v1, :cond_2

    .line 454
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Type;->findCommonInterfaces(Ljavassist/bytecode/analysis/Type;)Ljava/util/Map;

    move-result-object p1

    .line 455
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 456
    new-instance v0, Ljavassist/bytecode/analysis/Type;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavassist/CtClass;

    invoke-direct {v0, p1}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    return-object v0

    .line 457
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 458
    new-instance v0, Ljavassist/bytecode/analysis/MultiType;

    invoke-direct {v0, p1}, Ljavassist/bytecode/analysis/MultiType;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 461
    :cond_1
    new-instance p1, Ljavassist/bytecode/analysis/Type;

    invoke-direct {p1, v0}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    return-object p1

    .line 465
    :cond_2
    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/analysis/Type;->findExclusiveDeclaredInterfaces(Ljavassist/bytecode/analysis/Type;Ljavassist/CtClass;)Ljava/util/Map;

    move-result-object p1

    .line 466
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 467
    new-instance v1, Ljavassist/bytecode/analysis/MultiType;

    new-instance v2, Ljavassist/bytecode/analysis/Type;

    invoke-direct {v2, v0}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/analysis/MultiType;-><init>(Ljava/util/Map;Ljavassist/bytecode/analysis/Type;)V

    return-object v1

    .line 470
    :cond_3
    new-instance p1, Ljavassist/bytecode/analysis/Type;

    invoke-direct {p1, v0}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    return-object p1
.end method


# virtual methods
.method arrayName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 339
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v0

    .line 341
    new-array v1, p2, [C

    const/4 v2, 0x0

    .line 342
    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    :goto_0
    if-ge v0, p2, :cond_0

    add-int/lit8 p1, v0, 0x1

    const/16 v2, 0x5b

    .line 344
    aput-char v2, v1, v0

    add-int/lit8 v0, p1, 0x1

    const/16 v2, 0x5d

    .line 345
    aput-char v2, v1, p1

    goto :goto_0

    .line 347
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 571
    instance-of v0, p1, Ljavassist/bytecode/analysis/Type;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 574
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    check-cast p1, Ljavassist/bytecode/analysis/Type;

    iget-object p1, p1, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    invoke-static {v0, p1}, Ljavassist/bytecode/analysis/Type;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method findCommonInterfaces(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 3

    .line 497
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 498
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 500
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 506
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 507
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 508
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/CtClass;

    .line 511
    :try_start_0
    invoke-virtual {v0}, Ljavassist/CtClass;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .line 516
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 517
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 513
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    return-object p2
.end method

.method getAllInterfaces(Ljavassist/CtClass;Ljava/util/Map;)Ljava/util/Map;
    .locals 4

    if-nez p2, :cond_0

    .line 525
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 527
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtClass;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v0

    const/4 v1, 0x0

    .line 532
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 533
    aget-object v2, v0, v1

    .line 534
    invoke-virtual {v2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    invoke-virtual {p0, v2, p2}, Ljavassist/bytecode/analysis/Type;->getAllInterfaces(Ljavassist/CtClass;Ljava/util/Map;)Ljava/util/Map;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
    :cond_2
    invoke-virtual {p1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object p1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    return-object p2

    :catch_0
    move-exception p1

    .line 540
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public getComponent()Ljavassist/bytecode/analysis/Type;
    .locals 2

    .line 227
    iget-object v0, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljavassist/CtClass;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 232
    :cond_0
    :try_start_0
    iget-object v0, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getComponentType()Ljavassist/CtClass;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    sget-object v1, Ljavassist/bytecode/analysis/Type;->prims:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/analysis/Type;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 238
    :cond_1
    new-instance v1, Ljavassist/bytecode/analysis/Type;

    invoke-direct {v1, v0}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .line 234
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCtClass()Ljavassist/CtClass;
    .locals 1

    .line 169
    iget-object v0, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    return-object v0
.end method

.method getDeclaredInterfaces(Ljavassist/CtClass;Ljava/util/Map;)Ljava/util/Map;
    .locals 3

    if-nez p2, :cond_0

    .line 549
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 551
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtClass;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getInterfaces()[Ljavassist/CtClass;

    move-result-object p1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 561
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 562
    aget-object v1, p1, v0

    .line 563
    invoke-virtual {v1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    invoke-virtual {p0, v1, p2}, Ljavassist/bytecode/analysis/Type;->getDeclaredInterfaces(Ljavassist/CtClass;Ljava/util/Map;)Ljava/util/Map;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p2

    :catch_0
    move-exception p1

    .line 558
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public getDimensions()I
    .locals 5

    .line 207
    invoke-virtual {p0}, Ljavassist/bytecode/analysis/Type;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 209
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 212
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, -0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method getRootComponent(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;
    .locals 1

    .line 314
    :goto_0
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->getComponent()Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public getSize()I
    .locals 2

    .line 160
    iget-object v0, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    sget-object v1, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    sget-object v1, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    if-eq v0, v1, :cond_1

    sget-object v0, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    :goto_1
    return v0
.end method

.method public isArray()Z
    .locals 1

    .line 197
    iget-object v0, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavassist/CtClass;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAssignableFrom(Ljavassist/bytecode/analysis/Type;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 253
    :cond_0
    sget-object v1, Ljavassist/bytecode/analysis/Type;->UNINIT:Ljavassist/bytecode/analysis/Type;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Ljavassist/bytecode/analysis/Type;->isReference()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-ne p0, v1, :cond_3

    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->isReference()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    return v0

    .line 256
    :cond_3
    instance-of v0, p1, Ljavassist/bytecode/analysis/MultiType;

    if-eqz v0, :cond_4

    .line 257
    check-cast p1, Ljavassist/bytecode/analysis/MultiType;

    invoke-virtual {p1, p0}, Ljavassist/bytecode/analysis/MultiType;->isAssignableTo(Ljavassist/bytecode/analysis/Type;)Z

    move-result p1

    return p1

    .line 259
    :cond_4
    instance-of v0, p1, Ljavassist/bytecode/analysis/MultiArrayType;

    if-eqz v0, :cond_5

    .line 260
    check-cast p1, Ljavassist/bytecode/analysis/MultiArrayType;

    invoke-virtual {p1, p0}, Ljavassist/bytecode/analysis/MultiArrayType;->isAssignableTo(Ljavassist/bytecode/analysis/Type;)Z

    move-result p1

    return p1

    .line 264
    :cond_5
    iget-object v0, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 268
    :cond_6
    :try_start_0
    iget-object p1, p1, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    iget-object v0, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    invoke-virtual {p1, v0}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 270
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isReference()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Ljavassist/bytecode/analysis/Type;->special:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSpecial()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Ljavassist/bytecode/analysis/Type;->special:Z

    return v0
.end method

.method public merge(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;
    .locals 1

    if-ne p1, p0, :cond_0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 290
    :cond_1
    sget-object v0, Ljavassist/bytecode/analysis/Type;->UNINIT:Ljavassist/bytecode/analysis/Type;

    if-ne p1, v0, :cond_2

    return-object p0

    :cond_2
    if-ne p0, v0, :cond_3

    return-object p1

    .line 296
    :cond_3
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->isReference()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ljavassist/bytecode/analysis/Type;->isReference()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 300
    :cond_4
    instance-of v0, p1, Ljavassist/bytecode/analysis/MultiType;

    if-eqz v0, :cond_5

    .line 301
    invoke-virtual {p1, p0}, Ljavassist/bytecode/analysis/Type;->merge(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    return-object p1

    .line 303
    :cond_5
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljavassist/bytecode/analysis/Type;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 304
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Type;->mergeArray(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    return-object p1

    .line 307
    :cond_6
    :try_start_0
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Type;->mergeClasses(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 309
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 297
    :cond_7
    :goto_0
    sget-object p1, Ljavassist/bytecode/analysis/Type;->BOGUS:Ljavassist/bytecode/analysis/Type;

    return-object p1
.end method

.method popChanged()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 582
    sget-object v0, Ljavassist/bytecode/analysis/Type;->BOGUS:Ljavassist/bytecode/analysis/Type;

    if-ne p0, v0, :cond_0

    const-string v0, "BOGUS"

    return-object v0

    .line 584
    :cond_0
    sget-object v0, Ljavassist/bytecode/analysis/Type;->UNINIT:Ljavassist/bytecode/analysis/Type;

    if-ne p0, v0, :cond_1

    const-string v0, "UNINIT"

    return-object v0

    .line 586
    :cond_1
    sget-object v0, Ljavassist/bytecode/analysis/Type;->RETURN_ADDRESS:Ljavassist/bytecode/analysis/Type;

    if-ne p0, v0, :cond_2

    const-string v0, "RETURN ADDRESS"

    return-object v0

    .line 588
    :cond_2
    sget-object v0, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    if-ne p0, v0, :cond_3

    const-string v0, "TOP"

    return-object v0

    .line 591
    :cond_3
    iget-object v0, p0, Ljavassist/bytecode/analysis/Type;->clazz:Ljavassist/CtClass;

    if-nez v0, :cond_4

    const-string v0, "null"

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
