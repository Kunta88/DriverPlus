.class public Ljavassist/expr/NewExpr;
.super Ljavassist/expr/Expr;
.source "NewExpr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/expr/NewExpr$ProceedForNew;
    }
.end annotation


# instance fields
.field newPos:I

.field newTypeName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljava/lang/String;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/expr/Expr;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 37
    iput-object p5, p0, Ljavassist/expr/NewExpr;->newTypeName:Ljava/lang/String;

    .line 38
    iput p6, p0, Ljavassist/expr/NewExpr;->newPos:I

    return-void
.end method

.method private canReplace()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Ljavassist/expr/NewExpr;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v1, p0, Ljavassist/expr/NewExpr;->newPos:I

    const/4 v2, 0x3

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    const/4 v1, 0x4

    const/16 v3, 0x59

    if-ne v0, v3, :cond_0

    return v1

    :cond_0
    const/16 v3, 0x5a

    if-ne v0, v3, :cond_1

    .line 145
    iget-object v0, p0, Ljavassist/expr/NewExpr;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v3, p0, Ljavassist/expr/NewExpr;->newPos:I

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_1

    const/4 v0, 0x5

    return v0

    :cond_1
    return v2
.end method

.method private getCtClass()Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Ljavassist/expr/NewExpr;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    iget-object v1, p0, Ljavassist/expr/NewExpr;->newTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Ljavassist/expr/NewExpr;->newTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getConstructor()Ljavassist/CtConstructor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Ljavassist/expr/NewExpr;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 115
    iget-object v1, p0, Ljavassist/expr/NewExpr;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v2, p0, Ljavassist/expr/NewExpr;->currentPos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    .line 116
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getMethodrefType(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-direct {p0}, Ljavassist/expr/NewExpr;->getCtClass()Ljavassist/CtClass;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavassist/CtClass;->getConstructor(Ljava/lang/String;)Ljavassist/CtConstructor;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 77
    invoke-super {p0}, Ljavassist/expr/Expr;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 68
    invoke-super {p0}, Ljavassist/expr/Expr;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 3

    .line 105
    invoke-virtual {p0}, Ljavassist/expr/NewExpr;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 106
    iget-object v1, p0, Ljavassist/expr/NewExpr;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v2, p0, Ljavassist/expr/NewExpr;->currentPos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    .line 107
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getMethodrefType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mayThrow()[Ljavassist/CtClass;
    .locals 1

    .line 127
    invoke-super {p0}, Ljavassist/expr/Expr;->mayThrow()[Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 163
    iget-object v2, v1, Ljavassist/expr/NewExpr;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v2}, Ljavassist/CtClass;->getClassFile()Ljavassist/bytecode/ClassFile;

    .line 166
    iget v2, v1, Ljavassist/expr/NewExpr;->newPos:I

    .line 168
    iget-object v3, v1, Ljavassist/expr/NewExpr;->iterator:Ljavassist/bytecode/CodeIterator;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v3

    .line 172
    invoke-direct/range {p0 .. p0}, Ljavassist/expr/NewExpr;->canReplace()I

    move-result v4

    add-int v5, v2, v4

    :goto_0
    if-ge v2, v5, :cond_0

    .line 175
    iget-object v6, v1, Ljavassist/expr/NewExpr;->iterator:Ljavassist/bytecode/CodeIterator;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/NewExpr;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    .line 178
    iget v5, v1, Ljavassist/expr/NewExpr;->currentPos:I

    .line 179
    iget-object v6, v1, Ljavassist/expr/NewExpr;->iterator:Ljavassist/bytecode/CodeIterator;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v6

    .line 181
    invoke-virtual {v2, v6}, Ljavassist/bytecode/ConstPool;->getMethodrefType(I)Ljava/lang/String;

    move-result-object v2

    .line 183
    new-instance v13, Ljavassist/compiler/Javac;

    iget-object v7, v1, Ljavassist/expr/NewExpr;->thisClass:Ljavassist/CtClass;

    invoke-direct {v13, v7}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    .line 184
    iget-object v7, v1, Ljavassist/expr/NewExpr;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v7}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v7

    .line 185
    iget-object v8, v1, Ljavassist/expr/NewExpr;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v8}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v14

    .line 187
    :try_start_0
    invoke-static {v2, v7}, Ljavassist/bytecode/Descriptor;->getParameterTypes(Ljava/lang/String;Ljavassist/ClassPool;)[Ljavassist/CtClass;

    move-result-object v2

    .line 188
    iget-object v8, v1, Ljavassist/expr/NewExpr;->newTypeName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v15

    .line 189
    invoke-virtual {v14}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v12

    .line 190
    iget-object v8, v1, Ljavassist/expr/NewExpr;->newTypeName:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/NewExpr;->withinStatic()Z

    move-result v16
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_3

    move-object v7, v13

    move-object v9, v2

    move v11, v12

    move v1, v12

    move/from16 v12, v16

    :try_start_1
    invoke-virtual/range {v7 .. v12}, Ljavassist/compiler/Javac;->recordParams(Ljava/lang/String;[Ljavassist/CtClass;ZIZ)I

    const/4 v7, 0x1

    .line 192
    invoke-virtual {v13, v15, v7}, Ljavassist/compiler/Javac;->recordReturnType(Ljavassist/CtClass;Z)I

    move-result v8

    .line 193
    new-instance v9, Ljavassist/expr/NewExpr$ProceedForNew;

    invoke-direct {v9, v15, v3, v6}, Ljavassist/expr/NewExpr$ProceedForNew;-><init>(Ljavassist/CtClass;II)V

    invoke-virtual {v13, v9}, Ljavassist/compiler/Javac;->recordProceed(Ljavassist/compiler/ProceedHandler;)V

    .line 198
    invoke-static {v15, v0}, Ljavassist/expr/NewExpr;->checkResultValue(Ljavassist/CtClass;Ljava/lang/String;)Z

    .line 200
    invoke-virtual {v13}, Ljavassist/compiler/Javac;->getBytecode()Ljavassist/bytecode/Bytecode;

    move-result-object v3

    .line 201
    invoke-static {v2, v7, v1, v3}, Ljavassist/expr/NewExpr;->storeStack([Ljavassist/CtClass;ZILjavassist/bytecode/Bytecode;)V

    .line 202
    invoke-virtual {v13, v14, v5}, Ljavassist/compiler/Javac;->recordLocalVariables(Ljavassist/bytecode/CodeAttribute;I)Z

    .line 204
    invoke-virtual {v3, v15}, Ljavassist/bytecode/Bytecode;->addConstZero(Ljavassist/CtClass;)V

    .line 205
    invoke-virtual {v3, v8, v15}, Ljavassist/bytecode/Bytecode;->addStore(ILjavassist/CtClass;)I

    .line 207
    invoke-virtual {v13, v0}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    const/4 v0, 0x3

    if-le v4, v0, :cond_1

    .line 209
    invoke-virtual {v3, v8}, Ljavassist/bytecode/Bytecode;->addAload(I)V
    :try_end_1
    .catch Ljavassist/compiler/CompileError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    move-object/from16 v1, p0

    .line 211
    :try_start_2
    invoke-virtual {v1, v5, v3, v0}, Ljavassist/expr/NewExpr;->replace0(ILjavassist/bytecode/Bytecode;I)V
    :try_end_2
    .catch Ljavassist/compiler/CompileError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavassist/NotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_2 .. :try_end_2} :catch_3

    return-void

    :catch_0
    move-object/from16 v1, p0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_3

    .line 216
    :catch_3
    :goto_1
    new-instance v0, Ljavassist/CannotCompileException;

    const-string v2, "broken method"

    invoke-direct {v0, v2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4
    move-exception v0

    .line 214
    :goto_2
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-direct {v2, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v2

    :catch_5
    move-exception v0

    .line 213
    :goto_3
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-direct {v2, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    goto :goto_5

    :goto_4
    throw v2

    :goto_5
    goto :goto_4
.end method

.method public where()Ljavassist/CtBehavior;
    .locals 1

    .line 59
    invoke-super {p0}, Ljavassist/expr/Expr;->where()Ljavassist/CtBehavior;

    move-result-object v0

    return-object v0
.end method
