.class Ljavassist/CtNewClass;
.super Ljavassist/CtClassType;
.source "CtNewClass.java"


# instance fields
.field protected hasConstructor:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavassist/ClassPool;ZLjavassist/CtClass;)V
    .locals 2

    .line 30
    invoke-direct {p0, p1, p2}, Ljavassist/CtClassType;-><init>(Ljava/lang/String;Ljavassist/ClassPool;)V

    const/4 p2, 0x1

    .line 31
    iput-boolean p2, p0, Ljavassist/CtNewClass;->wasChanged:Z

    if-nez p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p4}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 38
    :goto_1
    new-instance v1, Ljavassist/bytecode/ClassFile;

    invoke-direct {v1, p3, p1, v0}, Ljavassist/bytecode/ClassFile;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Ljavassist/CtNewClass;->classfile:Ljavassist/bytecode/ClassFile;

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 40
    iget-object p1, p0, Ljavassist/CtNewClass;->classfile:Ljavassist/bytecode/ClassFile;

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p4}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, v0

    invoke-virtual {p1, p2}, Ljavassist/bytecode/ClassFile;->setInterfaces([Ljava/lang/String;)V

    .line 42
    :cond_2
    invoke-virtual {p0}, Ljavassist/CtNewClass;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljavassist/Modifier;->setPublic(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/CtNewClass;->setModifiers(I)V

    .line 43
    iput-boolean p3, p0, Ljavassist/CtNewClass;->hasConstructor:Z

    return-void
.end method

.method private isInheritable(ILjavassist/CtClass;)Z
    .locals 2

    .line 112
    invoke-static {p1}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 115
    :cond_0
    invoke-static {p1}, Ljavassist/Modifier;->isPackage(I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 116
    invoke-virtual {p0}, Ljavassist/CtNewClass;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-virtual {p2}, Ljavassist/CtClass;->getPackageName()Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_2

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 121
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v0
.end method


# virtual methods
.method public addConstructor(Ljavassist/CtConstructor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Ljavassist/CtNewClass;->hasConstructor:Z

    .line 57
    invoke-super {p0, p1}, Ljavassist/CtClassType;->addConstructor(Ljavassist/CtConstructor;)V

    return-void
.end method

.method protected extendToString(Ljava/lang/StringBuffer;)V
    .locals 1

    .line 47
    iget-boolean v0, p0, Ljavassist/CtNewClass;->hasConstructor:Z

    if-eqz v0, :cond_0

    const-string v0, "hasConstructor "

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    :cond_0
    invoke-super {p0, p1}, Ljavassist/CtClassType;->extendToString(Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public inheritAllConstructors()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Ljavassist/CtNewClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljavassist/CtClass;->getDeclaredConstructors()[Ljavassist/CtConstructor;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 92
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 93
    aget-object v4, v1, v2

    .line 94
    invoke-virtual {v4}, Ljavassist/CtConstructor;->getModifiers()I

    move-result v5

    .line 95
    invoke-direct {p0, v5, v0}, Ljavassist/CtNewClass;->isInheritable(ILjavassist/CtClass;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 96
    invoke-virtual {v4}, Ljavassist/CtConstructor;->getParameterTypes()[Ljavassist/CtClass;

    move-result-object v6

    invoke-virtual {v4}, Ljavassist/CtConstructor;->getExceptionTypes()[Ljavassist/CtClass;

    move-result-object v4

    invoke-static {v6, v4, p0}, Ljavassist/CtNewConstructor;->make([Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtConstructor;

    move-result-object v4

    and-int/lit8 v5, v5, 0x7

    .line 99
    invoke-virtual {v4, v5}, Ljavassist/CtConstructor;->setModifiers(I)V

    .line 100
    invoke-virtual {p0, v4}, Ljavassist/CtNewClass;->addConstructor(Ljavassist/CtConstructor;)V

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-lt v3, v1, :cond_2

    return-void

    .line 106
    :cond_2
    new-instance v1, Ljavassist/CannotCompileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no inheritable constructor in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public toBytecode(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-boolean v0, p0, Ljavassist/CtNewClass;->hasConstructor:Z

    if-nez v0, :cond_0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtNewClass;->inheritAllConstructors()V

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Ljavassist/CtNewClass;->hasConstructor:Z
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    new-instance v0, Ljavassist/CannotCompileException;

    invoke-direct {v0, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v0

    .line 72
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Ljavassist/CtClassType;->toBytecode(Ljava/io/DataOutputStream;)V

    return-void
.end method
