.class public final Ljavassist/CtConstructor;
.super Ljavassist/CtBehavior;
.source "CtConstructor.java"


# direct methods
.method public constructor <init>(Ljavassist/CtConstructor;Ljavassist/CtClass;Ljavassist/ClassMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 101
    check-cast v0, Ljavassist/bytecode/MethodInfo;

    invoke-direct {p0, v0, p2}, Ljavassist/CtConstructor;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    const/4 p2, 0x1

    .line 102
    invoke-virtual {p0, p1, p2, p3}, Ljavassist/CtConstructor;->copy(Ljavassist/CtBehavior;ZLjavassist/ClassMap;)V

    return-void
.end method

.method protected constructor <init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V
    .locals 0

    .line 38
    invoke-direct {p0, p2, p1}, Ljavassist/CtBehavior;-><init>(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    return-void
.end method

.method public constructor <init>([Ljavassist/CtClass;Ljavassist/CtClass;)V
    .locals 2

    const/4 v0, 0x0

    .line 57
    check-cast v0, Ljavassist/bytecode/MethodInfo;

    invoke-direct {p0, v0, p2}, Ljavassist/CtConstructor;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    .line 58
    invoke-virtual {p2}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object p2

    invoke-virtual {p2}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object p2

    .line 59
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->ofConstructor([Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p1

    .line 60
    new-instance v0, Ljavassist/bytecode/MethodInfo;

    const-string v1, "<init>"

    invoke-direct {v0, p2, v1, p1}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljavassist/CtConstructor;->methodInfo:Ljavassist/bytecode/MethodInfo;

    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Ljavassist/CtConstructor;->setModifiers(I)V

    return-void
.end method

.method private getSuperclassName()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Ljavassist/CtConstructor;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getSuperclass()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static removeConsCall(Ljavassist/bytecode/CodeAttribute;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 375
    invoke-virtual {p0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v0

    .line 377
    :try_start_0
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->skipConstructor()I

    move-result v1

    if-ltz v1, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 379
    invoke-virtual {v0, v2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v2

    .line 380
    invoke-virtual {p0}, Ljavassist/bytecode/CodeAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljavassist/bytecode/ConstPool;->getMethodrefType(I)Ljava/lang/String;

    move-result-object p0

    .line 381
    invoke-static {p0}, Ljavassist/bytecode/Descriptor;->numOfParameters(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    sub-int/2addr v2, v3

    .line 383
    invoke-virtual {v0, v1, v2, v4}, Ljavassist/bytecode/CodeIterator;->insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;

    move-result-object v1

    iget v1, v1, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    :cond_0
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x57

    .line 385
    invoke-virtual {v0, v3, v1}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 386
    invoke-virtual {v0, v4, v2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    add-int/lit8 v1, v2, 0x1

    .line 387
    invoke-virtual {v0, v4, v1}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 388
    new-instance v1, Ljavassist/bytecode/Descriptor$Iterator;

    invoke-direct {v1, p0}, Ljavassist/bytecode/Descriptor$Iterator;-><init>(Ljava/lang/String;)V

    .line 390
    :goto_0
    invoke-virtual {v1}, Ljavassist/bytecode/Descriptor$Iterator;->next()I

    .line 391
    invoke-virtual {v1}, Ljavassist/bytecode/Descriptor$Iterator;->isParameter()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 392
    invoke-virtual {v1}, Ljavassist/bytecode/Descriptor$Iterator;->is2byte()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x58

    goto :goto_1

    :cond_1
    const/16 p0, 0x57

    :goto_1
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, p0, v2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    .line 400
    new-instance v0, Ljavassist/CannotCompileException;

    invoke-direct {v0, p0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public callsSuper()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Ljavassist/CtConstructor;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v0

    .line 190
    :try_start_0
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->skipSuperConstructor()I

    move-result v0
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .line 194
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    return v1
.end method

.method public getLongName()Ljava/lang/String;
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/CtConstructor;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/CtConstructor;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljavassist/CtConstructor;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavassist/bytecode/Descriptor;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ".<clinit>()"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Ljavassist/CtConstructor;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->isStaticInitializer()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "<clinit>"

    return-object v0

    .line 141
    :cond_0
    iget-object v0, p0, Ljavassist/CtConstructor;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStartPosOfBody(Ljavassist/bytecode/CodeAttribute;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 284
    invoke-virtual {p1}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object p1

    .line 286
    :try_start_0
    invoke-virtual {p1}, Ljavassist/bytecode/CodeIterator;->skipConstructor()I

    .line 287
    invoke-virtual {p1}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result p1
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 290
    new-instance v0, Ljavassist/CannotCompileException;

    invoke-direct {v0, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public insertBeforeBody(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Ljavassist/CtConstructor;->declaringClass:Ljavassist/CtClass;

    .line 249
    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 250
    invoke-virtual {p0}, Ljavassist/CtConstructor;->isClassInitializer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    iget-object v1, p0, Ljavassist/CtConstructor;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v1

    .line 254
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v2

    .line 255
    new-instance v3, Ljavassist/bytecode/Bytecode;

    iget-object v4, p0, Ljavassist/CtConstructor;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v4

    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v5

    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 257
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v4

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->setStackDepth(I)V

    .line 258
    new-instance v4, Ljavassist/compiler/Javac;

    invoke-direct {v4, v3, v0}, Ljavassist/compiler/Javac;-><init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;)V

    .line 260
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtConstructor;->getParameterTypes()[Ljavassist/CtClass;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljavassist/compiler/Javac;->recordParams([Ljavassist/CtClass;Z)I

    .line 261
    invoke-virtual {v4, p1}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v3}, Ljavassist/bytecode/Bytecode;->getMaxStack()I

    move-result p1

    invoke-virtual {v1, p1}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    .line 263
    invoke-virtual {v3}, Ljavassist/bytecode/Bytecode;->getMaxLocals()I

    move-result p1

    invoke-virtual {v1, p1}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V

    .line 264
    invoke-virtual {v2}, Ljavassist/bytecode/CodeIterator;->skipConstructor()I

    .line 265
    invoke-virtual {v3}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljavassist/bytecode/CodeIterator;->insertEx([B)I

    move-result p1

    .line 266
    invoke-virtual {v3}, Ljavassist/bytecode/Bytecode;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Ljavassist/bytecode/CodeIterator;->insert(Ljavassist/bytecode/ExceptionTable;I)V

    .line 267
    iget-object p1, p0, Ljavassist/CtConstructor;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v1

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 276
    new-instance v0, Ljavassist/CannotCompileException;

    invoke-direct {v0, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 273
    new-instance v0, Ljavassist/CannotCompileException;

    invoke-direct {v0, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v0

    :catch_2
    move-exception p1

    .line 270
    new-instance v0, Ljavassist/CannotCompileException;

    invoke-direct {v0, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v0

    .line 251
    :cond_0
    new-instance p1, Ljavassist/CannotCompileException;

    const-string v0, "class initializer"

    invoke-direct {p1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isClassInitializer()Z
    .locals 1

    .line 116
    iget-object v0, p0, Ljavassist/CtConstructor;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->isStaticInitializer()Z

    move-result v0

    return v0
.end method

.method public isConstructor()Z
    .locals 1

    .line 109
    iget-object v0, p0, Ljavassist/CtConstructor;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->isConstructor()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 8

    .line 152
    invoke-virtual {p0}, Ljavassist/CtConstructor;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 157
    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    .line 158
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v0

    .line 161
    :try_start_0
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v3

    invoke-virtual {v0, v3}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0xb1

    if-eq v3, v5, :cond_1

    const/16 v6, 0x2a

    if-ne v3, v6, :cond_2

    .line 162
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v3

    invoke-virtual {v0, v3}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v6

    const/16 v7, 0xb7

    if-ne v6, v7, :cond_2

    invoke-direct {p0}, Ljavassist/CtConstructor;->getSuperclassName()Ljava/lang/String;

    move-result-object v6

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljavassist/bytecode/ConstPool;->isConstructor(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const-string v6, "()V"

    invoke-virtual {v2, v3}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v2

    invoke-virtual {v0, v2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :catch_0
    :cond_2
    return v1
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    if-nez p1, :cond_1

    .line 212
    invoke-virtual {p0}, Ljavassist/CtConstructor;->isClassInitializer()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ";"

    goto :goto_0

    :cond_0
    const-string p1, "super();"

    .line 217
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Ljavassist/CtBehavior;->setBody(Ljava/lang/String;)V

    return-void
.end method

.method public setBody(Ljavassist/CtConstructor;Ljavassist/ClassMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 235
    iget-object v0, p1, Ljavassist/CtConstructor;->declaringClass:Ljavassist/CtClass;

    iget-object p1, p1, Ljavassist/CtConstructor;->methodInfo:Ljavassist/bytecode/MethodInfo;

    iget-object v1, p0, Ljavassist/CtConstructor;->declaringClass:Ljavassist/CtClass;

    iget-object v2, p0, Ljavassist/CtConstructor;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-static {v0, p1, v1, v2, p2}, Ljavassist/CtConstructor;->setBody0(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/ClassMap;)V

    return-void
.end method

.method public toMethod(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 317
    invoke-virtual {p0, p1, p2, v0}, Ljavassist/CtConstructor;->toMethod(Ljava/lang/String;Ljavassist/CtClass;Ljavassist/ClassMap;)Ljavassist/CtMethod;

    move-result-object p1

    return-object p1
.end method

.method public toMethod(Ljava/lang/String;Ljavassist/CtClass;Ljavassist/ClassMap;)Ljavassist/CtMethod;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 351
    new-instance v0, Ljavassist/CtMethod;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Ljavassist/CtMethod;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    const/4 v1, 0x0

    .line 352
    invoke-virtual {v0, p0, v1, p3}, Ljavassist/CtMethod;->copy(Ljavassist/CtBehavior;ZLjavassist/ClassMap;)V

    .line 353
    invoke-virtual {p0}, Ljavassist/CtConstructor;->isConstructor()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 354
    invoke-virtual {v0}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object p3

    .line 355
    invoke-virtual {p3}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 357
    invoke-static {p3}, Ljavassist/CtConstructor;->removeConsCall(Ljavassist/bytecode/CodeAttribute;)V

    .line 359
    :try_start_0
    iget-object p3, p0, Ljavassist/CtConstructor;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p2}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v1

    invoke-virtual {p2}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object p2

    invoke-virtual {p3, v1, p2}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 363
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 368
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Ljavassist/CtMethod;->setName(Ljava/lang/String;)V

    return-object v0
.end method
