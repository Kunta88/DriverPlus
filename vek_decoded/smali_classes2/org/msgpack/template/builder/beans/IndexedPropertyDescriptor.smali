.class public Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;
.super Lorg/msgpack/template/builder/beans/PropertyDescriptor;
.source "IndexedPropertyDescriptor.java"


# instance fields
.field private indexedGetter:Ljava/lang/reflect/Method;

.field private indexedPropertyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private indexedSetter:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    .line 144
    invoke-direct {p0, p1, p2}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 145
    invoke-static {p1}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->initialUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "get"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->initialUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "set"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->setIndexedByName(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, p2, p5, p6}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->setIndexedByName(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    .line 118
    invoke-direct {p0, p1, p2, p3}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    const/4 p1, 0x1

    if-eqz p4, :cond_0

    .line 120
    invoke-direct {p0, p4}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->internalSetIndexedReadMethod(Ljava/lang/reflect/Method;)V

    .line 121
    invoke-direct {p0, p5, p1}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->internalSetIndexedWriteMethod(Ljava/lang/reflect/Method;Z)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-direct {p0, p5, p1}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->internalSetIndexedWriteMethod(Ljava/lang/reflect/Method;Z)V

    .line 124
    invoke-direct {p0, p4}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->internalSetIndexedReadMethod(Ljava/lang/reflect/Method;)V

    .line 127
    :goto_0
    invoke-direct {p0}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->isCompatible()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 129
    :cond_1
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string p2, "custom.beans.57"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static initialUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 376
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    .line 380
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private internalSetIndexedReadMethod(Ljava/lang/reflect/Method;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    const-string v0, "custom.beans.5A"

    if-nez p1, :cond_2

    .line 257
    iget-object p1, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedSetter:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 258
    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_0

    .line 263
    iput-object v1, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedPropertyType:Ljava/lang/Class;

    goto :goto_0

    .line 260
    :cond_0
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    invoke-static {v0}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 265
    :cond_1
    :goto_0
    iput-object v1, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedGetter:Ljava/lang/reflect/Method;

    return-void

    .line 269
    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    const-string v2, "custom.beans.5B"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v1, v1, v4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v4, :cond_8

    .line 274
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 275
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v4, :cond_7

    .line 278
    iget-object v2, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedSetter:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    iget-object v4, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedSetter:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    aget-object v3, v4, v3

    if-ne v2, v3, :cond_3

    goto :goto_1

    .line 282
    :cond_3
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    invoke-static {v0}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 287
    :cond_4
    :goto_1
    iget-object v2, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedGetter:Ljava/lang/reflect/Method;

    if-nez v2, :cond_5

    .line 288
    iput-object v1, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedPropertyType:Ljava/lang/Class;

    goto :goto_2

    .line 290
    :cond_5
    iget-object v2, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedPropertyType:Ljava/lang/Class;

    if-ne v2, v1, :cond_6

    .line 297
    :goto_2
    iput-object p1, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedGetter:Ljava/lang/reflect/Method;

    return-void

    .line 292
    :cond_6
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    invoke-static {v0}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 277
    :cond_7
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    invoke-static {v2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 272
    :cond_8
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    invoke-static {v2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private internalSetIndexedWriteMethod(Ljava/lang/reflect/Method;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    if-nez p1, :cond_2

    .line 336
    iget-object p1, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedGetter:Ljava/lang/reflect/Method;

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 337
    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_0

    .line 342
    iput-object p2, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedPropertyType:Ljava/lang/Class;

    goto :goto_0

    .line 339
    :cond_0
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string p2, "custom.beans.5E"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 344
    :cond_1
    :goto_0
    iput-object p2, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedSetter:Ljava/lang/reflect/Method;

    return-void

    .line 349
    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 350
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x0

    .line 354
    aget-object v1, v0, v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    .line 361
    aget-object v0, v0, v1

    if-eqz p2, :cond_3

    .line 362
    iget-object p2, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedGetter:Ljava/lang/reflect/Method;

    if-nez p2, :cond_3

    .line 363
    iput-object v0, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedPropertyType:Ljava/lang/Class;

    goto :goto_1

    .line 365
    :cond_3
    iget-object p2, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedPropertyType:Ljava/lang/Class;

    if-ne p2, v0, :cond_4

    .line 372
    :goto_1
    iput-object p1, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedSetter:Ljava/lang/reflect/Method;

    return-void

    .line 367
    :cond_4
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string p2, "custom.beans.61"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 356
    :cond_5
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string p2, "custom.beans.60"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 352
    :cond_6
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string p2, "custom.beans.5F"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isCompatible()Z
    .locals 3

    .line 83
    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 88
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 92
    :cond_1
    iget-object v2, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedPropertyType:Ljava/lang/Class;

    if-nez v2, :cond_2

    return v1

    .line 96
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedPropertyType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setIndexedByName(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    .line 63
    invoke-direct {p0, p1, p3}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->setIndexedWriteMethod(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 69
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->setIndexedReadMethod(Ljava/lang/Class;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 71
    iget-object p2, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedPropertyType:Ljava/lang/Class;

    invoke-direct {p0, p1, p3, p2}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->setIndexedWriteMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 76
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->isCompatible()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 78
    :cond_3
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string p2, "custom.beans.57"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setIndexedReadMethod(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 241
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    invoke-direct {p0, p1}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->internalSetIndexedReadMethod(Ljava/lang/reflect/Method;)V

    return-void

    .line 248
    :catch_0
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string p2, "custom.beans.59"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 245
    :catch_1
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string p2, "custom.beans.58"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setIndexedWriteMethod(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 304
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    invoke-direct {p0, p1, v2}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->internalSetIndexedWriteMethod(Ljava/lang/reflect/Method;Z)V

    return-void

    .line 311
    :catch_0
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string p2, "custom.beans.5D"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 308
    :catch_1
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string p2, "custom.beans.5C"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setIndexedWriteMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 320
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 322
    invoke-direct {p0, p1, v1}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->internalSetIndexedWriteMethod(Ljava/lang/reflect/Method;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 328
    :catch_0
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string p2, "custom.beans.5C"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 325
    :catch_1
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string p2, "custom.beans.5D"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 204
    instance-of v0, p1, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 208
    :cond_0
    check-cast p1, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;

    .line 210
    invoke-super {p0, p1}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedPropertyType:Ljava/lang/Class;

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedPropertyType:Ljava/lang/Class;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedPropertyType:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedGetter:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedGetter:Ljava/lang/reflect/Method;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_2
    iget-object v2, p1, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedGetter:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedSetter:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedSetter:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    if-nez p1, :cond_4

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_2
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public getIndexedPropertyType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedPropertyType:Ljava/lang/Class;

    return-object v0
.end method

.method public getIndexedReadMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedGetter:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getIndexedWriteMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedSetter:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 223
    invoke-super {p0}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedPropertyType:Ljava/lang/Class;

    invoke-static {v1}, Lorg/apache/harmony/beans/BeansUtils;->getHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedGetter:Ljava/lang/reflect/Method;

    invoke-static {v1}, Lorg/apache/harmony/beans/BeansUtils;->getHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->indexedSetter:Ljava/lang/reflect/Method;

    invoke-static {v1}, Lorg/apache/harmony/beans/BeansUtils;->getHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setIndexedReadMethod(Ljava/lang/reflect/Method;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->internalSetIndexedReadMethod(Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public setIndexedWriteMethod(Ljava/lang/reflect/Method;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, p1, v0}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->internalSetIndexedWriteMethod(Ljava/lang/reflect/Method;Z)V

    return-void
.end method
