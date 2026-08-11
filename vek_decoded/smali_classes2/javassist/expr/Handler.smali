.class public Ljavassist/expr/Handler;
.super Ljavassist/expr/Expr;
.source "Handler.java"


# static fields
.field private static EXCEPTION_NAME:Ljava/lang/String; = "$1"


# instance fields
.field private etable:Ljavassist/bytecode/ExceptionTable;

.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Ljavassist/bytecode/ExceptionTable;ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
    .locals 1

    .line 36
    invoke-virtual {p1, p2}, Ljavassist/bytecode/ExceptionTable;->handlerPc(I)I

    move-result v0

    invoke-direct {p0, v0, p3, p4, p5}, Ljavassist/expr/Expr;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 37
    iput-object p1, p0, Ljavassist/expr/Handler;->etable:Ljavassist/bytecode/ExceptionTable;

    .line 38
    iput p2, p0, Ljavassist/expr/Handler;->index:I

    return-void
.end method


# virtual methods
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

.method public getType()Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Ljavassist/expr/Handler;->etable:Ljavassist/bytecode/ExceptionTable;

    iget v1, p0, Ljavassist/expr/Handler;->index:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ExceptionTable;->catchType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    invoke-virtual {p0}, Ljavassist/expr/Handler;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    .line 81
    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, Ljavassist/expr/Handler;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavassist/ClassPool;->getCtClass(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public insertBefore(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Ljavassist/expr/Handler;->edited:Z

    .line 112
    invoke-virtual {p0}, Ljavassist/expr/Handler;->getConstPool()Ljavassist/bytecode/ConstPool;

    .line 113
    iget-object v1, p0, Ljavassist/expr/Handler;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v1}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v1

    .line 114
    new-instance v2, Ljavassist/compiler/Javac;

    iget-object v3, p0, Ljavassist/expr/Handler;->thisClass:Ljavassist/CtClass;

    invoke-direct {v2, v3}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    .line 115
    invoke-virtual {v2}, Ljavassist/compiler/Javac;->getBytecode()Ljavassist/bytecode/Bytecode;

    move-result-object v3

    .line 116
    invoke-virtual {v3, v0}, Ljavassist/bytecode/Bytecode;->setStackDepth(I)V

    .line 117
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v1

    invoke-virtual {v3, v1}, Ljavassist/bytecode/Bytecode;->setMaxLocals(I)V

    .line 120
    :try_start_0
    invoke-virtual {p0}, Ljavassist/expr/Handler;->getType()Ljavassist/CtClass;

    move-result-object v1

    .line 121
    sget-object v4, Ljavassist/expr/Handler;->EXCEPTION_NAME:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Ljavassist/compiler/Javac;->recordVariable(Ljavassist/CtClass;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    .line 122
    invoke-virtual {v2, v1, v5}, Ljavassist/compiler/Javac;->recordReturnType(Ljavassist/CtClass;Z)I

    .line 123
    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 124
    invoke-virtual {v2, p1}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 127
    iget-object p1, p0, Ljavassist/expr/Handler;->etable:Ljavassist/bytecode/ExceptionTable;

    iget v1, p0, Ljavassist/expr/Handler;->index:I

    invoke-virtual {p1, v1}, Ljavassist/bytecode/ExceptionTable;->handlerPc(I)I

    move-result p1

    const/16 v1, 0xa7

    .line 128
    invoke-virtual {v3, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 129
    iget-object v1, p0, Ljavassist/expr/Handler;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v1}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v3}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/2addr p1, v0

    invoke-virtual {v3, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 132
    invoke-virtual {v3}, Ljavassist/bytecode/Bytecode;->getMaxStack()I

    move-result p1

    iput p1, p0, Ljavassist/expr/Handler;->maxStack:I

    .line 133
    invoke-virtual {v3}, Ljavassist/bytecode/Bytecode;->getMaxLocals()I

    move-result p1

    iput p1, p0, Ljavassist/expr/Handler;->maxLocals:I

    .line 135
    iget-object p1, p0, Ljavassist/expr/Handler;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v3}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/CodeIterator;->append([B)I

    move-result p1

    .line 136
    iget-object v0, p0, Ljavassist/expr/Handler;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v3}, Ljavassist/bytecode/Bytecode;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljavassist/bytecode/CodeIterator;->append(Ljavassist/bytecode/ExceptionTable;I)V

    .line 137
    iget-object v0, p0, Ljavassist/expr/Handler;->etable:Ljavassist/bytecode/ExceptionTable;

    iget v1, p0, Ljavassist/expr/Handler;->index:I

    invoke-virtual {v0, v1, p1}, Ljavassist/bytecode/ExceptionTable;->setHandlerPc(II)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 143
    new-instance v0, Ljavassist/CannotCompileException;

    invoke-direct {v0, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v0

    :catch_1
    move-exception p1

    .line 140
    new-instance v0, Ljavassist/CannotCompileException;

    invoke-direct {v0, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v0
.end method

.method public isFinally()Z
    .locals 2

    .line 90
    iget-object v0, p0, Ljavassist/expr/Handler;->etable:Ljavassist/bytecode/ExceptionTable;

    iget v1, p0, Ljavassist/expr/Handler;->index:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ExceptionTable;->catchType(I)I

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

    .line 68
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

    .line 99
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not implemented yet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public where()Ljavassist/CtBehavior;
    .locals 1

    .line 44
    invoke-super {p0}, Ljavassist/expr/Expr;->where()Ljavassist/CtBehavior;

    move-result-object v0

    return-object v0
.end method
