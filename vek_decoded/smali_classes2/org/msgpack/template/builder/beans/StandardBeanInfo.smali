.class Lorg/msgpack/template/builder/beans/StandardBeanInfo;
.super Lorg/msgpack/template/builder/beans/SimpleBeanInfo;
.source "StandardBeanInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/msgpack/template/builder/beans/StandardBeanInfo$PropertyComparator;
    }
.end annotation


# static fields
.field private static final PREFIX_ADD:Ljava/lang/String; = "add"

.field private static final PREFIX_GET:Ljava/lang/String; = "get"

.field private static final PREFIX_IS:Ljava/lang/String; = "is"

.field private static final PREFIX_REMOVE:Ljava/lang/String; = "remove"

.field private static final PREFIX_SET:Ljava/lang/String; = "set"

.field private static final STR_GETTERS:Ljava/lang/String; = "getters"

.field private static final STR_INDEXED:Ljava/lang/String; = "indexed"

.field private static final STR_INVALID:Ljava/lang/String; = "invalid"

.field private static final STR_IS_CONSTRAINED:Ljava/lang/String; = "isConstrained"

.field private static final STR_NORMAL:Ljava/lang/String; = "normal"

.field private static final STR_PROPERTY_TYPE:Ljava/lang/String; = "PropertyType"

.field private static final STR_SETTERS:Ljava/lang/String; = "setters"

.field private static final STR_VALID:Ljava/lang/String; = "valid"

.field private static final SUFFIX_LISTEN:Ljava/lang/String; = "Listener"

.field private static comparator:Lorg/msgpack/template/builder/beans/StandardBeanInfo$PropertyComparator;


