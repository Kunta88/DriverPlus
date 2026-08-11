.class public abstract Lorg/msgpack/template/builder/BuildContext;
.super Ljava/lang/Object;
.source "BuildContext.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/msgpack/template/builder/FieldEntry;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static LOG:Ljava/util/logging/Logger;


# instance fields
.field protected director:Lorg/msgpack/template/builder/JavassistTemplateBuilder;

.field protected stringBuilder:Ljava/lang/StringBuilder;

.field protected tmplCtClass:Ljavassist/CtClass;

.field protected tmplName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/msgpack/template/builder/BuildContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/msgpack/template/builder/BuildContext;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/msgpack/template/builder/JavassistTemplateBuilder;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lorg/msgpack/template/builder/BuildContext;->stringBuilder:Ljava/lang/StringBuilder;

    .line 53
    iput-object p1, p0, Lorg/msgpack/template/builder/BuildContext;->director:Lorg/msgpack/template/builder/JavassistTemplateBuilder;

    return-void
.end method


# virtual methods
.method protected build(Ljava/lang/String;)Lorg/msgpack/template/Template;
    .locals 6

    const/4 v0, 0x0

    .line 58
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/msgpack/template/builder/BuildContext;->reset(Ljava/lang/String;Z)V

    .line 59
    sget-object v1, Lorg/msgpack/template/builder/BuildContext;->LOG:Ljava/util/logging/Logger;

    const-string v2, "started generating template class %s for original class %s"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/msgpack/template/builder/BuildContext;->tmplCtClass:Ljavassist/CtClass;

    invoke-virtual {v5}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lorg/msgpack/template/builder/BuildContext;->buildClass()V

    .line 62
    invoke-virtual {p0}, Lorg/msgpack/template/builder/BuildContext;->buildConstructor()V

    .line 63
    invoke-virtual {p0}, Lorg/msgpack/template/builder/BuildContext;->buildMethodInit()V

    .line 64
    invoke-virtual {p0}, Lorg/msgpack/template/builder/BuildContext;->buildWriteMethod()V

    .line 65
    invoke-virtual {p0}, Lorg/msgpack/template/builder/BuildContext;->buildReadMethod()V

    .line 66
    sget-object v1, Lorg/msgpack/template/builder/BuildContext;->LOG:Ljava/util/logging/Logger;

    const-string v2, "finished generating template class %s for original class %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/msgpack/template/builder/BuildContext;->tmplCtClass:Ljavassist/CtClass;

    invoke-virtual {v4}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lorg/msgpack/template/builder/BuildContext;->createClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/msgpack/template/builder/BuildContext;->buildInstance(Ljava/lang/Class;)Lorg/msgpack/template/Template;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p0}, Lorg/msgpack/template/builder/BuildContext;->getBuiltString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    sget-object v1, Lorg/msgpack/template/builder/BuildContext;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "builder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 73
    new-instance v1, Lorg/msgpack/template/builder/TemplateBuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot compile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/msgpack/template/builder/TemplateBuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 75
    :cond_0
    new-instance v0, Lorg/msgpack/template/builder/TemplateBuildException;

    invoke-direct {v0, p1}, Lorg/msgpack/template/builder/TemplateBuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected buildClass()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lorg/msgpack/template/builder/BuildContext;->setSuperClass()V

    .line 93
    iget-object v0, p0, Lorg/msgpack/template/builder/BuildContext;->tmplCtClass:Ljavassist/CtClass;

    iget-object v1, p0, Lorg/msgpack/template/builder/BuildContext;->director:Lorg/msgpack/template/builder/JavassistTemplateBuilder;

    const-class v2, Lorg/msgpack/template/Template;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->getCtClass(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/CtClass;->addInterface(Ljavassist/CtClass;)V

    return-void
.end method

.method protected abstract buildConstructor()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation
.end method

.method protected abstract buildInstance(Ljava/lang/Class;)Lorg/msgpack/template/Template;
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
.end method

.method protected buildMethodInit()V
    .locals 0

    return-void
.end method

.method protected buildReadMethod()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 129
    sget-object v0, Lorg/msgpack/template/builder/BuildContext;->LOG:Ljava/util/logging/Logger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/msgpack/template/builder/BuildContext;->tmplCtClass:Ljavassist/CtClass;

    invoke-virtual {v3}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "started generating read method in template class %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lorg/msgpack/template/builder/BuildContext;->buildReadMethodBody()Ljava/lang/String;

    move-result-object v10

    .line 133
    iget-object v0, p0, Lorg/msgpack/template/builder/BuildContext;->director:Lorg/msgpack/template/builder/JavassistTemplateBuilder;

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->getCtClass(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v6

    const/4 v0, 0x3

    new-array v8, v0, [Ljavassist/CtClass;

    .line 135
    iget-object v0, p0, Lorg/msgpack/template/builder/BuildContext;->director:Lorg/msgpack/template/builder/JavassistTemplateBuilder;

    const-class v2, Lorg/msgpack/unpacker/Unpacker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->getCtClass(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    aput-object v0, v8, v4

    iget-object v0, p0, Lorg/msgpack/template/builder/BuildContext;->director:Lorg/msgpack/template/builder/JavassistTemplateBuilder;

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->getCtClass(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    aput-object v0, v8, v1

    sget-object v0, Ljavassist/CtClass;->booleanType:Ljavassist/CtClass;

    const/4 v2, 0x2

    aput-object v0, v8, v2

    new-array v9, v1, [Ljavassist/CtClass;

    .line 140
    iget-object v0, p0, Lorg/msgpack/template/builder/BuildContext;->director:Lorg/msgpack/template/builder/JavassistTemplateBuilder;

    const-class v2, Lorg/msgpack/MessageTypeException;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->getCtClass(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    aput-object v0, v9, v4

    .line 143
    sget-object v0, Lorg/msgpack/template/builder/BuildContext;->LOG:Ljava/util/logging/Logger;

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v10, v2, v4

    const-string v3, "compiling read method body: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 144
    iget-object v11, p0, Lorg/msgpack/template/builder/BuildContext;->tmplCtClass:Ljavassist/CtClass;

    const/4 v5, 0x1

    const-string v7, "read"

    invoke-static/range {v5 .. v11}, Ljavassist/CtNewMethod;->make(ILjavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;[Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtMethod;

    move-result-object v0

    .line 146
    iget-object v2, p0, Lorg/msgpack/template/builder/BuildContext;->tmplCtClass:Ljavassist/CtClass;

    invoke-virtual {v2, v0}, Ljavassist/CtClass;->addMethod(Ljavassist/CtMethod;)V

    .line 147
    sget-object v0, Lorg/msgpack/template/builder/BuildContext;->LOG:Ljava/util/logging/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/msgpack/template/builder/BuildContext;->tmplCtClass:Ljavassist/CtClass;

    invoke-virtual {v2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "finished generating read method in template class %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract buildReadMethodBody()Ljava/lang/String;
.end method

.method protected buildString(Ljava/lang/String;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/msgpack/template/builder/BuildContext;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected varargs buildString(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/msgpack/template/builder/BuildContext;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected abstract buildTemplate(Ljava/lang/Class;[Lorg/msgpack/template/builder/FieldEntry;[Lorg/msgpack/template/Template;)Lorg/msgpack/template/Template;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[TT;[",
            "Lorg/msgpack/template/Template;",
            ")",
            "Lorg/msgpack/template/Template;"
        }
    .end annotation
.end method

.method protected buildWriteMethod()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 104
    sget-object v0, Lorg/msgpack/template/builder/BuildContext;->LOG:Ljava/util/logging/Logger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/msgpack/template/builder/BuildContext;->tmplCtClass:Ljavassist/CtClass;

    invoke-virtual {v3}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "started generating write method in template class %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lorg/msgpack/template/builder/BuildContext;->buildWriteMethodBody()Ljava/lang/String;

    move-result-object v10

    .line 108
    sget-object v6, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    const/4 v0, 0x3

    new-array v8, v0, [Ljavassist/CtClass;

    .line 110
    iget-object v0, p0, Lorg/msgpack/template/builder/BuildContext;->director:Lorg/msgpack/template/builder/JavassistTemplateBuilder;

    const-class v2, Lorg/msgpack/packer/Packer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->getCtClass(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    aput-object v0, v8, v4

    iget-object v0, p0, Lorg/msgpack/template/builder/BuildContext;->director:Lorg/msgpack/template/builder/JavassistTemplateBuilder;

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->getCtClass(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    aput-object v0, v8, v1

    sget-object v0, Ljavassist/CtClass;->booleanType:Ljavassist/CtClass;

    const/4 v2, 0x2

    aput-object v0, v8, v2

    new-array v9, v1, [Ljavassist/CtClass;

    .line 115
    iget-object v0, p0, Lorg/msgpack/template/builder/BuildContext;->director:Lorg/msgpack/template/builder/JavassistTemplateBuilder;

    const-class v2, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->getCtClass(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    aput-object v0, v9, v4

    .line 118
    sget-object v0, Lorg/msgpack/template/builder/BuildContext;->LOG:Ljava/util/logging/Logger;

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v10, v2, v4

    const-string v3, "compiling write method body: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 119
    iget-object v11, p0, Lorg/msgpack/template/builder/BuildContext;->tmplCtClass:Ljavassist/CtClass;

    const/4 v5, 0x1

    const-string v7, "write"

    invoke-static/range {v5 .. v11}, Ljavassist/CtNewMethod;->make(ILjavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;[Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtMethod;

    move-result-object v0

    .line 121
    iget-object v2, p0, Lorg/msgpack/template/builder/BuildContext;->tmplCtClass:Ljavassist/CtClass;

    invoke-virtual {v2, v0}, Ljavassist/CtClass;->addMethod(Ljavassist/CtMethod;)V

    .line 122
    sget-object v0, Lorg/msgpack/template/builder/BuildContext;->LOG:Ljava/util/logging/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/msgpack/template/builder/BuildContext;->tmplCtClass:Ljavassist/CtClass;

    invoke-virtual {v2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "finished generating write method in template class %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract buildWriteMethodBody()Ljava/lang/String;
.end method

.method protected createClass()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/msgpack/template/builder/BuildContext;->tmplCtClass:Ljavassist/CtClass;

    iget-object v1, p0, Lorg/msgpack/template/builder/BuildContext;->director:Lorg/msgpack/template/builder/JavassistTemplateBuilder;

    invoke-virtual {v1}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavassist/CtClass;->toClass(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected getBuiltString()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/msgpack/template/builder/BuildContext;->stringBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 179
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected load(Ljava/lang/String;)Lorg/msgpack/template/Template;
    .locals 4

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_$$_Template"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 235
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 236
    invoke-virtual {p0, p1}, Lorg/msgpack/template/builder/BuildContext;->buildInstance(Ljava/lang/Class;)Lorg/msgpack/template/Template;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 240
    invoke-virtual {p0}, Lorg/msgpack/template/builder/BuildContext;->getBuiltString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    sget-object v1, Lorg/msgpack/template/builder/BuildContext;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "builder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 243
    new-instance v1, Lorg/msgpack/template/builder/TemplateBuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot compile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/msgpack/template/builder/TemplateBuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 245
    :cond_0
    new-instance v0, Lorg/msgpack/template/builder/TemplateBuildException;

    invoke-direct {v0, p1}, Lorg/msgpack/template/builder/TemplateBuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract loadTemplate(Ljava/lang/Class;[Lorg/msgpack/template/builder/FieldEntry;[Lorg/msgpack/template/Template;)Lorg/msgpack/template/Template;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[TT;[",
            "Lorg/msgpack/template/Template;",
            ")",
            "Lorg/msgpack/template/Template;"
        }
    .end annotation
.end method

.method protected primitiveReadName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 187
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    const-string p1, "readBoolean"

    return-object p1

    .line 189
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    const-string p1, "readByte"

    return-object p1

    .line 191
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    const-string p1, "readShort"

    return-object p1

    .line 193
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v1, "readInt"

    if-ne p1, v0, :cond_3

    return-object v1

    .line 195
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    const-string p1, "readLong"

    return-object p1

    .line 197
    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    const-string p1, "readFloat"

    return-object p1

    .line 199
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    const-string p1, "readDouble"

    return-object p1

    .line 201
    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    return-object v1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method protected primitiveWriteName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string p1, "write"

    return-object p1
.end method

.method protected reset(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "_$$_Template"

    if-nez p2, :cond_0

    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/msgpack/template/builder/BuildContext;->director:Lorg/msgpack/template/builder/JavassistTemplateBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lorg/msgpack/template/builder/BuildContext;->director:Lorg/msgpack/template/builder/JavassistTemplateBuilder;

    invoke-virtual {p2}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->nextSeqId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 86
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    :goto_0
    iget-object p2, p0, Lorg/msgpack/template/builder/BuildContext;->director:Lorg/msgpack/template/builder/JavassistTemplateBuilder;

    invoke-virtual {p2, p1}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->makeCtClass(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/template/builder/BuildContext;->tmplCtClass:Ljavassist/CtClass;

    return-void
.end method

.method protected resetStringBuilder()V
    .locals 1

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/msgpack/template/builder/BuildContext;->stringBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method protected saveClass(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/msgpack/template/builder/BuildContext;->tmplCtClass:Ljavassist/CtClass;

    invoke-virtual {v0, p1}, Ljavassist/CtClass;->writeFile(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract setSuperClass()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation
.end method

.method protected write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 212
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/msgpack/template/builder/BuildContext;->reset(Ljava/lang/String;Z)V

    .line 213
    invoke-virtual {p0}, Lorg/msgpack/template/builder/BuildContext;->buildClass()V

    .line 214
    invoke-virtual {p0}, Lorg/msgpack/template/builder/BuildContext;->buildConstructor()V

    .line 215
    invoke-virtual {p0}, Lorg/msgpack/template/builder/BuildContext;->buildMethodInit()V

    .line 216
    invoke-virtual {p0}, Lorg/msgpack/template/builder/BuildContext;->buildWriteMethod()V

    .line 217
    invoke-virtual {p0}, Lorg/msgpack/template/builder/BuildContext;->buildReadMethod()V

    .line 218
    invoke-virtual {p0, p2}, Lorg/msgpack/template/builder/BuildContext;->saveClass(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 220
    invoke-virtual {p0}, Lorg/msgpack/template/builder/BuildContext;->getBuiltString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 222
    sget-object v0, Lorg/msgpack/template/builder/BuildContext;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "builder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 223
    new-instance v0, Lorg/msgpack/template/builder/TemplateBuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot compile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/msgpack/template/builder/TemplateBuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 225
    :cond_0
    new-instance p2, Lorg/msgpack/template/builder/TemplateBuildException;

    invoke-direct {p2, p1}, Lorg/msgpack/template/builder/TemplateBuildException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected abstract writeTemplate(Ljava/lang/Class;[Lorg/msgpack/template/builder/FieldEntry;[Lorg/msgpack/template/Template;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[TT;[",
            "Lorg/msgpack/template/Template;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
