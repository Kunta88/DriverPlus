.class public Lorg/msgpack/template/builder/DefaultBuildContext;
.super Lorg/msgpack/template/builder/BuildContext;
.source "DefaultBuildContext.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/msgpack/template/builder/BuildContext<",
        "Lorg/msgpack/template/builder/FieldEntry;",
        ">;"
    }
.end annotation


# instance fields
.field protected entries:[Lorg/msgpack/template/builder/FieldEntry;

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

    .line 47
    invoke-direct {p0, p1}, Lorg/msgpack/template/builder/BuildContext;-><init>(Lorg/msgpack/template/builder/JavassistTemplateBuilder;)V

    return-void
.end method

.method public static readPrivateField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 153
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 p1, 0x1

    .line 154
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 155
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 158
    :try_start_1
    new-instance p1, Lorg/msgpack/MessageTypeException;

    invoke-direct {p1, p0}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_1
    throw p0
.end method

.method public static readPrivateField(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Lorg/msgpack/template/Template;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 252
    :try_start_0
    invoke-virtual {p2, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 p2, 0x1

    .line 253
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 254
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 255
    invoke-interface {p4, p0, p2}, Lorg/msgpack/template/Template;->read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, p2, :cond_0

    .line 257
    invoke-virtual {v1, p1, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    .line 263
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 260
    :try_start_1
    new-instance p1, Lorg/msgpack/MessageTypeException;

    invoke-direct {p1, p0}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_2

    .line 263
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_2
    throw p0
.end method

.method public static writePrivateField(Lorg/msgpack/packer/Packer;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Lorg/msgpack/template/Template;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 170
    :try_start_0
    invoke-virtual {p2, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 p2, 0x1

    .line 171
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 172
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 173
    invoke-interface {p4, p0, p1}, Lorg/msgpack/template/Template;->write(Lorg/msgpack/packer/Packer;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 175
    :try_start_1
    new-instance p1, Lorg/msgpack/MessageTypeException;

    invoke-direct {p1, p0}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_1
    throw p0
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

    .line 67
    iget-object v1, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->director:Lorg/msgpack/template/builder/JavassistTemplateBuilder;

    const-class v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->getCtClass(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->director:Lorg/msgpack/template/builder/JavassistTemplateBuilder;

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

    iget-object v2, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->tmplCtClass:Ljavassist/CtClass;

    invoke-static {v0, v1, v2}, Ljavassist/CtNewConstructor;->make([Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtConstructor;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->tmplCtClass:Ljavassist/CtClass;

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

    .line 78
    const-class v2, Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, [Lorg/msgpack/template/Template;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->origClass:Ljava/lang/Class;

    aput-object v1, v0, v3

    iget-object v1, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->templates:[Lorg/msgpack/template/Template;

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 80
    check-cast p1, Lorg/msgpack/template/Template;

    return-object p1
.end method

.method protected buildMethodInit()V
    .locals 0

    return-void
.end method

.method protected buildReadMethodBody()Ljava/lang/String;
    .locals 14

    .line 184
    const-class v0, Lorg/msgpack/template/builder/DefaultBuildContext;

    invoke-virtual {p0}, Lorg/msgpack/template/builder/DefaultBuildContext;->resetStringBuilder()V

    const-string v1, "\n{\n"

    .line 185
    invoke-virtual {p0, v1}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    const-string v1, "  if (!$3 && $1.trySkipNil()) {\n"

    .line 187
    invoke-virtual {p0, v1}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    const-string v1, "    return null;\n"

    .line 188
    invoke-virtual {p0, v1}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    const-string v1, "  }\n"

    .line 189
    invoke-virtual {p0, v1}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 191
    iget-object v4, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->origName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "  %s _$$_t;\n"

    invoke-virtual {p0, v4, v3}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "  if ($2 == null) {\n"

    .line 192
    invoke-virtual {p0, v3}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    new-array v3, v2, [Ljava/lang/Object;

    .line 193
    iget-object v4, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->origName:Ljava/lang/String;

    aput-object v4, v3, v5

    const-string v4, "    _$$_t = new %s();\n"

    invoke-virtual {p0, v4, v3}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "  } else {\n"

    .line 194
    invoke-virtual {p0, v3}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    new-array v4, v2, [Ljava/lang/Object;

    .line 195
    iget-object v6, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->origName:Ljava/lang/String;

    aput-object v6, v4, v5

    const-string v6, "    _$$_t = (%s) $2;\n"

    invoke-virtual {p0, v6, v4}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    invoke-virtual {p0, v1}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    const-string v4, "  $1.readArrayBegin();\n"

    .line 197
    invoke-virtual {p0, v4}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 200
    :goto_0
    iget-object v6, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->entries:[Lorg/msgpack/template/builder/FieldEntry;

    array-length v7, v6

    if-ge v4, v7, :cond_6

    .line 201
    aget-object v6, v6, v4

    .line 202
    invoke-virtual {v6}, Lorg/msgpack/template/builder/FieldEntry;->isAvailable()Z

    move-result v7

    if-nez v7, :cond_0

    const-string v6, "  $1.skip();\n"

    .line 203
    invoke-virtual {p0, v6}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 207
    :cond_0
    invoke-virtual {v6}, Lorg/msgpack/template/builder/FieldEntry;->isOptional()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "  if ($1.trySkipNil()) {"

    .line 208
    invoke-virtual {p0, v7}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0, v3}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    .line 213
    :cond_1
    check-cast v6, Lorg/msgpack/template/builder/DefaultFieldEntry;

    .line 214
    invoke-virtual {v6}, Lorg/msgpack/template/builder/DefaultFieldEntry;->getField()Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v7

    .line 215
    invoke-virtual {v6}, Lorg/msgpack/template/builder/DefaultFieldEntry;->getType()Ljava/lang/Class;

    move-result-object v8

    .line 216
    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    const-string v10, "    %s.readPrivateField($1, _$$_t, %s.class, \"%s\", templates[%d]);\n"

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x2

    if-eqz v9, :cond_3

    if-nez v7, :cond_2

    new-array v7, v13, [Ljava/lang/Object;

    .line 218
    invoke-virtual {v6}, Lorg/msgpack/template/builder/DefaultFieldEntry;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v5

    invoke-virtual {p0, v8}, Lorg/msgpack/template/builder/DefaultBuildContext;->primitiveReadName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "    _$$_t.%s = $1.%s();\n"

    invoke-virtual {p0, v8, v7}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-array v7, v12, [Ljava/lang/Object;

    .line 220
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v6}, Lorg/msgpack/template/builder/DefaultFieldEntry;->getField()Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v6}, Lorg/msgpack/template/builder/DefaultFieldEntry;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {p0, v10, v7}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-nez v7, :cond_4

    new-array v7, v12, [Ljava/lang/Object;

    .line 226
    invoke-virtual {v6}, Lorg/msgpack/template/builder/DefaultFieldEntry;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v6}, Lorg/msgpack/template/builder/DefaultFieldEntry;->getJavaTypeName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-virtual {v6}, Lorg/msgpack/template/builder/DefaultFieldEntry;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    const-string v8, "    _$$_t.%s = (%s) this.templates[%d].read($1, _$$_t.%s);\n"

    invoke-virtual {p0, v8, v7}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    new-array v7, v12, [Ljava/lang/Object;

    .line 230
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v6}, Lorg/msgpack/template/builder/DefaultFieldEntry;->getField()Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v6}, Lorg/msgpack/template/builder/DefaultFieldEntry;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {p0, v10, v7}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    :goto_1
    invoke-virtual {v6}, Lorg/msgpack/template/builder/DefaultFieldEntry;->isOptional()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 237
    invoke-virtual {p0, v1}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    const-string v0, "  $1.readArrayEnd();\n"

    .line 241
    invoke-virtual {p0, v0}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    const-string v0, "  return _$$_t;\n"

    .line 242
    invoke-virtual {p0, v0}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    const-string v0, "}\n"

    .line 244
    invoke-virtual {p0, v0}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lorg/msgpack/template/builder/DefaultBuildContext;->getBuiltString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public buildTemplate(Ljava/lang/Class;[Lorg/msgpack/template/builder/FieldEntry;[Lorg/msgpack/template/Template;)Lorg/msgpack/template/Template;
    .locals 0

    .line 52
    iput-object p2, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->entries:[Lorg/msgpack/template/builder/FieldEntry;

    .line 53
    iput-object p3, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->templates:[Lorg/msgpack/template/Template;

    .line 54
    iput-object p1, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->origClass:Ljava/lang/Class;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->origName:Ljava/lang/String;

    .line 56
    invoke-virtual {p0, p1}, Lorg/msgpack/template/builder/DefaultBuildContext;->build(Ljava/lang/String;)Lorg/msgpack/template/Template;

    move-result-object p1

    return-object p1
.end method

.method protected buildWriteMethodBody()Ljava/lang/String;
    .locals 13

    .line 87
    const-class v0, Lorg/msgpack/template/builder/DefaultBuildContext;

    invoke-virtual {p0}, Lorg/msgpack/template/builder/DefaultBuildContext;->resetStringBuilder()V

    const-string v1, "\n{\n"

    .line 88
    invoke-virtual {p0, v1}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    const-string v1, "  if ($2 == null) {\n"

    .line 90
    invoke-virtual {p0, v1}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    const-string v1, "    if ($3) {\n"

    .line 91
    invoke-virtual {p0, v1}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 92
    const-class v3, Lorg/msgpack/MessageTypeException;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "      throw new %s(\"Attempted to write null\");\n"

    invoke-virtual {p0, v3, v2}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "    }\n"

    .line 93
    invoke-virtual {p0, v2}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    const-string v2, "    $1.writeNil();\n"

    .line 94
    invoke-virtual {p0, v2}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    const-string v3, "    return;\n"

    .line 95
    invoke-virtual {p0, v3}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    const-string v3, "  }\n"

    .line 96
    invoke-virtual {p0, v3}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    .line 98
    iget-object v7, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->origName:Ljava/lang/String;

    aput-object v7, v6, v4

    aput-object v7, v6, v1

    const-string v7, "  %s _$$_t = (%s) $2;\n"

    invoke-virtual {p0, v7, v6}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v6, v1, [Ljava/lang/Object;

    .line 99
    iget-object v7, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->entries:[Lorg/msgpack/template/builder/FieldEntry;

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v7, "  $1.writeArrayBegin(%d);\n"

    invoke-virtual {p0, v7, v6}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    .line 101
    :goto_0
    iget-object v7, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->entries:[Lorg/msgpack/template/builder/FieldEntry;

    array-length v8, v7

    if-ge v6, v8, :cond_6

    .line 102
    aget-object v7, v7, v6

    .line 103
    invoke-virtual {v7}, Lorg/msgpack/template/builder/FieldEntry;->isAvailable()Z

    move-result v8

    if-nez v8, :cond_0

    const-string v7, "  $1.writeNil();\n"

    .line 104
    invoke-virtual {p0, v7}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 107
    :cond_0
    check-cast v7, Lorg/msgpack/template/builder/DefaultFieldEntry;

    .line 108
    invoke-virtual {v7}, Lorg/msgpack/template/builder/DefaultFieldEntry;->getField()Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v8

    .line 109
    invoke-virtual {v7}, Lorg/msgpack/template/builder/DefaultFieldEntry;->getType()Ljava/lang/Class;

    move-result-object v9

    .line 110
    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v10

    const/4 v11, 0x4

    const/4 v12, 0x3

    if-eqz v10, :cond_2

    if-nez v8, :cond_1

    new-array v8, v5, [Ljava/lang/Object;

    .line 112
    invoke-virtual {p0, v9}, Lorg/msgpack/template/builder/DefaultBuildContext;->primitiveWriteName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v7}, Lorg/msgpack/template/builder/DefaultFieldEntry;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v1

    const-string v7, "  $1.%s(_$$_t.%s);\n"

    invoke-virtual {p0, v7, v8}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-array v8, v11, [Ljava/lang/Object;

    .line 114
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v7}, Lorg/msgpack/template/builder/DefaultFieldEntry;->getField()Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {v7}, Lorg/msgpack/template/builder/DefaultFieldEntry;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v12

    const-string v7, "  %s.writePrivateField($1, _$$_t, %s.class, \"%s\", templates[%d]);\n"

    invoke-virtual {p0, v7, v8}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    if-nez v8, :cond_3

    new-array v9, v1, [Ljava/lang/Object;

    .line 120
    invoke-virtual {v7}, Lorg/msgpack/template/builder/DefaultFieldEntry;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    const-string v10, "  if (_$$_t.%s == null) {\n"

    invoke-virtual {p0, v10, v9}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-array v9, v12, [Ljava/lang/Object;

    .line 122
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {v7}, Lorg/msgpack/template/builder/DefaultFieldEntry;->getField()Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-virtual {v7}, Lorg/msgpack/template/builder/DefaultFieldEntry;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    const-string v10, "  if (%s.readPrivateField(_$$_t, %s.class, \"%s\") == null) {\n"

    invoke-virtual {p0, v10, v9}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    :goto_1
    invoke-virtual {v7}, Lorg/msgpack/template/builder/DefaultFieldEntry;->isNotNullable()Z

    move-result v9

    if-eqz v9, :cond_4

    new-array v9, v5, [Ljava/lang/Object;

    .line 127
    const-class v10, Lorg/msgpack/MessageTypeException;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {v7}, Lorg/msgpack/template/builder/DefaultFieldEntry;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    const-string v10, "    throw new %s(\"%s cannot be null by @NotNullable\");\n"

    invoke-virtual {p0, v10, v9}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 131
    :cond_4
    invoke-virtual {p0, v2}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    :goto_2
    const-string v9, "  } else {\n"

    .line 133
    invoke-virtual {p0, v9}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    if-nez v8, :cond_5

    new-array v8, v5, [Ljava/lang/Object;

    .line 135
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v7}, Lorg/msgpack/template/builder/DefaultFieldEntry;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v1

    const-string v7, "    templates[%d].write($1, _$$_t.%s);\n"

    invoke-virtual {p0, v7, v8}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    new-array v8, v11, [Ljava/lang/Object;

    .line 137
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v7}, Lorg/msgpack/template/builder/DefaultFieldEntry;->getField()Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {v7}, Lorg/msgpack/template/builder/DefaultFieldEntry;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v12

    const-string v7, "    %s.writePrivateField($1, _$$_t, %s.class, \"%s\", templates[%d]);\n"

    invoke-virtual {p0, v7, v8}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :goto_3
    invoke-virtual {p0, v3}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_6
    const-string v0, "  $1.writeArrayEnd();\n"

    .line 145
    invoke-virtual {p0, v0}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    const-string v0, "}\n"

    .line 146
    invoke-virtual {p0, v0}, Lorg/msgpack/template/builder/DefaultBuildContext;->buildString(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lorg/msgpack/template/builder/DefaultBuildContext;->getBuiltString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadTemplate(Ljava/lang/Class;[Lorg/msgpack/template/builder/FieldEntry;[Lorg/msgpack/template/Template;)Lorg/msgpack/template/Template;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lorg/msgpack/template/builder/FieldEntry;",
            "[",
            "Lorg/msgpack/template/Template;",
            ")",
            "Lorg/msgpack/template/Template;"
        }
    .end annotation

    .line 280
    iput-object p2, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->entries:[Lorg/msgpack/template/builder/FieldEntry;

    .line 281
    iput-object p3, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->templates:[Lorg/msgpack/template/Template;

    .line 282
    iput-object p1, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->origClass:Ljava/lang/Class;

    .line 283
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->origName:Ljava/lang/String;

    .line 284
    invoke-virtual {p0, p1}, Lorg/msgpack/template/builder/DefaultBuildContext;->load(Ljava/lang/String;)Lorg/msgpack/template/Template;

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

    .line 60
    iget-object v0, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->tmplCtClass:Ljavassist/CtClass;

    iget-object v1, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->director:Lorg/msgpack/template/builder/JavassistTemplateBuilder;

    const-class v2, Lorg/msgpack/template/builder/JavassistTemplateBuilder$JavassistTemplate;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->getCtClass(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/CtClass;->setSuperclass(Ljavassist/CtClass;)V

    return-void
.end method

.method public writeTemplate(Ljava/lang/Class;[Lorg/msgpack/template/builder/FieldEntry;[Lorg/msgpack/template/Template;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lorg/msgpack/template/builder/FieldEntry;",
            "[",
            "Lorg/msgpack/template/Template;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 271
    iput-object p2, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->entries:[Lorg/msgpack/template/builder/FieldEntry;

    .line 272
    iput-object p3, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->templates:[Lorg/msgpack/template/Template;

    .line 273
    iput-object p1, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->origClass:Ljava/lang/Class;

    .line 274
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/template/builder/DefaultBuildContext;->origName:Ljava/lang/String;

    .line 275
    invoke-virtual {p0, p1, p4}, Lorg/msgpack/template/builder/DefaultBuildContext;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
