.class Ljavassist/expr/Cast$ProceedForCast;
.super Ljava/lang/Object;
.source "Cast.java"

# interfaces
.implements Ljavassist/compiler/ProceedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/expr/Cast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProceedForCast"
.end annotation


# instance fields
.field index:I

.field retType:Ljavassist/CtClass;


# direct methods
.method constructor <init>(ILjavassist/CtClass;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput p1, p0, Ljavassist/expr/Cast$ProceedForCast;->index:I

    .line 142
    iput-object p2, p0, Ljavassist/expr/Cast$ProceedForCast;->retType:Ljavassist/CtClass;

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

    .line 148
    invoke-virtual {p1, p3}, Ljavassist/compiler/JvstCodeGen;->getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-array v0, v1, [I

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/String;

    .line 153
    invoke-virtual {p1, p3, v0, v2, v1}, Ljavassist/compiler/JvstCodeGen;->atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V

    const/16 p3, 0xc0

    .line 154
    invoke-virtual {p2, p3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 155
    iget p3, p0, Ljavassist/expr/Cast$ProceedForCast;->index:I

    invoke-virtual {p2, p3}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 156
    iget-object p2, p0, Ljavassist/expr/Cast$ProceedForCast;->retType:Ljavassist/CtClass;

    invoke-virtual {p1, p2}, Ljavassist/compiler/JvstCodeGen;->setType(Ljavassist/CtClass;)V

    return-void

    .line 149
    :cond_0
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string p2, "$proceed() cannot take more than one parameter for cast"

    invoke-direct {p1, p2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReturnType(Ljavassist/compiler/JvstTypeChecker;Ljavassist/compiler/ast/ASTList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    new-array v2, v0, [I

    new-array v0, v0, [Ljava/lang/String;

    .line 162
    invoke-virtual {p1, p2, v1, v2, v0}, Ljavassist/compiler/JvstTypeChecker;->atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Ljavassist/expr/Cast$ProceedForCast;->retType:Ljavassist/CtClass;

    invoke-virtual {p1, p2}, Ljavassist/compiler/JvstTypeChecker;->setType(Ljavassist/CtClass;)V

    return-void
.end method
