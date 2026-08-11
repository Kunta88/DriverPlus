.class public Ljavassist/expr/FieldAccess;
.super Ljavassist/expr/Expr;
.source "FieldAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/expr/FieldAccess$ProceedForWrite;,
        Ljavassist/expr/FieldAccess$ProceedForRead;
    }
.end annotation


# instance fields
.field opcode:I


# direct methods
.method protected constructor <init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/expr/Expr;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 33
    iput p5, p0, Ljavassist/expr/FieldAccess;->opcode:I

    return-void
.end method

.method private getCtClass()Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Ljavassist/expr/FieldAccess;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/expr/FieldAccess;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method static isStatic(I)Z
    .locals 1

    const/16 v0, 0xb2

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 2

    .line 97
    iget-object v0, p0, Ljavassist/expr/FieldAccess;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v1, p0, Ljavassist/expr/FieldAccess;->currentPos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v0

    .line 98
    invoke-virtual {p0}, Ljavassist/expr/FieldAccess;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getFieldrefClassName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getField()Ljavassist/CtField;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljavassist/expr/FieldAccess;->getCtClass()Ljavassist/CtClass;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Ljavassist/expr/FieldAccess;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/CtClass;->getField(Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v0

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 2

    .line 105
    iget-object v0, p0, Ljavassist/expr/FieldAccess;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v1, p0, Ljavassist/expr/FieldAccess;->currentPos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v0

    .line 106
    invoke-virtual {p0}, Ljavassist/expr/FieldAccess;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getFieldrefName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 58
    invoke-super {p0}, Ljavassist/expr/Expr;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 49
    invoke-super {p0}, Ljavassist/expr/Expr;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    .line 136
    iget-object v0, p0, Ljavassist/expr/FieldAccess;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v1, p0, Ljavassist/expr/FieldAccess;->currentPos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v0

    .line 137
    invoke-virtual {p0}, Ljavassist/expr/FieldAccess;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getFieldrefType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isReader()Z
    .locals 2

    .line 76
    iget v0, p0, Ljavassist/expr/FieldAccess;->opcode:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isStatic()Z
    .locals 1

    .line 65
    iget v0, p0, Ljavassist/expr/FieldAccess;->opcode:I

    invoke-static {v0}, Ljavassist/expr/FieldAccess;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method public isWriter()Z
    .locals 2

    .line 83
    iget v0, p0, Ljavassist/expr/FieldAccess;->opcode:I

    const/16 v1, 0xb5

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public mayThrow()[Ljavassist/CtClass;
    .locals 1

    .line 124
    invoke-super {p0}, Ljavassist/expr/Expr;->mayThrow()[Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 151
    iget-object v2, v1, Ljavassist/expr/FieldAccess;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v2}, Ljavassist/CtClass;->getClassFile()Ljavassist/bytecode/ClassFile;

    .line 152
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/FieldAccess;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    .line 153
    iget v3, v1, Ljavassist/expr/FieldAccess;->currentPos:I

    .line 154
    iget-object v4, v1, Ljavassist/expr/FieldAccess;->iterator:Ljavassist/bytecode/CodeIterator;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v4

    .line 156
    new-instance v11, Ljavassist/compiler/Javac;

    iget-object v5, v1, Ljavassist/expr/FieldAccess;->thisClass:Ljavassist/CtClass;

    invoke-direct {v11, v5}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    .line 157
    iget-object v5, v1, Ljavassist/expr/FieldAccess;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v5}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v12

    .line 161
    :try_start_0
    invoke-virtual {v2, v4}, Ljavassist/bytecode/ConstPool;->getFieldrefType(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Ljavassist/expr/FieldAccess;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v6}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v6

    invoke-static {v5, v6}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object v13

    .line 164
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/FieldAccess;->isReader()Z

    move-result v14

    const/4 v15, 0x0

    const/4 v10, 0x1

    if-eqz v14, :cond_0

    new-array v5, v15, [Ljavassist/CtClass;

    move-object v9, v5

    move-object v8, v13

    goto :goto_0

    :cond_0
    new-array v5, v10, [Ljavassist/CtClass;

    aput-object v13, v5, v15

    .line 172
    sget-object v6, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    move-object v9, v5

    move-object v8, v6

    .line 175
    :goto_0
    invoke-virtual {v12}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v7

    .line 176
    invoke-virtual {v2, v4}, Ljavassist/bytecode/ConstPool;->getFieldrefClassName(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/FieldAccess;->withinStatic()Z

    move-result v16

    move-object v5, v11

    move/from16 v17, v7

    move-object v7, v9

    move-object v15, v8

    move v8, v2

    move-object v2, v9

    move/from16 v9, v17

    move/from16 v10, v16

    invoke-virtual/range {v5 .. v10}, Ljavassist/compiler/Javac;->recordParams(Ljava/lang/String;[Ljavassist/CtClass;ZIZ)I

    .line 181
    invoke-static {v15, v0}, Ljavassist/expr/FieldAccess;->checkResultValue(Ljavassist/CtClass;Ljava/lang/String;)Z

    move-result v10

    if-eqz v14, :cond_1

    const/4 v10, 0x1

    .line 185
    :cond_1
    invoke-virtual {v11, v15, v10}, Ljavassist/compiler/Javac;->recordReturnType(Ljavassist/CtClass;Z)I

    move-result v5

    if-eqz v14, :cond_2

    .line 187
    new-instance v6, Ljavassist/expr/FieldAccess$ProceedForRead;

    iget v7, v1, Ljavassist/expr/FieldAccess;->opcode:I

    move/from16 v8, v17

    invoke-direct {v6, v15, v7, v4, v8}, Ljavassist/expr/FieldAccess$ProceedForRead;-><init>(Ljavassist/CtClass;III)V

    invoke-virtual {v11, v6}, Ljavassist/compiler/Javac;->recordProceed(Ljavassist/compiler/ProceedHandler;)V

    goto :goto_1

    :cond_2
    move/from16 v8, v17

    .line 191
    invoke-virtual {v11, v13}, Ljavassist/compiler/Javac;->recordType(Ljavassist/CtClass;)V

    .line 192
    new-instance v6, Ljavassist/expr/FieldAccess$ProceedForWrite;

    const/4 v7, 0x0

    aget-object v7, v2, v7

    iget v9, v1, Ljavassist/expr/FieldAccess;->opcode:I

    invoke-direct {v6, v7, v9, v4, v8}, Ljavassist/expr/FieldAccess$ProceedForWrite;-><init>(Ljavassist/CtClass;III)V

    invoke-virtual {v11, v6}, Ljavassist/compiler/Javac;->recordProceed(Ljavassist/compiler/ProceedHandler;)V

    .line 196
    :goto_1
    invoke-virtual {v11}, Ljavassist/compiler/Javac;->getBytecode()Ljavassist/bytecode/Bytecode;

    move-result-object v4

    .line 197
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/FieldAccess;->isStatic()Z

    move-result v6

    invoke-static {v2, v6, v8, v4}, Ljavassist/expr/FieldAccess;->storeStack([Ljavassist/CtClass;ZILjavassist/bytecode/Bytecode;)V

    .line 198
    invoke-virtual {v11, v12, v3}, Ljavassist/compiler/Javac;->recordLocalVariables(Ljavassist/bytecode/CodeAttribute;I)Z

    if-eqz v10, :cond_4

    .line 201
    sget-object v2, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    if-ne v15, v2, :cond_3

    const/4 v2, 0x1

    .line 202
    invoke-virtual {v4, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 203
    invoke-virtual {v4, v5}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    goto :goto_2

    .line 206
    :cond_3
    invoke-virtual {v4, v15}, Ljavassist/bytecode/Bytecode;->addConstZero(Ljavassist/CtClass;)V

    .line 207
    invoke-virtual {v4, v5, v15}, Ljavassist/bytecode/Bytecode;->addStore(ILjavassist/CtClass;)I

    .line 210
    :cond_4
    :goto_2
    invoke-virtual {v11, v0}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    if-eqz v14, :cond_5

    .line 212
    invoke-virtual {v4, v5, v15}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    :cond_5
    const/4 v0, 0x3

    .line 214
    invoke-virtual {v1, v3, v4, v0}, Ljavassist/expr/FieldAccess;->replace0(ILjavassist/bytecode/Bytecode;I)V
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 219
    :catch_0
    new-instance v0, Ljavassist/CannotCompileException;

    const-string v2, "broken method"

    invoke-direct {v0, v2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    .line 217
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-direct {v2, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v2

    :catch_2
    move-exception v0

    .line 216
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-direct {v2, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v2
.end method

.method public where()Ljavassist/CtBehavior;
    .locals 1

    .line 40
    invoke-super {p0}, Ljavassist/expr/Expr;->where()Ljavassist/CtBehavior;

    move-result-object v0

    return-object v0
.end method
