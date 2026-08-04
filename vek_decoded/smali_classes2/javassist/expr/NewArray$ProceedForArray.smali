.class Ljavassist/expr/NewArray$ProceedForArray;
.super Ljava/lang/Object;
.source "NewArray.java"

# interfaces
.implements Ljavassist/compiler/ProceedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/expr/NewArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProceedForArray"
.end annotation


# instance fields
.field arrayType:Ljavassist/CtClass;

.field dimension:I

.field index:I

.field opcode:I


# direct methods
.method constructor <init>(Ljavassist/CtClass;III)V
    .locals 0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Ljavassist/expr/NewArray$ProceedForArray;->arrayType:Ljavassist/CtClass;

    .line 248
    iput p2, p0, Ljavassist/expr/NewArray$ProceedForArray;->opcode:I

    .line 249
    iput p3, p0, Ljavassist/expr/NewArray$ProceedForArray;->index:I

    .line 250
    iput p4, p0, Ljavassist/expr/NewArray$ProceedForArray;->dimension:I

    return-void
.end method


# virtual methods
.method public doit(Ljavassist/compiler/JvstCodeGen;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/ast/ASTList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 256
    invoke-virtual {p1, p3}, Ljavassist/compiler/JvstCodeGen;->getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I

    move-result v0

    .line 257
    iget v1, p0, Ljavassist/expr/NewArray$ProceedForArray;->dimension:I

    if-ne v0, v1, :cond_2

    .line 261
    new-array v1, v0, [I

    new-array v2, v0, [I

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, p3, v1, v2, v0}, Ljavassist/compiler/JvstCodeGen;->atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V

    .line 263
    iget p3, p0, Ljavassist/expr/NewArray$ProceedForArray;->opcode:I

    invoke-virtual {p2, p3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 264
    iget p3, p0, Ljavassist/expr/NewArray$ProceedForArray;->opcode:I

    const/16 v0, 0xbd

    if-ne p3, v0, :cond_0

    .line 265
    iget p3, p0, Ljavassist/expr/NewArray$ProceedForArray;->index:I

    invoke-virtual {p2, p3}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xbc

    if-ne p3, v0, :cond_1

    .line 267
    iget p3, p0, Ljavassist/expr/NewArray$ProceedForArray;->index:I

    invoke-virtual {p2, p3}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    .line 269
    :cond_1
    iget p3, p0, Ljavassist/expr/NewArray$ProceedForArray;->index:I

    invoke-virtual {p2, p3}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 270
    iget p3, p0, Ljavassist/expr/NewArray$ProceedForArray;->dimension:I

    invoke-virtual {p2, p3}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 271
    iget p3, p0, Ljavassist/expr/NewArray$ProceedForArray;->dimension:I

    rsub-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 274
    :goto_0
    iget-object p2, p0, Ljavassist/expr/NewArray$ProceedForArray;->arrayType:Ljavassist/CtClass;

    invoke-virtual {p1, p2}, Ljavassist/compiler/JvstCodeGen;->setType(Ljavassist/CtClass;)V

    return-void

    .line 258
    :cond_2
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string p2, "$proceed() with a wrong number of parameters"

    invoke-direct {p1, p2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReturnType(Ljavassist/compiler/JvstTypeChecker;Ljavassist/compiler/ast/ASTList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 280
    iget-object p2, p0, Ljavassist/expr/NewArray$ProceedForArray;->arrayType:Ljavassist/CtClass;

    invoke-virtual {p1, p2}, Ljavassist/compiler/JvstTypeChecker;->setType(Ljavassist/CtClass;)V

    return-void
.end method
