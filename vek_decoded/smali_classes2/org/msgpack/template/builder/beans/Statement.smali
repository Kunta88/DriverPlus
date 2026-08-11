.class public Lorg/msgpack/template/builder/beans/Statement;
.super Ljava/lang/Object;
.source "Statement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/msgpack/template/builder/beans/Statement$MethodComparator;
    }
.end annotation


# static fields
.field private static classMethodsCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final pdConstructorSignatures:[[Ljava/lang/String;


# instance fields
.field private arguments:[Ljava/lang/Object;

.field private methodName:Ljava/lang/String;

.field private target:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/msgpack/template/builder/beans/Statement;->classMethodsCache:Ljava/util/WeakHashMap;

    const/16 v0, 0xd

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "java.lang.Class"

    aput-object v4, v2, v3

    const/4 v5, 0x1

    const-string v6, "new"

    aput-object v6, v2, v5

    const-string v7, "java.lang.Boolean"

    const/4 v8, 0x2

    aput-object v7, v2, v8

    const/4 v7, 0x3

    const-string v9, ""

    aput-object v9, v2, v7

    const/4 v10, 0x4

    aput-object v9, v2, v10

    const/4 v11, 0x5

    aput-object v9, v2, v11

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object v6, v2, v5

    const-string v12, "java.lang.Byte"

    aput-object v12, v2, v8

    aput-object v9, v2, v7

    aput-object v9, v2, v10

    aput-object v9, v2, v11

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object v6, v2, v5

    const-string v12, "java.lang.Character"

    aput-object v12, v2, v8

    aput-object v9, v2, v7

    aput-object v9, v2, v10

    aput-object v9, v2, v11

    aput-object v2, v0, v8

    new-array v2, v1, [Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object v6, v2, v5

    const-string v12, "java.lang.Double"

    aput-object v12, v2, v8

    aput-object v9, v2, v7

    aput-object v9, v2, v10

    aput-object v9, v2, v11

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object v6, v2, v5

    const-string v12, "java.lang.Float"

    aput-object v12, v2, v8

    aput-object v9, v2, v7

    aput-object v9, v2, v10

    aput-object v9, v2, v11

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object v6, v2, v5

    const-string v12, "java.lang.Integer"

    aput-object v12, v2, v8

    aput-object v9, v2, v7

    aput-object v9, v2, v10

    aput-object v9, v2, v11

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object v6, v2, v5

    const-string v13, "java.lang.Long"

    aput-object v13, v2, v8

    aput-object v9, v2, v7

    aput-object v9, v2, v10

    aput-object v9, v2, v11

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object v6, v2, v5

    const-string v13, "java.lang.Short"

    aput-object v13, v2, v8

    aput-object v9, v2, v7

    aput-object v9, v2, v10

    aput-object v9, v2, v11

    const/4 v13, 0x7

    aput-object v2, v0, v13

    new-array v2, v1, [Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object v6, v2, v5

    const-string v6, "java.lang.String"

    aput-object v6, v2, v8

    aput-object v9, v2, v7

    aput-object v9, v2, v10

    aput-object v9, v2, v11

    const/16 v13, 0x8

    aput-object v2, v0, v13

    new-array v2, v1, [Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v13, "forName"

    aput-object v13, v2, v5

    aput-object v6, v2, v8

    aput-object v9, v2, v7

    aput-object v9, v2, v10

    aput-object v9, v2, v11

    const/16 v14, 0x9

    aput-object v2, v0, v14

    new-array v2, v1, [Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v14, "newInstance"

    aput-object v14, v2, v5

    aput-object v4, v2, v8

    aput-object v12, v2, v7

    aput-object v9, v2, v10

    aput-object v9, v2, v11

    const/16 v12, 0xa

    aput-object v2, v0, v12

    new-array v2, v1, [Ljava/lang/String;

    const-string v12, "java.lang.reflect.Field"

    aput-object v12, v2, v3

    const-string v12, "get"

    aput-object v12, v2, v5

    const-string v12, "null"

    aput-object v12, v2, v8

    aput-object v9, v2, v7

    aput-object v9, v2, v10

    aput-object v9, v2, v11

    const/16 v12, 0xb

    aput-object v2, v0, v12

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v3

    aput-object v13, v1, v5

    aput-object v6, v1, v8

    aput-object v9, v1, v7

    aput-object v9, v1, v10

    aput-object v9, v1, v11

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 428
    sput-object v0, Lorg/msgpack/template/builder/beans/Statement;->pdConstructorSignatures:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/msgpack/template/builder/beans/Statement;->target:Ljava/lang/Object;

    .line 50
    iput-object p2, p0, Lorg/msgpack/template/builder/beans/Statement;->methodName:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 51
    sget-object p3, Lorg/apache/harmony/beans/BeansUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    :cond_0
    iput-object p3, p0, Lorg/msgpack/template/builder/beans/Statement;->arguments:[Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    .line 37
    invoke-static {p0}, Lorg/msgpack/template/builder/beans/Statement;->getPrimitiveWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private arrayCopy(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 225
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 226
    check-cast p3, [Z

    check-cast p3, [Z

    :goto_0
    if-ge v1, p4, :cond_7

    .line 228
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    aput-boolean p1, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 231
    check-cast p3, [S

    check-cast p3, [S

    :goto_1
    if-ge v1, p4, :cond_7

    .line 233
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    aput-short p1, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 235
    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 236
    check-cast p3, [B

    check-cast p3, [B

    :goto_2
    if-ge v1, p4, :cond_7

    .line 238
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    aput-byte p1, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 240
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 241
    check-cast p3, [C

    check-cast p3, [C

    :goto_3
    if-ge v1, p4, :cond_7

    .line 243
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    aput-char p1, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 245
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    .line 246
    check-cast p3, [I

    check-cast p3, [I

    :goto_4
    if-ge v1, p4, :cond_7

    .line 248
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 250
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    .line 251
    check-cast p3, [J

    check-cast p3, [J

    :goto_5
    if-ge v1, p4, :cond_7

    .line 253
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 255
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    .line 256
    check-cast p3, [F

    check-cast p3, [F

    :goto_6
    if-ge v1, p4, :cond_7

    .line 258
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 260
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    .line 261
    check-cast p3, [D

    check-cast p3, [D

    :goto_7
    if-ge v1, p4, :cond_7

    .line 263
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    return-void
.end method

.method private findArrayMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const-string v0, "get"

    .line 271
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "set"

    .line 272
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    new-instance p1, Ljava/lang/NoSuchMethodException;

    const-string p2, "custom.beans.3C"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 275
    :cond_1
    :goto_0
    array-length v2, p2

    const/4 v3, 0x0

    if-lez v2, :cond_3

    aget-object v2, p2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Ljava/lang/Integer;

    if-ne v2, v4, :cond_2

    goto :goto_1

    .line 276
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    const-string p2, "custom.beans.3D"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 277
    array-length v4, p2

    if-ne v4, v2, :cond_4

    goto :goto_2

    .line 278
    :cond_4
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "custom.beans.3E"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    const/4 v4, 0x2

    if-eqz v1, :cond_7

    .line 280
    array-length p2, p2

    if-ne p2, v4, :cond_6

    goto :goto_3

    .line 281
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "custom.beans.3F"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    new-array p2, v4, [Ljava/lang/Class;

    .line 285
    const-class v0, Ljava/lang/Object;

    aput-object v0, p2, v3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, p2, v2

    goto :goto_4

    :cond_8
    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Class;

    const-class v0, Ljava/lang/Object;

    aput-object v0, p2, v3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, p2, v2

    const-class v0, Ljava/lang/Object;

    aput-object v0, p2, v4

    .line 287
    :goto_4
    const-class v0, Ljava/lang/reflect/Array;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method private findConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 292
    invoke-static {p2}, Lorg/msgpack/template/builder/beans/Statement;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object p2

    .line 295
    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_5

    aget-object v5, v0, v4

    .line 296
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 297
    invoke-static {p2, v6}, Lorg/msgpack/template/builder/beans/Statement;->match([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v3, :cond_0

    goto :goto_3

    .line 304
    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 306
    :goto_1
    array-length v10, v6

    if-ge v9, v10, :cond_3

    .line 307
    aget-object v10, p2, v9

    if-eqz v10, :cond_1

    aget-object v10, v7, v9

    aget-object v11, v6, v9

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    and-int/2addr v8, v10

    if-nez v8, :cond_1

    goto :goto_2

    .line 312
    :cond_1
    aget-object v10, p2, v9

    if-nez v10, :cond_2

    aget-object v10, v6, v9

    aget-object v11, v7, v9

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    and-int/2addr v8, v10

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v8, :cond_4

    :goto_3
    move-object v3, v5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    return-object v3

    .line 324
    :cond_6
    new-instance p2, Ljava/lang/NoSuchMethodException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "custom.beans.40"

    invoke-static {v0, p1}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p2

    :goto_5
    goto :goto_4
.end method

.method static findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Z)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 335
    invoke-static {p2}, Lorg/msgpack/template/builder/beans/Statement;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object p2

    .line 338
    sget-object v0, Lorg/msgpack/template/builder/beans/Statement;->classMethodsCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    sget-object v0, Lorg/msgpack/template/builder/beans/Statement;->classMethodsCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Method;

    goto :goto_0

    .line 341
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 342
    sget-object v1, Lorg/msgpack/template/builder/beans/Statement;->classMethodsCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    .line 345
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 346
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    .line 347
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p3, :cond_1

    .line 348
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 349
    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    invoke-static {p2, v5}, Lorg/msgpack/template/builder/beans/Statement;->match([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 350
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 355
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_9

    const/4 p3, 0x1

    if-ne p0, p3, :cond_4

    .line 361
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;

    return-object p0

    .line 364
    :cond_4
    new-instance v1, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;

    invoke-direct {v1, p1, p2}, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 365
    new-array p0, p0, [Ljava/lang/reflect/Method;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Method;

    .line 366
    aget-object p2, p0, v2

    .line 369
    :goto_2
    array-length v0, p0

    if-ge p3, v0, :cond_8

    .line 371
    aget-object v0, p0, p3

    invoke-virtual {v1, p2, v0}, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I

    move-result v0

    if-nez v0, :cond_6

    .line 373
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 374
    aget-object v3, p0, p3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_5

    .line 381
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 384
    aget-object p2, p0, p3

    goto :goto_3

    .line 377
    :cond_5
    new-instance p0, Ljava/lang/NoSuchMethodException;

    const-string p2, "custom.beans.62"

    invoke-static {p2, p1}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    if-lez v0, :cond_7

    .line 388
    aget-object p2, p0, p3

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_8
    return-object p2

    .line 357
    :cond_9
    new-instance p0, Ljava/lang/NoSuchMethodException;

    const-string p2, "custom.beans.41"

    invoke-static {p2, p1}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method private static getPrimitiveWrapper(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 475
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 476
    const-class p0, Ljava/lang/Boolean;

    goto :goto_0

    .line 477
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 478
    const-class p0, Ljava/lang/Byte;

    goto :goto_0

    .line 479
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 480
    const-class p0, Ljava/lang/Character;

    goto :goto_0

    .line 481
    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 482
    const-class p0, Ljava/lang/Short;

    goto :goto_0

    .line 483
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 484
    const-class p0, Ljava/lang/Integer;

    goto :goto_0

    .line 485
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 486
    const-class p0, Ljava/lang/Long;

    goto :goto_0

    .line 487
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 488
    const-class p0, Ljava/lang/Float;

    goto :goto_0

    .line 489
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 490
    const-class p0, Ljava/lang/Double;

    goto :goto_0

    :cond_7
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getTypes([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 496
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 497
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 498
    aget-object v2, p0, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static isPDConstructor(Lorg/msgpack/template/builder/beans/Statement;)Z
    .locals 7

    .line 446
    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/Statement;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .line 447
    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/Statement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/Statement;->getArguments()[Ljava/lang/Object;

    move-result-object p0

    .line 449
    sget-object v2, Lorg/msgpack/template/builder/beans/Statement;->pdConstructorSignatures:[[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    new-array v4, v2, [Ljava/lang/String;

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    if-eqz p0, :cond_5

    .line 450
    array-length v5, p0

    if-nez v5, :cond_0

    goto :goto_4

    .line 455
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x1

    .line 456
    aput-object v1, v4, v0

    const/4 v1, 0x2

    :goto_0
    if-ge v1, v2, :cond_3

    .line 458
    array-length v5, p0

    add-int/lit8 v6, v1, -0x2

    if-le v5, v6, :cond_2

    .line 459
    aget-object v5, p0, v6

    if-eqz v5, :cond_1

    aget-object v5, p0, v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const-string v5, "null"

    :goto_1
    aput-object v5, v4, v1

    goto :goto_2

    :cond_2
    const-string v5, ""

    .line 462
    aput-object v5, v4, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 465
    :cond_3
    sget-object p0, Lorg/msgpack/template/builder/beans/Statement;->pdConstructorSignatures:[[Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_5

    aget-object v5, p0, v2

    .line 466
    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    return v0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return v3
.end method

.method static isStaticMethodCall(Lorg/msgpack/template/builder/beans/Statement;)Z
    .locals 4

    .line 410
    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/Statement;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .line 411
    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/Statement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 412
    instance-of v2, v0, Ljava/lang/Class;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 416
    :cond_0
    :try_start_0
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/Statement;->getArguments()[Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lorg/msgpack/template/builder/beans/Statement;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Z)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    return v3
.end method

.method private static match([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 395
    array-length v0, p1

    array-length v1, p0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 398
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 399
    aget-object v1, p0, v0

    if-eqz v1, :cond_1

    aget-object v1, p1, v0

    aget-object v3, p0, v0

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v1, p0, v0

    aget-object v3, p1, v0

    invoke-static {v1, v3}, Lorg/apache/harmony/beans/BeansUtils;->isPrimitiveWrapper(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public execute()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/Statement;->invokeMethod()Ljava/lang/Object;

    return-void
.end method

.method public getArguments()[Ljava/lang/Object;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/Statement;->arguments:[Ljava/lang/Object;

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/Statement;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/Statement;->target:Ljava/lang/Object;

    return-object v0
.end method

.method invokeMethod()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "new"

    const-string v1, "newInstance"

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/Statement;->getTarget()Ljava/lang/Object;

    move-result-object v2

    .line 106
    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/Statement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/Statement;->getArguments()[Ljava/lang/Object;

    move-result-object v4

    .line 108
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 109
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_0

    .line 110
    invoke-direct {p0, v3, v4}, Lorg/msgpack/template/builder/beans/Statement;->findArrayMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 111
    array-length v1, v4

    add-int/2addr v1, v8

    new-array v1, v1, [Ljava/lang/Object;

    .line 112
    aput-object v2, v1, v9

    .line 113
    array-length v2, v4

    invoke-static {v4, v9, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    invoke-virtual {v0, v7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_7

    .line 115
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-class v6, Ljava/lang/reflect/Array;

    if-ne v2, v6, :cond_1

    .line 117
    aget-object v0, v4, v9

    check-cast v0, Ljava/lang/Class;

    aget-object v1, v4, v8

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_7

    .line 119
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_6

    :cond_2
    const-string v0, "newArray"

    .line 134
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 136
    check-cast v2, Ljava/lang/Class;

    const/4 v0, 0x0

    .line 139
    :goto_0
    array-length v1, v4

    if-ge v0, v1, :cond_6

    .line 140
    aget-object v1, v4, v0

    if-nez v1, :cond_3

    move-object v1, v7

    goto :goto_1

    :cond_3
    aget-object v1, v4, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_5

    .line 142
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v1, v2}, Lorg/apache/harmony/beans/BeansUtils;->isPrimitiveWrapper(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 144
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "custom.beans.63"

    invoke-static {v1}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_6
    array-length v0, v4

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 149
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 151
    array-length v1, v4

    invoke-direct {p0, v2, v4, v0, v1}, Lorg/msgpack/template/builder/beans/Statement;->arrayCopy(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_3

    .line 154
    :cond_7
    array-length v1, v4

    invoke-static {v4, v9, v0, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    return-object v0

    .line 157
    :cond_8
    instance-of v0, v2, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_b

    .line 165
    :try_start_1
    const-class v0, Ljava/lang/Class;

    if-eq v2, v0, :cond_9

    .line 166
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0, v3, v4, v8}, Lorg/msgpack/template/builder/beans/Statement;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Z)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    .line 168
    :try_start_2
    invoke-virtual {v0, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_4

    :cond_9
    move-object v0, v7

    goto :goto_5

    :catch_0
    move-object v0, v7

    :catch_1
    :goto_4
    move-object v10, v7

    move-object v7, v0

    move-object v0, v10

    :goto_5
    if-nez v7, :cond_10

    :try_start_3
    const-string v0, "forName"

    .line 176
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    array-length v0, v4

    if-ne v0, v8, :cond_a

    aget-object v0, v4, v9

    instance-of v0, v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v0, :cond_a

    .line 181
    :try_start_4
    aget-object v0, v4, v9

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    .line 183
    :catch_2
    :try_start_5
    aget-object v0, v4, v9

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v8, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_7

    .line 188
    :cond_a
    invoke-static {v5, v3, v4, v9}, Lorg/msgpack/template/builder/beans/Statement;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 190
    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    .line 193
    :cond_b
    instance-of v0, v2, Ljava/util/Iterator;

    if-eqz v0, :cond_d

    .line 194
    check-cast v2, Ljava/util/Iterator;

    .line 195
    invoke-static {v5, v3, v4, v9}, Lorg/msgpack/template/builder/beans/Statement;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 197
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 198
    new-instance v1, Lorg/msgpack/template/builder/beans/Statement$1;

    invoke-direct {v1, p0, v0, v2}, Lorg/msgpack/template/builder/beans/Statement$1;-><init>(Lorg/msgpack/template/builder/beans/Statement;Ljava/lang/reflect/Method;Ljava/util/Iterator;)V

    invoke-virtual {v1}, Lorg/msgpack/template/builder/beans/Statement$1;->run()Ljava/lang/Object;

    move-result-object v7

    :cond_c
    move-object v0, v7

    goto :goto_7

    .line 212
    :cond_d
    invoke-static {v5, v3, v4, v9}, Lorg/msgpack/template/builder/beans/Statement;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 214
    invoke-virtual {v0, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 215
    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    .line 121
    :cond_e
    :goto_6
    instance-of v1, v2, Ljava/lang/Class;

    if-eqz v1, :cond_f

    .line 122
    check-cast v2, Ljava/lang/Class;

    invoke-direct {p0, v2, v4}, Lorg/msgpack/template/builder/beans/Statement;->findConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    .line 126
    :cond_f
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 130
    invoke-static {v5, v3, v4, v9}, Lorg/msgpack/template/builder/beans/Statement;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 132
    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_10
    :goto_7
    return-object v0

    .line 127
    :cond_11
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/Statement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 219
    instance-of v2, v1, Ljava/lang/Exception;

    if-eqz v2, :cond_12

    move-object v0, v1

    check-cast v0, Ljava/lang/Exception;

    :cond_12
    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    iget-object v1, p0, Lorg/msgpack/template/builder/beans/Statement;->target:Ljava/lang/Object;

    const-string v2, "null"

    if-nez v1, :cond_0

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 61
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 62
    const-class v3, Ljava/lang/String;

    if-ne v1, v3, :cond_1

    const-string v1, "\"\""

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lorg/apache/harmony/beans/BeansUtils;->idOfClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/msgpack/template/builder/beans/Statement;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x28

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v1, p0, Lorg/msgpack/template/builder/beans/Statement;->arguments:[Ljava/lang/Object;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 68
    :goto_2
    iget-object v3, p0, Lorg/msgpack/template/builder/beans/Statement;->arguments:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    if-lez v1, :cond_2

    const-string v3, ", "

    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_2
    iget-object v3, p0, Lorg/msgpack/template/builder/beans/Statement;->arguments:[Ljava/lang/Object;

    aget-object v4, v3, v1

    if-nez v4, :cond_3

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 75
    :cond_3
    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 76
    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lorg/msgpack/template/builder/beans/Statement;->arguments:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    invoke-static {v3}, Lorg/apache/harmony/beans/BeansUtils;->idOfClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const/16 v1, 0x29

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
