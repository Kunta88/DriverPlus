.class Ljavassist/expr/FieldAccess$ProceedForWrite;
.super Ljava/lang/Object;
.source "FieldAccess.java"

# interfaces
.implements Ljavassist/compiler/ProceedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/expr/FieldAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProceedForWrite"
.end annotation


# instance fields
.field fieldType:Ljavassist/CtClass;

.field index:I

.field opcode:I

.field targetVar:I


# direct methods
.method constructor <init>(Ljavassist/CtClass;III)V
    .locals 0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Ljavassist/expr/FieldAccess$ProceedForWrite;->fieldType:Ljavassist/CtClass;

    .line 280
    iput p4, p0, Ljavassist/expr/FieldAccess$ProceedForWrite;->targetVar:I

    .line 281
    iput p2, p0, Ljavassist/expr/FieldAccess$ProceedForWrite;->opcode:I

    .line 282
    iput p3, p0, Ljavassist/expr/FieldAccess$ProceedForWrite;->index:I

    return-void
.end method


# virtual methods
.method public doit(Ljavassist/compiler/JvstCodeGen;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/ast/ASTList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 288
    invoke-virtual {p1, p3}, Ljavassist/compiler/JvstCodeGen;->getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 294
    iget v0, p0, Ljavassist/expr/FieldAccess$ProceedForWrite;->opcode:I

    invoke-static {v0}, Ljavassist/expr/FieldAccess;->isStatic(I)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 298
    :cond_0
    iget v0, p0, Ljavassist/expr/FieldAccess$ProceedForWrite;->targetVar:I

    invoke-virtual {p2, v0}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    const/4 v0, -0x1

    :goto_0
    new-array v3, v1, [I

    new-array v4, v1, [I

    new-array v1, v1, [Ljava/lang/String;

    .line 301
    invoke-virtual {p1, p3, v3, v4, v1}, Ljavassist/compiler/JvstCodeGen;->atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V

    .line 302
    iget-object p3, p0, Ljavassist/expr/FieldAccess$ProceedForWrite;->fieldType:Ljavassist/CtClass;

    invoke-virtual {p1, p3}, Ljavassist/compiler/JvstCodeGen;->doNumCast(Ljavassist/CtClass;)V

    .line 303
    iget-object p3, p0, Ljavassist/expr/FieldAccess$ProceedForWrite;->fieldType:Ljavassist/CtClass;

    instance-of v1, p3, Ljavassist/CtPrimitiveType;

    if-eqz v1, :cond_1

    .line 304
    check-cast p3, Ljavassist/CtPrimitiveType;

    invoke-virtual {p3}, Ljavassist/CtPrimitiveType;->getDataSize()I

    move-result p3

    sub-int/2addr v0, p3

    goto :goto_1

    :cond_1
    add-int/2addr v0, v2

    .line 308
    :goto_1
    iget p3, p0, Ljavassist/expr/FieldAccess$ProceedForWrite;->opcode:I

    invoke-virtual {p2, p3}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 309
    iget p3, p0, Ljavassist/expr/FieldAccess$ProceedForWrite;->index:I

    invoke-virtual {p2, p3}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 310
    invoke-virtual {p2, v0}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 311
    sget-object p2, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    invoke-virtual {p1, p2}, Ljavassist/compiler/JvstCodeGen;->setType(Ljavassist/CtClass;)V

    .line 312
    invoke-virtual {p1}, Ljavassist/compiler/JvstCodeGen;->addNullIfVoid()V

    return-void

    .line 289
    :cond_2
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string p2, "$proceed() cannot take more than one parameter for field writing"

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

    .line 318
    invoke-virtual {p1, p2, v1, v2, v0}, Ljavassist/compiler/JvstTypeChecker;->atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V

    .line 319
    sget-object p2, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    invoke-virtual {p1, p2}, Ljavassist/compiler/JvstTypeChecker;->setType(Ljavassist/CtClass;)V

    .line 320
    invoke-virtual {p1}, Ljavassist/compiler/JvstTypeChecker;->addNullIfVoid()V

    return-void
.end method
