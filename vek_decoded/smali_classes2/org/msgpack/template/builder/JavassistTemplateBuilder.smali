.class public Lorg/msgpack/template/builder/JavassistTemplateBuilder;
.super Lorg/msgpack/template/builder/AbstractTemplateBuilder;
.source "JavassistTemplateBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/msgpack/template/builder/JavassistTemplateBuilder$JavassistTemplate;
    }
.end annotation


# static fields
.field private static LOG:Ljava/util/logging/Logger;


# instance fields
.field protected loader:Ljava/lang/ClassLoader;

.field protected pool:Ljavassist/ClassPool;

.field protected seqId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lorg/msgpack/template/builder/JavassistTemplateBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/msgpack/template/TemplateRegistry;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;-><init>(Lorg/msgpack/template/TemplateRegistry;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Lorg/msgpack/template/TemplateRegistry;Ljava/lang/ClassLoader;)V
    .locals 2

    .line 60
    invoke-direct {p0, p1}, Lorg/msgpack/template/builder/AbstractTemplateBuilder;-><init>(Lorg/msgpack/template/TemplateRegistry;)V

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->seqId:I

    .line 61
    new-instance v0, Ljavassist/ClassPool;

    invoke-direct {v0}, Ljavassist/ClassPool;-><init>()V

    iput-object v0, p0, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->pool:Ljavassist/ClassPool;

    .line 63
    iput-object p2, p0, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->loader:Ljava/lang/ClassLoader;

    if-nez p2, :cond_0

    .line 65
    invoke-virtual {v0}, Ljavassist/ClassPool;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    iput-object p2, p0, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->loader:Ljava/lang/ClassLoader;

    .line 69
    :cond_0
    :try_start_0
    iget-object p2, p0, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->loader:Ljava/lang/ClassLoader;

    if-eqz p2, :cond_1

    .line 70
    iget-object p2, p0, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->pool:Ljavassist/ClassPool;

    new-instance v0, Ljavassist/LoaderClassPath;

    iget-object v1, p0, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->loader:Ljava/lang/ClassLoader;

    invoke-direct {v0, v1}, Ljavassist/LoaderClassPath;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {p2, v0}, Ljavassist/ClassPool;->appendClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 74
    sget-object v0, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Cannot append a search path of classloader"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 78
    iget-object p1, p0, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->pool:Ljavassist/ClassPool;

    invoke-virtual {p1}, Ljavassist/ClassPool;->appendSystemPath()Ljavassist/ClassPath;

    :cond_2
    return-void
.end method

