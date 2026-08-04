.class public Ljavassist/tools/rmi/StubGenerator;
.super Ljava/lang/Object;
.source "StubGenerator.java"

# interfaces
.implements Ljavassist/Translator;


# static fields
.field private static final accessorObjectId:Ljava/lang/String; = "_getObjectId"

.field private static final fieldImporter:Ljava/lang/String; = "importer"

.field private static final fieldObjectId:Ljava/lang/String; = "objectId"

.field private static final sampleClass:Ljava/lang/String; = "javassist.tools.rmi.Sample"


# instance fields
.field private classPool:Ljavassist/ClassPool;

.field private exceptionForProxy:[Ljavassist/CtClass;

.field private forwardMethod:Ljavassist/CtMethod;

.field private forwardStaticMethod:Ljavassist/CtMethod;

.field private interfacesForProxy:[Ljavassist/CtClass;

.field private proxyClasses:Ljava/util/Hashtable;

.field private proxyConstructorParamTypes:[Ljavassist/CtClass;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavassist/tools/rmi/StubGenerator;->proxyClasses:Ljava/util/Hashtable;

    return-void
.end method

.method private addMethods(Ljavassist/CtClass;[Ljava/lang/reflect/Method;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 202
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_4

    .line 203
    aget-object v1, p2, v0

    .line 204
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    .line 205
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Object;

    if-eq v3, v4, :cond_3

    invoke-static {v2}, Ljavassist/Modifier;->isFinal(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 207
    invoke-static {v2}, Ljavassist/Modifier;->isPublic(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    invoke-static {v2}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    iget-object v3, p0, Ljavassist/tools/rmi/StubGenerator;->forwardStaticMethod:Ljavassist/CtMethod;

    goto :goto_1

    .line 212
    :cond_0
    iget-object v3, p0, Ljavassist/tools/rmi/StubGenerator;->forwardMethod:Ljavassist/CtMethod;

    :goto_1
    move-object v8, v3

    .line 214
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v3}, Ljavassist/tools/rmi/StubGenerator;->toCtClass(Ljava/lang/Class;)Ljavassist/CtClass;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavassist/tools/rmi/StubGenerator;->toCtClass([Ljava/lang/Class;)[Ljavassist/CtClass;

    move-result-object v6

    iget-object v7, p0, Ljavassist/tools/rmi/StubGenerator;->exceptionForProxy:[Ljavassist/CtClass;

    invoke-static {v0}, Ljavassist/CtMethod$ConstParameter;->integer(I)Ljavassist/CtMethod$ConstParameter;

    move-result-object v9

    move-object v10, p1

    invoke-static/range {v4 .. v10}, Ljavassist/CtNewMethod;->wrapped(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;Ljavassist/CtClass;)Ljavassist/CtMethod;

    move-result-object v1

    .line 222
    invoke-virtual {v1, v2}, Ljavassist/CtMethod;->setModifiers(I)V

    .line 223
    invoke-virtual {p1, v1}, Ljavassist/CtClass;->addMethod(Ljavassist/CtMethod;)V

    goto :goto_2

    .line 225
    :cond_1
    invoke-static {v2}, Ljavassist/Modifier;->isProtected(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v2}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 228
    :cond_2
    new-instance p1, Ljavassist/CannotCompileException;

    const-string p2, "the methods must be public, protected, or private."

    invoke-direct {p1, p2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private modifySuperclass(Ljavassist/CtClass;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 241
    :goto_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 246
    :try_start_0
    invoke-virtual {p1, v0}, Ljavassist/CtClass;->getDeclaredConstructor([Ljavassist/CtClass;)Ljavassist/CtConstructor;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    .line 252
    :catch_0
    invoke-static {p1}, Ljavassist/CtNewConstructor;->defaultConstructor(Ljavassist/CtClass;)Ljavassist/CtConstructor;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/CtClass;->addConstructor(Ljavassist/CtConstructor;)V

    goto :goto_0
.end method

.method private produceProxyClass(Ljavassist/CtClass;Ljava/lang/Class;)Ljavassist/CtClass;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 131
    invoke-virtual {p1}, Ljavassist/CtClass;->getModifiers()I

    move-result v0

    .line 132
    invoke-static {v0}, Ljavassist/Modifier;->isAbstract(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljavassist/Modifier;->isNative(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljavassist/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Ljavassist/tools/rmi/StubGenerator;->classPool:Ljavassist/ClassPool;

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljavassist/ClassPool;->makeClass(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object p1

    .line 140
    iget-object v0, p0, Ljavassist/tools/rmi/StubGenerator;->interfacesForProxy:[Ljavassist/CtClass;

    invoke-virtual {p1, v0}, Ljavassist/CtClass;->setInterfaces([Ljavassist/CtClass;)V

    .line 142
    new-instance v0, Ljavassist/CtField;

    iget-object v1, p0, Ljavassist/tools/rmi/StubGenerator;->classPool:Ljavassist/ClassPool;

    const-string v2, "javassist.tools.rmi.ObjectImporter"

    invoke-virtual {v1, v2}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    const-string v2, "importer"

    invoke-direct {v0, v1, v2, p1}, Ljavassist/CtField;-><init>(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)V

    const/4 v1, 0x2

    .line 145
    invoke-virtual {v0, v1}, Ljavassist/CtField;->setModifiers(I)V

    const/4 v2, 0x0

    .line 146
    invoke-static {v2}, Ljavassist/CtField$Initializer;->byParameter(I)Ljavassist/CtField$Initializer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljavassist/CtClass;->addField(Ljavassist/CtField;Ljavassist/CtField$Initializer;)V

    .line 148
    new-instance v0, Ljavassist/CtField;

    sget-object v2, Ljavassist/CtClass;->intType:Ljavassist/CtClass;

    const-string v3, "objectId"

    invoke-direct {v0, v2, v3, p1}, Ljavassist/CtField;-><init>(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)V

    .line 149
    invoke-virtual {v0, v1}, Ljavassist/CtField;->setModifiers(I)V

    const/4 v1, 0x1

    .line 150
    invoke-static {v1}, Ljavassist/CtField$Initializer;->byParameter(I)Ljavassist/CtField$Initializer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavassist/CtClass;->addField(Ljavassist/CtField;Ljavassist/CtField$Initializer;)V

    const-string v1, "_getObjectId"

    .line 152
    invoke-static {v1, v0}, Ljavassist/CtNewMethod;->getter(Ljava/lang/String;Ljavassist/CtField;)Ljavassist/CtMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/CtClass;->addMethod(Ljavassist/CtMethod;)V

    .line 154
    invoke-static {p1}, Ljavassist/CtNewConstructor;->defaultConstructor(Ljavassist/CtClass;)Ljavassist/CtConstructor;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/CtClass;->addConstructor(Ljavassist/CtConstructor;)V

    .line 155
    iget-object v0, p0, Ljavassist/tools/rmi/StubGenerator;->proxyConstructorParamTypes:[Ljavassist/CtClass;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ljavassist/CtNewConstructor;->skeleton([Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtConstructor;

    move-result-object v0

    .line 158
    invoke-virtual {p1, v0}, Ljavassist/CtClass;->addConstructor(Ljavassist/CtConstructor;)V

    .line 161
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/tools/rmi/StubGenerator;->addMethods(Ljavassist/CtClass;[Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 165
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 134
    :cond_0
    new-instance p2, Ljavassist/CannotCompileException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must be public, non-native, and non-abstract."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private toCtClass(Ljava/lang/Class;)Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 171
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :cond_1
    const-string v1, "[]"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 179
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 183
    :goto_0
    iget-object v0, p0, Ljavassist/tools/rmi/StubGenerator;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v0, p1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p1

    return-object p1
.end method

.method private toCtClass([Ljava/lang/Class;)[Ljavassist/CtClass;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 187
    array-length v0, p1

    .line 188
    new-array v1, v0, [Ljavassist/CtClass;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 190
    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Ljavassist/tools/rmi/StubGenerator;->toCtClass(Ljava/lang/Class;)Ljavassist/CtClass;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public isProxyClass(Ljava/lang/String;)Z
    .locals 1

    .line 101
    iget-object v0, p0, Ljavassist/tools/rmi/StubGenerator;->proxyClasses:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public declared-synchronized makeProxyClass(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 116
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v1, p0, Ljavassist/tools/rmi/StubGenerator;->proxyClasses:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 118
    monitor-exit p0

    return p1

    .line 120
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljavassist/tools/rmi/StubGenerator;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v1, v0}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Ljavassist/tools/rmi/StubGenerator;->produceProxyClass(Ljavassist/CtClass;Ljava/lang/Class;)Ljavassist/CtClass;

    move-result-object p1

    .line 122
    iget-object v1, p0, Ljavassist/tools/rmi/StubGenerator;->proxyClasses:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-direct {p0, p1}, Ljavassist/tools/rmi/StubGenerator;->modifySuperclass(Ljavassist/CtClass;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 124
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onLoad(Ljavassist/ClassPool;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public start(Ljavassist/ClassPool;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 72
    iput-object p1, p0, Ljavassist/tools/rmi/StubGenerator;->classPool:Ljavassist/ClassPool;

    const-string v0, "javassist.tools.rmi.Sample"

    .line 73
    invoke-virtual {p1, v0}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    const-string v1, "forward"

    .line 74
    invoke-virtual {v0, v1}, Ljavassist/CtClass;->getDeclaredMethod(Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v1

    iput-object v1, p0, Ljavassist/tools/rmi/StubGenerator;->forwardMethod:Ljavassist/CtMethod;

    const-string v1, "forwardStatic"

    .line 75
    invoke-virtual {v0, v1}, Ljavassist/CtClass;->getDeclaredMethod(Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/rmi/StubGenerator;->forwardStaticMethod:Ljavassist/CtMethod;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "javassist.tools.rmi.ObjectImporter"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "int"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 77
    invoke-virtual {p1, v1}, Ljavassist/ClassPool;->get([Ljava/lang/String;)[Ljavassist/CtClass;

    move-result-object v1

    iput-object v1, p0, Ljavassist/tools/rmi/StubGenerator;->proxyConstructorParamTypes:[Ljavassist/CtClass;

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "java.io.Serializable"

    aput-object v1, v0, v3

    const-string v1, "javassist.tools.rmi.Proxy"

    aput-object v1, v0, v4

    .line 80
    invoke-virtual {p1, v0}, Ljavassist/ClassPool;->get([Ljava/lang/String;)[Ljavassist/CtClass;

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/rmi/StubGenerator;->interfacesForProxy:[Ljavassist/CtClass;

    new-array v0, v4, [Ljavassist/CtClass;

    const-string v1, "javassist.tools.rmi.RemoteException"

    .line 83
    invoke-virtual {p1, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p1

    aput-object p1, v0, v3

    iput-object v0, p0, Ljavassist/tools/rmi/StubGenerator;->exceptionForProxy:[Ljavassist/CtClass;

    return-void
.end method
