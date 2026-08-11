.class public Ljavassist/expr/ExprEditor;
.super Ljava/lang/Object;
.source "ExprEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/expr/ExprEditor$LoopContext;,
        Ljavassist/expr/ExprEditor$NewOp;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doit(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 82
    invoke-virtual/range {p2 .. p2}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v8

    const/4 v2, 0x0

    if-nez v8, :cond_0

    return v2

    .line 86
    :cond_0
    invoke-virtual {v8}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v9

    .line 88
    new-instance v10, Ljavassist/expr/ExprEditor$LoopContext;

    invoke-virtual {v8}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v3

    invoke-direct {v10, v3}, Ljavassist/expr/ExprEditor$LoopContext;-><init>(I)V

    const/4 v3, 0x0

    .line 90
    :cond_1
    :goto_0
    invoke-virtual {v9}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v12, p1

    .line 91
    invoke-virtual {v1, v9, v12, v0, v10}, Ljavassist/expr/ExprEditor;->loopBody(Ljavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/expr/ExprEditor$LoopContext;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v12, p1

    .line 94
    invoke-virtual {v8}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v13

    .line 95
    invoke-virtual {v13}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v14

    move/from16 v16, v3

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_4

    .line 97
    new-instance v7, Ljavassist/expr/Handler;

    move-object v2, v7

    move-object v3, v13

    move v4, v15

    move-object v5, v9

    move-object/from16 v6, p1

    move-object v11, v7

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Ljavassist/expr/Handler;-><init>(Ljavassist/bytecode/ExceptionTable;ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 98
    invoke-virtual {v1, v11}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/Handler;)V

    .line 99
    invoke-virtual {v11}, Ljavassist/expr/Handler;->edited()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    invoke-virtual {v11}, Ljavassist/expr/Handler;->locals()I

    move-result v2

    invoke-virtual {v11}, Ljavassist/expr/Handler;->stack()I

    move-result v3

    invoke-virtual {v10, v2, v3}, Ljavassist/expr/ExprEditor$LoopContext;->updateMax(II)V

    const/16 v16, 0x1

    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 107
    :cond_4
    invoke-virtual {v8}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v2

    iget v3, v10, Ljavassist/expr/ExprEditor$LoopContext;->maxLocals:I

    if-ge v2, v3, :cond_5

    .line 108
    iget v2, v10, Ljavassist/expr/ExprEditor$LoopContext;->maxLocals:I

    invoke-virtual {v8, v2}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V

    .line 110
    :cond_5
    invoke-virtual {v8}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v2

    iget v3, v10, Ljavassist/expr/ExprEditor$LoopContext;->maxStack:I

    add-int/2addr v2, v3

    invoke-virtual {v8, v2}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    if-eqz v16, :cond_6

    .line 113
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 117
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-virtual {v0}, Ljavassist/bytecode/BadBytecode;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_6
    :goto_2
    return v16
.end method

.method doit(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/expr/ExprEditor$LoopContext;Ljavassist/bytecode/CodeIterator;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 131
    :cond_0
    :goto_0
    invoke-virtual {p4}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p4}, Ljavassist/bytecode/CodeIterator;->lookAhead()I

    move-result v1

    if-ge v1, p5, :cond_1

    .line 132
    invoke-virtual {p4}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v1

    .line 133
    invoke-virtual {p0, p4, p1, p2, p3}, Ljavassist/expr/ExprEditor;->loopBody(Ljavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/expr/ExprEditor$LoopContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 135
    invoke-virtual {p4}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v2

    if-eq v1, v2, :cond_0

    sub-int/2addr v2, v1

    add-int/2addr p5, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public edit(Ljavassist/expr/Cast;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    return-void
.end method

.method public edit(Ljavassist/expr/ConstructorCall;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    return-void
.end method

.method public edit(Ljavassist/expr/FieldAccess;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    return-void
.end method

.method public edit(Ljavassist/expr/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    return-void
.end method

.method public edit(Ljavassist/expr/Instanceof;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    return-void
.end method

.method public edit(Ljavassist/expr/MethodCall;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    return-void
.end method

.method public edit(Ljavassist/expr/NewArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    return-void
.end method

.method public edit(Ljavassist/expr/NewExpr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    return-void
.end method

.method final loopBody(Ljavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/expr/ExprEditor$LoopContext;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 182
    :try_start_0
    invoke-virtual {p1}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v2

    .line 183
    invoke-virtual {p1, v2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v6

    const/16 v1, 0xb2

    if-ge v6, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v3, 0xbc

    if-ge v6, v3, :cond_8

    const/16 v3, 0xb8

    if-eq v6, v3, :cond_7

    const/16 v3, 0xb9

    if-eq v6, v3, :cond_7

    const/16 v3, 0xb6

    if-ne v6, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v3, 0xb4

    if-eq v6, v3, :cond_6

    if-eq v6, v1, :cond_6

    const/16 v1, 0xb5

    if-eq v6, v1, :cond_6

    const/16 v1, 0xb3

    if-ne v6, v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xbb

    if-ne v6, v1, :cond_3

    add-int/lit8 p2, v2, 0x1

    .line 201
    invoke-virtual {p1, p2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result p1

    .line 202
    new-instance p2, Ljavassist/expr/ExprEditor$NewOp;

    iget-object v1, p4, Ljavassist/expr/ExprEditor$LoopContext;->newList:Ljavassist/expr/ExprEditor$NewOp;

    invoke-virtual {p3}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, v2, p1}, Ljavassist/expr/ExprEditor$NewOp;-><init>(Ljavassist/expr/ExprEditor$NewOp;ILjava/lang/String;)V

    iput-object p2, p4, Ljavassist/expr/ExprEditor$LoopContext;->newList:Ljavassist/expr/ExprEditor$NewOp;

    goto/16 :goto_3

    :cond_3
    const/16 v1, 0xb7

    if-ne v6, v1, :cond_c

    .line 206
    iget-object v0, p4, Ljavassist/expr/ExprEditor$LoopContext;->newList:Ljavassist/expr/ExprEditor$NewOp;

    if-eqz v0, :cond_4

    .line 207
    invoke-virtual {p3}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    iget-object v3, v0, Ljavassist/expr/ExprEditor$NewOp;->type:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljavassist/bytecode/ConstPool;->isConstructor(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_4

    .line 210
    new-instance v8, Ljavassist/expr/NewExpr;

    iget-object v6, v0, Ljavassist/expr/ExprEditor$NewOp;->type:Ljava/lang/String;

    iget v7, v0, Ljavassist/expr/ExprEditor$NewOp;->pos:I

    move-object v1, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Ljavassist/expr/NewExpr;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljava/lang/String;I)V

    .line 212
    move-object p1, v8

    check-cast p1, Ljavassist/expr/NewExpr;

    invoke-virtual {p0, p1}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/NewExpr;)V

    .line 213
    iget-object p1, v0, Ljavassist/expr/ExprEditor$NewOp;->next:Ljavassist/expr/ExprEditor$NewOp;

    iput-object p1, p4, Ljavassist/expr/ExprEditor$LoopContext;->newList:Ljavassist/expr/ExprEditor$NewOp;

    move-object v0, v8

    goto/16 :goto_3

    .line 216
    :cond_4
    new-instance v0, Ljavassist/expr/MethodCall;

    invoke-direct {v0, v2, p1, p2, p3}, Ljavassist/expr/MethodCall;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 217
    invoke-virtual {v0}, Ljavassist/expr/MethodCall;->getMethodName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "<init>"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 218
    new-instance v0, Ljavassist/expr/ConstructorCall;

    invoke-direct {v0, v2, p1, p2, p3}, Ljavassist/expr/ConstructorCall;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 220
    invoke-virtual {p0, v0}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/ConstructorCall;)V

    goto :goto_3

    .line 224
    :cond_5
    invoke-virtual {p0, v0}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/MethodCall;)V

    goto :goto_3

    .line 197
    :cond_6
    :goto_0
    new-instance v0, Ljavassist/expr/FieldAccess;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Ljavassist/expr/FieldAccess;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;I)V

    .line 198
    move-object p1, v0

    check-cast p1, Ljavassist/expr/FieldAccess;

    invoke-virtual {p0, p1}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/FieldAccess;)V

    goto :goto_3

    .line 191
    :cond_7
    :goto_1
    new-instance v0, Ljavassist/expr/MethodCall;

    invoke-direct {v0, v2, p1, p2, p3}, Ljavassist/expr/MethodCall;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 192
    move-object p1, v0

    check-cast p1, Ljavassist/expr/MethodCall;

    invoke-virtual {p0, p1}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/MethodCall;)V

    goto :goto_3

    :cond_8
    if-eq v6, v3, :cond_b

    const/16 v1, 0xbd

    if-eq v6, v1, :cond_b

    const/16 v1, 0xc5

    if-ne v6, v1, :cond_9

    goto :goto_2

    :cond_9
    const/16 v1, 0xc1

    if-ne v6, v1, :cond_a

    .line 236
    new-instance v0, Ljavassist/expr/Instanceof;

    invoke-direct {v0, v2, p1, p2, p3}, Ljavassist/expr/Instanceof;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 237
    move-object p1, v0

    check-cast p1, Ljavassist/expr/Instanceof;

    invoke-virtual {p0, p1}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/Instanceof;)V

    goto :goto_3

    :cond_a
    const/16 v1, 0xc0

    if-ne v6, v1, :cond_c

    .line 240
    new-instance v0, Ljavassist/expr/Cast;

    invoke-direct {v0, v2, p1, p2, p3}, Ljavassist/expr/Cast;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 241
    move-object p1, v0

    check-cast p1, Ljavassist/expr/Cast;

    invoke-virtual {p0, p1}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/Cast;)V

    goto :goto_3

    .line 232
    :cond_b
    :goto_2
    new-instance v0, Ljavassist/expr/NewArray;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Ljavassist/expr/NewArray;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;I)V

    .line 233
    move-object p1, v0

    check-cast p1, Ljavassist/expr/NewArray;

    invoke-virtual {p0, p1}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/NewArray;)V

    :cond_c
    :goto_3
    if-eqz v0, :cond_d

    .line 245
    invoke-virtual {v0}, Ljavassist/expr/Expr;->edited()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 246
    invoke-virtual {v0}, Ljavassist/expr/Expr;->locals()I

    move-result p1

    invoke-virtual {v0}, Ljavassist/expr/Expr;->stack()I

    move-result p2

    invoke-virtual {p4, p1, p2}, Ljavassist/expr/ExprEditor$LoopContext;->updateMax(II)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 253
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
