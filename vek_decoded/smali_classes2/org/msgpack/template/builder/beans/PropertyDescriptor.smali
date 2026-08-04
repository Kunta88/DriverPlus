.class public Lorg/msgpack/template/builder/beans/PropertyDescriptor;
.super Lorg/msgpack/template/builder/beans/FeatureDescriptor;
.source "PropertyDescriptor.java"


# instance fields
.field bound:Z

.field constrained:Z

.field private getter:Ljava/lang/reflect/Method;

.field private propertyEditorClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private setter:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
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

    .line 81
    invoke-direct {p0}, Lorg/msgpack/template/builder/beans/FeatureDescriptor;-><init>()V

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0, p1}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setName(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "is"

    .line 90
    invoke-virtual {p0, p1, v0}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->createDefaultMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setReadMethod(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "get"

    .line 93
    invoke-virtual {p0, p1, v0}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->createDefaultMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setReadMethod(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_0
    const-string v0, "set"

    .line 97
    invoke-virtual {p0, p1, v0}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->createDefaultMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setWriteMethod(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 86
    :cond_0
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string p2, "custom.beans.04"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_1
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string p2, "custom.beans.03"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 40
    invoke-direct {p0}, Lorg/msgpack/template/builder/beans/FeatureDescriptor;-><init>()V

    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 47
    invoke-virtual {p0, p1}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setName(Ljava/lang/String;)V

    const-string v0, "read or write method cannot be empty."

    if-eqz p3, :cond_1

    .line 49
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setReadMethod(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/msgpack/template/builder/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p3, "get"

    .line 56
    invoke-virtual {p0, p1, p3}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->createDefaultMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setReadMethod(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    invoke-direct {p1, v0}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p4, :cond_3

    .line 61
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_2

    .line 65
    invoke-virtual {p0, p2, p4}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setWriteMethod(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_1

    .line 62
    :cond_2
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    invoke-direct {p1, v0}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    .line 45
    :cond_4
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string p2, "custom.beans.04"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_5
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string p2, "custom.beans.03"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lorg/msgpack/template/builder/beans/FeatureDescriptor;-><init>()V

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setName(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p2}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setReadMethod(Ljava/lang/reflect/Method;)V

    .line 77
    invoke-virtual {p0, p3}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setWriteMethod(Ljava/lang/reflect/Method;)V

    return-void

    .line 73
    :cond_0
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string p2, "custom.beans.04"

    invoke-static {p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method createDefaultMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 221
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/harmony/beans/BeansUtils;->toASCIIUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public createPropertyEditor(Ljava/lang/Object;)Lorg/msgpack/template/builder/beans/PropertyEditor;
    .locals 5

    .line 273
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->propertyEditorClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 276
    :cond_0
    const-class v1, Lorg/msgpack/template/builder/beans/PropertyEditor;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 285
    :try_start_0
    iget-object v1, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->propertyEditorClass:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/msgpack/template/builder/beans/PropertyEditor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 289
    :catch_1
    :try_start_1
    iget-object p1, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->propertyEditorClass:Ljava/lang/Class;

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 290
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/msgpack/template/builder/beans/PropertyEditor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object p1

    .line 294
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "custom.beans.47"

    invoke-static {v1}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    throw v0

    .line 279
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "custom.beans.48"

    invoke-static {v0}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .line 151
    instance-of v0, p1, Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    if-eqz v0, :cond_b

    .line 153
    check-cast p1, Lorg/msgpack/template/builder/beans/PropertyDescriptor;

    .line 154
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getter:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getter:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 157
    :goto_0
    iget-object v3, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setter:Ljava/lang/reflect/Method;

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setter:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    .line 160
    :goto_1
    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    .line 162
    :goto_2
    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getPropertyEditorClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getPropertyEditorClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v5, v6, :cond_7

    const/4 v5, 0x1

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    .line 164
    :goto_3
    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->isBound()Z

    move-result v6

    invoke-virtual {p1}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->isBound()Z

    move-result v7

    if-ne v6, v7, :cond_8

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    .line 165
    :goto_4
    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->isConstrained()Z

    move-result v7

    invoke-virtual {p1}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->isConstrained()Z

    move-result p1

    if-ne v7, p1, :cond_9

    const/4 p1, 0x1

    goto :goto_5

    :cond_9
    const/4 p1, 0x0

    :goto_5
    if-eqz v0, :cond_a

    if-eqz v3, :cond_a

    if-eqz v4, :cond_a

    if-eqz v5, :cond_a

    if-eqz v6, :cond_a

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_6
    return v0
.end method

.method public getPropertyEditorClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->propertyEditorClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getPropertyType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getter:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setter:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 193
    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getReadMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getter:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getWriteMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setter:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 176
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getter:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lorg/apache/harmony/beans/BeansUtils;->getHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setter:Ljava/lang/reflect/Method;

    invoke-static {v1}, Lorg/apache/harmony/beans/BeansUtils;->getHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/beans/BeansUtils;->getHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getPropertyEditorClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/beans/BeansUtils;->getHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->isBound()Z

    move-result v1

    invoke-static {v1}, Lorg/apache/harmony/beans/BeansUtils;->getHashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->isConstrained()Z

    move-result v1

    invoke-static {v1}, Lorg/apache/harmony/beans/BeansUtils;->getHashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isBound()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->bound:Z

    return v0
.end method

.method public isConstrained()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->constrained:Z

    return v0
.end method

.method public setBound(Z)V
    .locals 0

    .line 207
    iput-boolean p1, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->bound:Z

    return-void
.end method

.method public setConstrained(Z)V
    .locals 0

    .line 203
    iput-boolean p1, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->constrained:Z

    return-void
.end method

.method public setPropertyEditorClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->propertyEditorClass:Ljava/lang/Class;

    return-void
.end method

.method setReadMethod(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
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

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 231
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 232
    invoke-virtual {p0, p1}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setReadMethod(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 234
    new-instance p2, Lorg/msgpack/template/builder/beans/IntrospectionException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setReadMethod(Ljava/lang/reflect/Method;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 121
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 122
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 126
    array-length v0, v0

    if-nez v0, :cond_2

    .line 129
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 130
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string v0, "custom.beans.09"

    invoke-static {v0}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :cond_1
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string v0, "custom.beans.33"

    invoke-static {v0}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_2
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string v0, "custom.beans.08"

    invoke-static {v0}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_3
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string v0, "custom.beans.0A"

    invoke-static {v0}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_4
    :goto_0
    iput-object p1, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getter:Ljava/lang/reflect/Method;

    return-void
.end method

.method setWriteMethod(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 8
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

    .line 242
    :try_start_0
    iget-object v0, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getter:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v2, v2, [Ljava/lang/Class;

    .line 243
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    .line 249
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 250
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 251
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 252
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-ne v7, v2, :cond_1

    move-object v0, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 258
    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    move-object p1, v0

    :goto_3
    if-eqz p1, :cond_4

    .line 268
    invoke-virtual {p0, p1}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setWriteMethod(Ljava/lang/reflect/Method;)V

    return-void

    .line 265
    :cond_4
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string v0, "custom.beans.64"

    invoke-static {v0, p2}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 262
    new-instance p2, Lorg/msgpack/template/builder/beans/IntrospectionException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p2

    :goto_5
    goto :goto_4
.end method

.method public setWriteMethod(Ljava/lang/reflect/Method;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/msgpack/template/builder/beans/IntrospectionException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 102
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 103
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 107
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 110
    aget-object v0, v0, v1

    .line 111
    invoke-virtual {p0}, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string v0, "custom.beans.07"

    invoke-static {v0}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_1
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string v0, "custom.beans.06"

    invoke-static {v0}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_2
    new-instance p1, Lorg/msgpack/template/builder/beans/IntrospectionException;

    const-string v0, "custom.beans.05"

    invoke-static {v0}, Lorg/apache/harmony/beans/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/msgpack/template/builder/beans/IntrospectionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_3
    :goto_0
    iput-object p1, p0, Lorg/msgpack/template/builder/beans/PropertyDescriptor;->setter:Ljava/lang/reflect/Method;

    return-void
.end method
