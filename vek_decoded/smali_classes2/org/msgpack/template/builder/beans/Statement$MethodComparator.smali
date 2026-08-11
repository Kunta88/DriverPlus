.class Lorg/msgpack/template/builder/beans/Statement$MethodComparator;
.super Ljava/lang/Object;
.source "Statement.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/msgpack/template/builder/beans/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MethodComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# static fields
.field static INFINITY:I = 0x7fffffff


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private referenceMethodArgumentTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private referenceMethodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-object p1, p0, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->referenceMethodName:Ljava/lang/String;

    .line 520
    iput-object p2, p0, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->referenceMethodArgumentTypes:[Ljava/lang/Class;

    .line 521
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->cache:Ljava/util/Map;

    return-void
.end method

.method private static getDistance(Ljava/lang/Class;Ljava/lang/Class;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 582
    sget v0, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->INFINITY:I

    .line 583
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 584
    sget p0, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->INFINITY:I

    return p0

    .line 586
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    .line 589
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 591
    invoke-static {v1, p1}, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->getDistance(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v0

    .line 593
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 594
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    .line 595
    sget v1, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->INFINITY:I

    .line 596
    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v4, p0, v2

    .line 597
    invoke-static {v4, p1}, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->getDistance(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v4

    if-ge v4, v1, :cond_3

    move v1, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-ge v0, v1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    .line 605
    :goto_1
    sget p0, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->INFINITY:I

    if-eq v0, p0, :cond_6

    add-int/lit8 p0, v0, 0x1

    :cond_6
    return p0

    .line 607
    :cond_7
    sget p0, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->INFINITY:I

    if-eq v0, p0, :cond_8

    add-int/lit8 p0, v0, 0x2

    :cond_8
    return p0
.end method

.method private getNorm(Ljava/lang/reflect/Method;)I
    .locals 4

    .line 547
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 548
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    .line 550
    iget-object v1, p0, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->referenceMethodName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->referenceMethodArgumentTypes:[Ljava/lang/Class;

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 554
    :goto_0
    iget-object v2, p0, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->referenceMethodArgumentTypes:[Ljava/lang/Class;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 555
    aget-object v3, v2, v0

    if-nez v3, :cond_1

    goto :goto_1

    .line 559
    :cond_1
    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 560
    iget-object v2, p0, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->referenceMethodArgumentTypes:[Ljava/lang/Class;

    aget-object v3, v2, v0

    invoke-static {v3}, Lorg/msgpack/template/builder/beans/Statement;->access$000(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v0

    .line 562
    :cond_2
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 563
    aget-object v2, p1, v0

    invoke-static {v2}, Lorg/msgpack/template/builder/beans/Statement;->access$000(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, p1, v0

    .line 565
    :cond_3
    iget-object v2, p0, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->referenceMethodArgumentTypes:[Ljava/lang/Class;

    aget-object v2, v2, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->getDistance(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v2

    add-int/2addr v1, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v1

    .line 552
    :cond_5
    :goto_2
    sget p1, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->INFINITY:I

    return p1
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 508
    check-cast p1, Ljava/lang/reflect/Method;

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, p2}, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I
    .locals 3

    .line 525
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 526
    iget-object v1, p0, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->cache:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 528
    invoke-direct {p0, p1}, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->getNorm(Ljava/lang/reflect/Method;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 529
    iget-object v2, p0, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->cache:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-nez v1, :cond_1

    .line 532
    invoke-direct {p0, p2}, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->getNorm(Ljava/lang/reflect/Method;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 533
    iget-object p1, p0, Lorg/msgpack/template/builder/beans/Statement$MethodComparator;->cache:Ljava/util/Map;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
