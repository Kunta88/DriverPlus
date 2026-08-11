.class public Ljavassist/expr/Cast;
.super Ljavassist/expr/Expr;
.source "Cast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/expr/Cast$ProceedForCast;
    }
.end annotation


# direct methods
.method protected constructor <init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/expr/Expr;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 57
    invoke-super {p0}, Ljavassist/expr/Expr;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 48
    invoke-super {p0}, Ljavassist/expr/Expr;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getType()Ljavassist/CtClass;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Ljavassist/expr/Cast;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 66
    iget v1, p0, Ljavassist/expr/Cast;->currentPos:I

    .line 67
    iget-object v2, p0, Ljavassist/expr/Cast;->iterator:Ljavassist/bytecode/CodeIterator;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    .line 68
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Ljavassist/expr/Cast;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavassist/ClassPool;->getCtClass(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public mayThrow()[Ljavassist/CtClass;
    .locals 1

    .line 79
    invoke-super {p0}, Ljavassist/expr/Expr;->mayThrow()[Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Ljavassist/expr/Cast;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassFile()Ljavassist/bytecode/ClassFile;

    .line 92
    invoke-virtual {p0}, Ljavassist/expr/Cast;->getConstPool()Ljavassist/bytecode/ConstPool;

    .line 93
    iget v0, p0, Ljavassist/expr/Cast;->currentPos:I

    .line 94
    iget-object v1, p0, Ljavassist/expr/Cast;->iterator:Ljavassist/bytecode/CodeIterator;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    .line 96
    new-instance v8, Ljavassist/compiler/Javac;

    iget-object v2, p0, Ljavassist/expr/Cast;->thisClass:Ljavassist/CtClass;

    invoke-direct {v8, v2}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    .line 97
    iget-object v2, p0, Ljavassist/expr/Cast;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v2}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v2

    .line 98
    iget-object v3, p0, Ljavassist/expr/Cast;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v3}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v9

    const/4 v10, 0x1

    :try_start_0
    new-array v11, v10, [Ljavassist/CtClass;

    const/4 v3, 0x0

    const-string v4, "java.lang.Object"

    .line 101
    invoke-virtual {v2, v4}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v2

    aput-object v2, v11, v3

    .line 103
    invoke-virtual {p0}, Ljavassist/expr/Cast;->getType()Ljavassist/CtClass;

    move-result-object v12

    .line 105
    invoke-virtual {v9}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v13

    const-string v3, "java.lang.Object"

    const/4 v5, 0x1

    .line 106
    invoke-virtual {p0}, Ljavassist/expr/Cast;->withinStatic()Z

    move-result v7

    move-object v2, v8

    move-object v4, v11

    move v6, v13

    invoke-virtual/range {v2 .. v7}, Ljavassist/compiler/Javac;->recordParams(Ljava/lang/String;[Ljavassist/CtClass;ZIZ)I

    .line 108
    invoke-virtual {v8, v12, v10}, Ljavassist/compiler/Javac;->recordReturnType(Ljavassist/CtClass;Z)I

    move-result v2

    .line 109
    new-instance v3, Ljavassist/expr/Cast$ProceedForCast;

    invoke-direct {v3, v1, v12}, Ljavassist/expr/Cast$ProceedForCast;-><init>(ILjavassist/CtClass;)V

    invoke-virtual {v8, v3}, Ljavassist/compiler/Javac;->recordProceed(Ljavassist/compiler/ProceedHandler;)V

    .line 113
    invoke-static {v12, p1}, Ljavassist/expr/Cast;->checkResultValue(Ljavassist/CtClass;Ljava/lang/String;)Z

    .line 115
    invoke-virtual {v8}, Ljavassist/compiler/Javac;->getBytecode()Ljavassist/bytecode/Bytecode;

    move-result-object v1

    .line 116
    invoke-static {v11, v10, v13, v1}, Ljavassist/expr/Cast;->storeStack([Ljavassist/CtClass;ZILjavassist/bytecode/Bytecode;)V

    .line 117
    invoke-virtual {v8, v9, v0}, Ljavassist/compiler/Javac;->recordLocalVariables(Ljavassist/bytecode/CodeAttribute;I)Z

    .line 119
    invoke-virtual {v1, v12}, Ljavassist/bytecode/Bytecode;->addConstZero(Ljavassist/CtClass;)V

    .line 120
    invoke-virtual {v1, v2, v12}, Ljavassist/bytecode/Bytecode;->addStore(ILjavassist/CtClass;)I

    .line 122
    invoke-virtual {v8, p1}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1, v2, v12}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    const/4 p1, 0x3

    .line 125
    invoke-virtual {p0, v0, v1, p1}, Ljavassist/expr/Cast;->replace0(ILjavassist/bytecode/Bytecode;I)V
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 130
    :catch_0
    new-instance p1, Ljavassist/CannotCompileException;

    const-string v0, "broken method"

    invoke-direct {p1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 128
    new-instance v0, Ljavassist/CannotCompileException;

    invoke-direct {v0, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v0

    :catch_2
    move-exception p1

    .line 127
    new-instance v0, Ljavassist/CannotCompileException;

    invoke-direct {v0, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v0
.end method

.method public where()Ljavassist/CtBehavior;
    .locals 1

    .line 39
    invoke-super {p0}, Ljavassist/expr/Expr;->where()Ljavassist/CtBehavior;

    move-result-object v0

    return-object v0
.end method
