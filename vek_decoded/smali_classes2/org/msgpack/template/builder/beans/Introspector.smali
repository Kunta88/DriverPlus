.class public Lorg/msgpack/template/builder/beans/Introspector;
.super Ljava/lang/Object;
.source "Introspector.java"


# static fields
.field private static final DEFAULT_BEANINFO_SEARCHPATH:Ljava/lang/String; = "sun.beans.infos"

.field private static final DEFAULT_CAPACITY:I = 0x80

.field public static final IGNORE_ALL_BEANINFO:I = 0x3

.field public static final IGNORE_IMMEDIATE_BEANINFO:I = 0x2

.field public static final USE_ALL_BEANINFO:I = 0x1

.field private static searchPath:[Ljava/lang/String;

.field private static theCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/msgpack/template/builder/beans/StandardBeanInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sun.beans.infos"

    aput-object v2, v0, v1

    .line 81
    sput-object v0, Lorg/msgpack/template/builder/beans/Introspector;->searchPath:[Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/msgpack/template/builder/beans/Introspector;->theCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 111
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    .line 116
    aget-char v1, p0, v0

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    aput-char v1, p0, v0

    .line 117
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static flushCaches()V
    .locals 1

    .line 127
    sget-object v0, Lorg/msgpack/template/builder/beans/Introspector;->theCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static flushFromCaches(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    sget-object v0, Lorg/msgpack/template/builder/beans/Introspector;->theCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getBeanInfo(Ljava/lang/Class;)Lorg/msgpack/template/builder/beans/BeanInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/msgpack/template/builder/beans/BeanInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    .line 160
    sget-object v0, Lorg/msgpack/template/builder/beans/Introspector;->theCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 162
    invoke-static {p0, v0, v1}, Lorg/msgpack/template/builder/beans/Introspector;->getBeanInfoImplAndInit(Ljava/lang/Class;Ljava/lang/Class;I)Lorg/msgpack/template/builder/beans/StandardBeanInfo;

    move-result-object v0

    .line 163
    sget-object v1, Lorg/msgpack/template/builder/beans/Introspector;->theCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static getBeanInfo(Ljava/lang/Class;I)Lorg/msgpack/template/builder/beans/BeanInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Lorg/msgpack/template/builder/beans/BeanInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 228
    invoke-static {p0}, Lorg/msgpack/template/builder/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Lorg/msgpack/template/builder/beans/BeanInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 230
    invoke-static {p0, v0, p1}, Lorg/msgpack/template/builder/beans/Introspector;->getBeanInfoImplAndInit(Ljava/lang/Class;Ljava/lang/Class;I)Lorg/msgpack/template/builder/beans/StandardBeanInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getBeanInfo(Ljava/lang/Class;Ljava/lang/Class;)Lorg/msgpack/template/builder/beans/BeanInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/msgpack/template/builder/beans/BeanInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 191
    invoke-static {p0}, Lorg/msgpack/template/builder/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Lorg/msgpack/template/builder/beans/BeanInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 193
    invoke-static {p0, p1, v0}, Lorg/msgpack/template/builder/beans/Introspector;->getBeanInfoImplAndInit(Ljava/lang/Class;Ljava/lang/Class;I)Lorg/msgpack/template/builder/beans/StandardBeanInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getBeanInfoImpl(Ljava/lang/Class;Ljava/lang/Class;I)Lorg/msgpack/template/builder/beans/StandardBeanInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Lorg/msgpack/template/builder/beans/StandardBeanInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 260
    invoke-static {p0}, Lorg/msgpack/template/builder/beans/Introspector;->getExplicitBeanInfo(Ljava/lang/Class;)Lorg/msgpack/template/builder/beans/BeanInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 262
    :goto_0
    new-instance v2, Lorg/msgpack/template/builder/beans/StandardBeanInfo;

    invoke-direct {v2, p0, v1, p1}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;-><init>(Ljava/lang/Class;Lorg/msgpack/template/builder/beans/BeanInfo;Ljava/lang/Class;)V

    .line 264
    iget-object v1, v2, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->additionalBeanInfo:[Lorg/msgpack/template/builder/beans/BeanInfo;

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, v2, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->additionalBeanInfo:[Lorg/msgpack/template/builder/beans/BeanInfo;

    array-length v1, v1

    sub-int/2addr v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 266
    iget-object v3, v2, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->additionalBeanInfo:[Lorg/msgpack/template/builder/beans/BeanInfo;

    aget-object v3, v3, v1

    .line 267
    invoke-virtual {v2, v3, v0}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->mergeBeanInfo(Lorg/msgpack/template/builder/beans/BeanInfo;Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 272
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eq p0, p1, :cond_4

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    const/4 p2, 0x1

    .line 279
    :cond_2
    invoke-static {p0, p1, p2}, Lorg/msgpack/template/builder/beans/Introspector;->getBeanInfoImpl(Ljava/lang/Class;Ljava/lang/Class;I)Lorg/msgpack/template/builder/beans/StandardBeanInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    const/4 p1, 0x0

    .line 282
    invoke-virtual {v2, p0, p1}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->mergeBeanInfo(Lorg/msgpack/template/builder/beans/BeanInfo;Z)V

    goto :goto_2

    .line 275
    :cond_3
    new-instance p0, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string p1, "Stop class is not super class of bean class"

    invoke-direct {p0, p1}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    return-object v2
.end method

.method private static getBeanInfoImplAndInit(Ljava/lang/Class;Ljava/lang/Class;I)Lorg/msgpack/template/builder/beans/StandardBeanInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Lorg/msgpack/template/builder/beans/StandardBeanInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    .line 360
    invoke-static {p0, p1, p2}, Lorg/msgpack/template/builder/beans/Introspector;->getBeanInfoImpl(Ljava/lang/Class;Ljava/lang/Class;I)Lorg/msgpack/template/builder/beans/StandardBeanInfo;

    move-result-object p0

    .line 362
    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->init()V

    return-object p0
.end method

.method public static getBeanInfoSearchPath()[Ljava/lang/String;
    .locals 4

    .line 239
    sget-object v0, Lorg/msgpack/template/builder/beans/Introspector;->searchPath:[Ljava/lang/String;

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 240
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private static getExplicitBeanInfo(Ljava/lang/Class;)Lorg/msgpack/template/builder/beans/BeanInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/msgpack/template/builder/beans/BeanInfo;"
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BeanInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    :try_start_0
    invoke-static {v0, p0}, Lorg/msgpack/template/builder/beans/Introspector;->loadBeanInfo(Ljava/lang/String;Ljava/lang/Class;)Lorg/msgpack/template/builder/beans/BeanInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/16 v1, 0x2e

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    .line 301
    :goto_0
    sget-object v2, Lorg/msgpack/template/builder/beans/Introspector;->searchPath:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/msgpack/template/builder/beans/Introspector;->searchPath:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 304
    :try_start_1
    invoke-static {v2, p0}, Lorg/msgpack/template/builder/beans/Introspector;->loadBeanInfo(Ljava/lang/String;Ljava/lang/Class;)Lorg/msgpack/template/builder/beans/BeanInfo;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 309
    invoke-interface {v2}, Lorg/msgpack/template/builder/beans/BeanInfo;->getBeanDescriptor()Lorg/msgpack/template/builder/beans/BeanDescriptor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 310
    invoke-virtual {v3}, Lorg/msgpack/template/builder/beans/BeanDescriptor;->getBeanClass()Ljava/lang/Class;

    move-result-object v3

    if-ne p0, v3, :cond_1

    return-object v2

    :catch_1
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    :cond_2
    const-class v0, Lorg/msgpack/template/builder/beans/BeanInfo;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 317
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/msgpack/template/builder/beans/Introspector;->loadBeanInfo(Ljava/lang/String;Ljava/lang/Class;)Lorg/msgpack/template/builder/beans/BeanInfo;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static loadBeanInfo(Ljava/lang/String;Ljava/lang/Class;)Lorg/msgpack/template/builder/beans/BeanInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/msgpack/template/builder/beans/BeanInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 340
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 342
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/msgpack/template/builder/beans/BeanInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 349
    :catch_0
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/msgpack/template/builder/beans/BeanInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 354
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/msgpack/template/builder/beans/BeanInfo;

    return-object p0
.end method

.method public static setBeanInfoSearchPath([Ljava/lang/String;)V
    .locals 1

    .line 250
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkPropertiesAccess()V

    .line 253
    :cond_0
    sput-object p0, Lorg/msgpack/template/builder/beans/Introspector;->searchPath:[Ljava/lang/String;

    return-void
.end method
