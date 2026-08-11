.class public Ljavassist/compiler/TypeChecker;
.super Ljavassist/compiler/ast/Visitor;
.source "TypeChecker.java"

# interfaces
.implements Ljavassist/bytecode/Opcode;
.implements Ljavassist/compiler/TokenId;


# static fields
.field static final javaLangObject:Ljava/lang/String; = "java.lang.Object"

.field static final jvmJavaLangClass:Ljava/lang/String; = "java/lang/Class"

.field static final jvmJavaLangObject:Ljava/lang/String; = "java/lang/Object"

.field static final jvmJavaLangString:Ljava/lang/String; = "java/lang/String"


# instance fields
.field protected arrayDim:I

.field protected className:Ljava/lang/String;

.field protected exprType:I

.field protected resolver:Ljavassist/compiler/MemberResolver;

.field protected thisClass:Ljavassist/CtClass;

.field protected thisMethod:Ljavassist/bytecode/MethodInfo;


# direct methods
.method public constructor <init>(Ljavassist/CtClass;Ljavassist/ClassPool;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljavassist/compiler/ast/Visitor;-><init>()V

    .line 45
    new-instance v0, Ljavassist/compiler/MemberResolver;

    invoke-direct {v0, p2}, Ljavassist/compiler/MemberResolver;-><init>(Ljavassist/ClassPool;)V

    iput-object v0, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    .line 46
    iput-object p1, p0, Ljavassist/compiler/TypeChecker;->thisClass:Ljavassist/CtClass;

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Ljavassist/compiler/TypeChecker;->thisMethod:Ljavassist/bytecode/MethodInfo;

    return-void
.end method

.method protected static argTypesToString([I[I[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x28

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 58
    array-length v1, p0

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 62
    :goto_0
    aget v3, p0, v2

    aget v4, p1, v2

    aget-object v5, p2, v2

    invoke-static {v0, v3, v4, v5}, Ljavassist/compiler/TypeChecker;->typeToString(Ljava/lang/StringBuffer;IILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_0

    const/16 v3, 0x2c

    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/16 p0, 0x29

    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private atArrayAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/Expr;Ljavassist/compiler/ast/ASTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 258
    invoke-virtual {p3}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-virtual {p3}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljavassist/compiler/TypeChecker;->atArrayRead(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    .line 259
    iget p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 260
    iget p2, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 261
    iget-object p3, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 262
    invoke-virtual {p4, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 263
    iput p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 264
    iput p2, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 265
    iput-object p3, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    return-void
.end method

.method private atFieldRead(Ljavassist/CtField;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 781
    invoke-virtual {p1}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object p1

    .line 782
    invoke-virtual {p1}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 786
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v2, v1

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 789
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    .line 792
    :cond_0
    iput v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 793
    invoke-static {v2}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result v0

    iput v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    const/16 v0, 0x4c

    if-ne v2, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    const/16 v0, 0x3b

    .line 796
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 798
    iput-object p1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private atFieldRead(Ljavassist/compiler/ast/ASTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 777
    invoke-virtual {p0, p1}, Ljavassist/compiler/TypeChecker;->fieldAccess(Ljavassist/compiler/ast/ASTree;)Ljavassist/CtField;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavassist/compiler/TypeChecker;->atFieldRead(Ljavassist/CtField;)V

    return-void
.end method

.method private atPlusExpr(Ljavassist/compiler/ast/BinExpr;)Ljavassist/compiler/ast/Expr;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 346
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 347
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 351
    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    return-object v2

    .line 355
    :cond_0
    invoke-static {v0}, Ljavassist/compiler/TypeChecker;->isPlusExpr(Ljavassist/compiler/ast/ASTree;)Z

    move-result v3

    const-string v4, "java/lang/StringBuffer"

    const/4 v5, 0x0

    const/16 v6, 0x133

    if-eqz v3, :cond_1

    .line 356
    move-object v3, v0

    check-cast v3, Ljavassist/compiler/ast/BinExpr;

    invoke-direct {p0, v3}, Ljavassist/compiler/TypeChecker;->atPlusExpr(Ljavassist/compiler/ast/BinExpr;)Ljavassist/compiler/ast/Expr;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 358
    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 359
    iput v6, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 360
    iput v5, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 361
    iput-object v4, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 362
    invoke-static {v3, v1}, Ljavassist/compiler/TypeChecker;->makeAppendCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object p1

    return-object p1

    .line 366
    :cond_1
    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 368
    :cond_2
    iget v3, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 369
    iget v7, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 370
    iget-object v8, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 371
    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    const/16 v9, 0x2b

    .line 373
    invoke-direct {p0, p1, v9, v0, v1}, Ljavassist/compiler/TypeChecker;->isConstant(Ljavassist/compiler/ast/BinExpr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Z

    move-result v10

    if-eqz v10, :cond_3

    return-object v2

    :cond_3
    const-string v10, "java/lang/String"

    if-ne v3, v6, :cond_4

    if-nez v7, :cond_4

    .line 376
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    iget v7, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    if-ne v7, v6, :cond_6

    iget v7, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    if-nez v7, :cond_6

    iget-object v7, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 379
    :cond_5
    new-instance p1, Ljavassist/compiler/ast/Symbol;

    const-string v3, "java"

    invoke-direct {p1, v3}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljavassist/compiler/ast/Symbol;

    const-string v7, "lang"

    invoke-direct {v3, v7}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljavassist/compiler/ast/Symbol;

    const-string v8, "StringBuffer"

    invoke-direct {v7, v8}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3, v7}, Ljavassist/compiler/ast/ASTList;->make(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    .line 381
    new-instance v3, Ljavassist/compiler/ast/NewExpr;

    invoke-direct {v3, p1, v2}, Ljavassist/compiler/ast/NewExpr;-><init>(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)V

    .line 382
    iput v6, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 383
    iput v5, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 384
    iput-object v4, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 385
    invoke-static {v3, v0}, Ljavassist/compiler/TypeChecker;->makeAppendCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object p1

    invoke-static {p1, v1}, Ljavassist/compiler/TypeChecker;->makeAppendCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object p1

    return-object p1

    .line 388
    :cond_6
    invoke-direct {p0, p1, v9, v3}, Ljavassist/compiler/TypeChecker;->computeBinExprType(Ljavassist/compiler/ast/BinExpr;II)V

    return-object v2
.end method

.method private atPlusPlus(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/Expr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 924
    invoke-virtual {p3}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object p2

    .line 926
    :cond_1
    instance-of p1, p2, Ljavassist/compiler/ast/Variable;

    if-eqz p1, :cond_2

    .line 927
    check-cast p2, Ljavassist/compiler/ast/Variable;

    invoke-virtual {p2}, Ljavassist/compiler/ast/Variable;->getDeclarator()Ljavassist/compiler/ast/Declarator;

    move-result-object p1

    .line 928
    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result p2

    iput p2, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 929
    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getArrayDim()I

    move-result p1

    iput p1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    goto :goto_1

    .line 932
    :cond_2
    instance-of p1, p2, Ljavassist/compiler/ast/Expr;

    if-eqz p1, :cond_5

    .line 933
    move-object p1, p2

    check-cast p1, Ljavassist/compiler/ast/Expr;

    .line 934
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result p3

    const/16 v0, 0x41

    if-ne p3, v0, :cond_5

    .line 935
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object p2

    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljavassist/compiler/TypeChecker;->atArrayRead(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    .line 937
    iget p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    const/16 p2, 0x144

    if-eq p1, p2, :cond_3

    const/16 p3, 0x12f

    if-eq p1, p3, :cond_3

    const/16 p3, 0x132

    if-eq p1, p3, :cond_3

    const/16 p3, 0x14e

    if-ne p1, p3, :cond_4

    .line 939
    :cond_3
    iput p2, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    :cond_4
    return-void

    .line 945
    :cond_5
    invoke-virtual {p0, p2}, Ljavassist/compiler/TypeChecker;->atFieldPlusPlus(Ljavassist/compiler/ast/ASTree;)V

    :goto_1
    return-void
.end method

.method private atVariableAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/Variable;Ljavassist/compiler/ast/Declarator;Ljavassist/compiler/ast/ASTree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 242
    invoke-virtual {p4}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result p1

    .line 243
    invoke-virtual {p4}, Ljavassist/compiler/ast/Declarator;->getArrayDim()I

    move-result v0

    .line 244
    invoke-virtual {p4}, Ljavassist/compiler/ast/Declarator;->getClassName()Ljava/lang/String;

    move-result-object p4

    const/16 v1, 0x3d

    if-eq p2, v1, :cond_0

    .line 247
    invoke-virtual {p0, p3}, Ljavassist/compiler/TypeChecker;->atVariable(Ljavassist/compiler/ast/Variable;)V

    .line 249
    :cond_0
    invoke-virtual {p5, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 250
    iput p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 251
    iput v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 252
    iput-object p4, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    return-void
.end method

.method private static badMethod()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 694
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "bad method"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private booleanExpr(Ljavassist/compiler/ast/ASTree;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 512
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->getCompOperator(Ljavassist/compiler/ast/ASTree;)I

    move-result v0

    const/16 v1, 0x166

    if-ne v0, v1, :cond_0

    .line 514
    check-cast p1, Ljavassist/compiler/ast/BinExpr;

    .line 515
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 516
    iget v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 517
    iget v1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 518
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    if-nez v1, :cond_4

    .line 519
    iget v1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    if-nez v1, :cond_4

    .line 520
    iget v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    invoke-direct {p0, p1, v0, v1}, Ljavassist/compiler/TypeChecker;->insertCast(Ljavassist/compiler/ast/BinExpr;II)V

    goto :goto_1

    :cond_0
    const/16 v1, 0x21

    if-ne v0, v1, :cond_1

    .line 523
    check-cast p1, Ljavassist/compiler/ast/Expr;

    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x171

    if-eq v0, v1, :cond_3

    const/16 v1, 0x170

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 530
    :cond_2
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    goto :goto_1

    .line 525
    :cond_3
    :goto_0
    check-cast p1, Ljavassist/compiler/ast/BinExpr;

    .line 526
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 527
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    :cond_4
    :goto_1
    const/16 p1, 0x12d

    .line 532
    iput p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    const/4 p1, 0x0

    .line 533
    iput p1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    return-void
.end method

.method private computeBinExprType(Ljavassist/compiler/ast/BinExpr;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 499
    iget v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    const/16 v1, 0x16c

    if-eq p2, v1, :cond_1

    const/16 v1, 0x16e

    if-eq p2, v1, :cond_1

    const/16 v1, 0x172

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 503
    :cond_0
    invoke-direct {p0, p1, p3, v0}, Ljavassist/compiler/TypeChecker;->insertCast(Ljavassist/compiler/ast/BinExpr;II)V

    goto :goto_1

    .line 501
    :cond_1
    :goto_0
    iput p3, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 505
    :goto_1
    iget p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    invoke-static {p1}, Ljavassist/compiler/CodeGen;->isP_INT(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x144

    .line 506
    iput p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    :cond_2
    return-void
.end method

.method protected static fatal()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 108
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "fatal"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fieldAccess2(Ljavassist/compiler/ast/Expr;Ljava/lang/String;)Ljavassist/CtField;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 886
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/Member;

    .line 887
    iget-object v1, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v1, p2, v0, p1}, Ljavassist/compiler/MemberResolver;->lookupFieldByJvmName2(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;Ljavassist/compiler/ast/ASTree;)Ljavassist/CtField;

    move-result-object v1

    const/16 v2, 0x23

    .line 888
    invoke-virtual {p1, v2}, Ljavassist/compiler/ast/Expr;->setOperator(I)V

    .line 889
    new-instance v2, Ljavassist/compiler/ast/Symbol;

    invoke-static {p2}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljavassist/compiler/ast/Expr;->setOprand1(Ljavassist/compiler/ast/ASTree;)V

    .line 890
    invoke-virtual {v0, v1}, Ljavassist/compiler/ast/Member;->setField(Ljavassist/CtField;)V

    return-object v1
.end method

.method public static getConstantFieldValue(Ljavassist/CtField;)Ljavassist/compiler/ast/ASTree;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 458
    :cond_0
    invoke-virtual {p0}, Ljavassist/CtField;->getConstantValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 462
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 463
    new-instance v0, Ljavassist/compiler/ast/StringL;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljavassist/compiler/ast/StringL;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 464
    :cond_2
    instance-of v1, p0, Ljava/lang/Double;

    if-nez v1, :cond_8

    instance-of v2, p0, Ljava/lang/Float;

    if-eqz v2, :cond_3

    goto :goto_2

    .line 469
    :cond_3
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_5

    .line 470
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_4

    const/16 v0, 0x193

    goto :goto_0

    :cond_4
    const/16 v0, 0x192

    .line 471
    :goto_0
    new-instance v1, Ljavassist/compiler/ast/IntConst;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0}, Ljavassist/compiler/ast/IntConst;-><init>(JI)V

    return-object v1

    .line 473
    :cond_5
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 474
    new-instance v0, Ljavassist/compiler/ast/Keyword;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0x19a

    goto :goto_1

    :cond_6
    const/16 p0, 0x19b

    :goto_1
    invoke-direct {v0, p0}, Ljavassist/compiler/ast/Keyword;-><init>(I)V

    :cond_7
    return-object v0

    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    const/16 v0, 0x195

    goto :goto_3

    :cond_9
    const/16 v0, 0x194

    .line 467
    :goto_3
    new-instance v1, Ljavassist/compiler/ast/DoubleConst;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0}, Ljavassist/compiler/ast/DoubleConst;-><init>(DI)V

    return-object v1
.end method

.method private static getConstantFieldValue(Ljavassist/compiler/ast/Member;)Ljavassist/compiler/ast/ASTree;
    .locals 0

    .line 451
    invoke-virtual {p0}, Ljavassist/compiler/ast/Member;->getField()Ljavassist/CtField;

    move-result-object p0

    invoke-static {p0}, Ljavassist/compiler/TypeChecker;->getConstantFieldValue(Ljavassist/CtField;)Ljavassist/compiler/ast/ASTree;

    move-result-object p0

    return-object p0
.end method

.method private insertCast(Ljavassist/compiler/ast/BinExpr;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 539
    invoke-static {p2, p3}, Ljavassist/compiler/CodeGen;->rightIsStrong(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    new-instance p2, Ljavassist/compiler/ast/CastExpr;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-direct {p2, p3, v0, v1}, Ljavassist/compiler/ast/CastExpr;-><init>(IILjavassist/compiler/ast/ASTree;)V

    invoke-virtual {p1, p2}, Ljavassist/compiler/ast/BinExpr;->setLeft(Ljavassist/compiler/ast/ASTree;)V

    goto :goto_0

    .line 542
    :cond_0
    iput p2, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    :goto_0
    return-void
.end method

.method private isConstant(Ljavassist/compiler/ast/BinExpr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 396
    invoke-static {p3}, Ljavassist/compiler/TypeChecker;->stripPlusExpr(Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;

    move-result-object p3

    .line 397
    invoke-static {p4}, Ljavassist/compiler/TypeChecker;->stripPlusExpr(Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;

    move-result-object p4

    .line 399
    instance-of v0, p3, Ljavassist/compiler/ast/StringL;

    const/16 v1, 0x2b

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p4, Ljavassist/compiler/ast/StringL;

    if-eqz v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 400
    new-instance p2, Ljavassist/compiler/ast/StringL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p3, Ljavassist/compiler/ast/StringL;

    invoke-virtual {p3}, Ljavassist/compiler/ast/StringL;->get()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    check-cast p4, Ljavassist/compiler/ast/StringL;

    invoke-virtual {p4}, Ljavassist/compiler/ast/StringL;->get()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljavassist/compiler/ast/StringL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :cond_0
    instance-of v0, p3, Ljavassist/compiler/ast/IntConst;

    if-eqz v0, :cond_1

    .line 403
    check-cast p3, Ljavassist/compiler/ast/IntConst;

    invoke-virtual {p3, p2, p4}, Ljavassist/compiler/ast/IntConst;->compute(ILjavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;

    move-result-object p2

    goto :goto_0

    .line 404
    :cond_1
    instance-of v0, p3, Ljavassist/compiler/ast/DoubleConst;

    if-eqz v0, :cond_2

    .line 405
    check-cast p3, Ljavassist/compiler/ast/DoubleConst;

    invoke-virtual {p3, p2, p4}, Ljavassist/compiler/ast/DoubleConst;->compute(ILjavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v2

    :goto_0
    if-nez p2, :cond_3

    const/4 p1, 0x0

    return p1

    .line 410
    :cond_3
    invoke-virtual {p1, v1}, Ljavassist/compiler/ast/BinExpr;->setOperator(I)V

    .line 411
    invoke-virtual {p1, p2}, Ljavassist/compiler/ast/BinExpr;->setOprand1(Ljavassist/compiler/ast/ASTree;)V

    .line 412
    invoke-virtual {p1, v2}, Ljavassist/compiler/ast/BinExpr;->setOprand2(Ljavassist/compiler/ast/ASTree;)V

    .line 413
    invoke-virtual {p2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    const/4 p1, 0x1

    return p1
.end method

.method private isConstant(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;)Z
    .locals 5

    .line 605
    invoke-static {p3}, Ljavassist/compiler/TypeChecker;->stripPlusExpr(Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;

    move-result-object p3

    .line 606
    instance-of v0, p3, Ljavassist/compiler/ast/IntConst;

    const/16 v1, 0x2d

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 607
    check-cast p3, Ljavassist/compiler/ast/IntConst;

    .line 608
    invoke-virtual {p3}, Ljavassist/compiler/ast/IntConst;->get()J

    move-result-wide v3

    if-ne p2, v1, :cond_0

    neg-long v0, v3

    goto :goto_0

    :cond_0
    const/16 v0, 0x7e

    if-ne p2, v0, :cond_1

    const-wide/16 v0, -0x1

    xor-long/2addr v0, v3

    .line 616
    :goto_0
    invoke-virtual {p3, v0, v1}, Ljavassist/compiler/ast/IntConst;->set(J)V

    goto :goto_1

    :cond_1
    return v2

    .line 618
    :cond_2
    instance-of v0, p3, Ljavassist/compiler/ast/DoubleConst;

    if-eqz v0, :cond_3

    .line 619
    check-cast p3, Ljavassist/compiler/ast/DoubleConst;

    if-ne p2, v1, :cond_3

    .line 621
    invoke-virtual {p3}, Ljavassist/compiler/ast/DoubleConst;->get()D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {p3, v0, v1}, Ljavassist/compiler/ast/DoubleConst;->set(D)V

    :goto_1
    const/16 p2, 0x2b

    .line 628
    invoke-virtual {p1, p2}, Ljavassist/compiler/ast/Expr;->setOperator(I)V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v2
.end method

.method private static isPlusExpr(Ljavassist/compiler/ast/ASTree;)Z
    .locals 2

    .line 481
    instance-of v0, p0, Ljavassist/compiler/ast/BinExpr;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 482
    check-cast p0, Ljavassist/compiler/ast/BinExpr;

    .line 483
    invoke-virtual {p0}, Ljavassist/compiler/ast/BinExpr;->getOperator()I

    move-result p0

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static makeAppendCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;
    .locals 2

    .line 491
    new-instance v0, Ljavassist/compiler/ast/Member;

    const-string v1, "append"

    invoke-direct {v0, v1}, Ljavassist/compiler/ast/Member;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-static {v1, p0, v0}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object p0

    new-instance v0, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v0, p1}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-static {p0, v0}, Ljavassist/compiler/ast/CallExpr;->makeCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/CallExpr;

    move-result-object p0

    return-object p0
.end method

.method static stripPlusExpr(Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;
    .locals 4

    .line 421
    instance-of v0, p0, Ljavassist/compiler/ast/BinExpr;

    const/16 v1, 0x2b

    if-eqz v0, :cond_0

    .line 422
    move-object v0, p0

    check-cast v0, Ljavassist/compiler/ast/BinExpr;

    .line 423
    invoke-virtual {v0}, Ljavassist/compiler/ast/BinExpr;->getOperator()I

    move-result v2

    if-ne v2, v1, :cond_3

    invoke-virtual {v0}, Ljavassist/compiler/ast/BinExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    if-nez v1, :cond_3

    .line 424
    invoke-virtual {v0}, Ljavassist/compiler/ast/BinExpr;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object p0

    return-object p0

    .line 426
    :cond_0
    instance-of v0, p0, Ljavassist/compiler/ast/Expr;

    if-eqz v0, :cond_2

    .line 427
    move-object v0, p0

    check-cast v0, Ljavassist/compiler/ast/Expr;

    .line 428
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_1

    .line 430
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/Member;

    invoke-static {v0}, Ljavassist/compiler/TypeChecker;->getConstantFieldValue(Ljavassist/compiler/ast/Member;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_1
    if-ne v2, v1, :cond_3

    .line 434
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    if-nez v1, :cond_3

    .line 435
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object p0

    return-object p0

    .line 437
    :cond_2
    instance-of v0, p0, Ljavassist/compiler/ast/Member;

    if-eqz v0, :cond_3

    .line 438
    move-object v0, p0

    check-cast v0, Ljavassist/compiler/ast/Member;

    invoke-static {v0}, Ljavassist/compiler/TypeChecker;->getConstantFieldValue(Ljavassist/compiler/ast/Member;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    return-object p0
.end method

.method protected static typeToString(Ljava/lang/StringBuffer;IILjava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1

    const/16 v0, 0x133

    if-ne p1, v0, :cond_0

    .line 82
    invoke-static {p3}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 p3, 0x19c

    if-ne p1, p3, :cond_1

    const-string p1, "Object"

    goto :goto_0

    .line 87
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->getTypeName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "?"

    .line 93
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 p1, p2, -0x1

    if-lez p2, :cond_2

    const-string p2, "[]"

    .line 95
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, p1

    goto :goto_1

    :cond_2
    return-object p0
.end method


# virtual methods
.method public atArrayInit(Ljavassist/compiler/ast/ArrayInit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 183
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 184
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public atArrayLength(Ljavassist/compiler/ast/Expr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 901
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    const/16 p1, 0x144

    .line 902
    iput p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    const/4 p1, 0x0

    .line 903
    iput p1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    return-void
.end method

.method public atArrayRead(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 909
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 910
    iget p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 911
    iget v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 912
    iget-object v1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 913
    invoke-virtual {p2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 914
    iput p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    add-int/lit8 v0, v0, -0x1

    .line 915
    iput v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 916
    iput-object v1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    return-void
.end method

.method public atAssignExpr(Ljavassist/compiler/ast/AssignExpr;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 214
    invoke-virtual {p1}, Ljavassist/compiler/ast/AssignExpr;->getOperator()I

    move-result v2

    .line 215
    invoke-virtual {p1}, Ljavassist/compiler/ast/AssignExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 216
    invoke-virtual {p1}, Ljavassist/compiler/ast/AssignExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v5

    .line 217
    instance-of v1, v0, Ljavassist/compiler/ast/Variable;

    if-eqz v1, :cond_0

    .line 218
    move-object v3, v0

    check-cast v3, Ljavassist/compiler/ast/Variable;

    invoke-virtual {v3}, Ljavassist/compiler/ast/Variable;->getDeclarator()Ljavassist/compiler/ast/Declarator;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljavassist/compiler/TypeChecker;->atVariableAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/Variable;Ljavassist/compiler/ast/Declarator;Ljavassist/compiler/ast/ASTree;)V

    goto :goto_0

    .line 222
    :cond_0
    instance-of v1, v0, Ljavassist/compiler/ast/Expr;

    if-eqz v1, :cond_1

    .line 223
    move-object v1, v0

    check-cast v1, Ljavassist/compiler/ast/Expr;

    .line 224
    invoke-virtual {v1}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v3

    const/16 v4, 0x41

    if-ne v3, v4, :cond_1

    .line 225
    invoke-direct {p0, p1, v2, v1, v5}, Ljavassist/compiler/TypeChecker;->atArrayAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/Expr;Ljavassist/compiler/ast/ASTree;)V

    return-void

    .line 230
    :cond_1
    invoke-virtual {p0, p1, v2, v0, v5}, Ljavassist/compiler/TypeChecker;->atFieldAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    :goto_0
    return-void
.end method

.method public atBinExpr(Ljavassist/compiler/ast/BinExpr;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 306
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->getOperator()I

    move-result v0

    .line 307
    invoke-static {v0}, Ljavassist/compiler/CodeGen;->lookupBinOp(I)I

    move-result v1

    if-ltz v1, :cond_1

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    .line 312
    invoke-direct {p0, p1}, Ljavassist/compiler/TypeChecker;->atPlusExpr(Ljavassist/compiler/ast/BinExpr;)Ljavassist/compiler/ast/Expr;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x2e

    .line 317
    new-instance v2, Ljavassist/compiler/ast/Member;

    const-string v3, "toString"

    invoke-direct {v2, v3}, Ljavassist/compiler/ast/Member;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/compiler/ast/CallExpr;->makeCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/CallExpr;

    move-result-object v0

    .line 319
    invoke-virtual {p1, v0}, Ljavassist/compiler/ast/BinExpr;->setOprand1(Ljavassist/compiler/ast/ASTree;)V

    .line 320
    invoke-virtual {p1, v1}, Ljavassist/compiler/ast/BinExpr;->setOprand2(Ljavassist/compiler/ast/ASTree;)V

    const-string p1, "java/lang/String"

    .line 321
    iput-object p1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 326
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    .line 327
    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 328
    iget v3, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 329
    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 330
    invoke-direct {p0, p1, v0, v1, v2}, Ljavassist/compiler/TypeChecker;->isConstant(Ljavassist/compiler/ast/BinExpr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 331
    invoke-direct {p0, p1, v0, v3}, Ljavassist/compiler/TypeChecker;->computeBinExprType(Ljavassist/compiler/ast/BinExpr;II)V

    goto :goto_0

    .line 337
    :cond_1
    invoke-direct {p0, p1}, Ljavassist/compiler/TypeChecker;->booleanExpr(Ljavassist/compiler/ast/ASTree;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public atCallExpr(Ljavassist/compiler/ast/CallExpr;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 635
    invoke-virtual {p1}, Ljavassist/compiler/ast/CallExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 636
    invoke-virtual {p1}, Ljavassist/compiler/ast/CallExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    check-cast v1, Ljavassist/compiler/ast/ASTList;

    .line 638
    instance-of v2, v0, Ljavassist/compiler/ast/Member;

    const/4 v3, 0x0

    const-string v4, "<init>"

    if-eqz v2, :cond_0

    .line 639
    check-cast v0, Ljavassist/compiler/ast/Member;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v3

    .line 640
    iget-object v0, p0, Ljavassist/compiler/TypeChecker;->thisClass:Ljavassist/CtClass;

    move-object v4, v3

    move-object v3, v0

    goto/16 :goto_2

    .line 642
    :cond_0
    instance-of v2, v0, Ljavassist/compiler/ast/Keyword;

    if-eqz v2, :cond_2

    .line 644
    check-cast v0, Ljavassist/compiler/ast/Keyword;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result v0

    const/16 v2, 0x150

    if-ne v0, v2, :cond_1

    .line 645
    iget-object v0, p0, Ljavassist/compiler/TypeChecker;->thisClass:Ljavassist/CtClass;

    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->getSuperclass(Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v3

    goto/16 :goto_2

    .line 647
    :cond_1
    iget-object v3, p0, Ljavassist/compiler/TypeChecker;->thisClass:Ljavassist/CtClass;

    goto/16 :goto_2

    .line 649
    :cond_2
    instance-of v2, v0, Ljavassist/compiler/ast/Expr;

    if-eqz v2, :cond_8

    .line 650
    check-cast v0, Ljavassist/compiler/ast/Expr;

    .line 651
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    check-cast v2, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v2}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v2

    .line 652
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x23

    if-ne v4, v6, :cond_3

    .line 654
    iget-object v3, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    :cond_3
    const/16 v7, 0x2e

    if-ne v4, v7, :cond_7

    .line 658
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    const/16 v7, 0x133

    .line 660
    :try_start_0
    invoke-virtual {v4, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V
    :try_end_0
    .catch Ljavassist/compiler/NoFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    .line 663
    invoke-virtual {v8}, Ljavassist/compiler/NoFieldException;->getExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v9

    if-ne v9, v4, :cond_6

    .line 667
    iput v7, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 668
    iput v5, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 669
    invoke-virtual {v8}, Ljavassist/compiler/NoFieldException;->getField()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 670
    invoke-virtual {v0, v6}, Ljavassist/compiler/ast/Expr;->setOperator(I)V

    .line 671
    new-instance v4, Ljavassist/compiler/ast/Symbol;

    iget-object v5, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    invoke-static {v5}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljavassist/compiler/ast/Expr;->setOprand1(Ljavassist/compiler/ast/ASTree;)V

    .line 675
    :goto_0
    iget v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    if-lez v0, :cond_4

    .line 676
    iget-object v0, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    const/4 v3, 0x1

    const-string v4, "java.lang.Object"

    invoke-virtual {v0, v4, v3}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v3

    goto :goto_1

    .line 677
    :cond_4
    iget v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    if-ne v0, v7, :cond_5

    .line 678
    iget-object v0, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    iget-object v3, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljavassist/compiler/MemberResolver;->lookupClassByJvmName(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v3

    goto :goto_1

    .line 680
    :cond_5
    invoke-static {}, Ljavassist/compiler/TypeChecker;->badMethod()V

    goto :goto_1

    .line 664
    :cond_6
    throw v8

    .line 683
    :cond_7
    invoke-static {}, Ljavassist/compiler/TypeChecker;->badMethod()V

    :goto_1
    move-object v4, v2

    goto :goto_2

    .line 686
    :cond_8
    invoke-static {}, Ljavassist/compiler/TypeChecker;->fatal()V

    move-object v4, v3

    .line 688
    :goto_2
    invoke-virtual {p0, v3, v4, v1}, Ljavassist/compiler/TypeChecker;->atMethodCallCore(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/compiler/ast/ASTList;)Ljavassist/compiler/MemberResolver$Method;

    move-result-object v0

    .line 690
    invoke-virtual {p1, v0}, Ljavassist/compiler/ast/CallExpr;->setMethod(Ljavassist/compiler/MemberResolver$Method;)V

    return-void
.end method

.method public atCastExpr(Ljavassist/compiler/ast/CastExpr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 546
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getClassName()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/compiler/TypeChecker;->resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;

    move-result-object v0

    .line 547
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getOprand()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 548
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getType()I

    move-result v1

    iput v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 549
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getArrayDim()I

    move-result p1

    iput p1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 550
    iput-object v0, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    return-void
.end method

.method public atClassObject(Ljavassist/compiler/ast/Expr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/16 p1, 0x133

    .line 895
    iput p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    const/4 p1, 0x0

    .line 896
    iput p1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    const-string p1, "java/lang/Class"

    .line 897
    iput-object p1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    return-void
.end method

.method public atCondExpr(Ljavassist/compiler/ast/CondExpr;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 283
    invoke-virtual {p1}, Ljavassist/compiler/ast/CondExpr;->condExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavassist/compiler/TypeChecker;->booleanExpr(Ljavassist/compiler/ast/ASTree;)V

    .line 284
    invoke-virtual {p1}, Ljavassist/compiler/ast/CondExpr;->thenExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 285
    iget v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 286
    iget v1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 288
    invoke-virtual {p1}, Ljavassist/compiler/ast/CondExpr;->elseExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    if-nez v1, :cond_1

    .line 290
    iget v2, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    if-ne v1, v2, :cond_1

    .line 291
    iget v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    invoke-static {v0, v1}, Ljavassist/compiler/CodeGen;->rightIsStrong(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 292
    new-instance v0, Ljavassist/compiler/ast/CastExpr;

    iget v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    invoke-virtual {p1}, Ljavassist/compiler/ast/CondExpr;->thenExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljavassist/compiler/ast/CastExpr;-><init>(IILjavassist/compiler/ast/ASTree;)V

    invoke-virtual {p1, v0}, Ljavassist/compiler/ast/CondExpr;->setThen(Ljavassist/compiler/ast/ASTree;)V

    goto :goto_0

    .line 293
    :cond_0
    iget v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    invoke-static {v1, v0}, Ljavassist/compiler/CodeGen;->rightIsStrong(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    new-instance v1, Ljavassist/compiler/ast/CastExpr;

    invoke-virtual {p1}, Ljavassist/compiler/ast/CondExpr;->elseExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Ljavassist/compiler/ast/CastExpr;-><init>(IILjavassist/compiler/ast/ASTree;)V

    invoke-virtual {p1, v1}, Ljavassist/compiler/ast/CondExpr;->setElse(Ljavassist/compiler/ast/ASTree;)V

    .line 295
    iput v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    :cond_1
    :goto_0
    return-void
.end method

.method public atDoubleConst(Ljavassist/compiler/ast/DoubleConst;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1009
    iput v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 1010
    invoke-virtual {p1}, Ljavassist/compiler/ast/DoubleConst;->getType()I

    move-result p1

    const/16 v0, 0x195

    if-ne p1, v0, :cond_0

    const/16 p1, 0x138

    .line 1011
    iput p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x13d

    .line 1013
    iput p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    :goto_0
    return-void
.end method

.method public atExpr(Ljavassist/compiler/ast/Expr;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 563
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v0

    .line 564
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    const-string v2, "class"

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_2

    .line 566
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v0

    const-string v1, "length"

    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    :try_start_0
    invoke-virtual {p0, p1}, Ljavassist/compiler/TypeChecker;->atArrayLength(Ljavassist/compiler/ast/Expr;)V
    :try_end_0
    .catch Ljavassist/compiler/NoFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 573
    :catch_0
    invoke-direct {p0, p1}, Ljavassist/compiler/TypeChecker;->atFieldRead(Ljavassist/compiler/ast/ASTree;)V

    goto/16 :goto_1

    .line 575
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    invoke-virtual {p0, p1}, Ljavassist/compiler/TypeChecker;->atClassObject(Ljavassist/compiler/ast/Expr;)V

    goto/16 :goto_1

    .line 578
    :cond_1
    invoke-direct {p0, p1}, Ljavassist/compiler/TypeChecker;->atFieldRead(Ljavassist/compiler/ast/ASTree;)V

    goto :goto_1

    :cond_2
    const/16 v3, 0x23

    if-ne v0, v3, :cond_4

    .line 581
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 583
    invoke-virtual {p0, p1}, Ljavassist/compiler/TypeChecker;->atClassObject(Ljavassist/compiler/ast/Expr;)V

    goto :goto_1

    .line 585
    :cond_3
    invoke-direct {p0, p1}, Ljavassist/compiler/TypeChecker;->atFieldRead(Ljavassist/compiler/ast/ASTree;)V

    goto :goto_1

    :cond_4
    const/16 v2, 0x41

    if-ne v0, v2, :cond_5

    .line 588
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ljavassist/compiler/TypeChecker;->atArrayRead(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    goto :goto_1

    :cond_5
    const/16 v2, 0x16a

    if-eq v0, v2, :cond_a

    const/16 v2, 0x16b

    if-ne v0, v2, :cond_6

    goto :goto_0

    :cond_6
    const/16 v2, 0x21

    if-ne v0, v2, :cond_7

    .line 592
    invoke-direct {p0, p1}, Ljavassist/compiler/TypeChecker;->booleanExpr(Ljavassist/compiler/ast/ASTree;)V

    goto :goto_1

    :cond_7
    const/16 v2, 0x43

    if-ne v0, v2, :cond_8

    .line 594
    invoke-static {}, Ljavassist/compiler/TypeChecker;->fatal()V

    goto :goto_1

    .line 596
    :cond_8
    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 597
    invoke-direct {p0, p1, v0, v1}, Ljavassist/compiler/TypeChecker;->isConstant(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;)Z

    move-result p1

    if-nez p1, :cond_b

    const/16 p1, 0x2d

    if-eq v0, p1, :cond_9

    const/16 p1, 0x7e

    if-ne v0, p1, :cond_b

    .line 599
    :cond_9
    iget p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    invoke-static {p1}, Ljavassist/compiler/CodeGen;->isP_INT(I)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 p1, 0x144

    .line 600
    iput p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    goto :goto_1

    .line 590
    :cond_a
    :goto_0
    invoke-direct {p0, v0, v1, p1}, Ljavassist/compiler/TypeChecker;->atPlusPlus(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/Expr;)V

    :cond_b
    :goto_1
    return-void
.end method

.method protected atFieldAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 271
    invoke-virtual {p0, p3}, Ljavassist/compiler/TypeChecker;->fieldAccess(Ljavassist/compiler/ast/ASTree;)Ljavassist/CtField;

    move-result-object p1

    .line 272
    invoke-direct {p0, p1}, Ljavassist/compiler/TypeChecker;->atFieldRead(Ljavassist/CtField;)V

    .line 273
    iget p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 274
    iget p2, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 275
    iget-object p3, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    .line 276
    invoke-virtual {p4, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 277
    iput p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 278
    iput p2, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 279
    iput-object p3, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    return-void
.end method

.method protected atFieldPlusPlus(Ljavassist/compiler/ast/ASTree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 951
    invoke-virtual {p0, p1}, Ljavassist/compiler/TypeChecker;->fieldAccess(Ljavassist/compiler/ast/ASTree;)Ljavassist/CtField;

    move-result-object p1

    .line 952
    invoke-direct {p0, p1}, Ljavassist/compiler/TypeChecker;->atFieldRead(Ljavassist/CtField;)V

    .line 953
    iget p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    const/16 v0, 0x144

    if-eq p1, v0, :cond_0

    const/16 v1, 0x12f

    if-eq p1, v1, :cond_0

    const/16 v1, 0x132

    if-eq p1, v1, :cond_0

    const/16 v1, 0x14e

    if-ne p1, v1, :cond_1

    .line 955
    :cond_0
    iput v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    :cond_1
    return-void
.end method

.method public atInstanceOfExpr(Ljavassist/compiler/ast/InstanceOfExpr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 554
    invoke-virtual {p1}, Ljavassist/compiler/ast/InstanceOfExpr;->getOprand()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    const/16 p1, 0x12d

    .line 555
    iput p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    const/4 p1, 0x0

    .line 556
    iput p1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    return-void
.end method

.method public atIntConst(Ljavassist/compiler/ast/IntConst;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1000
    iput v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 1001
    invoke-virtual {p1}, Ljavassist/compiler/ast/IntConst;->getType()I

    move-result p1

    const/16 v0, 0x192

    if-eq p1, v0, :cond_1

    const/16 v1, 0x191

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x146

    .line 1005
    iput p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    goto :goto_2

    :cond_1
    :goto_0
    if-ne p1, v0, :cond_2

    const/16 p1, 0x144

    goto :goto_1

    :cond_2
    const/16 p1, 0x132

    .line 1003
    :goto_1
    iput p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    :goto_2
    return-void
.end method

.method public atKeyword(Ljavassist/compiler/ast/Keyword;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 v0, 0x0

    .line 970
    iput v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 971
    invoke-virtual {p1}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result p1

    const/16 v0, 0x150

    const/16 v1, 0x153

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 989
    invoke-static {}, Ljavassist/compiler/TypeChecker;->fatal()V

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x19c

    .line 978
    iput p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x12d

    .line 975
    iput p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x133

    .line 982
    iput v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    if-ne p1, v1, :cond_1

    .line 984
    invoke-virtual {p0}, Ljavassist/compiler/TypeChecker;->getThisName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    goto :goto_0

    .line 986
    :cond_1
    invoke-virtual {p0}, Ljavassist/compiler/TypeChecker;->getSuperName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x19a
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public atMember(Ljavassist/compiler/ast/Member;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 959
    invoke-direct {p0, p1}, Ljavassist/compiler/TypeChecker;->atFieldRead(Ljavassist/compiler/ast/ASTree;)V

    return-void
.end method

.method public atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 739
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 740
    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 741
    iget v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    aput v1, p2, v0

    .line 742
    iget v1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    aput v1, p3, v0

    .line 743
    iget-object v1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    aput-object v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    .line 745
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public atMethodCallCore(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/compiler/ast/ASTList;)Ljavassist/compiler/MemberResolver$Method;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 705
    invoke-virtual {p0, p3}, Ljavassist/compiler/TypeChecker;->getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I

    move-result v0

    .line 706
    new-array v9, v0, [I

    .line 707
    new-array v10, v0, [I

    .line 708
    new-array v0, v0, [Ljava/lang/String;

    .line 709
    invoke-virtual {p0, p3, v9, v10, v0}, Ljavassist/compiler/TypeChecker;->atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V

    .line 711
    iget-object v1, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    iget-object v3, p0, Ljavassist/compiler/TypeChecker;->thisClass:Ljavassist/CtClass;

    iget-object v4, p0, Ljavassist/compiler/TypeChecker;->thisMethod:Ljavassist/bytecode/MethodInfo;

    move-object v2, p1

    move-object v5, p2

    move-object v6, v9

    move-object v7, v10

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Ljavassist/compiler/MemberResolver;->lookupMethod(Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljava/lang/String;[I[I[Ljava/lang/String;)Ljavassist/compiler/MemberResolver$Method;

    move-result-object p3

    if-nez p3, :cond_1

    .line 715
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    .line 716
    invoke-static {v9, v10, v0}, Ljavassist/compiler/TypeChecker;->argTypesToString([I[I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "<init>"

    .line 718
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot find constructor "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 721
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " not found in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 723
    :goto_0
    new-instance p2, Ljavassist/compiler/CompileError;

    invoke-direct {p2, p1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p2

    .line 726
    :cond_1
    iget-object p1, p3, Ljavassist/compiler/MemberResolver$Method;->info:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 727
    invoke-virtual {p0, p1}, Ljavassist/compiler/TypeChecker;->setReturnType(Ljava/lang/String;)V

    return-object p3
.end method

.method protected atMultiNewArray(ILjavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 194
    invoke-virtual {p3}, Ljavassist/compiler/ast/ASTList;->length()I

    move-result v0

    :goto_0
    if-eqz p3, :cond_1

    .line 196
    invoke-virtual {p3}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 195
    invoke-virtual {p3}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p3

    goto :goto_0

    .line 204
    :cond_1
    :goto_1
    iput p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 205
    iput v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    const/16 p3, 0x133

    if-ne p1, p3, :cond_2

    .line 207
    invoke-virtual {p0, p2}, Ljavassist/compiler/TypeChecker;->resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 209
    iput-object p1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method public atNewArrayExpr(Ljavassist/compiler/ast/NewExpr;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 157
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getArrayType()I

    move-result v0

    .line 158
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getArraySize()Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    .line 159
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getClassName()Ljavassist/compiler/ast/ASTList;

    move-result-object v2

    .line 160
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getInitializer()Ljavassist/compiler/ast/ArrayInit;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 164
    :cond_0
    invoke-virtual {v1}, Ljavassist/compiler/ast/ASTList;->length()I

    move-result p1

    const/4 v3, 0x1

    if-le p1, v3, :cond_1

    .line 165
    invoke-virtual {p0, v0, v2, v1}, Ljavassist/compiler/TypeChecker;->atMultiNewArray(ILjavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)V

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 169
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 171
    :cond_2
    iput v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 172
    iput v3, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    const/16 p1, 0x133

    if-ne v0, p1, :cond_3

    .line 174
    invoke-virtual {p0, v2}, Ljavassist/compiler/TypeChecker;->resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 176
    iput-object p1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public atNewExpr(Ljavassist/compiler/ast/NewExpr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 143
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0, p1}, Ljavassist/compiler/TypeChecker;->atNewArrayExpr(Ljavassist/compiler/ast/NewExpr;)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getClassName()Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/compiler/MemberResolver;->lookupClassByName(Ljavassist/compiler/ast/ASTList;)Ljavassist/CtClass;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getArguments()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    const-string v2, "<init>"

    .line 149
    invoke-virtual {p0, v0, v2, p1}, Ljavassist/compiler/TypeChecker;->atMethodCallCore(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/compiler/ast/ASTList;)Ljavassist/compiler/MemberResolver$Method;

    const/16 p1, 0x133

    .line 150
    iput p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    const/4 p1, 0x0

    .line 151
    iput p1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 152
    invoke-static {v1}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public atStringL(Ljavassist/compiler/ast/StringL;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/16 p1, 0x133

    .line 994
    iput p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    const/4 p1, 0x0

    .line 995
    iput p1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    const-string p1, "java/lang/String"

    .line 996
    iput-object p1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    return-void
.end method

.method public atVariable(Ljavassist/compiler/ast/Variable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 963
    invoke-virtual {p1}, Ljavassist/compiler/ast/Variable;->getDeclarator()Ljavassist/compiler/ast/Declarator;

    move-result-object p1

    .line 964
    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result v0

    iput v0, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 965
    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getArrayDim()I

    move-result v0

    iput v0, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    .line 966
    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    return-void
.end method

.method protected fieldAccess(Ljavassist/compiler/ast/ASTree;)Ljavassist/CtField;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 807
    instance-of v0, p1, Ljavassist/compiler/ast/Member;

    if-eqz v0, :cond_1

    .line 808
    move-object v0, p1

    check-cast v0, Ljavassist/compiler/ast/Member;

    .line 809
    invoke-virtual {v0}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object v1

    .line 811
    :try_start_0
    iget-object v2, p0, Ljavassist/compiler/TypeChecker;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v2, v1}, Ljavassist/CtClass;->getField(Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v2

    .line 812
    invoke-virtual {v2}, Ljavassist/CtField;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 813
    invoke-virtual {v0, v2}, Ljavassist/compiler/ast/Member;->setField(Ljavassist/CtField;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v2

    .line 819
    :catch_0
    new-instance v0, Ljavassist/compiler/NoFieldException;

    invoke-direct {v0, v1, p1}, Ljavassist/compiler/NoFieldException;-><init>(Ljava/lang/String;Ljavassist/compiler/ast/ASTree;)V

    throw v0

    .line 822
    :cond_1
    instance-of v0, p1, Ljavassist/compiler/ast/Expr;

    if-eqz v0, :cond_6

    .line 823
    check-cast p1, Ljavassist/compiler/ast/Expr;

    .line 824
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    .line 826
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/Member;

    .line 827
    iget-object v1, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    check-cast p1, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {p1}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljavassist/compiler/MemberResolver;->lookupField(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;)Ljavassist/CtField;

    move-result-object p1

    .line 829
    invoke-virtual {v0, p1}, Ljavassist/compiler/ast/Member;->setField(Ljavassist/CtField;)V

    return-object p1

    :cond_2
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_6

    .line 834
    :try_start_1
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V
    :try_end_1
    .catch Ljavassist/compiler/NoFieldException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v0, 0x0

    .line 849
    :try_start_2
    iget v1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    const/16 v2, 0x133

    if-ne v1, v2, :cond_3

    iget v1, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    if-nez v1, :cond_3

    .line 850
    iget-object v0, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    iget-object v1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    check-cast v2, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/MemberResolver;->lookupFieldByJvmName(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;)Ljavassist/CtField;

    move-result-object p1
    :try_end_2
    .catch Ljavassist/compiler/CompileError; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception v0

    .line 873
    :cond_3
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 874
    instance-of v2, v1, Ljavassist/compiler/ast/Symbol;

    if-eqz v2, :cond_4

    .line 875
    check-cast v1, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v1}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljavassist/compiler/TypeChecker;->fieldAccess2(Ljavassist/compiler/ast/Expr;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object p1

    return-object p1

    :cond_4
    if-eqz v0, :cond_6

    .line 878
    throw v0

    :catch_2
    move-exception v0

    .line 837
    invoke-virtual {v0}, Ljavassist/compiler/NoFieldException;->getExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    if-ne v1, v2, :cond_5

    .line 844
    invoke-virtual {v0}, Ljavassist/compiler/NoFieldException;->getField()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljavassist/compiler/TypeChecker;->fieldAccess2(Ljavassist/compiler/ast/Expr;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object p1

    return-object p1

    .line 838
    :cond_5
    throw v0

    .line 882
    :cond_6
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string v0, "bad filed access"

    invoke-direct {p1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I
    .locals 0

    .line 732
    invoke-static {p1}, Ljavassist/compiler/ast/ASTList;->length(Ljavassist/compiler/ast/ASTList;)I

    move-result p1

    return p1
.end method

.method protected getSuperName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Ljavassist/compiler/TypeChecker;->thisClass:Ljavassist/CtClass;

    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->getSuperclass(Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getThisName()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Ljavassist/compiler/TypeChecker;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected resolveClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v0, p1}, Ljavassist/compiler/MemberResolver;->resolveJvmClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Ljavassist/compiler/TypeChecker;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v0, p1}, Ljavassist/compiler/MemberResolver;->resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method setReturnType(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/16 v0, 0x29

    .line 750
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 752
    invoke-static {}, Ljavassist/compiler/TypeChecker;->badMethod()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 754
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x5b

    if-ne v1, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 758
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 761
    :cond_1
    iput v2, p0, Ljavassist/compiler/TypeChecker;->arrayDim:I

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_3

    const/16 v1, 0x3b

    add-int/lit8 v0, v0, 0x1

    .line 763
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_2

    .line 765
    invoke-static {}, Ljavassist/compiler/TypeChecker;->badMethod()V

    :cond_2
    const/16 v2, 0x133

    .line 767
    iput v2, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    .line 768
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    goto :goto_1

    .line 771
    :cond_3
    invoke-static {v1}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result p1

    iput p1, p0, Ljavassist/compiler/TypeChecker;->exprType:I

    const/4 p1, 0x0

    .line 772
    iput-object p1, p0, Ljavassist/compiler/TypeChecker;->className:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public setThisMethod(Ljavassist/bytecode/MethodInfo;)V
    .locals 0

    .line 104
    iput-object p1, p0, Ljavassist/compiler/TypeChecker;->thisMethod:Ljavassist/bytecode/MethodInfo;

    return-void
.end method
