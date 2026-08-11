.class public Ljavassist/compiler/JvstTypeChecker;
.super Ljavassist/compiler/TypeChecker;
.source "JvstTypeChecker.java"


# instance fields
.field private codeGen:Ljavassist/compiler/JvstCodeGen;


# direct methods
.method public constructor <init>(Ljavassist/CtClass;Ljavassist/ClassPool;Ljavassist/compiler/JvstCodeGen;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Ljavassist/compiler/TypeChecker;-><init>(Ljavassist/CtClass;Ljavassist/ClassPool;)V

    .line 30
    iput-object p3, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    return-void
.end method

.method private setType(Ljavassist/CtClass;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 263
    invoke-virtual {p1}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    check-cast p1, Ljavassist/CtPrimitiveType;

    .line 265
    invoke-virtual {p1}, Ljavassist/CtPrimitiveType;->getDescriptor()C

    move-result p1

    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result p1

    iput p1, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    .line 266
    iput p2, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    const/4 p1, 0x0

    .line 267
    iput-object p1, p0, Ljavassist/compiler/JvstTypeChecker;->className:Ljava/lang/String;

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtClass;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    :try_start_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getComponentType()Ljavassist/CtClass;

    move-result-object v0

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, v0, p2}, Ljavassist/compiler/JvstTypeChecker;->setType(Ljavassist/CtClass;I)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    new-instance p2, Ljavassist/compiler/CompileError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "undefined type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const/16 v0, 0x133

    .line 277
    iput v0, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    .line 278
    iput p2, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    .line 279
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/compiler/JvstTypeChecker;->className:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public addNullIfVoid()V
    .locals 2

    .line 37
    iget v0, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    const/16 v1, 0x158

    if-ne v0, v1, :cond_0

    const/16 v0, 0x133

    .line 38
    iput v0, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    const-string v0, "java/lang/Object"

    .line 40
    iput-object v0, p0, Ljavassist/compiler/JvstTypeChecker;->className:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public atCallExpr(Ljavassist/compiler/ast/CallExpr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 142
    invoke-virtual {p1}, Ljavassist/compiler/ast/CallExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 143
    instance-of v1, v0, Ljavassist/compiler/ast/Member;

    if-eqz v1, :cond_1

    .line 144
    check-cast v0, Ljavassist/compiler/ast/Member;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v1, v1, Ljavassist/compiler/JvstCodeGen;->procHandler:Ljavassist/compiler/ProceedHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v1, v1, Ljavassist/compiler/JvstCodeGen;->proceedName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v0, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v0, v0, Ljavassist/compiler/JvstCodeGen;->procHandler:Ljavassist/compiler/ProceedHandler;

    invoke-virtual {p1}, Ljavassist/compiler/ast/CallExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    check-cast p1, Ljavassist/compiler/ast/ASTList;

    invoke-interface {v0, p0, p1}, Ljavassist/compiler/ProceedHandler;->setReturnType(Ljavassist/compiler/JvstTypeChecker;Ljavassist/compiler/ast/ASTList;)V

    return-void

    :cond_0
    const-string v1, "$cflow"

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p1}, Ljavassist/compiler/ast/CallExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    check-cast p1, Ljavassist/compiler/ast/ASTList;

    invoke-virtual {p0, p1}, Ljavassist/compiler/JvstTypeChecker;->atCflow(Ljavassist/compiler/ast/ASTList;)V

    return-void

    .line 157
    :cond_1
    invoke-super {p0, p1}, Ljavassist/compiler/TypeChecker;->atCallExpr(Ljavassist/compiler/ast/CallExpr;)V

    return-void
.end method

.method public atCastExpr(Ljavassist/compiler/ast/CastExpr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 88
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getClassName()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getArrayDim()I

    move-result v1

    if-nez v1, :cond_1

    .line 90
    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 91
    instance-of v2, v1, Ljavassist/compiler/ast/Symbol;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 92
    check-cast v1, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v1}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v1, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v1, v1, Ljavassist/compiler/JvstCodeGen;->returnCastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p0, p1}, Ljavassist/compiler/JvstTypeChecker;->atCastToRtype(Ljavassist/compiler/ast/CastExpr;)V

    return-void

    :cond_0
    const-string v1, "$w"

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0, p1}, Ljavassist/compiler/JvstTypeChecker;->atCastToWrapper(Ljavassist/compiler/ast/CastExpr;)V

    return-void

    .line 104
    :cond_1
    invoke-super {p0, p1}, Ljavassist/compiler/TypeChecker;->atCastExpr(Ljavassist/compiler/ast/CastExpr;)V

    return-void
