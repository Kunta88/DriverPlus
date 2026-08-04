.class public Ljavassist/compiler/JvstCodeGen;
.super Ljavassist/compiler/MemberCodeGen;
.source "JvstCodeGen.java"


# static fields
.field public static final cflowName:Ljava/lang/String; = "$cflow"

.field public static final clazzName:Ljava/lang/String; = "$class"

.field public static final dollarTypeName:Ljava/lang/String; = "$type"

.field public static final sigName:Ljava/lang/String; = "$sig"

.field public static final wrapperCastName:Ljava/lang/String; = "$w"


# instance fields
.field private dollarType:Ljavassist/CtClass;

.field private param0Type:Ljava/lang/String;

.field paramArrayName:Ljava/lang/String;

.field paramListName:Ljava/lang/String;

.field paramTypeList:[Ljavassist/CtClass;

.field private paramVarBase:I

.field procHandler:Ljavassist/compiler/ProceedHandler;

.field proceedName:Ljava/lang/String;

.field returnCastName:Ljava/lang/String;

.field returnType:Ljavassist/CtClass;

.field private returnVarName:Ljava/lang/String;

.field private useParam0:Z


# direct methods
.method public constructor <init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;Ljavassist/ClassPool;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2, p3}, Ljavassist/compiler/MemberCodeGen;-><init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;Ljavassist/ClassPool;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->paramArrayName:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->paramListName:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Ljavassist/compiler/JvstCodeGen;->paramVarBase:I

    .line 31
    iput-boolean v0, p0, Ljavassist/compiler/JvstCodeGen;->useParam0:Z

    .line 32
    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->param0Type:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->dollarType:Ljavassist/CtClass;

    .line 37
    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->returnType:Ljavassist/CtClass;

    .line 38
    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->returnCastName:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->returnVarName:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->proceedName:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->procHandler:Ljavassist/compiler/ProceedHandler;

    .line 47
    new-instance p1, Ljavassist/compiler/JvstTypeChecker;

    invoke-direct {p1, p2, p3, p0}, Ljavassist/compiler/JvstTypeChecker;-><init>(Ljavassist/CtClass;Ljavassist/ClassPool;Ljavassist/compiler/JvstCodeGen;)V

    invoke-virtual {p0, p1}, Ljavassist/compiler/JvstCodeGen;->setTypeChecker(Ljavassist/compiler/TypeChecker;)V

    return-void
.end method

.method private callGetType(Ljava/lang/String;)V
    .locals 3

    .line 116
    iget-object v0, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string v1, "javassist/runtime/Desc"

    const-string v2, "(Ljava/lang/String;)Ljava/lang/Class;"

    invoke-virtual {v0, v1, p1, v2}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x133

    .line 118
    iput p1, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    const/4 p1, 0x0

    .line 119
    iput p1, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    const-string p1, "java/lang/Class"

    .line 120
    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    return-void
.end method

