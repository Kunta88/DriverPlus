.class public Lorg/msgpack/template/builder/BeansBuildContext;
.super Lorg/msgpack/template/builder/BuildContext;
.source "BeansBuildContext.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/msgpack/template/builder/BuildContext<",
        "Lorg/msgpack/template/builder/BeansFieldEntry;",
        ">;"
    }
.end annotation


# instance fields
.field protected entries:[Lorg/msgpack/template/builder/BeansFieldEntry;

.field protected origClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected origName:Ljava/lang/String;

.field protected templates:[Lorg/msgpack/template/Template;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/msgpack/template/Template<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/msgpack/template/builder/JavassistTemplateBuilder;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lorg/msgpack/template/builder/BuildContext;-><init>(Lorg/msgpack/template/builder/JavassistTemplateBuilder;)V

    return-void
.end method


# virtual methods
.method protected buildConstructor()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljavassist/CtClass;

    .line 63
    iget-object v1, p0, Lorg/msgpack/template/builder/BeansBuildContext;->director:Lorg/msgpack/template/builder/JavassistTemplateBuilder;

    const-class v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->getCtClass(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/msgpack/template/builder/BeansBuildContext;->director:Lorg/msgpack/template/builder/JavassistTemplateBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lorg/msgpack/template/Template;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->getCtClass(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-array v1, v2, [Ljavassist/CtClass;

    iget-object v2, p0, Lorg/msgpack/template/builder/BeansBuildContext;->tmplCtClass:Ljavassist/CtClass;

    invoke-static {v0, v1, v2}, Ljavassist/CtNewConstructor;->make([Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtConstructor;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lorg/msgpack/template/builder/BeansBuildContext;->tmplCtClass:Ljavassist/CtClass;

    invoke-virtual {v1, v0}, Ljavassist/CtClass;->addConstructor(Ljavassist/CtConstructor;)V

    return-void
.end method

.method protected buildInstance(Ljava/lang/Class;)Lorg/msgpack/template/Template;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/msgpack/template/Template;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    .line 73
    const-class v2, Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, [Lorg/msgpack/template/Template;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lorg/msgpack/template/builder/BeansBuildContext;->origClass:Ljava/lang/Class;

    aput-object v1, v0, v3

    iget-object v1, p0, Lorg/msgpack/template/builder/BeansBuildContext;->templates:[Lorg/msgpack/template/Template;

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 75
    check-cast p1, Lorg/msgpack/template/Template;

    return-object p1
.end method

.method protected buildMethodInit()V
    .locals 0

    return-void
.end method

.method protected buildReadMethodBody()Ljava/lang/String;
    .locals 9

    .line 126
    invoke-virtual {p0}, Lorg/msgpack/template/builder/BeansBuildContext;->resetStringBuilder()V

    const-string v0, "{ "

    .line 127
    invoke-virtual {p0, v0}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    const-string v0, "if(!$3 && $1.trySkipNil()) {"

    .line 129
    invoke-virtual {p0, v0}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    const-string v0, "  return null;"

    .line 130
    invoke-virtual {p0, v0}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    const-string v0, "}"

    .line 131
    invoke-virtual {p0, v0}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 133
    iget-object v3, p0, Lorg/msgpack/template/builder/BeansBuildContext;->origName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s _$$_t;"

    invoke-virtual {p0, v3, v2}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "if($2 == null) {"

    .line 134
    invoke-virtual {p0, v2}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/Object;

    .line 135
    iget-object v3, p0, Lorg/msgpack/template/builder/BeansBuildContext;->origName:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "  _$$_t = new %s();"

    invoke-virtual {p0, v3, v2}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "} else {"

    .line 136
    invoke-virtual {p0, v2}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    new-array v3, v1, [Ljava/lang/Object;

    .line 137
    iget-object v5, p0, Lorg/msgpack/template/builder/BeansBuildContext;->origName:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v5, "  _$$_t = (%s)$2;"

    invoke-virtual {p0, v5, v3}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-virtual {p0, v0}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    const-string v3, "$1.readArrayBegin();"

    .line 140
    invoke-virtual {p0, v3}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 142
    :goto_0
    iget-object v5, p0, Lorg/msgpack/template/builder/BeansBuildContext;->entries:[Lorg/msgpack/template/builder/BeansFieldEntry;

    array-length v6, v5

    if-ge v3, v6, :cond_4

    .line 143
    aget-object v5, v5, v3

    .line 145
    invoke-virtual {v5}, Lorg/msgpack/template/builder/BeansFieldEntry;->isAvailable()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v5, "$1.skip();"

    .line 146
    invoke-virtual {p0, v5}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    goto :goto_2

    .line 150
    :cond_0
    invoke-virtual {v5}, Lorg/msgpack/template/builder/BeansFieldEntry;->isOptional()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "if($1.trySkipNil()) {"

    .line 151
    invoke-virtual {p0, v6}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    new-array v6, v1, [Ljava/lang/Object;

    .line 152
    invoke-virtual {v5}, Lorg/msgpack/template/builder/BeansFieldEntry;->getSetterName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v7, "_$$_t.%s(null);"

    invoke-virtual {p0, v7, v6}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-virtual {p0, v2}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    .line 156
    :cond_1
    invoke-virtual {v5}, Lorg/msgpack/template/builder/BeansFieldEntry;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 157
    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_2

    new-array v7, v8, [Ljava/lang/Object;

    .line 158
    invoke-virtual {v5}, Lorg/msgpack/template/builder/BeansFieldEntry;->getSetterName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {p0, v6}, Lorg/msgpack/template/builder/BeansBuildContext;->primitiveReadName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v1

    const-string v6, "_$$_t.%s( $1.%s() );"

    invoke-virtual {p0, v6, v7}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 160
    invoke-virtual {v5}, Lorg/msgpack/template/builder/BeansFieldEntry;->getSetterName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v5}, Lorg/msgpack/template/builder/BeansFieldEntry;->getJavaTypeName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x3

    invoke-virtual {v5}, Lorg/msgpack/template/builder/BeansFieldEntry;->getGetterName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "_$$_t.%s( (%s)this.templates[%d].read($1, _$$_t.%s()) );"

    invoke-virtual {p0, v7, v6}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :goto_1
    invoke-virtual {v5}, Lorg/msgpack/template/builder/BeansFieldEntry;->isOptional()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 166
    invoke-virtual {p0, v0}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const-string v1, "$1.readArrayEnd();"

    .line 170
    invoke-virtual {p0, v1}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    const-string v1, "return _$$_t;"

    .line 171
    invoke-virtual {p0, v1}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, v0}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lorg/msgpack/template/builder/BeansBuildContext;->getBuiltString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public buildTemplate(Ljava/lang/Class;[Lorg/msgpack/template/builder/BeansFieldEntry;[Lorg/msgpack/template/Template;)Lorg/msgpack/template/Template;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lorg/msgpack/template/builder/BeansFieldEntry;",
            "[",
            "Lorg/msgpack/template/Template;",
            ")",
            "Lorg/msgpack/template/Template;"
        }
    .end annotation

    .line 48
    iput-object p2, p0, Lorg/msgpack/template/builder/BeansBuildContext;->entries:[Lorg/msgpack/template/builder/BeansFieldEntry;

    .line 49
    iput-object p3, p0, Lorg/msgpack/template/builder/BeansBuildContext;->templates:[Lorg/msgpack/template/Template;

    .line 50
    iput-object p1, p0, Lorg/msgpack/template/builder/BeansBuildContext;->origClass:Ljava/lang/Class;

    .line 51
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/template/builder/BeansBuildContext;->origName:Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Lorg/msgpack/template/builder/BeansBuildContext;->build(Ljava/lang/String;)Lorg/msgpack/template/Template;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildTemplate(Ljava/lang/Class;[Lorg/msgpack/template/builder/FieldEntry;[Lorg/msgpack/template/Template;)Lorg/msgpack/template/Template;
    .locals 0

    .line 32
    check-cast p2, [Lorg/msgpack/template/builder/BeansFieldEntry;

    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/template/builder/BeansBuildContext;->buildTemplate(Ljava/lang/Class;[Lorg/msgpack/template/builder/BeansFieldEntry;[Lorg/msgpack/template/Template;)Lorg/msgpack/template/Template;

    move-result-object p1

    return-object p1
.end method

.method protected buildWriteMethodBody()Ljava/lang/String;
    .locals 9

    .line 83
    invoke-virtual {p0}, Lorg/msgpack/template/builder/BeansBuildContext;->resetStringBuilder()V

    const-string v0, "{"

    .line 84
    invoke-virtual {p0, v0}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    const-string v0, "if($2 == null) {"

    .line 86
    invoke-virtual {p0, v0}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    const-string v0, "  if($3) {"

    .line 87
    invoke-virtual {p0, v0}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 88
    const-class v2, Lorg/msgpack/MessageTypeException;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "    throw new %s(\"Attempted to write null\");"

    invoke-virtual {p0, v2, v1}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "  }"

    .line 89
    invoke-virtual {p0, v1}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    const-string v1, "  $1.writeNil();"

    .line 90
    invoke-virtual {p0, v1}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    const-string v1, "  return;"

    .line 91
    invoke-virtual {p0, v1}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    const-string v1, "}"

    .line 92
    invoke-virtual {p0, v1}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    .line 94
    iget-object v5, p0, Lorg/msgpack/template/builder/BeansBuildContext;->origName:Ljava/lang/String;

    aput-object v5, v4, v3

    aput-object v5, v4, v0

    const-string v5, "%s _$$_t = (%s)$2;"

    invoke-virtual {p0, v5, v4}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v4, v0, [Ljava/lang/Object;

    .line 95
    iget-object v5, p0, Lorg/msgpack/template/builder/BeansBuildContext;->entries:[Lorg/msgpack/template/builder/BeansFieldEntry;

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "$1.writeArrayBegin(%d);"

    invoke-virtual {p0, v5, v4}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    .line 97
    :goto_0
    iget-object v5, p0, Lorg/msgpack/template/builder/BeansBuildContext;->entries:[Lorg/msgpack/template/builder/BeansFieldEntry;

    array-length v6, v5

    if-ge v4, v6, :cond_3

    .line 98
    aget-object v5, v5, v4

    .line 99
    invoke-virtual {v5}, Lorg/msgpack/template/builder/BeansFieldEntry;->isAvailable()Z

    move-result v6

    const-string v7, "$1.writeNil();"

    if-nez v6, :cond_0

    .line 100
    invoke-virtual {p0, v7}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    goto :goto_2

    .line 103
    :cond_0
    invoke-virtual {v5}, Lorg/msgpack/template/builder/BeansFieldEntry;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 104
    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-eqz v8, :cond_1

    new-array v7, v2, [Ljava/lang/Object;

    .line 105
    invoke-virtual {p0, v6}, Lorg/msgpack/template/builder/BeansBuildContext;->primitiveWriteName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v3

    invoke-virtual {v5}, Lorg/msgpack/template/builder/BeansFieldEntry;->getGetterName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v0

    const-string v5, "$1.%s(_$$_t.%s());"

    invoke-virtual {p0, v5, v7}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-array v6, v0, [Ljava/lang/Object;

    .line 107
    invoke-virtual {v5}, Lorg/msgpack/template/builder/BeansFieldEntry;->getGetterName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    const-string v8, "if(_$$_t.%s() == null) {"

    invoke-virtual {p0, v8, v6}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v5}, Lorg/msgpack/template/builder/BeansFieldEntry;->isNotNullable()Z

    move-result v6

    if-eqz v6, :cond_2

    new-array v6, v0, [Ljava/lang/Object;

    .line 109
    const-class v7, Lorg/msgpack/MessageTypeException;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "throw new %s();"

    invoke-virtual {p0, v7, v6}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 111
    :cond_2
    invoke-virtual {p0, v7}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    :goto_1
    const-string v6, "} else {"

    .line 113
    invoke-virtual {p0, v6}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    new-array v6, v2, [Ljava/lang/Object;

    .line 114
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v5}, Lorg/msgpack/template/builder/BeansFieldEntry;->getGetterName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v0

    const-string v5, "  this.templates[%d].write($1, _$$_t.%s());"

    invoke-virtual {p0, v5, v6}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0, v1}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "$1.writeArrayEnd();"

    .line 119
    invoke-virtual {p0, v0}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, v1}, Lorg/msgpack/template/builder/BeansBuildContext;->buildString(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lorg/msgpack/template/builder/BeansBuildContext;->getBuiltString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadTemplate(Ljava/lang/Class;[Lorg/msgpack/template/builder/BeansFieldEntry;[Lorg/msgpack/template/Template;)Lorg/msgpack/template/Template;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lorg/msgpack/template/builder/BeansFieldEntry;",
            "[",
            "Lorg/msgpack/template/Template;",
            ")",
            "Lorg/msgpack/template/Template;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic loadTemplate(Ljava/lang/Class;[Lorg/msgpack/template/builder/FieldEntry;[Lorg/msgpack/template/Template;)Lorg/msgpack/template/Template;
    .locals 0

    .line 32
    check-cast p2, [Lorg/msgpack/template/builder/BeansFieldEntry;

    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/template/builder/BeansBuildContext;->loadTemplate(Ljava/lang/Class;[Lorg/msgpack/template/builder/BeansFieldEntry;[Lorg/msgpack/template/Template;)Lorg/msgpack/template/Template;

    move-result-object p1

    return-object p1
.end method

.method protected setSuperClass()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/msgpack/template/builder/BeansBuildContext;->tmplCtClass:Ljavassist/CtClass;

    iget-object v1, p0, Lorg/msgpack/template/builder/BeansBuildContext;->director:Lorg/msgpack/template/builder/JavassistTemplateBuilder;

    const-class v2, Lorg/msgpack/template/builder/JavassistTemplateBuilder$JavassistTemplate;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->getCtClass(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/CtClass;->setSuperclass(Ljavassist/CtClass;)V

    return-void
.end method

.method public writeTemplate(Ljava/lang/Class;[Lorg/msgpack/template/builder/BeansFieldEntry;[Lorg/msgpack/template/Template;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lorg/msgpack/template/builder/BeansFieldEntry;",
            "[",
            "Lorg/msgpack/template/Template;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 181
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic writeTemplate(Ljava/lang/Class;[Lorg/msgpack/template/builder/FieldEntry;[Lorg/msgpack/template/Template;Ljava/lang/String;)V
    .locals 0

    .line 32
    check-cast p2, [Lorg/msgpack/template/builder/BeansFieldEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/msgpack/template/builder/BeansBuildContext;->writeTemplate(Ljava/lang/Class;[Lorg/msgpack/template/builder/BeansFieldEntry;[Lorg/msgpack/template/Template;Ljava/lang/String;)V

    return-void
.end method