.end method

.method protected atCastToRtype(Ljavassist/compiler/ast/CastExpr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v0, v0, Ljavassist/compiler/JvstCodeGen;->returnType:Ljavassist/CtClass;

    .line 113
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getOprand()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 114
    iget p1, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    const/16 v1, 0x158

    if-eq p1, v1, :cond_1

    iget p1, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    invoke-static {p1}, Ljavassist/compiler/CodeGen;->isRefType(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    if-lez p1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    instance-of p1, v0, Ljavassist/CtPrimitiveType;

    if-eqz p1, :cond_2

    .line 117
    check-cast v0, Ljavassist/CtPrimitiveType;

    .line 118
    invoke-virtual {v0}, Ljavassist/CtPrimitiveType;->getDescriptor()C

    move-result p1

    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result p1

    .line 119
    iput p1, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    const/4 p1, 0x0

    .line 120
    iput p1, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    const/4 p1, 0x0

    .line 121
    iput-object p1, p0, Ljavassist/compiler/JvstTypeChecker;->className:Ljava/lang/String;

    goto :goto_1

    .line 115
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Ljavassist/compiler/JvstTypeChecker;->compileUnwrapValue(Ljavassist/CtClass;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected atCastToWrapper(Ljavassist/compiler/ast/CastExpr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getOprand()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 127
    iget p1, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    invoke-static {p1}, Ljavassist/compiler/CodeGen;->isRefType(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    if-lez p1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget-object p1, p0, Ljavassist/compiler/JvstTypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    iget v0, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    iget v1, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    iget-object v2, p0, Ljavassist/compiler/JvstTypeChecker;->className:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Ljavassist/compiler/MemberResolver;->lookupClass(IILjava/lang/String;)Ljavassist/CtClass;

    move-result-object p1

    .line 131
    instance-of p1, p1, Ljavassist/CtPrimitiveType;

    if-eqz p1, :cond_1

    const/16 p1, 0x133

    .line 132
    iput p1, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    const/4 p1, 0x0

    .line 133
    iput p1, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    const-string p1, "java/lang/Object"

    .line 134
    iput-object p1, p0, Ljavassist/compiler/JvstTypeChecker;->className:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method protected atCflow(Ljavassist/compiler/ast/ASTList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/16 p1, 0x144

    .line 163
    iput p1, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    const/4 p1, 0x0

    .line 164
    iput p1, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    const/4 p1, 0x0

    .line 165
    iput-object p1, p0, Ljavassist/compiler/JvstTypeChecker;->className:Ljava/lang/String;

    return-void
.end method

.method protected atFieldAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 72
    instance-of v0, p3, Ljavassist/compiler/ast/Member;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Ljavassist/compiler/ast/Member;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v1, v1, Ljavassist/compiler/JvstCodeGen;->paramArrayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p4, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 75
    iget-object p1, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object p1, p1, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    if-nez p1, :cond_0

    return-void

    .line 79
    :cond_0
    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    .line 81
    aget-object p4, p1, p3

    invoke-virtual {p0, p4}, Ljavassist/compiler/JvstTypeChecker;->compileUnwrapValue(Ljavassist/CtClass;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 84
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Ljavassist/compiler/TypeChecker;->atFieldAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    :cond_2
    return-void
.end method

.method public atMember(Ljavassist/compiler/ast/Member;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 48
    invoke-virtual {p1}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v0

    .line 49
    iget-object v1, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v1, v1, Ljavassist/compiler/JvstCodeGen;->paramArrayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x133

    if-eqz v1, :cond_0

    .line 50
    iput v3, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    .line 51
    iput v2, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    const-string p1, "java/lang/Object"

    .line 52
    iput-object p1, p0, Ljavassist/compiler/JvstTypeChecker;->className:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v1, "$sig"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "java/lang/Class"

    if-eqz v1, :cond_1

    .line 55
    iput v3, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    .line 56
    iput v2, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    .line 57
    iput-object v4, p0, Ljavassist/compiler/JvstTypeChecker;->className:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, "$type"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "$class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 66
    :cond_2
    invoke-super {p0, p1}, Ljavassist/compiler/TypeChecker;->atMember(Ljavassist/compiler/ast/Member;)V

    goto :goto_1

    .line 61
    :cond_3
    :goto_0
    iput v3, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    const/4 p1, 0x0

    .line 62
    iput p1, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    .line 63
    iput-object v4, p0, Ljavassist/compiler/JvstTypeChecker;->className:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v0, v0, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    .line 203
    iget-object v1, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v1, v1, Ljavassist/compiler/JvstCodeGen;->paramListName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 206
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    .line 207
    instance-of v5, v4, Ljavassist/compiler/ast/Member;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Ljavassist/compiler/ast/Member;

    invoke-virtual {v5}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v0, :cond_1

    .line 209
    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    .line 211
    aget-object v6, v0, v5

    .line 212
    invoke-virtual {p0, v6}, Ljavassist/compiler/JvstTypeChecker;->setType(Ljavassist/CtClass;)V

    .line 213
    iget v6, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    aput v6, p2, v3

    .line 214
    iget v6, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    aput v6, p3, v3

    .line 215
    iget-object v6, p0, Ljavassist/compiler/JvstTypeChecker;->className:Ljava/lang/String;

    aput-object v6, p4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 221
    :cond_0
    invoke-virtual {v4, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 222
    iget v4, p0, Ljavassist/compiler/JvstTypeChecker;->exprType:I

    aput v4, p2, v3

    .line 223
    iget v4, p0, Ljavassist/compiler/JvstTypeChecker;->arrayDim:I

    aput v4, p3, v3

    .line 224
    iget-object v4, p0, Ljavassist/compiler/JvstTypeChecker;->className:Ljava/lang/String;

    aput-object v4, p4, v3

    add-int/lit8 v3, v3, 0x1

    .line 228
    :cond_1
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    goto :goto_0

    :cond_2
    return-void
.end method

.method compileInvokeSpecial(Ljavassist/compiler/ast/ASTree;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavassist/compiler/ast/ASTList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 239
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 240
    invoke-virtual {p0, p5}, Ljavassist/compiler/JvstTypeChecker;->getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I

    move-result p1

    .line 241
    new-array p2, p1, [I

    new-array p3, p1, [I

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p5, p2, p3, p1}, Ljavassist/compiler/JvstTypeChecker;->atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0, p4}, Ljavassist/compiler/JvstTypeChecker;->setReturnType(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Ljavassist/compiler/JvstTypeChecker;->addNullIfVoid()V

    return-void
.end method

.method protected compileUnwrapValue(Ljavassist/CtClass;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 249
    sget-object v0, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_0

    .line 250
    invoke-virtual {p0}, Ljavassist/compiler/JvstTypeChecker;->addNullIfVoid()V

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/compiler/JvstTypeChecker;->setType(Ljavassist/CtClass;)V

    :goto_0
    return-void
.end method

.method public getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I
    .locals 4

    .line 183
    iget-object v0, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v0, v0, Ljavassist/compiler/JvstCodeGen;->paramListName:Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 186
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    .line 187
    instance-of v3, v2, Ljavassist/compiler/ast/Member;

    if-eqz v3, :cond_0

    check-cast v2, Ljavassist/compiler/ast/Member;

    invoke-virtual {v2}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v2, v2, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    if-eqz v2, :cond_1

    .line 189
    iget-object v2, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v2, v2, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 194
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isParamListName(Ljavassist/compiler/ast/ASTList;)Z
    .locals 2

    .line 172
    iget-object v0, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v0, v0, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    .line 175
    instance-of v0, p1, Ljavassist/compiler/ast/Member;

    if-eqz v0, :cond_0

    check-cast p1, Ljavassist/compiler/ast/Member;

    invoke-virtual {p1}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ljavassist/compiler/JvstTypeChecker;->codeGen:Ljavassist/compiler/JvstCodeGen;

    iget-object v0, v0, Ljavassist/compiler/JvstCodeGen;->paramListName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public setType(Ljavassist/CtClass;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 v0, 0x0

    .line 259
    invoke-direct {p0, p1, v0}, Ljavassist/compiler/JvstTypeChecker;->setType(Ljavassist/CtClass;I)V

    return-void
.end method
