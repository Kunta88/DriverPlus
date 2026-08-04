.class public Ljavassist/expr/MethodCall;
.super Ljavassist/expr/Expr;
.source "MethodCall.java"


# direct methods
.method protected constructor <init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/expr/Expr;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    return-void
.end method

.method private getNameAndType(Ljavassist/bytecode/ConstPool;)I
    .locals 3

    .line 36
    iget v0, p0, Ljavassist/expr/MethodCall;->currentPos:I

    .line 37
    iget-object v1, p0, Ljavassist/expr/MethodCall;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v1

    .line 38
    iget-object v2, p0, Ljavassist/expr/MethodCall;->iterator:Ljavassist/bytecode/CodeIterator;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v0

    const/16 v2, 0xb9

    if-ne v1, v2, :cond_0

    .line 41
    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->getInterfaceMethodrefNameAndType(I)I

    move-result p1

    return p1

    .line 43
    :cond_0
    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->getMethodrefNameAndType(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 4

    .line 86
    invoke-virtual {p0}, Ljavassist/expr/MethodCall;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 87
    iget v1, p0, Ljavassist/expr/MethodCall;->currentPos:I

    .line 88
    iget-object v2, p0, Ljavassist/expr/MethodCall;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v2

    .line 89
    iget-object v3, p0, Ljavassist/expr/MethodCall;->iterator:Ljavassist/bytecode/CodeIterator;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    const/16 v3, 0xb9

    if-ne v2, v3, :cond_0

    .line 92
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getInterfaceMethodrefClassName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getMethodrefClassName(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_1

    .line 97
    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->toClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected getCtClass()Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Ljavassist/expr/MethodCall;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/expr/MethodCall;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 68
    invoke-super {p0}, Ljavassist/expr/Expr;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 59
    invoke-super {p0}, Ljavassist/expr/Expr;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getMethod()Ljavassist/CtMethod;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Ljavassist/expr/MethodCall;->getCtClass()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/expr/MethodCall;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavassist/expr/MethodCall;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavassist/CtClass;->getMethod(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v0

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 2

    .line 106
    invoke-virtual {p0}, Ljavassist/expr/MethodCall;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 107
    invoke-direct {p0, v0}, Ljavassist/expr/MethodCall;->getNameAndType(Ljavassist/bytecode/ConstPool;)I

    move-result v1

    .line 108
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getNameAndTypeName(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    .line 129
    invoke-virtual {p0}, Ljavassist/expr/MethodCall;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 130
    invoke-direct {p0, v0}, Ljavassist/expr/MethodCall;->getNameAndType(Ljavassist/bytecode/ConstPool;)I

    move-result v1

    .line 131
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getNameAndTypeDescriptor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSuper()Z
    .locals 2

    .line 149
    iget-object v0, p0, Ljavassist/expr/MethodCall;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v1, p0, Ljavassist/expr/MethodCall;->currentPos:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    const/16 v1, 0xb7

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljavassist/expr/MethodCall;->where()Ljavassist/CtBehavior;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtBehavior;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/expr/MethodCall;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mayThrow()[Ljavassist/CtClass;
    .locals 1

    .line 141
    invoke-super {p0}, Ljavassist/expr/Expr;->mayThrow()[Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/String;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 180
    iget-object v2, v1, Ljavassist/expr/MethodCall;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v2}, Ljavassist/CtClass;->getClassFile()Ljavassist/bytecode/ClassFile;

    .line 181
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/MethodCall;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    .line 182
    iget v3, v1, Ljavassist/expr/MethodCall;->currentPos:I

    .line 183
    iget-object v4, v1, Ljavassist/expr/MethodCall;->iterator:Ljavassist/bytecode/CodeIterator;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v4

    .line 187
    iget-object v5, v1, Ljavassist/expr/MethodCall;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v5, v3}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v5

    const/16 v6, 0xb7

    const/16 v7, 0xb8

    const/16 v8, 0xb9

    if-ne v5, v8, :cond_0

    const/4 v8, 0x5

    .line 190
    invoke-virtual {v2, v4}, Ljavassist/bytecode/ConstPool;->getInterfaceMethodrefClassName(I)Ljava/lang/String;

    move-result-object v9

    .line 191
    invoke-virtual {v2, v4}, Ljavassist/bytecode/ConstPool;->getInterfaceMethodrefName(I)Ljava/lang/String;

    move-result-object v10

    .line 192
    invoke-virtual {v2, v4}, Ljavassist/bytecode/ConstPool;->getInterfaceMethodrefType(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v4, v9

    move-object v15, v10

    goto :goto_2

    :cond_0
    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_2

    const/16 v8, 0xb6

    if-ne v5, v8, :cond_1

    goto :goto_1

    .line 202
    :cond_1
    new-instance v0, Ljavassist/CannotCompileException;

    const-string v2, "not method invocation"

    invoke-direct {v0, v2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    const/4 v8, 0x3

    .line 197
    invoke-virtual {v2, v4}, Ljavassist/bytecode/ConstPool;->getMethodrefClassName(I)Ljava/lang/String;

    move-result-object v9

    .line 198
    invoke-virtual {v2, v4}, Ljavassist/bytecode/ConstPool;->getMethodrefName(I)Ljava/lang/String;

    move-result-object v10

    .line 199
    invoke-virtual {v2, v4}, Ljavassist/bytecode/ConstPool;->getMethodrefType(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 204
    :goto_2
    new-instance v14, Ljavassist/compiler/Javac;

    iget-object v9, v1, Ljavassist/expr/MethodCall;->thisClass:Ljavassist/CtClass;

    invoke-direct {v14, v9}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    .line 205
    iget-object v9, v1, Ljavassist/expr/MethodCall;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v9}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v9

    .line 206
    iget-object v10, v1, Ljavassist/expr/MethodCall;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v10}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v13

    .line 208
    :try_start_0
    invoke-static {v2, v9}, Ljavassist/bytecode/Descriptor;->getParameterTypes(Ljava/lang/String;Ljavassist/ClassPool;)[Ljavassist/CtClass;

    move-result-object v12

    .line 209
    invoke-static {v2, v9}, Ljavassist/bytecode/Descriptor;->getReturnType(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object v11

    .line 210
    invoke-virtual {v13}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v10

    const/16 v16, 0x1

    .line 211
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/MethodCall;->withinStatic()Z

    move-result v17

    move-object v9, v14

    move/from16 v18, v10

    move-object v10, v4

    move-object v6, v11

    move-object v11, v12

    move-object/from16 v19, v12

    move/from16 v12, v16

    move-object/from16 v20, v13

    move/from16 v13, v18

    move-object v7, v14

    move/from16 v14, v17

    invoke-virtual/range {v9 .. v14}, Ljavassist/compiler/Javac;->recordParams(Ljava/lang/String;[Ljavassist/CtClass;ZIZ)I

    const/4 v9, 0x1

    .line 213
    invoke-virtual {v7, v6, v9}, Ljavassist/compiler/Javac;->recordReturnType(Ljavassist/CtClass;Z)I

    move-result v10

    const/16 v11, 0xb8

    if-ne v5, v11, :cond_3

    .line 215
    invoke-virtual {v7, v4, v15}, Ljavassist/compiler/Javac;->recordStaticProceed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_3
    const-string v11, "$0"

    const/16 v12, 0xb7

    if-ne v5, v12, :cond_4

    .line 217
    :try_start_1
    invoke-virtual {v7, v11, v4, v15, v2}, Ljavassist/compiler/Javac;->recordSpecialProceed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 220
    :cond_4
    invoke-virtual {v7, v11, v15}, Ljavassist/compiler/Javac;->recordProceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :goto_3
    invoke-static {v6, v0}, Ljavassist/expr/MethodCall;->checkResultValue(Ljavassist/CtClass;Ljava/lang/String;)Z

    .line 226
    invoke-virtual {v7}, Ljavassist/compiler/Javac;->getBytecode()Ljavassist/bytecode/Bytecode;

    move-result-object v2

    const/16 v4, 0xb8

    if-ne v5, v4, :cond_5

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    :goto_4
    move/from16 v5, v18

    move-object/from16 v4, v19

    .line 227
    invoke-static {v4, v9, v5, v2}, Ljavassist/expr/MethodCall;->storeStack([Ljavassist/CtClass;ZILjavassist/bytecode/Bytecode;)V

    move-object/from16 v4, v20

    .line 228
    invoke-virtual {v7, v4, v3}, Ljavassist/compiler/Javac;->recordLocalVariables(Ljavassist/bytecode/CodeAttribute;I)Z

    .line 230
    sget-object v4, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    if-eq v6, v4, :cond_6

    .line 231
    invoke-virtual {v2, v6}, Ljavassist/bytecode/Bytecode;->addConstZero(Ljavassist/CtClass;)V

    .line 232
    invoke-virtual {v2, v10, v6}, Ljavassist/bytecode/Bytecode;->addStore(ILjavassist/CtClass;)I

    .line 235
    :cond_6
    invoke-virtual {v7, v0}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    .line 236
    sget-object v0, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    if-eq v6, v0, :cond_7

    .line 237
    invoke-virtual {v2, v10, v6}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    .line 239
    :cond_7
    invoke-virtual {v1, v3, v2, v8}, Ljavassist/expr/MethodCall;->replace0(ILjavassist/bytecode/Bytecode;I)V
    :try_end_1
    .catch Ljavassist/compiler/CompileError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 244
    :catch_0
    new-instance v0, Ljavassist/CannotCompileException;

    const-string v2, "broken method"

    invoke-direct {v0, v2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    .line 242
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-direct {v2, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v2

    :catch_2
    move-exception v0

    .line 241
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-direct {v2, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    goto :goto_6

    :goto_5
    throw v2

    :goto_6
    goto :goto_5
.end method

.method public where()Ljavassist/CtBehavior;
    .locals 1

    .line 50
    invoke-super {p0}, Ljavassist/expr/Expr;->where()Ljavassist/CtBehavior;

    move-result-object v0

    return-object v0
.end method