# instance fields
.field additionalBeanInfo:[Lorg/msgpack/template/builder/beans/BeanInfo;

.field private beanClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private beanDescriptor:Lorg/msgpack/template/builder/beans/BeanDescriptor;

.field private canAddPropertyChangeListener:Z

.field private canRemovePropertyChangeListener:Z

.field private defaultEventIndex:I

.field private defaultPropertyIndex:I

.field private events:[Lorg/msgpack/template/builder/beans/EventSetDescriptor;

.field private explicitBeanInfo:Lorg/msgpack/template/builder/beans/BeanInfo;

.field private explicitEvents:Z

.field private explicitMethods:Z

.field private explicitProperties:Z

.field private methods:[Lorg/msgpack/template/builder/beans/MethodDescriptor;

.field private properties:[Lorg/msgpack/template/builder/beans/PropertyDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 89
    new-instance v0, Lorg/msgpack/template/builder/beans/StandardBeanInfo$PropertyComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/msgpack/template/builder/beans/StandardBeanInfo$PropertyComparator;-><init>(Lorg/msgpack/template/builder/beans/StandardBeanInfo$1;)V

    sput-object v0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->comparator:Lorg/msgpack/template/builder/beans/StandardBeanInfo$PropertyComparator;

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lorg/msgpack/template/builder/beans/BeanInfo;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/msgpack/template/builder/beans/BeanInfo;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Lorg/msgpack/template/builder/beans/SimpleBeanInfo;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->explicitMethods:Z

    .line 67
    iput-boolean v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->explicitProperties:Z

    .line 69
    iput-boolean v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->explicitEvents:Z

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->explicitBeanInfo:Lorg/msgpack/template/builder/beans/BeanInfo;

    .line 73
    iput-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->events:[Lorg/msgpack/template/builder/beans/EventSetDescriptor;

    .line 75
    iput-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->methods:[Lorg/msgpack/template/builder/beans/MethodDescriptor;

    .line 77
    iput-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->properties:[Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    .line 79
    iput-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->beanDescriptor:Lorg/msgpack/template/builder/beans/BeanDescriptor;

    .line 81
    iput-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->additionalBeanInfo:[Lorg/msgpack/template/builder/beans/BeanInfo;

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->defaultEventIndex:I

    .line 87
    iput v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->defaultPropertyIndex:I

    .line 97
    iput-object p1, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->beanClass:Ljava/lang/Class;

    if-eqz p2, :cond_6

    .line 116
    iput-object p2, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->explicitBeanInfo:Lorg/msgpack/template/builder/beans/BeanInfo;

    .line 117
    invoke-interface {p2}, Lorg/msgpack/template/builder/beans/BeanInfo;->getEventSetDescriptors()[Lorg/msgpack/template/builder/beans/EventSetDescriptor;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->events:[Lorg/msgpack/template/builder/beans/EventSetDescriptor;

    .line 118
    invoke-interface {p2}, Lorg/msgpack/template/builder/beans/BeanInfo;->getMethodDescriptors()[Lorg/msgpack/template/builder/beans/MethodDescriptor;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->methods:[Lorg/msgpack/template/builder/beans/MethodDescriptor;

    .line 119
    invoke-interface {p2}, Lorg/msgpack/template/builder/beans/BeanInfo;->getPropertyDescriptors()[Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->properties:[Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    .line 120
    invoke-interface {p2}, Lorg/msgpack/template/builder/beans/BeanInfo;->getDefaultEventIndex()I

    move-result p1

    iput p1, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->defaultEventIndex:I

    if-ltz p1, :cond_0

    .line 121
    iget-object v1, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->events:[Lorg/msgpack/template/builder/beans/EventSetDescriptor;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 122
    :cond_0
    iput v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->defaultEventIndex:I

    .line 124
    :cond_1
    invoke-interface {p2}, Lorg/msgpack/template/builder/beans/BeanInfo;->getDefaultPropertyIndex()I

    move-result p1

    iput p1, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->defaultPropertyIndex:I

    if-ltz p1, :cond_2

    .line 125
    iget-object v1, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->properties:[Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    array-length v1, v1

    if-lt p1, v1, :cond_3

    .line 127
    :cond_2
    iput v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->defaultPropertyIndex:I

    .line 129
    :cond_3
    invoke-interface {p2}, Lorg/msgpack/template/builder/beans/BeanInfo;->getAdditionalBeanInfo()[Lorg/msgpack/template/builder/beans/BeanInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->additionalBeanInfo:[Lorg/msgpack/template/builder/beans/BeanInfo;

    .line 131
    iget-object p1, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->events:[Lorg/msgpack/template/builder/beans/EventSetDescriptor;

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    .line 132
    iput-boolean p2, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->explicitEvents:Z

    .line 133
    :cond_4
    iget-object p1, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->methods:[Lorg/msgpack/template/builder/beans/MethodDescriptor;

    if-eqz p1, :cond_5

    .line 134
    iput-boolean p2, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->explicitMethods:Z

    .line 135
    :cond_5
    iget-object p1, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->properties:[Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    if-eqz p1, :cond_6

    .line 136
    iput-boolean p2, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->explicitProperties:Z

    .line 139
    :cond_6
    iget-object p1, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->methods:[Lorg/msgpack/template/builder/beans/MethodDescriptor;

    if-nez p1, :cond_7

    .line 140
    invoke-direct {p0}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->introspectMethods()[Lorg/msgpack/template/builder/beans/MethodDescriptor;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->methods:[Lorg/msgpack/template/builder/beans/MethodDescriptor;

    .line 143
    :cond_7
    iget-object p1, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->properties:[Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    if-nez p1, :cond_8

    .line 144
    invoke-direct {p0, p3}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->introspectProperties(Ljava/lang/Class;)[Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->properties:[Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    .line 147
    :cond_8
    iget-object p1, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->events:[Lorg/msgpack/template/builder/beans/EventSetDescriptor;

    if-nez p1, :cond_9

    .line 148
    invoke-direct {p0}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->introspectEvents()[Lorg/msgpack/template/builder/beans/EventSetDescriptor;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->events:[Lorg/msgpack/template/builder/beans/EventSetDescriptor;

    :cond_9
    return-void
.end method

.method private capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 481
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 485
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x0

    .line 486
    aget-char v1, p1, v0

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    aput-char v1, p1, v0

    .line 487
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method

.method private fixGetSet(Ljava/util/HashMap;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 954
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 955
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "getters"

    .line 956
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const-string v3, "setters"

    .line 958
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 970
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    if-nez v3, :cond_2

    .line 974
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 980
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "is"

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string v11, "get"

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Method;

    .line 981
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    .line 982
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    if-eqz v12, :cond_4

    .line 984
    array-length v14, v12

    if-nez v14, :cond_6

    :cond_4
    if-eqz v5, :cond_5

    .line 986
    invoke-virtual {v13, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    :cond_5
    move-object v5, v7

    :cond_6
    if-eqz v12, :cond_3

    .line 993
    array-length v14, v12

    if-ne v14, v10, :cond_3

    aget-object v9, v12, v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_3

    if-eqz v6, :cond_7

    .line 996
    invoke-virtual {v13, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v13, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_7
    move-object v6, v7

    goto :goto_1

    :cond_8
    if-eqz v5, :cond_b

    .line 1008
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 1010
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/reflect/Method;

    .line 1011
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    array-length v13, v13

    if-ne v13, v10, :cond_9

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    aget-object v13, v13, v9

    invoke-virtual {v2, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    goto :goto_3

    :cond_a
    move-object v12, v4

    goto :goto_3

    .line 1022
    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v12, v4

    :cond_c
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Method;

    .line 1023
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    array-length v13, v13

    if-ne v13, v10, :cond_c

    move-object v12, v7

    goto :goto_2

    :cond_d
    :goto_3
    const/4 v2, 0x2

    if-eqz v6, :cond_10

    .line 1032
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    .line 1034
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/Method;

    .line 1035
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    array-length v14, v14

    if-ne v14, v2, :cond_e

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    aget-object v14, v14, v9

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v14, v15, :cond_e

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    aget-object v14, v14, v10

    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    goto :goto_5

    :cond_f
    move-object v13, v4

    goto :goto_5

    .line 1047
    :cond_10
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v13, v4

    :cond_11
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Method;

    .line 1048
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    array-length v14, v14

    if-ne v14, v2, :cond_11

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    aget-object v14, v14, v9

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v14, v15, :cond_11

    move-object v13, v7

    goto :goto_4

    :cond_12
    :goto_5
    if-eqz v5, :cond_13

    .line 1057
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    goto :goto_6

    :cond_13
    if-eqz v12, :cond_14

    .line 1059
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    aget-object v2, v2, v9

    goto :goto_6

    :cond_14
    move-object v2, v4

    :goto_6
    if-eqz v6, :cond_15

    .line 1064
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    goto :goto_7

    :cond_15
    if-eqz v13, :cond_16

    .line 1066
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    aget-object v4, v3, v10

    :cond_16
    :goto_7
    if-eqz v5, :cond_17

    .line 1070
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    :cond_17
    const-string v3, "normalPropertyType"

    const-string v7, "normalset"

    const-string v9, "normalget"

    const-string v10, "normal"

    const-string v14, "valid"

    if-eqz v5, :cond_19

    if-eqz v12, :cond_19

    if-eqz v6, :cond_18

    if-nez v13, :cond_19

    .line 1083
    :cond_18
    invoke-virtual {v1, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    invoke-virtual {v1, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    invoke-virtual {v1, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_19
    if-nez v5, :cond_1a

    if-eqz v12, :cond_1b

    :cond_1a
    if-nez v6, :cond_1b

    if-nez v13, :cond_1b

    .line 1095
    invoke-virtual {v1, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    invoke-virtual {v1, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    invoke-virtual {v1, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1b
    const-string v15, "indexedget"

    move-object/from16 p1, v0

    const-string v0, "indexedPropertyType"

    move-object/from16 v16, v8

    const-string v8, "indexedset"

    move-object/from16 v17, v0

    const-string v0, "indexed"

    if-nez v5, :cond_1d

    if-eqz v12, :cond_1c

    goto :goto_8

    :cond_1c
    move-object/from16 v19, v16

    move-object/from16 v2, v17

    goto/16 :goto_9

    :cond_1d
    :goto_8
    if-nez v6, :cond_1e

    if-eqz v13, :cond_1c

    :cond_1e
    if-eqz v5, :cond_21

    if-eqz v12, :cond_21

    if-eqz v6, :cond_21

    if-eqz v13, :cond_21

    move-object/from16 v18, v4

    .line 1110
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1111
    invoke-virtual {v1, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    invoke-virtual {v1, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    invoke-virtual {v1, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    invoke-virtual {v1, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    invoke-virtual {v1, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    invoke-virtual {v1, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v17

    move-object/from16 v4, v18

    .line 1120
    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    :cond_1f
    move-object/from16 v6, v17

    move-object/from16 v4, v18

    .line 1123
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v2, v11, :cond_20

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v15, v16

    invoke-virtual {v11, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_20

    .line 1125
    invoke-virtual {v1, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    invoke-virtual {v1, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 1130
    :cond_20
    invoke-virtual {v1, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    invoke-virtual {v1, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    invoke-virtual {v1, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    :cond_21
    move-object/from16 v18, v4

    move-object/from16 v19, v16

    move-object/from16 v4, v17

    if-eqz v5, :cond_23

    if-nez v12, :cond_23

    if-eqz v6, :cond_23

    if-eqz v13, :cond_23

    .line 1143
    invoke-virtual {v1, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    invoke-virtual {v1, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    invoke-virtual {v1, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    invoke-virtual {v1, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1150
    invoke-virtual {v1, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    :cond_22
    invoke-virtual {v1, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v18

    .line 1153
    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    :cond_23
    move-object/from16 v16, v2

    move-object/from16 v2, v18

    if-nez v5, :cond_25

    if-eqz v12, :cond_25

    if-eqz v6, :cond_25

    if-eqz v13, :cond_25

    .line 1160
    invoke-virtual {v1, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1162
    invoke-virtual {v1, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    :cond_24
    invoke-virtual {v1, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    :cond_25
    if-eqz v5, :cond_27

    if-nez v12, :cond_27

    if-eqz v6, :cond_27

    if-nez v13, :cond_27

    move-object/from16 v18, v2

    .line 1172
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1173
    invoke-virtual {v1, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    invoke-virtual {v1, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    invoke-virtual {v1, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v16

    .line 1176
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    invoke-virtual {v1, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    invoke-virtual {v1, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    invoke-virtual {v1, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v18

    .line 1182
    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    :cond_26
    move-object/from16 v2, v16

    .line 1185
    invoke-virtual {v1, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    invoke-virtual {v1, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    invoke-virtual {v1, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    :cond_27
    move-object/from16 v17, v4

    move-object v4, v2

    move-object/from16 v2, v16

    if-nez v5, :cond_29

    if-eqz v12, :cond_29

    if-eqz v6, :cond_29

    if-nez v13, :cond_29

    move-object/from16 v18, v4

    .line 1197
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1198
    invoke-virtual {v1, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    invoke-virtual {v1, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    invoke-virtual {v1, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    invoke-virtual {v1, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    invoke-virtual {v1, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    invoke-virtual {v1, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v17

    move-object/from16 v4, v18

    .line 1207
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 1210
    :cond_28
    invoke-virtual {v1, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    invoke-virtual {v1, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    invoke-virtual {v1, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    :cond_29
    move-object/from16 v2, v17

    if-eqz v5, :cond_2a

    if-nez v12, :cond_2a

    if-nez v6, :cond_2a

    if-eqz v13, :cond_2a

    .line 1222
    invoke-virtual {v1, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    invoke-virtual {v1, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    invoke-virtual {v1, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_2a
    if-nez v5, :cond_2b

    if-eqz v12, :cond_2b

    if-nez v6, :cond_2b

    if-eqz v13, :cond_2b

    .line 1232
    invoke-virtual {v1, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    invoke-virtual {v1, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    invoke-virtual {v1, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_2b
    :goto_9
    if-nez v12, :cond_2e

    if-nez v5, :cond_2e

    if-nez v6, :cond_2c

    if-eqz v13, :cond_2e

    :cond_2c
    if-eqz v6, :cond_2d

    .line 1246
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v19

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    if-eqz v13, :cond_31

    .line 1249
    invoke-virtual {v1, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    invoke-virtual {v1, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 1256
    :cond_2d
    invoke-virtual {v1, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    invoke-virtual {v1, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    invoke-virtual {v1, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_2e
    if-nez v12, :cond_2f

    if-eqz v5, :cond_30

    :cond_2f
    if-eqz v6, :cond_30

    if-eqz v13, :cond_30

    .line 1268
    invoke-virtual {v1, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    invoke-virtual {v1, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    invoke-virtual {v1, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_30
    const-string v2, "invalid"

    .line 1276
    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    :goto_a
    move-object/from16 v0, p1

    goto/16 :goto_0

    :cond_32
    return-void
.end method

.method private static getQualifiedName(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 3

    .line 593
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 594
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 596
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static internalAsMap([Lorg/msgpack/template/builder/beans/EventSetDescriptor;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/msgpack/template/builder/beans/EventSetDescriptor;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/msgpack/template/builder/beans/EventSetDescriptor;",
            ">;"
        }
    .end annotation

    .line 585
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 586
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 587
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static internalAsMap([Lorg/msgpack/template/builder/beans/MethodDescriptor;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/msgpack/template/builder/beans/MethodDescriptor;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/msgpack/template/builder/beans/MethodDescriptor;",
            ">;"
        }
    .end annotation

    .line 575
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 576
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 577
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/msgpack/template/builder/beans/MethodDescriptor;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v2}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->getQualifiedName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v2

    .line 578
    aget-object v3, p0, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static internalAsMap([Lorg/msgpack/template/builder/beans/PropertyDescriptor;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/msgpack/template/builder/beans/PropertyDescriptor;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/msgpack/template/builder/beans/PropertyDescriptor;",
            ">;"
        }
    .end annotation

    .line 566
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 567
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 568
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private introspectEvents()[Lorg/msgpack/template/builder/beans/EventSetDescriptor;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    .line 1293
    invoke-direct {p0}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->introspectMethods()[Lorg/msgpack/template/builder/beans/MethodDescriptor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1298
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1302
    :goto_0
    array-length v4, v0

    const-string v5, "remove"

    const-string v6, "add"

    if-ge v3, v4, :cond_1

    .line 1303
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/msgpack/template/builder/beans/MethodDescriptor;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v6, v4, v1}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->introspectListenerMethods(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/util/HashMap;)V

    .line 1305
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/msgpack/template/builder/beans/MethodDescriptor;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v5, v4, v1}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->introspectListenerMethods(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/util/HashMap;)V

    .line 1307
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/msgpack/template/builder/beans/MethodDescriptor;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->introspectGetListenerMethods(Ljava/lang/reflect/Method;Ljava/util/HashMap;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1310
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1311
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1312
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 1313
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Ljava/lang/reflect/Method;

    .line 1314
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Ljava/lang/reflect/Method;

    if-eqz v12, :cond_2

    if-nez v13, :cond_3

    goto :goto_1

    :cond_3
    const-string v7, "get"

    .line 1320
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Ljava/lang/reflect/Method;

    const-string v7, "listenerType"

    .line 1321
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Ljava/lang/Class;

    const-string v7, "listenerMethods"

    .line 1322
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/reflect/Method;

    move-object v11, v7

    check-cast v11, [Ljava/lang/reflect/Method;

    .line 1323
    new-instance v7, Lorg/msgpack/template/builder/beans/EventSetDescriptor;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/msgpack/template/builder/beans/Introspector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v7

    invoke-direct/range {v8 .. v14}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    const-string v3, "isUnicast"

    .line 1327
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v7, v3}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->setUnicast(Z)V

    .line 1328
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1331
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/msgpack/template/builder/beans/EventSetDescriptor;

    .line 1333
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method private static introspectGet(Ljava/lang/reflect/Method;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap;",
            ">;)V"
        }
    .end annotation

    .line 808
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "get"

    .line 820
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v3, "is"

    .line 824
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_2

    const/4 v1, 0x2

    :cond_2
    if-nez v1, :cond_3

    return-void

    .line 832
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/msgpack/template/builder/beans/Introspector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 835
    invoke-static {v0}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->isValidProperty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    return-void

    .line 840
    :cond_4
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 842
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v3, v5, :cond_5

    goto :goto_1

    :cond_5
    if-ne v1, v4, :cond_6

    .line 848
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v3, v1, :cond_6

    return-void

    .line 854
    :cond_6
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 855
    array-length v3, v1

    const/4 v4, 0x1

    if-gt v3, v4, :cond_a

    array-length v3, v1

    if-ne v3, v4, :cond_7

    aget-object v1, v1, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_7

    goto :goto_1

    .line 860
    :cond_7
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_8

    .line 862
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 863
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string p1, "getters"

    .line 866
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_9

    .line 868
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 869
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    :cond_9
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_1
    return-void
.end method

.method private static introspectGetListenerMethods(Ljava/lang/reflect/Method;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap;",
            ">;)V"
        }
    .end annotation

    .line 1429
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "get"

    .line 1434
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "Listeners"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    .line 1439
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "Listener"

    .line 1441
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1443
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 1447
    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1448
    array-length v3, v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 1452
    :cond_3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 1453
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 1459
    :cond_4
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_5

    .line 1461
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1464
    :cond_5
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_0
    return-void
.end method

.method private static introspectListenerMethods(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap;",
            ">;)V"
        }
    .end annotation

    .line 1344
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1349
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "Listener"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 1354
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1355
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1357
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_2

    .line 1361
    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1362
    array-length v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    goto :goto_2

    .line 1366
    :cond_3
    aget-object v3, v3, v2

    .line 1368
    const-class v4, Ljava/util/EventListener;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_4

    return-void

    .line 1372
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 1376
    :cond_5
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_6

    .line 1378
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_6
    const-string v4, "listenerType"

    .line 1381
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_7

    .line 1382
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    invoke-static {v3}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->introspectListenerMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "listenerMethods"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    :cond_7
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "add"

    .line 1390
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1391
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 1393
    :goto_0
    array-length p1, p0

    if-ge v2, p1, :cond_9

    .line 1394
    aget-object p1, p0, v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-class v3, Ljava/util/TooManyListenersException;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p0, "isUnicast"

    const-string p1, "true"

    .line 1396
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1403
    :cond_9
    :goto_1
    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_2
    return-void
.end method

.method private static introspectListenerMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1407
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    .line 1408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1409
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 1410
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 1411
    array-length v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 1415
    :cond_0
    const-class v4, Ljava/util/EventObject;

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1416
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1419
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/reflect/Method;

    .line 1420
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method

.method private introspectMethods()[Lorg/msgpack/template/builder/beans/MethodDescriptor;
    .locals 2

    .line 611
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->beanClass:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->introspectMethods(ZLjava/lang/Class;)[Lorg/msgpack/template/builder/beans/MethodDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private introspectMethods(Z)[Lorg/msgpack/template/builder/beans/MethodDescriptor;
    .locals 1

    .line 615
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->beanClass:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->introspectMethods(ZLjava/lang/Class;)[Lorg/msgpack/template/builder/beans/MethodDescriptor;

    move-result-object p1

    return-object p1
.end method

.method private introspectMethods(ZLjava/lang/Class;)[Lorg/msgpack/template/builder/beans/MethodDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Class<",
            "*>;)[",
            "Lorg/msgpack/template/builder/beans/MethodDescriptor;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 622
    invoke-virtual {p2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    if-eqz p1, :cond_4

    .line 625
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_2

    .line 628
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 632
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 633
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    .line 634
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 636
    new-instance v2, Lorg/msgpack/template/builder/beans/MethodDescriptor;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Lorg/msgpack/template/builder/beans/MethodDescriptor;-><init>(Ljava/lang/reflect/Method;)V

    .line 638
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 643
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 646
    new-array p1, p1, [Lorg/msgpack/template/builder/beans/MethodDescriptor;

    .line 647
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, [Lorg/msgpack/template/builder/beans/MethodDescriptor;

    :cond_4
    :goto_2
    return-object p2
.end method

.method private introspectProperties(Ljava/lang/Class;)[Lorg/msgpack/template/builder/beans/PropertyDescriptor;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Lorg/msgpack/template/builder/beans/PropertyDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    .line 667
    invoke-direct {p0}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->introspectMethods()[Lorg/msgpack/template/builder/beans/MethodDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 673
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 675
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_2

    .line 676
    aget-object v5, v0, v4

    invoke-virtual {v5}, Lorg/msgpack/template/builder/beans/MethodDescriptor;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    .line 677
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 678
    aget-object v5, v0, v4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 683
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 686
    new-array v0, v0, [Lorg/msgpack/template/builder/beans/MethodDescriptor;

    .line 687
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/msgpack/template/builder/beans/MethodDescriptor;

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_4

    return-object v1

    .line 694
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    .line 698
    :goto_2
    array-length v4, v0

    if-ge v2, v4, :cond_5

    .line 699
    aget-object v4, v0, v2

    invoke-virtual {v4}, Lorg/msgpack/template/builder/beans/MethodDescriptor;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->introspectGet(Ljava/lang/reflect/Method;Ljava/util/HashMap;)V

    .line 700
    aget-object v4, v0, v2

    invoke-virtual {v4}, Lorg/msgpack/template/builder/beans/MethodDescriptor;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->introspectSet(Ljava/lang/reflect/Method;Ljava/util/HashMap;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 704
    :cond_5
    invoke-direct {p0, v1}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->fixGetSet(Ljava/util/HashMap;)V

    const/4 v0, 0x1

    .line 707
    invoke-direct {p0, v0}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->introspectMethods(Z)[Lorg/msgpack/template/builder/beans/MethodDescriptor;

    move-result-object v2

    if-eqz p1, :cond_8

    .line 709
    invoke-direct {p0, v0, p1}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->introspectMethods(ZLjava/lang/Class;)[Lorg/msgpack/template/builder/beans/MethodDescriptor;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 712
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 713
    array-length v5, v2

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_7

    aget-object v7, v2, v6

    .line 714
    invoke-direct {p0, v7, p1}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->isInSuper(Lorg/msgpack/template/builder/beans/MethodDescriptor;[Lorg/msgpack/template/builder/beans/MethodDescriptor;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 715
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    new-array p1, v3, [Lorg/msgpack/template/builder/beans/MethodDescriptor;

    .line 718
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, [Lorg/msgpack/template/builder/beans/MethodDescriptor;

    :cond_8
    const/4 p1, 0x0

    .line 722
    :goto_4
    array-length v4, v2

    if-ge p1, v4, :cond_9

    .line 723
    aget-object v4, v2, p1

    invoke-virtual {v4}, Lorg/msgpack/template/builder/beans/MethodDescriptor;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->introspectPropertyListener(Ljava/lang/reflect/Method;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 726
    :cond_9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 728
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 729
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 730
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-nez v2, :cond_a

    goto :goto_5

    :cond_a
    const-string v5, "normal"

    .line 734
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "indexed"

    .line 735
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v5, :cond_b

    if-nez v6, :cond_b

    goto :goto_5

    :cond_b
    const-string v5, "normalget"

    .line 741
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/reflect/Method;

    const-string v5, "normalset"

    .line 742
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/lang/reflect/Method;

    const-string v5, "indexedget"

    .line 743
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Ljava/lang/reflect/Method;

    const-string v5, "indexedset"

    .line 744
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Ljava/lang/reflect/Method;

    if-nez v6, :cond_c

    .line 748
    new-instance v5, Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    invoke-direct {v5, v4, v7, v8}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    goto :goto_6

    .line 751
    :cond_c
    :try_start_0
    new-instance v13, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;

    move-object v5, v13

    move-object v6, v4

    move-object v9, v11

    move-object v10, v12

    invoke-direct/range {v5 .. v10}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Lorg/msgpack/template/builder/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v13

    goto :goto_6

    .line 756
    :catch_0
    new-instance v13, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v13

    move-object v6, v4

    move-object v9, v11

    move-object v10, v12

    invoke-direct/range {v5 .. v10}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 762
    :goto_6
    iget-boolean v4, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->canAddPropertyChangeListener:Z

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->canRemovePropertyChangeListener:Z

    if-eqz v4, :cond_d

    .line 763
    invoke-virtual {v5, v0}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setBound(Z)V

    goto :goto_7

    .line 765
    :cond_d
    invoke-virtual {v5, v3}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setBound(Z)V

    :goto_7
    const-string v4, "isConstrained"

    .line 767
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v4, :cond_e

    .line 768
    invoke-virtual {v5, v0}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setConstrained(Z)V

    .line 770
    :cond_e
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 773
    :cond_f
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    .line 775
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method private introspectPropertyListener(Ljava/lang/reflect/Method;)V
    .locals 5

    .line 791
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 792
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    .line 793
    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const-string v1, "addPropertyChangeListener"

    .line 796
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    aget-object v1, p1, v3

    const-class v4, Lorg/msgpack/template/builder/beans/PropertyChangeListener;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 798
    iput-boolean v2, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->canAddPropertyChangeListener:Z

    :cond_1
    const-string v1, "removePropertyChangeListener"

    .line 799
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    aget-object p1, p1, v3

    const-class v0, Lorg/msgpack/template/builder/beans/PropertyChangeListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 801
    iput-boolean v2, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->canRemovePropertyChangeListener:Z

    :cond_2
    return-void
.end method

.method private static introspectSet(Ljava/lang/reflect/Method;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap;",
            ">;)V"
        }
    .end annotation

    .line 880
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 889
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 890
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_9

    const-string v1, "set"

    .line 894
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    .line 898
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/msgpack/template/builder/beans/Introspector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 901
    invoke-static {v0}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->isValidProperty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 908
    :cond_3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 910
    array-length v2, v1

    if-eqz v2, :cond_9

    array-length v2, v1

    const/4 v3, 0x2

    if-gt v2, v3, :cond_9

    array-length v2, v1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_4

    aget-object v1, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_4

    goto :goto_1

    .line 915
    :cond_4
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_5

    .line 917
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 918
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string p1, "setters"

    .line 921
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 923
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 924
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    :cond_6
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object p1

    .line 929
    array-length v2, p1

    :goto_0
    if-ge v4, v2, :cond_8

    aget-object v3, p1, v4

    .line 930
    const-class v5, Lorg/msgpack/template/builder/beans/PropertyVetoException;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 931
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "isConstrained"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 936
    :cond_8
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_1
    return-void
.end method

.method private isInSuper(Lorg/msgpack/template/builder/beans/MethodDescriptor;[Lorg/msgpack/template/builder/beans/MethodDescriptor;)Z
    .locals 5

    .line 781
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 782
    invoke-virtual {p1}, Lorg/msgpack/template/builder/beans/MethodDescriptor;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v3}, Lorg/msgpack/template/builder/beans/MethodDescriptor;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static isValidProperty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1469
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static mergeAttributes(Lorg/msgpack/template/builder/beans/PropertyDescriptor;Lorg/msgpack/template/builder/beans/PropertyDescriptor;)V
    .locals 2

    .line 494
    iget-boolean v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->hidden:Z

    iget-boolean v1, p1, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->hidden:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->hidden:Z

    .line 495
    iget-boolean v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->expert:Z

    iget-boolean v1, p1, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->expert:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->expert:Z

    .line 496
    iget-boolean v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->preferred:Z

    iget-boolean v1, p1, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->preferred:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->preferred:Z

    .line 497
    iget-boolean v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->bound:Z

    iget-boolean v1, p1, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->bound:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->bound:Z

    .line 498
    iget-boolean v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->constrained:Z

    iget-boolean v1, p1, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->constrained:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->constrained:Z

    .line 499
    iget-object v0, p1, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->name:Ljava/lang/String;

    .line 500
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->shortDescription:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->shortDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p1, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->shortDescription:Ljava/lang/String;

    iput-object v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->shortDescription:Ljava/lang/String;

    .line 504
    :cond_0
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->displayName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 505
    iget-object p1, p1, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->displayName:Ljava/lang/String;

    iput-object p1, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->displayName:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private mergeEvents([Lorg/msgpack/template/builder/beans/EventSetDescriptor;I)[Lorg/msgpack/template/builder/beans/EventSetDescriptor;
    .locals 7

    .line 531
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->events:[Lorg/msgpack/template/builder/beans/EventSetDescriptor;

    invoke-static {v0}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->internalAsMap([Lorg/msgpack/template/builder/beans/EventSetDescriptor;)Ljava/util/HashMap;

    move-result-object v0

    .line 533
    iget v1, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->defaultEventIndex:I

    if-ltz v1, :cond_0

    iget-object v2, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->events:[Lorg/msgpack/template/builder/beans/EventSetDescriptor;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 534
    aget-object p2, v2, v1

    invoke-virtual {p2}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_1

    .line 535
    array-length v1, p1

    if-ge p2, v1, :cond_1

    .line 537
    aget-object p2, p1, p2

    invoke-virtual {p2}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 540
    :goto_0
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    .line 541
    invoke-virtual {v4}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    .line 542
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/msgpack/template/builder/beans/EventSetDescriptor;

    if-nez v6, :cond_2

    .line 544
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 546
    :cond_2
    invoke-virtual {v6, v4}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->merge(Lorg/msgpack/template/builder/beans/EventSetDescriptor;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 550
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p1

    new-array v1, p1, [Lorg/msgpack/template/builder/beans/EventSetDescriptor;

    .line 551
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    if-eqz p2, :cond_5

    .line 553
    iget-boolean v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->explicitEvents:Z

    if-nez v0, :cond_5

    :goto_3
    if-ge v2, p1, :cond_5

    .line 555
    aget-object v0, v1, v2

    invoke-virtual {v0}, Lorg/msgpack/template/builder/beans/EventSetDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 556
    iput v2, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->defaultEventIndex:I

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return-object v1
.end method

.method private mergeMethods([Lorg/msgpack/template/builder/beans/MethodDescriptor;)[Lorg/msgpack/template/builder/beans/MethodDescriptor;
    .locals 6

    .line 513
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->methods:[Lorg/msgpack/template/builder/beans/MethodDescriptor;

    invoke-static {v0}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->internalAsMap([Lorg/msgpack/template/builder/beans/MethodDescriptor;)Ljava/util/HashMap;

    move-result-object v0

    .line 515
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 516
    invoke-virtual {v3}, Lorg/msgpack/template/builder/beans/MethodDescriptor;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v4}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->getQualifiedName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v4

    .line 517
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/msgpack/template/builder/beans/MethodDescriptor;

    if-nez v5, :cond_0

    .line 519
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 521
    :cond_0
    invoke-virtual {v5, v3}, Lorg/msgpack/template/builder/beans/MethodDescriptor;->merge(Lorg/msgpack/template/builder/beans/MethodDescriptor;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 524
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p1

    new-array p1, p1, [Lorg/msgpack/template/builder/beans/MethodDescriptor;

    .line 525
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1
.end method

.method private mergeProps([Lorg/msgpack/template/builder/beans/PropertyDescriptor;I)[Lorg/msgpack/template/builder/beans/PropertyDescriptor;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 242
    iget-object v3, v0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->properties:[Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    invoke-static {v3}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->internalAsMap([Lorg/msgpack/template/builder/beans/PropertyDescriptor;)Ljava/util/HashMap;

    move-result-object v3

    .line 244
    iget v4, v0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->defaultPropertyIndex:I

    if-ltz v4, :cond_0

    iget-object v6, v0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->properties:[Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    array-length v7, v6

    if-ge v4, v7, :cond_0

    .line 246
    aget-object v2, v6, v4

    invoke-virtual {v2}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    if-ltz v2, :cond_1

    .line 247
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 249
    aget-object v2, v1, v2

    invoke-virtual {v2}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v6, 0x0

    .line 252
    :goto_1
    array-length v7, v1

    if-ge v6, v7, :cond_20

    .line 253
    aget-object v7, v1, v6

    .line 254
    invoke-virtual {v7}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v8

    .line 255
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 256
    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v2

    move/from16 v17, v6

    const/4 v6, 0x0

    goto/16 :goto_f

    .line 260
    :cond_2
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 262
    move-object v10, v9

    check-cast v10, Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    invoke-virtual {v10}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v11

    .line 263
    invoke-virtual {v10}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v12

    .line 264
    invoke-virtual {v7}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v13

    .line 265
    invoke-virtual {v7}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v14

    .line 267
    invoke-virtual {v7}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v15

    .line 269
    invoke-virtual {v10}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v5

    .line 272
    instance-of v4, v9, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;

    if-eqz v4, :cond_3

    .line 273
    move-object v4, v9

    check-cast v4, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;

    invoke-virtual {v4}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->getIndexedPropertyType()Ljava/lang/Class;

    move-result-object v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 276
    :goto_2
    instance-of v1, v7, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;

    if-eqz v1, :cond_4

    .line 277
    move-object v1, v7

    check-cast v1, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;

    invoke-virtual {v1}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->getIndexedPropertyType()Ljava/lang/Class;

    move-result-object v1

    move-object/from16 v16, v2

    goto :goto_3

    :cond_4
    move-object/from16 v16, v2

    const/4 v1, 0x0

    :goto_3
    const-string v2, "is"

    move/from16 v17, v6

    const/4 v6, 0x1

    if-nez v1, :cond_11

    if-nez v4, :cond_c

    if-eqz v5, :cond_9

    if-eqz v15, :cond_9

    .line 287
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v13, :cond_6

    if-eqz v11, :cond_5

    .line 290
    invoke-virtual {v13, v11}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 292
    :cond_5
    invoke-virtual {v10, v13}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setReadMethod(Ljava/lang/reflect/Method;)V

    :cond_6
    if-eqz v14, :cond_8

    if-eqz v12, :cond_7

    .line 294
    invoke-virtual {v14, v12}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 296
    :cond_7
    invoke-virtual {v10, v14}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setWriteMethod(Ljava/lang/reflect/Method;)V

    .line 298
    :cond_8
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v1, :cond_f

    if-eqz v11, :cond_f

    if-eqz v13, :cond_f

    .line 300
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 301
    invoke-virtual {v10, v13}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setReadMethod(Ljava/lang/reflect/Method;)V

    goto/16 :goto_6

    :cond_9
    if-eqz v11, :cond_a

    if-nez v12, :cond_f

    :cond_a
    if-eqz v13, :cond_f

    .line 307
    new-instance v1, Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    invoke-direct {v1, v8, v13, v14}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    if-eqz v11, :cond_10

    .line 310
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-direct/range {p0 .. p0}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->introspectMethods()[Lorg/msgpack/template/builder/beans/MethodDescriptor;

    move-result-object v4

    .line 313
    array-length v5, v4

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_10

    aget-object v9, v4, v6

    .line 314
    invoke-virtual {v9}, Lorg/msgpack/template/builder/beans/MethodDescriptor;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v9

    if-eq v9, v11, :cond_b

    .line 315
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    array-length v12, v12

    if-nez v12, :cond_b

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    if-ne v12, v15, :cond_b

    .line 320
    invoke-virtual {v1, v9}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setReadMethod(Ljava/lang/reflect/Method;)V

    goto :goto_7

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_c
    if-eqz v15, :cond_e

    .line 328
    invoke-virtual {v15}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v15}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-nez v11, :cond_d

    if-eqz v13, :cond_d

    .line 333
    invoke-virtual {v10, v13}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setReadMethod(Ljava/lang/reflect/Method;)V

    :cond_d
    if-nez v12, :cond_e

    if-eqz v14, :cond_e

    .line 336
    invoke-virtual {v10, v14}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setWriteMethod(Ljava/lang/reflect/Method;)V

    .line 340
    :cond_e
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v1, :cond_f

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v15, v1, :cond_f

    .line 342
    move-object v1, v10

    check-cast v1, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;

    invoke-virtual {v1}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->getIndexedWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v11, :cond_f

    if-nez v12, :cond_f

    if-eqz v1, :cond_f

    if-eqz v13, :cond_f

    .line 347
    :try_start_0
    iget-object v2, v0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->beanClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    new-array v4, v6, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    nop

    :goto_5
    if-eqz v12, :cond_f

    .line 354
    new-instance v1, Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    invoke-direct {v1, v8, v13, v12}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    goto :goto_7

    :cond_f
    :goto_6
    move-object v1, v10

    .line 360
    :cond_10
    :goto_7
    invoke-virtual {v3, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    const/4 v6, 0x0

    goto/16 :goto_e

    :cond_11
    if-nez v4, :cond_1a

    if-eqz v5, :cond_14

    .line 363
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz v11, :cond_12

    .line 369
    invoke-virtual {v7, v11}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setReadMethod(Ljava/lang/reflect/Method;)V

    :cond_12
    if-eqz v12, :cond_13

    .line 372
    invoke-virtual {v7, v12}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setWriteMethod(Ljava/lang/reflect/Method;)V

    .line 374
    :cond_13
    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_14
    if-eqz v11, :cond_16

    if-nez v12, :cond_15

    goto :goto_a

    :cond_15
    :goto_9
    const/4 v6, 0x0

    goto/16 :goto_d

    .line 381
    :cond_16
    :goto_a
    iget-object v1, v0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->beanClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 382
    invoke-direct {v0, v8}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v11, :cond_18

    .line 386
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_17

    .line 388
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_b

    .line 396
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_1
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_15

    .line 403
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, v5, :cond_15

    .line 407
    invoke-virtual {v10, v1}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setReadMethod(Ljava/lang/reflect/Method;)V

    goto :goto_9

    .line 413
    :cond_18
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v6, 0x0

    :try_start_3
    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_c

    :catch_2
    const/4 v6, 0x0

    :catch_3
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_19

    .line 418
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_19

    .line 422
    invoke-virtual {v10, v1}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setWriteMethod(Ljava/lang/reflect/Method;)V

    .line 427
    :cond_19
    :goto_d
    invoke-virtual {v3, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_1a
    const/4 v6, 0x0

    .line 429
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 432
    check-cast v9, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;

    if-nez v11, :cond_1b

    if-eqz v13, :cond_1b

    .line 434
    invoke-virtual {v9, v13}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->setReadMethod(Ljava/lang/reflect/Method;)V

    :cond_1b
    if-nez v12, :cond_1c

    if-eqz v14, :cond_1c

    .line 437
    invoke-virtual {v9, v14}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->setWriteMethod(Ljava/lang/reflect/Method;)V

    .line 439
    :cond_1c
    move-object v1, v7

    check-cast v1, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;

    .line 441
    invoke-virtual {v9}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->getIndexedReadMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez v2, :cond_1d

    invoke-virtual {v1}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->getIndexedReadMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 443
    invoke-virtual {v1}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->getIndexedReadMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->setIndexedReadMethod(Ljava/lang/reflect/Method;)V

    .line 447
    :cond_1d
    invoke-virtual {v9}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->getIndexedWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez v2, :cond_1e

    invoke-virtual {v1}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->getIndexedWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 449
    invoke-virtual {v1}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->getIndexedWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/msgpack/template/builder/beans/IndexedPropertyDescriptor;->setIndexedWriteMethod(Ljava/lang/reflect/Method;)V

    .line 453
    :cond_1e
    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    :cond_1f
    :goto_e
    invoke-static {v10, v7}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->mergeAttributes(Lorg/msgpack/template/builder/beans/PropertyDescriptor;Lorg/msgpack/template/builder/beans/PropertyDescriptor;)V

    :goto_f
    add-int/lit8 v1, v17, 0x1

    move v6, v1

    move-object/from16 v2, v16

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_20
    move-object/from16 v16, v2

    const/4 v6, 0x0

    .line 459
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v2, v1, [Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    .line 460
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    if-eqz v16, :cond_22

    .line 462
    iget-boolean v3, v0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->explicitProperties:Z

    if-nez v3, :cond_22

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v1, :cond_22

    .line 464
    aget-object v3, v2, v4

    invoke-virtual {v3}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v16

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 465
    iput v4, v0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->defaultPropertyIndex:I

    goto :goto_11

    :cond_21
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v16, v5

    goto :goto_10

    :cond_22
    :goto_11
    return-object v2
.end method


# virtual methods
.method public getAdditionalBeanInfo()[Lorg/msgpack/template/builder/beans/BeanInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBeanDescriptor()Lorg/msgpack/template/builder/beans/BeanDescriptor;
    .locals 2

    .line 174
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->beanDescriptor:Lorg/msgpack/template/builder/beans/BeanDescriptor;

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->explicitBeanInfo:Lorg/msgpack/template/builder/beans/BeanInfo;

    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v0}, Lorg/msgpack/template/builder/beans/BeanInfo;->getBeanDescriptor()Lorg/msgpack/template/builder/beans/BeanDescriptor;

    move-result-object v0

    iput-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->beanDescriptor:Lorg/msgpack/template/builder/beans/BeanDescriptor;

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->beanDescriptor:Lorg/msgpack/template/builder/beans/BeanDescriptor;

    if-nez v0, :cond_1

    .line 179
    new-instance v0, Lorg/msgpack/template/builder/beans/BeanDescriptor;

    iget-object v1, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->beanClass:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lorg/msgpack/template/builder/beans/BeanDescriptor;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->beanDescriptor:Lorg/msgpack/template/builder/beans/BeanDescriptor;

    .line 182
    :cond_1
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->beanDescriptor:Lorg/msgpack/template/builder/beans/BeanDescriptor;

    return-object v0
.end method

.method public getDefaultEventIndex()I
    .locals 1

    .line 187
    iget v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->defaultEventIndex:I

    return v0
.end method

.method public getDefaultPropertyIndex()I
    .locals 1

    .line 192
    iget v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->defaultPropertyIndex:I

    return v0
.end method

.method public getEventSetDescriptors()[Lorg/msgpack/template/builder/beans/EventSetDescriptor;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->events:[Lorg/msgpack/template/builder/beans/EventSetDescriptor;

    return-object v0
.end method

.method public getMethodDescriptors()[Lorg/msgpack/template/builder/beans/MethodDescriptor;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->methods:[Lorg/msgpack/template/builder/beans/MethodDescriptor;

    return-object v0
.end method

.method public getPropertyDescriptors()[Lorg/msgpack/template/builder/beans/PropertyDescriptor;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->properties:[Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    return-object v0
.end method

.method init()V
    .locals 4

    .line 1483
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->events:[Lorg/msgpack/template/builder/beans/EventSetDescriptor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Lorg/msgpack/template/builder/beans/EventSetDescriptor;

    .line 1484
    iput-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->events:[Lorg/msgpack/template/builder/beans/EventSetDescriptor;

    .line 1486
    :cond_0
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->properties:[Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    if-nez v0, :cond_1

    new-array v0, v1, [Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    .line 1487
    iput-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->properties:[Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    .line 1490
    :cond_1
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->properties:[Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    if-eqz v0, :cond_4

    .line 1491
    iget v2, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->defaultPropertyIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1494
    :goto_0
    iget-object v2, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->properties:[Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    sget-object v3, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->comparator:Lorg/msgpack/template/builder/beans/StandardBeanInfo$PropertyComparator;

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    if-eqz v0, :cond_4

    .line 1496
    :goto_1
    iget-object v2, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->properties:[Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 1497
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1498
    iput v1, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->defaultPropertyIndex:I

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method mergeBeanInfo(Lorg/msgpack/template/builder/beans/BeanInfo;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 197
    iget-boolean v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->explicitProperties:Z

    if-nez v0, :cond_2

    .line 198
    :cond_0
    invoke-interface {p1}, Lorg/msgpack/template/builder/beans/BeanInfo;->getPropertyDescriptors()[Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 200
    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->getPropertyDescriptors()[Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 201
    invoke-interface {p1}, Lorg/msgpack/template/builder/beans/BeanInfo;->getDefaultPropertyIndex()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->mergeProps([Lorg/msgpack/template/builder/beans/PropertyDescriptor;I)[Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    move-result-object v0

    iput-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->properties:[Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    goto :goto_0

    .line 204
    :cond_1
    iput-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->properties:[Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    .line 205
    invoke-interface {p1}, Lorg/msgpack/template/builder/beans/BeanInfo;->getDefaultPropertyIndex()I

    move-result v0

    iput v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->defaultPropertyIndex:I

    :cond_2
    :goto_0
    if-nez p2, :cond_3

    .line 210
    iget-boolean v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->explicitMethods:Z

    if-nez v0, :cond_5

    .line 211
    :cond_3
    invoke-interface {p1}, Lorg/msgpack/template/builder/beans/BeanInfo;->getMethodDescriptors()[Lorg/msgpack/template/builder/beans/MethodDescriptor;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 213
    iget-object v1, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->methods:[Lorg/msgpack/template/builder/beans/MethodDescriptor;

    if-eqz v1, :cond_4

    .line 214
    invoke-direct {p0, v0}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->mergeMethods([Lorg/msgpack/template/builder/beans/MethodDescriptor;)[Lorg/msgpack/template/builder/beans/MethodDescriptor;

    move-result-object v0

    iput-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->methods:[Lorg/msgpack/template/builder/beans/MethodDescriptor;

    goto :goto_1

    .line 216
    :cond_4
    iput-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->methods:[Lorg/msgpack/template/builder/beans/MethodDescriptor;

    :cond_5
    :goto_1
    if-nez p2, :cond_6

    .line 221
    iget-boolean p2, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->explicitEvents:Z

    if-nez p2, :cond_8

    .line 222
    :cond_6
    invoke-interface {p1}, Lorg/msgpack/template/builder/beans/BeanInfo;->getEventSetDescriptors()[Lorg/msgpack/template/builder/beans/EventSetDescriptor;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 225
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->events:[Lorg/msgpack/template/builder/beans/EventSetDescriptor;

    if-eqz v0, :cond_7

    .line 226
    invoke-interface {p1}, Lorg/msgpack/template/builder/beans/BeanInfo;->getDefaultEventIndex()I

    move-result p1

    invoke-direct {p0, p2, p1}, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->mergeEvents([Lorg/msgpack/template/builder/beans/EventSetDescriptor;I)[Lorg/msgpack/template/builder/beans/EventSetDescriptor;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->events:[Lorg/msgpack/template/builder/beans/EventSetDescriptor;

    goto :goto_2

    .line 229
    :cond_7
    iput-object p2, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->events:[Lorg/msgpack/template/builder/beans/EventSetDescriptor;

    .line 230
    invoke-interface {p1}, Lorg/msgpack/template/builder/beans/BeanInfo;->getDefaultEventIndex()I

    move-result p1

    iput p1, p0, Lorg/msgpack/template/builder/beans/StandardBeanInfo;->defaultEventIndex:I

    :cond_8
    :goto_2
    return-void
.end method
