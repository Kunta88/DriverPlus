.class public abstract Lorg/msgpack/template/builder/AbstractTemplateBuilder;
.super Ljava/lang/Object;
.source "AbstractTemplateBuilder.java"

# interfaces
.implements Lorg/msgpack/template/builder/TemplateBuilder;


# instance fields
.field protected registry:Lorg/msgpack/template/TemplateRegistry;


# direct methods
.method protected constructor <init>(Lorg/msgpack/template/TemplateRegistry;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/msgpack/template/builder/AbstractTemplateBuilder;->registry:Lorg/msgpack/template/TemplateRegistry;

    return-void
.end method

.method private getFieldIndex(Ljava/lang/reflect/Field;I)I
    .locals 1

    .line 232
    const-class v0, Lorg/msgpack/annotation/Index;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lorg/msgpack/annotation/Index;

    if-nez p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    return p2

    .line 236
    :cond_0
    invoke-interface {p1}, Lorg/msgpack/annotation/Index;->value()I

    move-result p1

    return p1
.end method

.method private getFieldOption(Ljava/lang/reflect/Field;Lorg/msgpack/template/FieldOption;)Lorg/msgpack/template/FieldOption;
    .locals 2

    .line 202
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 207
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    const-class v0, Lorg/msgpack/annotation/Ignore;

    invoke-static {p1, v0}, Lorg/msgpack/template/builder/AbstractTemplateBuilder;->isAnnotated(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    sget-object p1, Lorg/msgpack/template/FieldOption;->IGNORE:Lorg/msgpack/template/FieldOption;

    return-object p1

    .line 214
    :cond_1
    const-class v0, Lorg/msgpack/annotation/Optional;

    invoke-static {p1, v0}, Lorg/msgpack/template/builder/AbstractTemplateBuilder;->isAnnotated(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    sget-object p1, Lorg/msgpack/template/FieldOption;->OPTIONAL:Lorg/msgpack/template/FieldOption;

    return-object p1

    .line 216
    :cond_2
    const-class v0, Lorg/msgpack/annotation/NotNullable;

    invoke-static {p1, v0}, Lorg/msgpack/template/builder/AbstractTemplateBuilder;->isAnnotated(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    sget-object p1, Lorg/msgpack/template/FieldOption;->NOTNULLABLE:Lorg/msgpack/template/FieldOption;

    return-object p1

    .line 220
    :cond_3
    sget-object v0, Lorg/msgpack/template/FieldOption;->DEFAULT:Lorg/msgpack/template/FieldOption;

    if-eq p2, v0, :cond_4

    return-object p2

    .line 224
    :cond_4
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 225
    sget-object p1, Lorg/msgpack/template/FieldOption;->NOTNULLABLE:Lorg/msgpack/template/FieldOption;

    return-object p1

    .line 227
    :cond_5
    sget-object p1, Lorg/msgpack/template/FieldOption;->OPTIONAL:Lorg/msgpack/template/FieldOption;

    return-object p1

    .line 209
    :cond_6
    :goto_0
    sget-object p1, Lorg/msgpack/template/FieldOption;->IGNORE:Lorg/msgpack/template/FieldOption;

    return-object p1
.end method

.method private getFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 186
    :goto_0
    const-class v3, Ljava/lang/Object;

    if-eq p1, v3, :cond_0

    .line 187
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 188
    array-length v4, v3

    add-int/2addr v2, v4

    .line 189
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 191
    :cond_0
    new-array p1, v2, [Ljava/lang/reflect/Field;

    .line 193
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_1
    if-ltz v2, :cond_1

    .line 194
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/reflect/Field;

    .line 195
    array-length v5, v4

    invoke-static {v4, v1, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public static isAnnotated(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 252
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAnnotated(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AccessibleObject;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 256
    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static matchAtArrayTemplateBuilder(Ljava/lang/Class;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    .line 279
    instance-of p1, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 282
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    return p0
.end method

.method public static matchAtBeansClassTemplateBuilder(Ljava/lang/reflect/Type;Z)Z
    .locals 2

    .line 269
    check-cast p0, Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 271
    const-class p1, Lorg/msgpack/annotation/Beans;

    invoke-static {p0, p1}, Lorg/msgpack/template/builder/AbstractTemplateBuilder;->isAnnotated(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    const-class p1, Lorg/msgpack/annotation/MessagePackBeans;

    invoke-static {p0, p1}, Lorg/msgpack/template/builder/AbstractTemplateBuilder;->isAnnotated(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 274
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public static matchAtClassTemplateBuilder(Ljava/lang/Class;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 261
    const-class p1, Lorg/msgpack/annotation/Message;

    invoke-static {p0, p1}, Lorg/msgpack/template/builder/AbstractTemplateBuilder;->isAnnotated(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1

    const-class p1, Lorg/msgpack/annotation/MessagePackMessage;

    invoke-static {p0, p1}, Lorg/msgpack/template/builder/AbstractTemplateBuilder;->isAnnotated(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    .line 264
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static matchAtOrdinalEnumTemplateBuilder(Ljava/lang/Class;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 287
    const-class p1, Lorg/msgpack/annotation/OrdinalEnum;

    invoke-static {p0, p1}, Lorg/msgpack/template/builder/AbstractTemplateBuilder;->isAnnotated(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1

    const-class p1, Lorg/msgpack/annotation/MessagePackOrdinalEnum;

    invoke-static {p0, p1}, Lorg/msgpack/template/builder/AbstractTemplateBuilder;->isAnnotated(Ljava/lang/Class;Ljava/lang/Class;)Z

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

    .line 290
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result p0

    return p0
.end method

.method private toFieldEntries(Ljava/lang/Class;Lorg/msgpack/template/FieldList;)[Lorg/msgpack/template/builder/FieldEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/msgpack/template/FieldList;",
            ")[",
            "Lorg/msgpack/template/builder/FieldEntry;"
        }
    .end annotation

    .line 108
    invoke-virtual {p2}, Lorg/msgpack/template/FieldList;->getList()Ljava/util/List;

    move-result-object p2

    .line 109
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/msgpack/template/builder/FieldEntry;

    const/4 v1, 0x0

    .line 110
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 111
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/msgpack/template/FieldList$Entry;

    .line 112
    invoke-virtual {v2}, Lorg/msgpack/template/FieldList$Entry;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    :try_start_0
    new-instance v3, Lorg/msgpack/template/builder/DefaultFieldEntry;

    invoke-virtual {v2}, Lorg/msgpack/template/FieldList$Entry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v2}, Lorg/msgpack/template/FieldList$Entry;->getOption()Lorg/msgpack/template/FieldOption;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/msgpack/template/builder/DefaultFieldEntry;-><init>(Ljava/lang/reflect/Field;Lorg/msgpack/template/FieldOption;)V

    aput-object v3, v0, v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 118
    new-instance p2, Lorg/msgpack/template/builder/TemplateBuildException;

    invoke-direct {p2, p1}, Lorg/msgpack/template/builder/TemplateBuildException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 116
    new-instance p2, Lorg/msgpack/template/builder/TemplateBuildException;

    invoke-direct {p2, p1}, Lorg/msgpack/template/builder/TemplateBuildException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 121
    :cond_0
    new-instance v2, Lorg/msgpack/template/builder/DefaultFieldEntry;

    invoke-direct {v2}, Lorg/msgpack/template/builder/DefaultFieldEntry;-><init>()V

    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public buildTemplate(Ljava/lang/Class;Lorg/msgpack/template/FieldList;)Lorg/msgpack/template/Template;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/msgpack/template/FieldList;",
            ")",
            "Lorg/msgpack/template/Template<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/TemplateBuildException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lorg/msgpack/template/builder/AbstractTemplateBuilder;->checkClassValidation(Ljava/lang/Class;)V

    .line 68
    invoke-direct {p0, p1, p2}, Lorg/msgpack/template/builder/AbstractTemplateBuilder;->toFieldEntries(Ljava/lang/Class;Lorg/msgpack/template/FieldList;)[Lorg/msgpack/template/builder/FieldEntry;

    move-result-object p2

    .line 69
    invoke-virtual {p0, p1, p2}, Lorg/msgpack/template/builder/AbstractTemplateBuilder;->buildTemplate(Ljava/lang/Class;[Lorg/msgpack/template/builder/FieldEntry;)Lorg/msgpack/template/Template;

    move-result-object p1

    return-object p1
.end method

.method protected abstract buildTemplate(Ljava/lang/Class;[Lorg/msgpack/template/builder/FieldEntry;)Lorg/msgpack/template/Template;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lorg/msgpack/template/builder/FieldEntry;",
            ")",
            "Lorg/msgpack/template/Template<",
            "TT;>;"
        }
    .end annotation
.end method

.method public buildTemplate(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lorg/msgpack/template/Template<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/TemplateBuildException;
        }
    .end annotation

    .line 57
    check-cast p1, Ljava/lang/Class;

    .line 58
    invoke-virtual {p0, p1}, Lorg/msgpack/template/builder/AbstractTemplateBuilder;->checkClassValidation(Ljava/lang/Class;)V

    .line 59
    invoke-virtual {p0, p1}, Lorg/msgpack/template/builder/AbstractTemplateBuilder;->getFieldOption(Ljava/lang/Class;)Lorg/msgpack/template/FieldOption;

    move-result-object v0

    .line 60
    invoke-virtual {p0, p1, v0}, Lorg/msgpack/template/builder/AbstractTemplateBuilder;->toFieldEntries(Ljava/lang/Class;Lorg/msgpack/template/FieldOption;)[Lorg/msgpack/template/builder/FieldEntry;

    move-result-object v0

    .line 61
    invoke-virtual {p0, p1, v0}, Lorg/msgpack/template/builder/AbstractTemplateBuilder;->buildTemplate(Ljava/lang/Class;[Lorg/msgpack/template/builder/FieldEntry;)Lorg/msgpack/template/Template;

    move-result-object p1

    return-object p1
.end method

.method protected checkClassValidation(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 79
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    new-instance v0, Lorg/msgpack/template/builder/TemplateBuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot build template of primitive type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/msgpack/template/builder/TemplateBuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    new-instance v0, Lorg/msgpack/template/builder/TemplateBuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot build template for array class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/msgpack/template/builder/TemplateBuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_2
    new-instance v0, Lorg/msgpack/template/builder/TemplateBuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot build template for interface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/msgpack/template/builder/TemplateBuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_3
    new-instance v0, Lorg/msgpack/template/builder/TemplateBuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot build template for abstract class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/msgpack/template/builder/TemplateBuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getFieldOption(Ljava/lang/Class;)Lorg/msgpack/template/FieldOption;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/msgpack/template/FieldOption;"
        }
    .end annotation

    .line 94
    const-class v0, Lorg/msgpack/annotation/Message;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/msgpack/annotation/Message;

    if-nez v0, :cond_0

    .line 96
    sget-object p1, Lorg/msgpack/template/FieldOption;->DEFAULT:Lorg/msgpack/template/FieldOption;

    return-object p1

    .line 98
    :cond_0
    const-class v1, Lorg/msgpack/annotation/MessagePackMessage;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lorg/msgpack/annotation/MessagePackMessage;

    if-nez p1, :cond_1

    .line 101
    sget-object p1, Lorg/msgpack/template/FieldOption;->DEFAULT:Lorg/msgpack/template/FieldOption;

    return-object p1

    .line 104
    :cond_1
    invoke-interface {v0}, Lorg/msgpack/annotation/Message;->value()Lorg/msgpack/template/FieldOption;

    move-result-object p1

    return-object p1
.end method

.method public loadTemplate(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lorg/msgpack/template/Template<",
            "TT;>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected toFieldEntries(Ljava/lang/Class;Lorg/msgpack/template/FieldOption;)[Lorg/msgpack/template/builder/FieldEntry;
    .locals 9
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

    .line 128
    invoke-direct {p0, p1}, Lorg/msgpack/template/builder/AbstractTemplateBuilder;->getFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object p1

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_6

    aget-object v5, p1, v4

    .line 146
    invoke-direct {p0, v5, p2}, Lorg/msgpack/template/builder/AbstractTemplateBuilder;->getFieldOption(Ljava/lang/reflect/Field;Lorg/msgpack/template/FieldOption;)Lorg/msgpack/template/FieldOption;

    move-result-object v6

    .line 147
    sget-object v7, Lorg/msgpack/template/FieldOption;->IGNORE:Lorg/msgpack/template/FieldOption;

    if-ne v6, v7, :cond_0

    goto :goto_3

    .line 152
    :cond_0
    invoke-direct {p0, v5, v3}, Lorg/msgpack/template/builder/AbstractTemplateBuilder;->getFieldIndex(Ljava/lang/reflect/Field;I)I

    move-result v7

    .line 153
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v7, :cond_2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_1

    .line 154
    :cond_1
    new-instance p1, Lorg/msgpack/template/builder/TemplateBuildException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "duplicated index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/template/builder/TemplateBuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    if-ltz v7, :cond_5

    .line 160
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-gt v8, v7, :cond_3

    const/4 v8, 0x0

    .line 161
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 163
    :cond_3
    new-instance v8, Lorg/msgpack/template/builder/DefaultFieldEntry;

    invoke-direct {v8, v5, v6}, Lorg/msgpack/template/builder/DefaultFieldEntry;-><init>(Ljava/lang/reflect/Field;Lorg/msgpack/template/FieldOption;)V

    invoke-interface {v0, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-ge v3, v7, :cond_4

    move v3, v7

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 157
    :cond_5
    new-instance p1, Lorg/msgpack/template/builder/TemplateBuildException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/template/builder/TemplateBuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 170
    new-array p1, v3, [Lorg/msgpack/template/builder/FieldEntry;

    .line 171
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_8

    .line 172
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/msgpack/template/builder/FieldEntry;

    if-nez p2, :cond_7

    .line 174
    new-instance p2, Lorg/msgpack/template/builder/DefaultFieldEntry;

    invoke-direct {p2}, Lorg/msgpack/template/builder/DefaultFieldEntry;-><init>()V

    aput-object p2, p1, v2

    goto :goto_5

    .line 176
    :cond_7
    aput-object p2, p1, v2

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    return-object p1
.end method

.method public writeTemplate(Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .locals 0

    .line 242
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