.method private toTemplate([Lorg/msgpack/template/builder/FieldEntry;)[Lorg/msgpack/template/Template;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/msgpack/template/builder/FieldEntry;",
            ")[",
            "Lorg/msgpack/template/Template<",
            "*>;"
        }
    .end annotation

    .line 120
    array-length v0, p1

    new-array v0, v0, [Lorg/msgpack/template/Template;

    const/4 v1, 0x0

    .line 121
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 122
    aget-object v2, p1, v1

    .line 123
    invoke-virtual {v2}, Lorg/msgpack/template/builder/FieldEntry;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 124
    aput-object v2, v0, v1

    goto :goto_1

    .line 126
    :cond_0
    iget-object v3, p0, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->registry:Lorg/msgpack/template/TemplateRegistry;

    invoke-virtual {v2}, Lorg/msgpack/template/builder/FieldEntry;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/msgpack/template/TemplateRegistry;->lookup(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;

    move-result-object v2

    .line 127
    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private writeTemplate(Ljava/lang/Class;[Lorg/msgpack/template/builder/FieldEntry;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lorg/msgpack/template/builder/FieldEntry;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 143
    invoke-direct {p0, p2}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->toTemplate([Lorg/msgpack/template/builder/FieldEntry;)[Lorg/msgpack/template/Template;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->createBuildContext()Lorg/msgpack/template/builder/BuildContext;

    move-result-object v1

    .line 145
    invoke-virtual {v1, p1, p2, v0, p3}, Lorg/msgpack/template/builder/BuildContext;->writeTemplate(Ljava/lang/Class;[Lorg/msgpack/template/builder/FieldEntry;[Lorg/msgpack/template/Template;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addClassLoader(Ljava/lang/ClassLoader;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->pool:Ljavassist/ClassPool;

    new-instance v1, Ljavassist/LoaderClassPath;

    invoke-direct {v1, p1}, Ljavassist/LoaderClassPath;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->appendClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;

    return-void
.end method

.method public buildTemplate(Ljava/lang/Class;[Lorg/msgpack/template/builder/FieldEntry;)Lorg/msgpack/template/Template;
    .locals 2
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

    .line 114
    invoke-direct {p0, p2}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->toTemplate([Lorg/msgpack/template/builder/FieldEntry;)[Lorg/msgpack/template/Template;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->createBuildContext()Lorg/msgpack/template/builder/BuildContext;

    move-result-object v1

    .line 116
    invoke-virtual {v1, p1, p2, v0}, Lorg/msgpack/template/builder/BuildContext;->buildTemplate(Ljava/lang/Class;[Lorg/msgpack/template/builder/FieldEntry;[Lorg/msgpack/template/Template;)Lorg/msgpack/template/Template;

    move-result-object p1

    return-object p1
.end method

.method protected createBuildContext()Lorg/msgpack/template/builder/BuildContext;
    .locals 1

    .line 109
    new-instance v0, Lorg/msgpack/template/builder/DefaultBuildContext;

    invoke-direct {v0, p0}, Lorg/msgpack/template/builder/DefaultBuildContext;-><init>(Lorg/msgpack/template/builder/JavassistTemplateBuilder;)V

    return-object v0
.end method

.method protected getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->loader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method protected getCtClass(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->pool:Ljavassist/ClassPool;

    invoke-virtual {v0, p1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p1

    return-object p1
.end method

.method public loadTemplate(Ljava/lang/reflect/Type;)Lorg/msgpack/template/Template;
    .locals 3
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

    .line 152
    check-cast p1, Ljava/lang/Class;

    const/4 v0, 0x0

    .line 156
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_$$_Template"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 159
    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    invoke-virtual {p0, p1}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->getFieldOption(Ljava/lang/Class;)Lorg/msgpack/template/FieldOption;

    move-result-object v0

    .line 167
    invoke-virtual {p0, p1, v0}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->toFieldEntries(Ljava/lang/Class;Lorg/msgpack/template/FieldOption;)[Lorg/msgpack/template/builder/FieldEntry;

    move-result-object v0

    .line 168
    invoke-direct {p0, v0}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->toTemplate([Lorg/msgpack/template/builder/FieldEntry;)[Lorg/msgpack/template/Template;

    move-result-object v1

    .line 169
    invoke-virtual {p0}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->createBuildContext()Lorg/msgpack/template/builder/BuildContext;

    move-result-object v2

    .line 170
    invoke-virtual {v2, p1, v0, v1}, Lorg/msgpack/template/builder/BuildContext;->loadTemplate(Ljava/lang/Class;[Lorg/msgpack/template/builder/FieldEntry;[Lorg/msgpack/template/Template;)Lorg/msgpack/template/Template;

    move-result-object p1

    return-object p1

    :catch_0
    :cond_0
    return-object v0
.end method

.method protected makeCtClass(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->pool:Ljavassist/ClassPool;

    invoke-virtual {v0, p1}, Ljavassist/ClassPool;->makeClass(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p1

    return-object p1
.end method

.method public matchType(Ljava/lang/reflect/Type;Z)Z
    .locals 3

    .line 84
    check-cast p1, Ljava/lang/Class;

    .line 85
    invoke-static {p1, p2}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->matchAtClassTemplateBuilder(Ljava/lang/Class;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 86
    sget-object v0, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->LOG:Ljava/util/logging/Logger;

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

.method protected nextSeqId()I
    .locals 2

    .line 105
    iget v0, p0, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->seqId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->seqId:I

    return v0
.end method

.method public writeTemplate(Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .locals 1

    .line 135
    check-cast p1, Ljava/lang/Class;

    .line 136
    invoke-virtual {p0, p1}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->checkClassValidation(Ljava/lang/Class;)V

    .line 137
    invoke-virtual {p0, p1}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->getFieldOption(Ljava/lang/Class;)Lorg/msgpack/template/FieldOption;

    move-result-object v0

    .line 138
    invoke-virtual {p0, p1, v0}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->toFieldEntries(Ljava/lang/Class;Lorg/msgpack/template/FieldOption;)[Lorg/msgpack/template/builder/FieldEntry;

    move-result-object v0

    .line 139
    invoke-direct {p0, p1, v0, p2}, Lorg/msgpack/template/builder/JavassistTemplateBuilder;->writeTemplate(Ljava/lang/Class;[Lorg/msgpack/template/builder/FieldEntry;Ljava/lang/String;)V

    return-void
.end method