.method public static compileParameterList(Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;I)I
    .locals 7

    const-string v0, "java.lang.Object"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 608
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 609
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addAnewarray(Ljava/lang/String;)V

    return v2

    :cond_0
    new-array v2, v2, [Ljavassist/CtClass;

    .line 614
    array-length v3, p1

    .line 615
    invoke-virtual {p0, v3}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 616
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addAnewarray(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    const/16 v4, 0x59

    .line 618
    invoke-virtual {p0, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 619
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 620
    aget-object v5, p1, v0

    invoke-virtual {v5}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 621
    aget-object v5, p1, v0

    check-cast v5, Ljavassist/CtPrimitiveType;

    .line 622
    invoke-virtual {v5}, Ljavassist/CtPrimitiveType;->getWrapperName()Ljava/lang/String;

    move-result-object v6

    .line 623
    invoke-virtual {p0, v6}, Ljavassist/bytecode/Bytecode;->addNew(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p0, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 625
    invoke-virtual {p0, p2, v5}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    move-result v4

    add-int/2addr p2, v4

    aput-object v5, v2, v1

    .line 628
    sget-object v4, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    invoke-static {v4, v2}, Ljavassist/bytecode/Descriptor;->ofMethod(Ljavassist/CtClass;[Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "<init>"

    invoke-virtual {p0, v6, v5, v4}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 633
    :cond_1
    invoke-virtual {p0, p2}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    add-int/lit8 p2, p2, 0x1

    :goto_1
    const/16 v4, 0x53

    .line 637
    invoke-virtual {p0, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 p0, 0x8

    return p0
.end method

.method private indexOfParam1()I
    .locals 2

    .line 53
    iget v0, p0, Ljavassist/compiler/JvstCodeGen;->paramVarBase:I

    iget-boolean v1, p0, Ljavassist/compiler/JvstCodeGen;->useParam0:Z

    add-int/2addr v0, v1

    return v0
.end method

.method private static makeCflowName(Ljava/lang/StringBuffer;Ljavassist/compiler/ast/ASTree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 277
    instance-of v0, p1, Ljavassist/compiler/ast/Symbol;

    if-eqz v0, :cond_0

    .line 278
    check-cast p1, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {p1}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    .line 281
    :cond_0
    instance-of v0, p1, Ljavassist/compiler/ast/Expr;

    if-eqz v0, :cond_1

    .line 282
    check-cast p1, Ljavassist/compiler/ast/Expr;

    .line 283
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_1

    .line 284
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-static {p0, v0}, Ljavassist/compiler/JvstCodeGen;->makeCflowName(Ljava/lang/StringBuffer;Ljavassist/compiler/ast/ASTree;)V

    .line 285
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 286
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-static {p0, p1}, Ljavassist/compiler/JvstCodeGen;->makeCflowName(Ljava/lang/StringBuffer;Ljavassist/compiler/ast/ASTree;)V

    return-void

    .line 291
    :cond_1
    new-instance p0, Ljavassist/compiler/CompileError;

    const-string p1, "bad $cflow"

    invoke-direct {p0, p1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private recordVar(Ljavassist/CtClass;Ljava/lang/String;ILjavassist/compiler/SymbolTable;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 552
    sget-object v0, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_0

    const/16 p1, 0x133

    .line 553
    iput p1, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    const/4 p1, 0x0

    .line 554
    iput p1, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    const-string p1, "java/lang/Object"

    .line 555
    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    goto :goto_0

    .line 558
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/compiler/JvstCodeGen;->setType(Ljavassist/CtClass;)V

    .line 560
    :goto_0
    new-instance p1, Ljavassist/compiler/ast/Declarator;

    iget v1, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    iget-object v2, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    iget v3, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    new-instance v5, Ljavassist/compiler/ast/Symbol;

    invoke-direct {v5, p2}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Ljavassist/compiler/ast/Declarator;-><init>(ILjava/lang/String;IILjavassist/compiler/ast/Symbol;)V

    .line 563
    invoke-virtual {p4, p2, p1}, Ljavassist/compiler/SymbolTable;->append(Ljava/lang/String;Ljavassist/compiler/ast/Declarator;)V

    .line 564
    iget p1, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    iget p2, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    invoke-static {p1, p2}, Ljavassist/compiler/JvstCodeGen;->is2word(II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private setType(Ljavassist/CtClass;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 678
    invoke-virtual {p1}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    check-cast p1, Ljavassist/CtPrimitiveType;

    .line 680
    invoke-virtual {p1}, Ljavassist/CtPrimitiveType;->getDescriptor()C

    move-result p1

    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result p1

    iput p1, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    .line 681
    iput p2, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    const/4 p1, 0x0

    .line 682
    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    goto :goto_0

    .line 684
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtClass;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 686
    :try_start_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getComponentType()Ljavassist/CtClass;

    move-result-object v0

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, v0, p2}, Ljavassist/compiler/JvstCodeGen;->setType(Ljavassist/CtClass;I)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 689
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

    .line 692
    iput v0, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    .line 693
    iput p2, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    .line 694
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public addNullIfVoid()V
    .locals 2

    .line 70
    iget v0, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    const/16 v1, 0x158

    if-ne v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    const/16 v0, 0x133

    .line 72
    iput v0, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    const-string v0, "java/lang/Object"

    .line 74
    iput-object v0, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected atAssignParamList([Ljavassist/CtClass;Ljavassist/bytecode/Bytecode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-direct {p0}, Ljavassist/compiler/JvstCodeGen;->indexOfParam1()I

    move-result v0

    .line 150
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    const/16 v3, 0x59

    .line 152
    invoke-virtual {p2, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 153
    invoke-virtual {p2, v2}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    const/16 v3, 0x32

    .line 154
    invoke-virtual {p2, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 155
    aget-object v3, p1, v2

    invoke-virtual {p0, v3, p2}, Ljavassist/compiler/JvstCodeGen;->compileUnwrapValue(Ljavassist/CtClass;Ljavassist/bytecode/Bytecode;)V

    .line 156
    aget-object v3, p1, v2

    invoke-virtual {p2, v0, v3}, Ljavassist/bytecode/Bytecode;->addStore(ILjavassist/CtClass;)I

    .line 157
    iget v3, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    iget v4, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    invoke-static {v3, v4}, Ljavassist/compiler/JvstCodeGen;->is2word(II)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public atCallExpr(Ljavassist/compiler/ast/CallExpr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 231
    invoke-virtual {p1}, Ljavassist/compiler/ast/CallExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 232
    instance-of v1, v0, Ljavassist/compiler/ast/Member;

    if-eqz v1, :cond_1

    .line 233
    check-cast v0, Ljavassist/compiler/ast/Member;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v0

    .line 234
    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->procHandler:Ljavassist/compiler/ProceedHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->proceedName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v0, p0, Ljavassist/compiler/JvstCodeGen;->procHandler:Ljavassist/compiler/ProceedHandler;

    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/compiler/ast/CallExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    check-cast p1, Ljavassist/compiler/ast/ASTList;

    invoke-interface {v0, p0, v1, p1}, Ljavassist/compiler/ProceedHandler;->doit(Ljavassist/compiler/JvstCodeGen;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/ast/ASTList;)V

    return-void

    :cond_0
    const-string v1, "$cflow"

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p1}, Ljavassist/compiler/ast/CallExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    check-cast p1, Ljavassist/compiler/ast/ASTList;

    invoke-virtual {p0, p1}, Ljavassist/compiler/JvstCodeGen;->atCflow(Ljavassist/compiler/ast/ASTList;)V

    return-void

    .line 244
    :cond_1
    invoke-super {p0, p1}, Ljavassist/compiler/MemberCodeGen;->atCallExpr(Ljavassist/compiler/ast/CallExpr;)V

    return-void
.end method

.method public atCastExpr(Ljavassist/compiler/ast/CastExpr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 162
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getClassName()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getArrayDim()I

    move-result v1

    if-nez v1, :cond_1

    .line 164
    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 165
    instance-of v2, v1, Ljavassist/compiler/ast/Symbol;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 166
    check-cast v1, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v1}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v0

    .line 167
    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->returnCastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {p0, p1}, Ljavassist/compiler/JvstCodeGen;->atCastToRtype(Ljavassist/compiler/ast/CastExpr;)V

    return-void

    :cond_0
    const-string v1, "$w"

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0, p1}, Ljavassist/compiler/JvstCodeGen;->atCastToWrapper(Ljavassist/compiler/ast/CastExpr;)V

    return-void

    .line 178
    :cond_1
    invoke-super {p0, p1}, Ljavassist/compiler/MemberCodeGen;->atCastExpr(Ljavassist/compiler/ast/CastExpr;)V

    return-void
.end method

.method protected atCastToRtype(Ljavassist/compiler/ast/CastExpr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 186
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getOprand()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 187
    iget p1, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    const/16 v0, 0x158

    if-eq p1, v0, :cond_2

    iget p1, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    invoke-static {p1}, Ljavassist/compiler/JvstCodeGen;->isRefType(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget p1, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    if-lez p1, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    iget-object p1, p0, Ljavassist/compiler/JvstCodeGen;->returnType:Ljavassist/CtClass;

    instance-of v0, p1, Ljavassist/CtPrimitiveType;

    if-eqz v0, :cond_1

    .line 190
    check-cast p1, Ljavassist/CtPrimitiveType;

    .line 191
    invoke-virtual {p1}, Ljavassist/CtPrimitiveType;->getDescriptor()C

    move-result p1

    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result p1

    .line 192
    iget v0, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    invoke-virtual {p0, v0, p1}, Ljavassist/compiler/JvstCodeGen;->atNumCastExpr(II)V

    .line 193
    iput p1, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    const/4 p1, 0x0

    .line 194
    iput p1, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    const/4 p1, 0x0

    .line 195
    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    goto :goto_1

    .line 198
    :cond_1
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string v0, "invalid cast"

    invoke-direct {p1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_2
    :goto_0
    iget-object p1, p0, Ljavassist/compiler/JvstCodeGen;->returnType:Ljavassist/CtClass;

    iget-object v0, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p0, p1, v0}, Ljavassist/compiler/JvstCodeGen;->compileUnwrapValue(Ljavassist/CtClass;Ljavassist/bytecode/Bytecode;)V

    :goto_1
    return-void
.end method

.method protected atCastToWrapper(Ljavassist/compiler/ast/CastExpr;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 202
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getOprand()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 203
    iget p1, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    invoke-static {p1}, Ljavassist/compiler/JvstCodeGen;->isRefType(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget p1, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    if-lez p1, :cond_0

    goto :goto_1

    .line 206
    :cond_0
    iget-object p1, p0, Ljavassist/compiler/JvstCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    iget v0, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    iget v1, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    iget-object v2, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Ljavassist/compiler/MemberResolver;->lookupClass(IILjava/lang/String;)Ljavassist/CtClass;

    move-result-object p1

    .line 207
    instance-of v0, p1, Ljavassist/CtPrimitiveType;

    if-eqz v0, :cond_2

    .line 208
    check-cast p1, Ljavassist/CtPrimitiveType;

    .line 209
    invoke-virtual {p1}, Ljavassist/CtPrimitiveType;->getWrapperName()Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/Bytecode;->addNew(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 212
    invoke-virtual {p1}, Ljavassist/CtPrimitiveType;->getDataSize()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 213
    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v2, 0x5e

    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 217
    :goto_0
    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v2, 0x58

    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 218
    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljavassist/CtPrimitiveType;->getDescriptor()C

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ")V"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "<init>"

    invoke-virtual {v1, v0, v2, p1}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x133

    .line 221
    iput p1, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    const/4 p1, 0x0

    .line 222
    iput p1, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    const-string p1, "java/lang/Object"

    .line 223
    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void
.end method

.method protected atCflow(Ljavassist/compiler/ast/ASTList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_1

    .line 251
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 254
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-static {v0, p1}, Ljavassist/compiler/JvstCodeGen;->makeCflowName(Ljava/lang/StringBuffer;Ljavassist/compiler/ast/ASTree;)V

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 256
    iget-object v0, p0, Ljavassist/compiler/JvstCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v0}, Ljavassist/compiler/MemberResolver;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavassist/ClassPool;->lookupCflow(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object p1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    const-string v3, "Ljavassist/runtime/Cflow;"

    invoke-virtual {p1, v2, v0, v3}, Ljavassist/bytecode/Bytecode;->addGetstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object p1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string v0, "javassist.runtime.Cflow"

    const-string v2, "value"

    const-string v3, "()I"

    invoke-virtual {p1, v0, v2, v3}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x144

    .line 264
    iput p1, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    .line 265
    iput v1, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    const/4 p1, 0x0

    .line 266
    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    return-void

    .line 258
    :cond_0
    new-instance v0, Ljavassist/compiler/CompileError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such $cflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string v0, "bad $cflow"

    invoke-direct {p1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected atFieldAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 126
    instance-of v0, p3, Ljavassist/compiler/ast/Member;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Ljavassist/compiler/ast/Member;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->paramArrayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x3d

    if-ne p2, p1, :cond_1

    .line 131
    invoke-virtual {p4, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 132
    iget p1, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget p1, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    const/16 p2, 0x133

    if-ne p1, p2, :cond_0

    .line 135
    iget-object p1, p0, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    iget-object p2, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p0, p1, p2}, Ljavassist/compiler/JvstCodeGen;->atAssignParamList([Ljavassist/CtClass;Ljavassist/bytecode/Bytecode;)V

    if-nez p5, :cond_3

    .line 137
    iget-object p1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 p2, 0x57

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 133
    :cond_0
    new-instance p1, Ljavassist/compiler/CompileError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid type for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Ljavassist/compiler/JvstCodeGen;->paramArrayName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_1
    new-instance p1, Ljavassist/compiler/CompileError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bad operator for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Ljavassist/compiler/JvstCodeGen;->paramArrayName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_2
    invoke-super/range {p0 .. p5}, Ljavassist/compiler/MemberCodeGen;->atFieldAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public atMember(Ljavassist/compiler/ast/Member;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->paramArrayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x133

    if-eqz v1, :cond_0

    .line 84
    iget-object p1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    iget-object v0, p0, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    invoke-direct {p0}, Ljavassist/compiler/JvstCodeGen;->indexOfParam1()I

    move-result v1

    invoke-static {p1, v0, v1}, Ljavassist/compiler/JvstCodeGen;->compileParameterList(Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;I)I

    .line 85
    iput v3, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    .line 86
    iput v2, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    const-string p1, "java/lang/Object"

    .line 87
    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    goto/16 :goto_0

    :cond_0
    const-string v1, "$sig"

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    iget-object p1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    iget-object v0, p0, Ljavassist/compiler/JvstCodeGen;->returnType:Ljavassist/CtClass;

    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    invoke-static {v0, v1}, Ljavassist/bytecode/Descriptor;->ofMethod(Ljavassist/CtClass;[Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addLdc(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string v0, "javassist/runtime/Desc"

    const-string v1, "getParams"

    const-string v4, "(Ljava/lang/String;)[Ljava/lang/Class;"

    invoke-virtual {p1, v0, v1, v4}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iput v3, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    .line 94
    iput v2, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    const-string p1, "java/lang/Class"

    .line 95
    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "$type"

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    iget-object p1, p0, Ljavassist/compiler/JvstCodeGen;->dollarType:Ljavassist/CtClass;

    if-eqz p1, :cond_2

    .line 101
    iget-object p1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    iget-object v0, p0, Ljavassist/compiler/JvstCodeGen;->dollarType:Ljavassist/CtClass;

    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addLdc(Ljava/lang/String;)V

    const-string p1, "getType"

    .line 102
    invoke-direct {p0, p1}, Ljavassist/compiler/JvstCodeGen;->callGetType(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_2
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string v0, "$type is not available"

    invoke-direct {p1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string v1, "$class"

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 105
    iget-object p1, p0, Ljavassist/compiler/JvstCodeGen;->param0Type:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 108
    iget-object p1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    iget-object v0, p0, Ljavassist/compiler/JvstCodeGen;->param0Type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addLdc(Ljava/lang/String;)V

    const-string p1, "getClazz"

    .line 109
    invoke-direct {p0, p1}, Ljavassist/compiler/JvstCodeGen;->callGetType(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_4
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string v0, "$class is not available"

    invoke-direct {p1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_5
    invoke-super {p0, p1}, Ljavassist/compiler/MemberCodeGen;->atMember(Ljavassist/compiler/ast/Member;)V

    :goto_0
    return-void
.end method

.method public atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    .line 338
    iget-object v1, p0, Ljavassist/compiler/JvstCodeGen;->paramListName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 341
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    .line 342
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

    .line 344
    array-length v4, v0

    .line 345
    invoke-direct {p0}, Ljavassist/compiler/JvstCodeGen;->indexOfParam1()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_1

    .line 347
    aget-object v7, v0, v6

    .line 348
    iget-object v8, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v8, v5, v7}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    move-result v8

    add-int/2addr v5, v8

    .line 349
    invoke-virtual {p0, v7}, Ljavassist/compiler/JvstCodeGen;->setType(Ljavassist/CtClass;)V

    .line 350
    iget v7, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    aput v7, p2, v3

    .line 351
    iget v7, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    aput v7, p3, v3

    .line 352
    iget-object v7, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    aput-object v7, p4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 358
    :cond_0
    invoke-virtual {v4, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 359
    iget v4, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    aput v4, p2, v3

    .line 360
    iget v4, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    aput v4, p3, v3

    .line 361
    iget-object v4, p0, Ljavassist/compiler/JvstCodeGen;->className:Ljava/lang/String;

    aput-object v4, p4, v3

    add-int/lit8 v3, v3, 0x1

    .line 365
    :cond_1
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected atReturnStmnt(Ljavassist/compiler/ast/Stmnt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 414
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 415
    iget-object v0, p0, Ljavassist/compiler/JvstCodeGen;->returnType:Ljavassist/CtClass;

    sget-object v1, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    if-ne v0, v1, :cond_2

    .line 416
    invoke-virtual {p0, p1}, Ljavassist/compiler/JvstCodeGen;->compileExpr(Ljavassist/compiler/ast/ASTree;)V

    .line 417
    iget p1, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    iget v0, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    invoke-static {p1, v0}, Ljavassist/compiler/JvstCodeGen;->is2word(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 418
    iget-object p1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v0, 0x58

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 419
    :cond_0
    iget p1, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    const/16 v0, 0x158

    if-eq p1, v0, :cond_1

    .line 420
    iget-object p1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v0, 0x57

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 425
    :cond_2
    invoke-virtual {p0, p1}, Ljavassist/compiler/JvstCodeGen;->atReturnStmnt2(Ljavassist/compiler/ast/ASTree;)V

    return-void
.end method

.method compileInvokeSpecial(Ljavassist/compiler/ast/ASTree;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavassist/compiler/ast/ASTList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 401
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 402
    invoke-virtual {p0, p5}, Ljavassist/compiler/JvstCodeGen;->getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I

    move-result p1

    .line 403
    new-array v0, p1, [I

    new-array v1, p1, [I

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p5, v0, v1, p1}, Ljavassist/compiler/JvstCodeGen;->atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V

    .line 405
    iget-object p1, p0, Ljavassist/compiler/JvstCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, p2, p3, p4}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 406
    invoke-virtual {p0, p4, p1, p1}, Ljavassist/compiler/JvstCodeGen;->setReturnType(Ljava/lang/String;ZZ)V

    .line 407
    invoke-virtual {p0}, Ljavassist/compiler/JvstCodeGen;->addNullIfVoid()V

    return-void
.end method

.method protected compileUnwrapValue(Ljavassist/CtClass;Ljavassist/bytecode/Bytecode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 647
    sget-object v0, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_0

    .line 648
    invoke-virtual {p0}, Ljavassist/compiler/JvstCodeGen;->addNullIfVoid()V

    return-void

    .line 652
    :cond_0
    iget v0, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    const/16 v1, 0x158

    if-eq v0, v1, :cond_2

    .line 655
    instance-of v0, p1, Ljavassist/CtPrimitiveType;

    if-eqz v0, :cond_1

    .line 656
    move-object v0, p1

    check-cast v0, Ljavassist/CtPrimitiveType;

    .line 658
    invoke-virtual {v0}, Ljavassist/CtPrimitiveType;->getWrapperName()Ljava/lang/String;

    move-result-object v1

    .line 659
    invoke-virtual {p2, v1}, Ljavassist/bytecode/Bytecode;->addCheckcast(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v0}, Ljavassist/CtPrimitiveType;->getGetMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavassist/CtPrimitiveType;->getGetMethodDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v2, v0}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-virtual {p0, p1}, Ljavassist/compiler/JvstCodeGen;->setType(Ljavassist/CtClass;)V

    goto :goto_0

    .line 665
    :cond_1
    invoke-virtual {p2, p1}, Ljavassist/bytecode/Bytecode;->addCheckcast(Ljavassist/CtClass;)V

    .line 666
    invoke-virtual {p0, p1}, Ljavassist/compiler/JvstCodeGen;->setType(Ljavassist/CtClass;)V

    :goto_0
    return-void

    .line 653
    :cond_2
    new-instance p1, Ljavassist/compiler/CompileError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid type for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Ljavassist/compiler/JvstCodeGen;->returnCastName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doNumCast(Ljavassist/CtClass;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 701
    iget v0, p0, Ljavassist/compiler/JvstCodeGen;->arrayDim:I

    if-nez v0, :cond_1

    iget v0, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    invoke-static {v0}, Ljavassist/compiler/JvstCodeGen;->isRefType(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 702
    instance-of v0, p1, Ljavassist/CtPrimitiveType;

    if-eqz v0, :cond_0

    .line 703
    check-cast p1, Ljavassist/CtPrimitiveType;

    .line 704
    iget v0, p0, Ljavassist/compiler/JvstCodeGen;->exprType:I

    invoke-virtual {p1}, Ljavassist/CtPrimitiveType;->getDescriptor()C

    move-result p1

    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljavassist/compiler/JvstCodeGen;->atNumCastExpr(II)V

    goto :goto_0

    .line 708
    :cond_0
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string v0, "type mismatch"

    invoke-direct {p1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I
    .locals 4

    .line 318
    iget-object v0, p0, Ljavassist/compiler/JvstCodeGen;->paramListName:Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 321
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    .line 322
    instance-of v3, v2, Ljavassist/compiler/ast/Member;

    if-eqz v3, :cond_0

    check-cast v2, Ljavassist/compiler/ast/Member;

    invoke-virtual {v2}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    iget-object v2, p0, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    if-eqz v2, :cond_1

    .line 324
    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 329
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

    .line 298
    iget-object v0, p0, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 300
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    .line 301
    instance-of v0, p1, Ljavassist/compiler/ast/Member;

    if-eqz v0, :cond_0

    check-cast p1, Ljavassist/compiler/ast/Member;

    invoke-virtual {p1}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ljavassist/compiler/JvstCodeGen;->paramListName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public recordParams([Ljavassist/CtClass;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavassist/compiler/SymbolTable;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    xor-int/lit8 v6, p2, 0x1

    const/4 v7, 0x0

    .line 471
    invoke-virtual {p0}, Ljavassist/compiler/JvstCodeGen;->getThisName()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Ljavassist/compiler/JvstCodeGen;->recordParams([Ljavassist/CtClass;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljavassist/compiler/SymbolTable;)I

    move-result v0

    return v0
.end method

.method public recordParams([Ljavassist/CtClass;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljavassist/compiler/SymbolTable;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 502
    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->paramTypeList:[Ljavassist/CtClass;

    .line 503
    iput-object p4, p0, Ljavassist/compiler/JvstCodeGen;->paramArrayName:Ljava/lang/String;

    .line 504
    iput-object p5, p0, Ljavassist/compiler/JvstCodeGen;->paramListName:Ljava/lang/String;

    .line 505
    iput p7, p0, Ljavassist/compiler/JvstCodeGen;->paramVarBase:I

    .line 506
    iput-boolean p6, p0, Ljavassist/compiler/JvstCodeGen;->useParam0:Z

    if-eqz p8, :cond_0

    .line 509
    invoke-static {p8}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Ljavassist/compiler/JvstCodeGen;->param0Type:Ljava/lang/String;

    .line 511
    :cond_0
    iput-boolean p2, p0, Ljavassist/compiler/JvstCodeGen;->inStaticMethod:Z

    if-eqz p6, :cond_1

    .line 514
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, "0"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 515
    new-instance p4, Ljavassist/compiler/ast/Declarator;

    const/16 v1, 0x133

    invoke-static {p8}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    add-int/lit8 p5, p7, 0x1

    new-instance v5, Ljavassist/compiler/ast/Symbol;

    invoke-direct {v5, p2}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    move-object v0, p4

    move v4, p7

    invoke-direct/range {v0 .. v5}, Ljavassist/compiler/ast/Declarator;-><init>(ILjava/lang/String;IILjavassist/compiler/ast/Symbol;)V

    .line 518
    invoke-virtual {p9, p2, p4}, Ljavassist/compiler/SymbolTable;->append(Ljava/lang/String;Ljavassist/compiler/ast/Declarator;)V

    move p7, p5

    :cond_1
    const/4 p2, 0x0

    .line 521
    :goto_0
    array-length p4, p1

    if-ge p2, p4, :cond_2

    .line 522
    aget-object p4, p1, p2

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p0, p4, p5, p7, p9}, Ljavassist/compiler/JvstCodeGen;->recordVar(Ljavassist/CtClass;Ljava/lang/String;ILjavassist/compiler/SymbolTable;)I

    move-result p4

    add-int/2addr p7, p4

    goto :goto_0

    .line 524
    :cond_2
    invoke-virtual {p0}, Ljavassist/compiler/JvstCodeGen;->getMaxLocals()I

    move-result p1

    if-ge p1, p7, :cond_3

    .line 525
    invoke-virtual {p0, p7}, Ljavassist/compiler/JvstCodeGen;->setMaxLocals(I)V

    :cond_3
    return p7
.end method

.method public recordReturnType(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;Ljavassist/compiler/SymbolTable;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 441
    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->returnType:Ljavassist/CtClass;

    .line 442
    iput-object p2, p0, Ljavassist/compiler/JvstCodeGen;->returnCastName:Ljava/lang/String;

    .line 443
    iput-object p3, p0, Ljavassist/compiler/JvstCodeGen;->returnVarName:Ljava/lang/String;

    if-nez p3, :cond_0

    const/4 p1, -0x1

    return p1

    .line 447
    :cond_0
    invoke-virtual {p0}, Ljavassist/compiler/JvstCodeGen;->getMaxLocals()I

    move-result p2

    .line 448
    invoke-direct {p0, p1, p3, p2, p4}, Ljavassist/compiler/JvstCodeGen;->recordVar(Ljavassist/CtClass;Ljava/lang/String;ILjavassist/compiler/SymbolTable;)I

    move-result p1

    add-int/2addr p1, p2

    .line 449
    invoke-virtual {p0, p1}, Ljavassist/compiler/JvstCodeGen;->setMaxLocals(I)V

    return p2
.end method

.method public recordType(Ljavassist/CtClass;)V
    .locals 0

    .line 458
    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->dollarType:Ljavassist/CtClass;

    return-void
.end method

.method public recordVariable(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/compiler/SymbolTable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, -0x1

    return p1

    .line 542
    :cond_0
    invoke-virtual {p0}, Ljavassist/compiler/JvstCodeGen;->getMaxLocals()I

    move-result v0

    .line 543
    invoke-direct {p0, p1, p2, v0, p3}, Ljavassist/compiler/JvstCodeGen;->recordVar(Ljavassist/CtClass;Ljava/lang/String;ILjavassist/compiler/SymbolTable;)I

    move-result p1

    add-int/2addr p1, v0

    .line 544
    invoke-virtual {p0, p1}, Ljavassist/compiler/JvstCodeGen;->setMaxLocals(I)V

    return v0
.end method

.method public recordVariable(Ljava/lang/String;Ljava/lang/String;ILjavassist/compiler/SymbolTable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 579
    :goto_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 582
    :cond_0
    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result v2

    const/4 v0, 0x0

    const/16 v1, 0x133

    if-ne v2, v1, :cond_2

    const/4 v0, 0x1

    if-nez v4, :cond_1

    .line 586
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v4, 0x1

    .line 588
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v3, p1

    goto :goto_2

    :cond_2
    move-object v3, v0

    .line 591
    :goto_2
    new-instance p1, Ljavassist/compiler/ast/Declarator;

    new-instance v6, Ljavassist/compiler/ast/Symbol;

    invoke-direct {v6, p2}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Ljavassist/compiler/ast/Declarator;-><init>(ILjava/lang/String;IILjavassist/compiler/ast/Symbol;)V

    .line 593
    invoke-virtual {p4, p2, p1}, Ljavassist/compiler/SymbolTable;->append(Ljava/lang/String;Ljavassist/compiler/ast/Declarator;)V

    return-void
.end method

.method public setProceedHandler(Ljavassist/compiler/ProceedHandler;Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p2, p0, Ljavassist/compiler/JvstCodeGen;->proceedName:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Ljavassist/compiler/JvstCodeGen;->procHandler:Ljavassist/compiler/ProceedHandler;

    return-void
.end method

.method public setType(Ljavassist/CtClass;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 v0, 0x0

    .line 674
    invoke-direct {p0, p1, v0}, Ljavassist/compiler/JvstCodeGen;->setType(Ljavassist/CtClass;I)V

    return-void
.end method
