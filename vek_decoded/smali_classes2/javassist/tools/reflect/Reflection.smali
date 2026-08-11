.class public Ljavassist/tools/reflect/Reflection;
.super Ljava/lang/Object;
.source "Reflection.java"

# interfaces
.implements Ljavassist/Translator;


# static fields
.field static final classMetaobjectClassName:Ljava/lang/String; = "javassist.tools.reflect.ClassMetaobject"

.field static final classobjectAccessor:Ljava/lang/String; = "_getClass"

.field static final classobjectField:Ljava/lang/String; = "_classobject"

.field static final metaobjectClassName:Ljava/lang/String; = "javassist.tools.reflect.Metaobject"

.field static final metaobjectField:Ljava/lang/String; = "_metaobject"

.field static final metaobjectGetter:Ljava/lang/String; = "_getMetaobject"

.field static final metaobjectSetter:Ljava/lang/String; = "_setMetaobject"

.field static final readPrefix:Ljava/lang/String; = "_r_"

.field static final writePrefix:Ljava/lang/String; = "_w_"


# instance fields
.field protected classPool:Ljavassist/ClassPool;

.field protected converter:Ljavassist/CodeConverter;

.field protected readParam:[Ljavassist/CtClass;

.field protected trapMethod:Ljavassist/CtMethod;

.field protected trapRead:Ljavassist/CtMethod;

.field protected trapStaticMethod:Ljavassist/CtMethod;

.field protected trapWrite:Ljavassist/CtMethod;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    .line 102
    new-instance v0, Ljavassist/CodeConverter;

    invoke-direct {v0}, Ljavassist/CodeConverter;-><init>()V

    iput-object v0, p0, Ljavassist/tools/reflect/Reflection;->converter:Ljavassist/CodeConverter;

    return-void
.end method

.method private findOriginal(Ljavassist/CtMethod;Z)Ljavassist/CtMethod;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    if-eqz p2, :cond_0

    return-object p1

    .line 349
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtMethod;->getName()Ljava/lang/String;

    move-result-object p2

    .line 350
    invoke-virtual {p1}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtClass;->getDeclaredMethods()[Ljavassist/CtMethod;

    move-result-object v0

    const/4 v1, 0x0

    .line 351
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 352
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljavassist/CtMethod;->getName()Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-virtual {v2, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "_m_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljavassist/CtMethod;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljavassist/CtMethod;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 356
    aget-object p1, v0, v1

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private isExcluded(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "_m_"

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "_getClass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "_setMetaobject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "_getMetaobject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "_r_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "_w_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private modifyClassfile(Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/CtClass;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    const-string v0, "Reflective"

    .line 249
    invoke-virtual {p1, v0}, Ljavassist/CtClass;->getAttribute(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    new-array v1, v2, [B

    .line 252
    invoke-virtual {p1, v0, v1}, Ljavassist/CtClass;->setAttribute(Ljava/lang/String;[B)V

    .line 254
    iget-object v0, p0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    const-string v1, "javassist.tools.reflect.Metalevel"

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    .line 255
    invoke-virtual {p1, v0}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_1

    .line 257
    invoke-virtual {p1, v0}, Ljavassist/CtClass;->addInterface(Ljavassist/CtClass;)V

    .line 259
    :cond_1
    invoke-direct {p0, p1, v1}, Ljavassist/tools/reflect/Reflection;->processMethods(Ljavassist/CtClass;Z)V

    .line 260
    invoke-direct {p0, p1}, Ljavassist/tools/reflect/Reflection;->processFields(Ljavassist/CtClass;)V

    if-eqz v1, :cond_2

    .line 264
    new-instance v0, Ljavassist/CtField;

    iget-object v1, p0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    const-string v4, "javassist.tools.reflect.Metaobject"

    invoke-virtual {v1, v4}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    const-string v4, "_metaobject"

    invoke-direct {v0, v1, v4, p1}, Ljavassist/CtField;-><init>(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)V

    const/4 v1, 0x4

    .line 266
    invoke-virtual {v0, v1}, Ljavassist/CtField;->setModifiers(I)V

    .line 267
    invoke-static {p2}, Ljavassist/CtField$Initializer;->byNewWithParams(Ljavassist/CtClass;)Ljavassist/CtField$Initializer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljavassist/CtClass;->addField(Ljavassist/CtField;Ljavassist/CtField$Initializer;)V

    const-string p2, "_getMetaobject"

    .line 269
    invoke-static {p2, v0}, Ljavassist/CtNewMethod;->getter(Ljava/lang/String;Ljavassist/CtField;)Ljavassist/CtMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavassist/CtClass;->addMethod(Ljavassist/CtMethod;)V

    const-string p2, "_setMetaobject"

    .line 270
    invoke-static {p2, v0}, Ljavassist/CtNewMethod;->setter(Ljava/lang/String;Ljavassist/CtField;)Ljavassist/CtMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavassist/CtClass;->addMethod(Ljavassist/CtMethod;)V

    .line 273
    :cond_2
    new-instance p2, Ljavassist/CtField;

    iget-object v0, p0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    const-string v1, "javassist.tools.reflect.ClassMetaobject"

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    const-string v1, "_classobject"

    invoke-direct {p2, v0, v1, p1}, Ljavassist/CtField;-><init>(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)V

    const/16 v0, 0xa

    .line 275
    invoke-virtual {p2, v0}, Ljavassist/CtField;->setModifiers(I)V

    new-array v0, v3, [Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p3, v0}, Ljavassist/CtField$Initializer;->byNew(Ljavassist/CtClass;[Ljava/lang/String;)Ljavassist/CtField$Initializer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljavassist/CtClass;->addField(Ljavassist/CtField;Ljavassist/CtField$Initializer;)V

    const-string p3, "_getClass"

    .line 279
    invoke-static {p3, p2}, Ljavassist/CtNewMethod;->getter(Ljava/lang/String;Ljavassist/CtField;)Ljavassist/CtMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavassist/CtClass;->addMethod(Ljavassist/CtMethod;)V

    return v3
.end method

.method private processFields(Ljavassist/CtClass;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 365
    invoke-virtual {p1}, Ljavassist/CtClass;->getDeclaredFields()[Ljavassist/CtField;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 366
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 367
    aget-object v3, v0, v2

    .line 368
    invoke-virtual {v3}, Ljavassist/CtField;->getModifiers()I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_0

    and-int/lit8 v5, v4, 0x10

    if-nez v5, :cond_0

    or-int/lit8 v4, v4, 0x8

    .line 371
    invoke-virtual {v3}, Ljavassist/CtField;->getName()Ljava/lang/String;

    move-result-object v5

    .line 372
    invoke-virtual {v3}, Ljavassist/CtField;->getType()Ljavassist/CtClass;

    move-result-object v3

    .line 373
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_r_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Ljavassist/tools/reflect/Reflection;->readParam:[Ljavassist/CtClass;

    const/4 v9, 0x0

    iget-object v10, p0, Ljavassist/tools/reflect/Reflection;->trapRead:Ljavassist/CtMethod;

    invoke-static {v5}, Ljavassist/CtMethod$ConstParameter;->string(Ljava/lang/String;)Ljavassist/CtMethod$ConstParameter;

    move-result-object v11

    move-object v6, v3

    move-object v12, p1

    invoke-static/range {v6 .. v12}, Ljavassist/CtNewMethod;->wrapped(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;Ljavassist/CtClass;)Ljavassist/CtMethod;

    move-result-object v6

    .line 378
    invoke-virtual {v6, v4}, Ljavassist/CtMethod;->setModifiers(I)V

    .line 379
    invoke-virtual {p1, v6}, Ljavassist/CtClass;->addMethod(Ljavassist/CtMethod;)V

    const/4 v6, 0x2

    new-array v9, v6, [Ljavassist/CtClass;

    .line 381
    iget-object v6, p0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    const-string v7, "java.lang.Object"

    invoke-virtual {v6, v7}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v6

    aput-object v6, v9, v1

    const/4 v6, 0x1

    aput-object v3, v9, v6

    .line 383
    sget-object v7, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_w_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    iget-object v11, p0, Ljavassist/tools/reflect/Reflection;->trapWrite:Ljavassist/CtMethod;

    invoke-static {v5}, Ljavassist/CtMethod$ConstParameter;->string(Ljava/lang/String;)Ljavassist/CtMethod$ConstParameter;

    move-result-object v12

    move-object v13, p1

    invoke-static/range {v7 .. v13}, Ljavassist/CtNewMethod;->wrapped(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;Ljavassist/CtClass;)Ljavassist/CtMethod;

    move-result-object v3

    .line 387
    invoke-virtual {v3, v4}, Ljavassist/CtMethod;->setModifiers(I)V

    .line 388
    invoke-virtual {p1, v3}, Ljavassist/CtClass;->addMethod(Ljavassist/CtMethod;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private processMethods(Ljavassist/CtClass;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 286
    invoke-virtual {p1}, Ljavassist/CtClass;->getMethods()[Ljavassist/CtMethod;

    move-result-object v0

    const/4 v1, 0x0

    .line 287
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 288
    aget-object v5, v0, v1

    .line 289
    invoke-virtual {v5}, Ljavassist/CtMethod;->getModifiers()I

    move-result v3

    .line 290
    invoke-static {v3}, Ljavassist/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v3}, Ljavassist/Modifier;->isAbstract(I)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, p0

    move-object v4, p1

    move v6, v1

    move v7, p2

    .line 291
    invoke-direct/range {v2 .. v7}, Ljavassist/tools/reflect/Reflection;->processMethods0(ILjavassist/CtClass;Ljavassist/CtMethod;IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private processMethods0(ILjavassist/CtClass;Ljavassist/CtMethod;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 300
    invoke-virtual {p3}, Ljavassist/CtMethod;->getName()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-direct {p0, v1}, Ljavassist/tools/reflect/Reflection;->isExcluded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-virtual {p3}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    if-ne v0, p2, :cond_3

    .line 307
    invoke-static {p1}, Ljavassist/Modifier;->isNative(I)Z

    move-result p5

    if-eqz p5, :cond_1

    return-void

    .line 311
    :cond_1
    invoke-static {p1}, Ljavassist/Modifier;->isFinal(I)Z

    move-result p5

    if-eqz p5, :cond_2

    and-int/lit8 p1, p1, -0x11

    .line 313
    invoke-virtual {p3, p1}, Ljavassist/CtMethod;->setModifiers(I)V

    :cond_2
    move-object p5, p3

    goto :goto_0

    .line 317
    :cond_3
    invoke-static {p1}, Ljavassist/Modifier;->isFinal(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    and-int/lit16 p1, p1, -0x101

    .line 321
    invoke-direct {p0, p3, p5}, Ljavassist/tools/reflect/Reflection;->findOriginal(Ljavassist/CtMethod;Z)Ljavassist/CtMethod;

    move-result-object p5

    invoke-static {p5, p2}, Ljavassist/CtNewMethod;->delegator(Ljavassist/CtMethod;Ljavassist/CtClass;)Ljavassist/CtMethod;

    move-result-object p5

    .line 322
    invoke-virtual {p5, p1}, Ljavassist/CtMethod;->setModifiers(I)V

    .line 323
    invoke-virtual {p2, p5}, Ljavassist/CtClass;->addMethod(Ljavassist/CtMethod;)V

    .line 326
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_m_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljavassist/CtMethod;->setName(Ljava/lang/String;)V

    .line 329
    invoke-static {p1}, Ljavassist/Modifier;->isStatic(I)Z

    move-result p5

    if-eqz p5, :cond_5

    .line 330
    iget-object p5, p0, Ljavassist/tools/reflect/Reflection;->trapStaticMethod:Ljavassist/CtMethod;

    goto :goto_1

    .line 332
    :cond_5
    iget-object p5, p0, Ljavassist/tools/reflect/Reflection;->trapMethod:Ljavassist/CtMethod;

    :goto_1
    move-object v4, p5

    .line 334
    invoke-virtual {p3}, Ljavassist/CtMethod;->getReturnType()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {p3}, Ljavassist/CtMethod;->getParameterTypes()[Ljavassist/CtClass;

    move-result-object v2

    invoke-virtual {p3}, Ljavassist/CtMethod;->getExceptionTypes()[Ljavassist/CtClass;

    move-result-object v3

    invoke-static {p4}, Ljavassist/CtMethod$ConstParameter;->integer(I)Ljavassist/CtMethod$ConstParameter;

    move-result-object v5

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Ljavassist/CtNewMethod;->wrapped(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;Ljavassist/CtClass;)Ljavassist/CtMethod;

    move-result-object p3

    .line 339
    invoke-virtual {p3, p1}, Ljavassist/CtMethod;->setModifiers(I)V

    .line 340
    invoke-virtual {p2, p3}, Ljavassist/CtClass;->addMethod(Ljavassist/CtMethod;)V

    return-void
.end method

.method private registerReflectiveClass(Ljavassist/CtClass;)V
    .locals 7

    .line 233
    invoke-virtual {p1}, Ljavassist/CtClass;->getDeclaredFields()[Ljavassist/CtField;

    move-result-object v0

    const/4 v1, 0x0

    .line 234
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 235
    aget-object v2, v0, v1

    .line 236
    invoke-virtual {v2}, Ljavassist/CtField;->getModifiers()I

    move-result v3

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_0

    .line 238
    invoke-virtual {v2}, Ljavassist/CtField;->getName()Ljava/lang/String;

    move-result-object v3

    .line 239
    iget-object v4, p0, Ljavassist/tools/reflect/Reflection;->converter:Ljavassist/CodeConverter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_r_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, p1, v5}, Ljavassist/CodeConverter;->replaceFieldRead(Ljavassist/CtField;Ljavassist/CtClass;Ljava/lang/String;)V

    .line 240
    iget-object v4, p0, Ljavassist/tools/reflect/Reflection;->converter:Ljavassist/CodeConverter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_w_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, p1, v3}, Ljavassist/CodeConverter;->replaceFieldWrite(Ljavassist/CtField;Ljavassist/CtClass;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public makeReflective(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 183
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Ljavassist/tools/reflect/Reflection;->makeReflective(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public makeReflective(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v0, p1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p1

    iget-object v0, p0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v0, p2}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p2

    iget-object v0, p0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v0, p3}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Ljavassist/tools/reflect/Reflection;->makeReflective(Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result p1

    return p1
.end method

.method public makeReflective(Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/CtClass;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/tools/reflect/CannotReflectException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 210
    invoke-virtual {p1}, Ljavassist/CtClass;->isInterface()Z

    move-result v0

    if-nez v0, :cond_2

    .line 214
    iget-object v0, p0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    const-string v1, "javassist.tools.reflect.ClassMetaobject"

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/CtClass;->subclassOf(Ljavassist/CtClass;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    iget-object v0, p0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    const-string v1, "javassist.tools.reflect.Metaobject"

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/CtClass;->subclassOf(Ljavassist/CtClass;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-direct {p0, p1}, Ljavassist/tools/reflect/Reflection;->registerReflectiveClass(Ljavassist/CtClass;)V

    .line 225
    invoke-direct {p0, p1, p2, p3}, Ljavassist/tools/reflect/Reflection;->modifyClassfile(Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result p1

    return p1

    .line 220
    :cond_0
    new-instance p2, Ljavassist/tools/reflect/CannotReflectException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot reflect a subclass of Metaobject: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavassist/tools/reflect/CannotReflectException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 215
    :cond_1
    new-instance p2, Ljavassist/tools/reflect/CannotReflectException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot reflect a subclass of ClassMetaobject: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavassist/tools/reflect/CannotReflectException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 211
    :cond_2
    new-instance p2, Ljavassist/tools/reflect/CannotReflectException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot reflect an interface: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavassist/tools/reflect/CannotReflectException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public onLoad(Ljavassist/ClassPool;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 136
    invoke-virtual {p1, p2}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p1

    .line 137
    iget-object p2, p0, Ljavassist/tools/reflect/Reflection;->converter:Ljavassist/CodeConverter;

    invoke-virtual {p1, p2}, Ljavassist/CtClass;->instrument(Ljavassist/CodeConverter;)V

    return-void
.end method

.method public rebuildClassFile(Ljavassist/bytecode/ClassFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 394
    sget v0, Ljavassist/bytecode/ClassFile;->MAJOR_VERSION:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    return-void

    .line 397
    :cond_0
    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 398
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/MethodInfo;

    .line 400
    iget-object v1, p0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v0, v1}, Ljavassist/bytecode/MethodInfo;->rebuildStackMap(Ljavassist/ClassPool;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public start(Ljavassist/ClassPool;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    const-string v0, "javassist.tools.reflect.Sample is not found or broken."

    .line 109
    iput-object p1, p0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    :try_start_0
    const-string v1, "javassist.tools.reflect.Sample"

    .line 113
    invoke-virtual {p1, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljavassist/CtClass;->getClassFile()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavassist/tools/reflect/Reflection;->rebuildClassFile(Ljavassist/bytecode/ClassFile;)V

    const-string v1, "trap"

    .line 115
    invoke-virtual {p1, v1}, Ljavassist/CtClass;->getDeclaredMethod(Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v1

    iput-object v1, p0, Ljavassist/tools/reflect/Reflection;->trapMethod:Ljavassist/CtMethod;

    const-string v1, "trapStatic"

    .line 116
    invoke-virtual {p1, v1}, Ljavassist/CtClass;->getDeclaredMethod(Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v1

    iput-object v1, p0, Ljavassist/tools/reflect/Reflection;->trapStaticMethod:Ljavassist/CtMethod;

    const-string v1, "trapRead"

    .line 117
    invoke-virtual {p1, v1}, Ljavassist/CtClass;->getDeclaredMethod(Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v1

    iput-object v1, p0, Ljavassist/tools/reflect/Reflection;->trapRead:Ljavassist/CtMethod;

    const-string v1, "trapWrite"

    .line 118
    invoke-virtual {p1, v1}, Ljavassist/CtClass;->getDeclaredMethod(Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object p1

    iput-object p1, p0, Ljavassist/tools/reflect/Reflection;->trapWrite:Ljavassist/CtMethod;

    const/4 p1, 0x1

    new-array p1, p1, [Ljavassist/CtClass;

    const/4 v1, 0x0

    .line 119
    iget-object v2, p0, Ljavassist/tools/reflect/Reflection;->classPool:Ljavassist/ClassPool;

    const-string v3, "java.lang.Object"

    invoke-virtual {v2, v3}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v2

    aput-object v2, p1, v1

    iput-object p1, p0, Ljavassist/tools/reflect/Reflection;->readParam:[Ljavassist/CtClass;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 125
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :catch_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
