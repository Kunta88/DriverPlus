.class Ljavassist/expr/FieldAccess$ProceedForRead;
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
    name = "ProceedForRead"
.end annotation


# instance fields
.field fieldType:Ljavassist/CtClass;

.field index:I

.field opcode:I

.field targetVar:I


# direct methods
.method constructor <init>(Ljavassist/CtClass;III)V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->fieldType:Ljavassist/CtClass;

    .line 232
    iput p4, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->targetVar:I

    .line 233
    iput p2, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->opcode:I

    .line 234
    iput p3, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->index:I

    return-void
.end method


# virtual methods
.method public doit(Ljavassist/compiler/JvstCodeGen;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/ast/ASTList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 240
    invoke-virtual {p1, p3}, Ljavassist/compiler/JvstCodeGen;->isParamListName(Ljavassist/compiler/ast/ASTList;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string p2, "$proceed() cannot take a parameter for field reading"

    invoke-direct {p1, p2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 245
    :cond_1
    :goto_0
    iget p3, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->opcode:I

    invoke-static {p3}, Ljavassist/expr/FieldAccess;->isStatic(I)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    const/4 p3, -0x1

    .line 249
    iget v0, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->targetVar:I

    invoke-virtual {p2, v0}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 252
    :goto_1
    iget-object v0, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->fieldType:Ljavassist/CtClass;

    instance-of v1, v0, Ljavassist/CtPrimitiveType;

    if-eqz v1, :cond_3

    .line 253
    check-cast v0, Ljavassist/CtPrimitiveType;

    invoke-virtual {v0}, Ljavassist/CtPrimitiveType;->getDataSize()I

    move-result v0

    add-int/2addr p3, v0

    goto :goto_2

    :cond_3
    add-int/lit8 p3, p3, 0x1

    .line 257
    :goto_2
    iget v0, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->opcode:I

    invoke-virtual {p2, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 258
    iget v0, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->index:I

    invoke-virtual {p2, v0}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 259
    invoke-virtual {p2, p3}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 260
    iget-object p2, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->fieldType:Ljavassist/CtClass;

    invoke-virtual {p1, p2}, Ljavassist/compiler/JvstCodeGen;->setType(Ljavassist/CtClass;)V

    return-void
.end method

.method public setReturnType(Ljavassist/compiler/JvstTypeChecker;Ljavassist/compiler/ast/ASTList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 266
    iget-object p2, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->fieldType:Ljavassist/CtClass;

    invoke-virtual {p1, p2}, Ljavassist/compiler/JvstTypeChecker;->setType(Ljavassist/CtClass;)V

    return-void
.end method
