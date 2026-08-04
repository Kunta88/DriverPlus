.class public Ljavassist/expr/NewArray;
.super Ljavassist/expr/Expr;
.source "NewArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/expr/NewArray$ProceedForArray;
    }
.end annotation


# instance fields
.field opcode:I


# direct methods
.method protected constructor <init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/expr/Expr;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 36
    iput p5, p0, Ljavassist/expr/NewArray;->opcode:I

    return-void
.end method

.method private replace2(Ljava/lang/String;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;,
            Ljavassist/NotFoundException;,
            Ljavassist/bytecode/BadBytecode;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 174
    iget-object v2, v0, Ljavassist/expr/NewArray;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v2}, Ljavassist/CtClass;->getClassFile()Ljavassist/bytecode/ClassFile;

    .line 175
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/NewArray;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    .line 176
    iget v3, v0, Ljavassist/expr/NewArray;->currentPos:I

    .line 182
    iget v4, v0, Ljavassist/expr/NewArray;->opcode:I

    const/4 v5, 0x3

    const-string v6, "["

    const/4 v7, 0x1

    const/16 v8, 0xbc

    if-ne v4, v8, :cond_0

    .line 183
    iget-object v2, v0, Ljavassist/expr/NewArray;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v4, v0, Ljavassist/expr/NewArray;->currentPos:I

    add-int/2addr v4, v7

    invoke-virtual {v2, v4}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v2

    .line 184
    invoke-virtual {v0, v2}, Ljavassist/expr/NewArray;->getPrimitiveType(I)Ljavassist/CtClass;

    move-result-object v4

    check-cast v4, Ljavassist/CtPrimitiveType;

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljavassist/CtPrimitiveType;->getDescriptor()C

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x2

    goto :goto_2

    :cond_0
    const/16 v8, 0xbd

    if-ne v4, v8, :cond_2

    .line 189
    iget-object v4, v0, Ljavassist/expr/NewArray;->iterator:Ljavassist/bytecode/CodeIterator;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v4, v8}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v4

    .line 190
    invoke-virtual {v2, v4}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 192
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 194
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[L"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x3

    goto :goto_1

    :cond_2
    const/16 v6, 0xc5

    if-ne v4, v6, :cond_4

    .line 199
    iget-object v4, v0, Ljavassist/expr/NewArray;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v6, v0, Ljavassist/expr/NewArray;->currentPos:I

    add-int/2addr v6, v7

    invoke-virtual {v4, v6}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v4

    .line 200
    invoke-virtual {v2, v4}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v2

    .line 201
    iget-object v6, v0, Ljavassist/expr/NewArray;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v8, v0, Ljavassist/expr/NewArray;->currentPos:I

    add-int/2addr v8, v5

    invoke-virtual {v6, v8}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v5

    const/4 v6, 0x4

    :goto_1
    move/from16 v19, v4

    move-object v4, v2

    move/from16 v2, v19

    .line 207
    :goto_2
    iget-object v8, v0, Ljavassist/expr/NewArray;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v8}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v8

    invoke-static {v4, v8}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object v4

    .line 209
    new-instance v14, Ljavassist/compiler/Javac;

    iget-object v8, v0, Ljavassist/expr/NewArray;->thisClass:Ljavassist/CtClass;

    invoke-direct {v14, v8}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    .line 210
    iget-object v8, v0, Ljavassist/expr/NewArray;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v8}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v15

    .line 212
    new-array v13, v5, [Ljavassist/CtClass;

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_3

    .line 214
    sget-object v9, Ljavassist/CtClass;->intType:Ljavassist/CtClass;

    aput-object v9, v13, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 216
    :cond_3
    invoke-virtual {v15}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v12

    const/4 v11, 0x1

    .line 217
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/NewArray;->withinStatic()Z

    move-result v16

    const-string v9, "java.lang.Object"

    move-object v8, v14

    move-object v10, v13

    move/from16 v17, v12

    move-object/from16 v18, v13

    move/from16 v13, v16

    invoke-virtual/range {v8 .. v13}, Ljavassist/compiler/Javac;->recordParams(Ljava/lang/String;[Ljavassist/CtClass;ZIZ)I

    .line 222
    invoke-static {v4, v1}, Ljavassist/expr/NewArray;->checkResultValue(Ljavassist/CtClass;Ljava/lang/String;)Z

    .line 223
    invoke-virtual {v14, v4, v7}, Ljavassist/compiler/Javac;->recordReturnType(Ljavassist/CtClass;Z)I

    move-result v8

    .line 224
    new-instance v9, Ljavassist/expr/NewArray$ProceedForArray;

    iget v10, v0, Ljavassist/expr/NewArray;->opcode:I

    invoke-direct {v9, v4, v10, v2, v5}, Ljavassist/expr/NewArray$ProceedForArray;-><init>(Ljavassist/CtClass;III)V

    invoke-virtual {v14, v9}, Ljavassist/compiler/Javac;->recordProceed(Ljavassist/compiler/ProceedHandler;)V

    .line 226
    invoke-virtual {v14}, Ljavassist/compiler/Javac;->getBytecode()Ljavassist/bytecode/Bytecode;

    move-result-object v2

    move/from16 v5, v17

    move-object/from16 v4, v18

    .line 227
    invoke-static {v4, v7, v5, v2}, Ljavassist/expr/NewArray;->storeStack([Ljavassist/CtClass;ZILjavassist/bytecode/Bytecode;)V

    .line 228
    invoke-virtual {v14, v15, v3}, Ljavassist/compiler/Javac;->recordLocalVariables(Ljavassist/bytecode/CodeAttribute;I)Z

    .line 230
    invoke-virtual {v2, v7}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 231
    invoke-virtual {v2, v8}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 233
    invoke-virtual {v14, v1}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v2, v8}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 236
    invoke-virtual {v0, v3, v2, v6}, Ljavassist/expr/NewArray;->replace0(ILjavassist/bytecode/Bytecode;I)V

    return-void

    .line 205
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad opcode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Ljavassist/expr/NewArray;->opcode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public getComponentType()Ljavassist/CtClass;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 81
    iget v0, p0, Ljavassist/expr/NewArray;->opcode:I

    const/16 v1, 0xbc

    if-ne v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Ljavassist/expr/NewArray;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v1, p0, Ljavassist/expr/NewArray;->currentPos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    .line 83
    invoke-virtual {p0, v0}, Ljavassist/expr/NewArray;->getPrimitiveType(I)Ljavassist/CtClass;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0xbd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc5

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljavassist/expr/NewArray;->opcode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_2
    :goto_0
    iget-object v0, p0, Ljavassist/expr/NewArray;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v1, p0, Ljavassist/expr/NewArray;->currentPos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v0

    .line 88
    invoke-virtual {p0}, Ljavassist/expr/NewArray;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->arrayDimension(Ljava/lang/String;)I

    move-result v1

    .line 90
    invoke-static {v0, v1}, Ljavassist/bytecode/Descriptor;->toArrayComponent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v1, p0, Ljavassist/expr/NewArray;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v1

    invoke-static {v0, v1}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public getCreatedDimensions()I
    .locals 2

    .line 143
    iget v0, p0, Ljavassist/expr/NewArray;->opcode:I

    const/16 v1, 0xc5

    if-ne v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Ljavassist/expr/NewArray;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v1, p0, Ljavassist/expr/NewArray;->currentPos:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getDimension()I
    .locals 4

    .line 124
    iget v0, p0, Ljavassist/expr/NewArray;->opcode:I

    const/4 v1, 0x1

    const/16 v2, 0xbc

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v2, 0xbd

    if-eq v0, v2, :cond_2

    const/16 v3, 0xc5

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 134
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljavassist/expr/NewArray;->opcode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_2
    :goto_0
    iget-object v0, p0, Ljavassist/expr/NewArray;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v3, p0, Ljavassist/expr/NewArray;->currentPos:I

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v0

    .line 129
    invoke-virtual {p0}, Ljavassist/expr/NewArray;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->arrayDimension(Ljava/lang/String;)I

    move-result v0

    iget v3, p0, Ljavassist/expr/NewArray;->opcode:I

    if-ne v3, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 61
    invoke-super {p0}, Ljavassist/expr/Expr;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 52
    invoke-super {p0}, Ljavassist/expr/Expr;->getLineNumber()I

    move-result v0

    return v0
.end method

.method getPrimitiveType(I)Ljavassist/CtClass;
    .locals 3

    packed-switch p1, :pswitch_data_0

    .line 116
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad atype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :pswitch_0
    sget-object p1, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    return-object p1

    .line 112
    :pswitch_1
    sget-object p1, Ljavassist/CtClass;->intType:Ljavassist/CtClass;

    return-object p1

    .line 110
    :pswitch_2
    sget-object p1, Ljavassist/CtClass;->shortType:Ljavassist/CtClass;

    return-object p1

    .line 108
    :pswitch_3
    sget-object p1, Ljavassist/CtClass;->byteType:Ljavassist/CtClass;

    return-object p1

    .line 106
    :pswitch_4
    sget-object p1, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    return-object p1

    .line 104
    :pswitch_5
    sget-object p1, Ljavassist/CtClass;->floatType:Ljavassist/CtClass;

    return-object p1

    .line 102
    :pswitch_6
    sget-object p1, Ljavassist/CtClass;->charType:Ljavassist/CtClass;

    return-object p1

    .line 100
    :pswitch_7
    sget-object p1, Ljavassist/CtClass;->booleanType:Ljavassist/CtClass;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public mayThrow()[Ljavassist/CtClass;
    .locals 1

    .line 71
    invoke-super {p0}, Ljavassist/expr/Expr;->mayThrow()[Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 161
    :try_start_0
    invoke-direct {p0, p1}, Ljavassist/expr/NewArray;->replace2(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 166
    :catch_0
    new-instance p1, Ljavassist/CannotCompileException;

    const-string v0, "broken method"

    invoke-direct {p1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 164
    new-instance v0, Ljavassist/CannotCompileException;

    invoke-direct {v0, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v0

    :catch_2
    move-exception p1

    .line 163
    new-instance v0, Ljavassist/CannotCompileException;

    invoke-direct {v0, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v0
.end method

.method public where()Ljavassist/CtBehavior;
    .locals 1

    .line 43
    invoke-super {p0}, Ljavassist/expr/Expr;->where()Ljavassist/CtBehavior;

    move-result-object v0

    return-object v0
.end method
