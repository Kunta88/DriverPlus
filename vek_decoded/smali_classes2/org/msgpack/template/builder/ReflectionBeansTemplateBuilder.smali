.class public Lorg/msgpack/template/builder/ReflectionBeansTemplateBuilder;
.super Lorg/msgpack/template/builder/ReflectionTemplateBuilder;
.source "ReflectionBeansTemplateBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/msgpack/template/builder/ReflectionBeansTemplateBuilder$ReflectionBeansFieldTemplate;
    }
.end annotation


# static fields
.field private static LOG:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lorg/msgpack/template/builder/ReflectionBeansTemplateBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/msgpack/template/builder/ReflectionBeansTemplateBuilder;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/msgpack/template/TemplateRegistry;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lorg/msgpack/template/builder/ReflectionTemplateBuilder;-><init>(Lorg/msgpack/template/TemplateRegistry;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private getMethodIndex(Ljava/lang/reflect/Method;)I
    .locals 1

    .line 190
    const-class v0, Lorg/msgpack/annotation/Index;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lorg/msgpack/annotation/Index;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 194
    :cond_0
    invoke-interface {p1}, Lorg/msgpack/annotation/Index;->value()I

    move-result p1

    return p1
.end method

.method private getMethodOption(Ljava/lang/reflect/Method;)Lorg/msgpack/template/FieldOption;
    .locals 1

    .line 170
    const-class v0, Lorg/msgpack/annotation/Ignore;

    invoke-static {p1, v0}, Lorg/msgpack/template/builder/ReflectionBeansTemplateBuilder;->isAnnotated(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    sget-object p1, Lorg/msgpack/template/FieldOption;->IGNORE:Lorg/msgpack/template/FieldOption;

    return-object p1

    .line 172
    :cond_0
    const-class v0, Lorg/msgpack/annotation/Optional;

    invoke-static {p1, v0}, Lorg/msgpack/template/builder/ReflectionBeansTemplateBuilder;->isAnnotated(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    sget-object p1, Lorg/msgpack/template/FieldOption;->OPTIONAL:Lorg/msgpack/template/FieldOption;

    return-object p1

    .line 174
    :cond_1
    const-class v0, Lorg/msgpack/annotation/NotNullable;

    invoke-static {p1, v0}, Lorg/msgpack/template/builder/ReflectionBeansTemplateBuilder;->isAnnotated(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 175
    sget-object p1, Lorg/msgpack/template/FieldOption;->NOTNULLABLE:Lorg/msgpack/template/FieldOption;

    return-object p1

    .line 177
    :cond_2
    sget-object p1, Lorg/msgpack/template/FieldOption;->DEFAULT:Lorg/msgpack/template/FieldOption;

    return-object p1
.end method

.method private getPropertyIndex(Lorg/msgpack/template/builder/beans/PropertyDescriptor;)I
    .locals 1

    .line 181
    invoke-virtual {p1}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/msgpack/template/builder/ReflectionBeansTemplateBuilder;->getMethodIndex(Ljava/lang/reflect/Method;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 185
    :cond_0
    invoke-virtual {p1}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/msgpack/template/builder/ReflectionBeansTemplateBuilder;->getMethodIndex(Ljava/lang/reflect/Method;)I

    move-result p1

    return p1
.end method

.method private getPropertyOption(Lorg/msgpack/template/builder/BeansFieldEntry;Lorg/msgpack/template/FieldOption;)Lorg/msgpack/template/FieldOption;
    .locals 2

    .line 157
    invoke-virtual {p1}, Lorg/msgpack/template/builder/BeansFieldEntry;->getPropertyDescriptor()Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/msgpack/template/builder/ReflectionBeansTemplateBuilder;->getMethodOption(Ljava/lang/reflect/Method;)Lorg/msgpack/template/FieldOption;

    move-result-object v0

    .line 158
    sget-object v1, Lorg/msgpack/template/FieldOption;->DEFAULT:Lorg/msgpack/template/FieldOption;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 161
    :cond_0
    invoke-virtual {p1}, Lorg/msgpack/template/builder/BeansFieldEntry;->getPropertyDescriptor()Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/msgpack/template/builder/ReflectionBeansTemplateBuilder;->getMethodOption(Ljava/lang/reflect/Method;)Lorg/msgpack/template/FieldOption;

    move-result-object p1

    .line 162
    sget-object v0, Lorg/msgpack/template/FieldOption;->DEFAULT:Lorg/msgpack/template/FieldOption;

    if-eq p1, v0, :cond_1

    return-object p1

    :cond_1
    return-object p2
.end method

.method private isIgnoreProperty(Lorg/msgpack/template/builder/beans/PropertyDescriptor;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 202
    :cond_0
    invoke-virtual {p1}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 203
    invoke-virtual {p1}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 204
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-class v2, Lorg/msgpack/annotation/Ignore;

    invoke-static {v1, v2}, Lorg/msgpack/template/builder/ReflectionBeansTemplateBuilder;->isAnnotated(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Lorg/msgpack/annotation/Ignore;

    invoke-static {p1, v1}, Lorg/msgpack/template/builder/ReflectionBeansTemplateBuilder;->isAnnotated(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public matchType(Ljava/lang/reflect/Type;Z)Z
    .locals 3

    .line 77
    check-cast p1, Ljava/lang/Class;

    .line 78
    invoke-static {p1, p2}, Lorg/msgpack/template/builder/ReflectionBeansTemplateBuilder;->matchAtBeansClassTemplateBuilder(Ljava/lang/reflect/Type;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 79
    sget-object v0, Lorg/msgpack/template/builder/ReflectionBeansTemplateBuilder;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lorg/msgpack/template/builder/ReflectionBeansTemplateBuilder;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "matched type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    return p2
.end method

.method public toFieldEntries(Ljava/lang/Class;Lorg/msgpack/template/FieldOption;)[Lorg/msgpack/template/builder/FieldEntry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/msgpack/template/FieldOption;",
            ")[",
            "Lorg/msgpack/template/builder/FieldEntry;"
        }
    .end annotation

    .line 105
    :try_start_0
    invoke-static {p1}, Lorg/msgpack/template/builder/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Lorg/msgpack/template/builder/beans/BeanInfo;

    move-result-object p1
    :try_end_0
    .catch Lorg/msgpack/template/builder/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    invoke-interface {p1}, Lorg/msgpack/template/builder/beans/BeanInfo;->getPropertyDescriptors()[Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    move-result-object p1

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 113
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 114
    aget-object v3, p1, v2

    .line 115
    invoke-direct {p0, v3}, Lorg/msgpack/template/builder/ReflectionBeansTemplateBuilder;->isIgnoreProperty(Lorg/msgpack/template/builder/beans/PropertyDescriptor;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v2, p1, [Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    .line 120
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 122
    new-array v0, p1, [Lorg/msgpack/template/builder/BeansFieldEntry;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_5

    .line 124
    aget-object v4, v2, v3

    .line 125
    invoke-direct {p0, v4}, Lorg/msgpack/template/builder/ReflectionBeansTemplateBuilder;->getPropertyIndex(Lorg/msgpack/template/builder/beans/PropertyDescriptor;)I

    move-result v5

    if-ltz v5, :cond_4

    .line 127
    aget-object v6, v0, v5

    if-nez v6, :cond_3

    if-ge v5, p1, :cond_2

    .line 133
    new-instance v6, Lorg/msgpack/template/builder/BeansFieldEntry;

    invoke-direct {v6, v4}, Lorg/msgpack/template/builder/BeansFieldEntry;-><init>(Lorg/msgpack/template/builder/beans/PropertyDescriptor;)V

    aput-object v6, v0, v5

    const/4 v4, 0x0

    .line 134
    aput-object v4, v2, v5

    goto :goto_2

    .line 131
    :cond_2
    new-instance p1, Lorg/msgpack/template/builder/TemplateBuildException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/template/builder/TemplateBuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_3
    new-instance p1, Lorg/msgpack/template/builder/TemplateBuildException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "duplicated index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/template/builder/TemplateBuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3
    if-ge v3, p1, :cond_8

    .line 139
    aget-object v5, v2, v3

    if-eqz v5, :cond_7

    .line 141
    :goto_4
    aget-object v6, v0, v4

    if-eqz v6, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 144
    :cond_6
    new-instance v6, Lorg/msgpack/template/builder/BeansFieldEntry;

    invoke-direct {v6, v5}, Lorg/msgpack/template/builder/BeansFieldEntry;-><init>(Lorg/msgpack/template/builder/beans/PropertyDescriptor;)V

    aput-object v6, v0, v4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    :goto_5
    if-ge v1, p1, :cond_9

    .line 149
    aget-object v2, v0, v1

    .line 150
    invoke-direct {p0, v2, p2}, Lorg/msgpack/template/builder/ReflectionBeansTemplateBuilder;->getPropertyOption(Lorg/msgpack/template/builder/BeansFieldEntry;Lorg/msgpack/template/FieldOption;)Lorg/msgpack/template/FieldOption;

    move-result-object v3

    .line 151
    invoke-virtual {v2, v3}, Lorg/msgpack/template/builder/BeansFieldEntry;->setOption(Lorg/msgpack/template/FieldOption;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    return-object v0

    .line 107
    :catch_0
    new-instance p2, Lorg/msgpack/template/builder/TemplateBuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class must be java beans class:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/msgpack/template/builder/TemplateBuildException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p2

    :goto_7
    goto :goto_6
.end method

.method protected toTemplates([Lorg/msgpack/template/builder/FieldEntry;)[Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionFieldTemplate;
    .locals 5

    .line 87
    array-length v0, p1

    new-array v0, v0, [Lorg/msgpack/template/builder/ReflectionTemplateBuilder$ReflectionFieldTemplate;

    const/4 v1, 0x0

    .line 88
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 89
    aget-object v2, p1, v1

    .line 90
    invoke-virtual {v2}, Lorg/msgpack/template/builder/FieldEntry;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 91
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    new-instance v3, Lorg/msgpack/template/builder/ReflectionBeansTemplateBuilder$ReflectionBeansFieldTemplate;

    invoke-direct {v3, v2}, Lorg/msgpack/template/builder/ReflectionBeansTemplateBuilder$ReflectionBeansFieldTemplate;-><init>(Lorg/msgpack/template/builder/FieldEntry;)V

    aput-object v3, v0, v1

    goto :goto_1

    .line 94
    :cond_0
    iget-object v3, p0, Lorg/msgpack/template/builder/ReflectionBeansTemplateBuilder;->registry:Lorg/msgpack/template/TemplateRegistry;

    invoke-virtual {v2}, Lorg/msgpack/template/builder/FieldEntry;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/msgpack/template/TemplateRegistry;->lookup(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object v3

    .line 95
    new-instance v4, Lorg/msgpack/template/builder/ReflectionTemplateBuilder$FieldTemplateImpl;

    invoke-direct {v4, v2, v3}, Lorg/msgpack/template/builder/ReflectionTemplateBuilder$FieldTemplateImpl;-><init>(Lorg/msgpack/template/builder/FieldEntry;Lorg/msgpack/template/Template;)V

    aput-object v4, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
