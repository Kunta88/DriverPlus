.class public abstract Ljavassist/compiler/CodeGen;
.super Ljavassist/compiler/ast/Visitor;
.source "CodeGen.java"

# interfaces
.implements Ljavassist/bytecode/Opcode;
.implements Ljavassist/compiler/TokenId;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/compiler/CodeGen$ReturnHook;
    }
.end annotation


# static fields
.field private static final P_DOUBLE:I = 0x0

.field private static final P_FLOAT:I = 0x1

.field private static final P_INT:I = 0x3

.field private static final P_LONG:I = 0x2

.field private static final P_OTHER:I = -0x1

.field static final binOp:[I

.field private static final castOp:[I

.field private static final ifOp:[I

.field private static final ifOp2:[I

.field static final javaLangObject:Ljava/lang/String; = "java.lang.Object"

.field static final javaLangString:Ljava/lang/String; = "java.lang.String"

.field static final jvmJavaLangObject:Ljava/lang/String; = "java/lang/Object"

.field static final jvmJavaLangString:Ljava/lang/String; = "java/lang/String"


# instance fields
.field protected arrayDim:I

.field protected breakList:Ljava/util/ArrayList;

.field protected bytecode:Ljavassist/bytecode/Bytecode;

.field protected className:Ljava/lang/String;

.field protected continueList:Ljava/util/ArrayList;

.field protected exprType:I

.field protected hasReturned:Z

.field public inStaticMethod:Z

.field protected returnHooks:Ljavassist/compiler/CodeGen$ReturnHook;

.field private tempVar:I

.field typeChecker:Ljavassist/compiler/TypeChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x37

    new-array v0, v0, [I

    .line 934
    fill-array-data v0, :array_0

    sput-object v0, Ljavassist/compiler/CodeGen;->binOp:[I

    const/16 v0, 0x12

    new-array v1, v0, [I

    .line 1183
    fill-array-data v1, :array_1

    sput-object v1, Ljavassist/compiler/CodeGen;->ifOp:[I

    new-array v0, v0, [I

    .line 1190
    fill-array-data v0, :array_2

    sput-object v0, Ljavassist/compiler/CodeGen;->ifOp2:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 1296
    fill-array-data v0, :array_3

    sput-object v0, Ljavassist/compiler/CodeGen;->castOp:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2b
        0x63
        0x62
        0x61
        0x60
        0x2d
        0x67
        0x66
        0x65
        0x64
        0x2a
        0x6b
        0x6a
        0x69
        0x68
        0x2f
        0x6f
        0x6e
        0x6d
        0x6c
        0x25
        0x73
        0x72
        0x71
        0x70
        0x7c
        0x0
        0x0
        0x81
        0x80
        0x5e
        0x0
        0x0
        0x83
        0x82
        0x26
        0x0
        0x0
        0x7f
        0x7e
        0x16c
        0x0
        0x0
        0x79
        0x78
        0x16e
        0x0
        0x0
        0x7b
        0x7a
        0x172
        0x0
        0x0
        0x7d
        0x7c
    .end array-data

    :array_1
    .array-data 4
        0x166
        0x9f
        0xa0
        0x15e
        0xa0
        0x9f
        0x165
        0xa4
        0xa3
        0x167
        0xa2
        0xa1
        0x3c
        0xa1
        0xa2
        0x3e
        0xa3
        0xa4
    .end array-data

    :array_2
    .array-data 4
        0x166
        0x99
        0x9a
        0x15e
        0x9a
        0x99
        0x165
        0x9e
        0x9d
        0x167
        0x9c
        0x9b
        0x3c
        0x9b
        0x9c
        0x3e
        0x9d
        0x9e
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x90
        0x8f
        0x8e
        0x8d
        0x0
        0x8c
        0x8b
        0x8a
        0x89
        0x0
        0x88
        0x87
        0x86
        0x85
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljavassist/bytecode/Bytecode;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljavassist/compiler/ast/Visitor;-><init>()V

    .line 84
    iput-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 p1, -0x1

    .line 85
    iput p1, p0, Ljavassist/compiler/CodeGen;->tempVar:I

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Ljavassist/compiler/CodeGen;->typeChecker:Ljavassist/compiler/TypeChecker;

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    .line 88
    iput-boolean v0, p0, Ljavassist/compiler/CodeGen;->inStaticMethod:Z

    .line 89
    iput-object p1, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/ArrayList;

    .line 90
    iput-object p1, p0, Ljavassist/compiler/CodeGen;->continueList:Ljava/util/ArrayList;

    .line 91
    iput-object p1, p0, Ljavassist/compiler/CodeGen;->returnHooks:Ljavassist/compiler/CodeGen$ReturnHook;

    return-void
.end method

.method private atArithBinExpr(Ljavassist/compiler/ast/Expr;III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1001
    iget v0, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-eqz v0, :cond_0

    .line 1002
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->badTypes(Ljavassist/compiler/ast/Expr;)V

    .line 1004
    :cond_0
    iget v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    const/16 v1, 0x16c

    const/16 v2, 0x144

    if-eq p2, v1, :cond_2

    const/16 v1, 0x16e

    if-eq p2, v1, :cond_2

    const/16 v1, 0x172

    if-ne p2, v1, :cond_1

    goto :goto_0

    .line 1012
    :cond_1
    invoke-direct {p0, p4, v0, p1}, Ljavassist/compiler/CodeGen;->convertOprandTypes(IILjavassist/compiler/ast/Expr;)V

    goto :goto_2

    :cond_2
    :goto_0
    if-eq v0, v2, :cond_4

    const/16 p2, 0x14e

    if-eq v0, p2, :cond_4

    const/16 p2, 0x132

    if-eq v0, p2, :cond_4

    const/16 p2, 0x12f

    if-ne v0, p2, :cond_3

    goto :goto_1

    .line 1010
    :cond_3
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->badTypes(Ljavassist/compiler/ast/Expr;)V

    goto :goto_2

    .line 1008
    :cond_4
    :goto_1
    iput p4, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1014
    :goto_2
    iget p2, p0, Ljavassist/compiler/CodeGen;->exprType:I

    invoke-static {p2}, Ljavassist/compiler/CodeGen;->typePrecedence(I)I

    move-result p2

    if-ltz p2, :cond_6

    .line 1016
    sget-object p4, Ljavassist/compiler/CodeGen;->binOp:[I

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, 0x1

    aget p3, p4, p3

    if-eqz p3, :cond_6

    const/4 p1, 0x3

    if-ne p2, p1, :cond_5

    .line 1018
    iget p1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    const/16 p2, 0x12d

    if-eq p1, p2, :cond_5

    .line 1019
    iput v2, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1021
    :cond_5
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, p3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    return-void

    .line 1026
    :cond_6
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->badTypes(Ljavassist/compiler/ast/Expr;)V

    return-void
.end method

.method private atArrayAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/Expr;Ljavassist/compiler/ast/ASTree;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 825
    invoke-virtual {p3}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {p3}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object p3

    invoke-virtual {p0, v0, p3}, Ljavassist/compiler/CodeGen;->arrayAccess(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    const/16 p3, 0x3d

    if-eq p2, p3, :cond_0

    .line 828
    iget-object p3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v0, 0x5c

    invoke-virtual {p3, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 829
    iget-object p3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    iget v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    iget v1, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    invoke-static {v0, v1}, Ljavassist/compiler/CodeGen;->getArrayReadOp(II)I

    move-result v0

    invoke-virtual {p3, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 832
    :cond_0
    iget p3, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 833
    iget v0, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 834
    iget-object v8, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move v5, p3

    move v6, v0

    move-object v7, v8

    .line 836
    invoke-virtual/range {v1 .. v7}, Ljavassist/compiler/CodeGen;->atAssignCore(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;IILjava/lang/String;)V

    if-eqz p5, :cond_2

    .line 839
    invoke-static {p3, v0}, Ljavassist/compiler/CodeGen;->is2word(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 840
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 p2, 0x5e

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 842
    :cond_1
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 p2, 0x5b

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 844
    :cond_2
    :goto_0
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-static {p3, v0}, Ljavassist/compiler/CodeGen;->getArrayWriteOp(II)I

    move-result p2

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 845
    iput p3, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 846
    iput v0, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 847
    iput-object v8, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    return-void
.end method

.method private atBreakStmnt(Ljavassist/compiler/ast/Stmnt;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 576
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    if-nez p1, :cond_1

    .line 580
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v0, 0xa7

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 581
    new-instance p1, Ljava/lang/Integer;

    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 582
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    if-eqz p2, :cond_0

    .line 584
    iget-object p2, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 586
    :cond_0
    iget-object p2, p0, Ljavassist/compiler/CodeGen;->continueList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 577
    :cond_1
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string p2, "sorry, not support labeled break or continue"

    invoke-direct {p1, p2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private atForStmnt(Ljavassist/compiler/ast/Stmnt;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 456
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/ArrayList;

    .line 457
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->continueList:Ljava/util/ArrayList;

    .line 458
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/ArrayList;

    .line 459
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ljavassist/compiler/CodeGen;->continueList:Ljava/util/ArrayList;

    .line 461
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    check-cast v2, Ljavassist/compiler/ast/Stmnt;

    .line 462
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    .line 463
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    .line 464
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    .line 465
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    check-cast v4, Ljavassist/compiler/ast/Stmnt;

    .line 466
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    check-cast p1, Ljavassist/compiler/ast/Stmnt;

    if-eqz v2, :cond_0

    .line 469
    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 471
    :cond_0
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v2

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 474
    invoke-virtual {p0, v5, v3}, Ljavassist/compiler/CodeGen;->compileBooleanExpr(ZLjavassist/compiler/ast/ASTree;)Z

    .line 475
    iget-object v6, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v6}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v6

    .line 476
    iget-object v7, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v7, v5}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 480
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 482
    :cond_2
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result p1

    if-eqz v4, :cond_3

    .line 484
    invoke-virtual {v4, p0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 486
    :cond_3
    iget-object v4, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v7, 0xa7

    invoke-virtual {v4, v7}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 487
    iget-object v4, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v7

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 489
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v2

    if-eqz v3, :cond_4

    .line 491
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    sub-int v4, v2, v6

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v6, v4}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    .line 493
    :cond_4
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v2}, Ljavassist/compiler/CodeGen;->patchGoto(Ljava/util/ArrayList;I)V

    .line 494
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->continueList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Ljavassist/compiler/CodeGen;->patchGoto(Ljava/util/ArrayList;I)V

    .line 495
    iput-object v1, p0, Ljavassist/compiler/CodeGen;->continueList:Ljava/util/ArrayList;

    .line 496
    iput-object v0, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/ArrayList;

    .line 497
    iput-boolean v5, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    return-void
.end method

.method private atIfStmnt(Ljavassist/compiler/ast/Stmnt;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 381
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 382
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    check-cast v1, Ljavassist/compiler/ast/Stmnt;

    .line 383
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    check-cast p1, Ljavassist/compiler/ast/Stmnt;

    const/4 v2, 0x0

    .line 384
    invoke-virtual {p0, v2, v0}, Ljavassist/compiler/CodeGen;->compileBooleanExpr(ZLjavassist/compiler/ast/ASTree;)Z

    .line 385
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v0

    .line 387
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v3, v2}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 389
    iput-boolean v2, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    if-eqz v1, :cond_0

    .line 391
    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 393
    :cond_0
    iget-boolean v1, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    .line 394
    iput-boolean v2, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    .line 397
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v4, 0xa7

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 398
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v3}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v3

    .line 399
    iget-object v4, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4, v2}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 402
    :goto_0
    iget-object v4, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v5

    sub-int/2addr v5, v0

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v4, v0, v5}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    if-eqz p1, :cond_4

    .line 405
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    if-nez v1, :cond_2

    .line 407
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v0

    sub-int/2addr v0, v3

    add-int/2addr v0, v6

    invoke-virtual {p1, v3, v0}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    :cond_2
    if-eqz v1, :cond_3

    .line 409
    iget-boolean p1, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    iput-boolean v2, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    :cond_4
    return-void
.end method

.method private atPlusPlus(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/Expr;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 1691
    invoke-virtual {p3}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object p2

    :cond_1
    move-object v5, p2

    .line 1693
    nop

    instance-of p2, v5, Ljavassist/compiler/ast/Variable;

    if-eqz p2, :cond_14

    .line 1694
    check-cast v5, Ljavassist/compiler/ast/Variable;

    invoke-virtual {v5}, Ljavassist/compiler/ast/Variable;->getDeclarator()Ljavassist/compiler/ast/Declarator;

    move-result-object p2

    .line 1695
    invoke-virtual {p2}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result v1

    iput v1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1696
    invoke-virtual {p2}, Ljavassist/compiler/ast/Declarator;->getArrayDim()I

    move-result v2

    iput v2, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1697
    invoke-virtual {p0, p2}, Ljavassist/compiler/CodeGen;->getLocalVar(Ljavassist/compiler/ast/Declarator;)I

    move-result p2

    .line 1698
    iget v2, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-lez v2, :cond_2

    .line 1699
    invoke-static {p3}, Ljavassist/compiler/CodeGen;->badType(Ljavassist/compiler/ast/Expr;)V

    :cond_2
    const/16 v2, 0x138

    const/16 v3, 0x5c

    const/16 v5, 0x16a

    if-ne v1, v2, :cond_6

    .line 1702
    iget-object p3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p3, p2}, Ljavassist/bytecode/Bytecode;->addDload(I)V

    if-eqz p4, :cond_3

    if-eqz v4, :cond_3

    .line 1704
    iget-object p3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p3, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1706
    :cond_3
    iget-object p3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p3, v0, v1}, Ljavassist/bytecode/Bytecode;->addDconst(D)V

    .line 1707
    iget-object p3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-ne p1, v5, :cond_4

    const/16 p1, 0x63

    goto :goto_1

    :cond_4
    const/16 p1, 0x67

    :goto_1
    invoke-virtual {p3, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    if-eqz p4, :cond_5

    if-nez v4, :cond_5

    .line 1709
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1711
    :cond_5
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addDstore(I)V

    goto/16 :goto_7

    :cond_6
    const/16 v2, 0x146

    if-ne v1, v2, :cond_a

    .line 1714
    iget-object p3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p3, p2}, Ljavassist/bytecode/Bytecode;->addLload(I)V

    if-eqz p4, :cond_7

    if-eqz v4, :cond_7

    .line 1716
    iget-object p3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p3, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1718
    :cond_7
    iget-object p3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-wide/16 v0, 0x1

    invoke-virtual {p3, v0, v1}, Ljavassist/bytecode/Bytecode;->addLconst(J)V

    .line 1719
    iget-object p3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-ne p1, v5, :cond_8

    const/16 p1, 0x61

    goto :goto_2

    :cond_8
    const/16 p1, 0x65

    :goto_2
    invoke-virtual {p3, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    if-eqz p4, :cond_9

    if-nez v4, :cond_9

    .line 1721
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1723
    :cond_9
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addLstore(I)V

    goto/16 :goto_7

    :cond_a
    const/16 v2, 0x13d

    if-ne v1, v2, :cond_e

    .line 1726
    iget-object p3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p3, p2}, Ljavassist/bytecode/Bytecode;->addFload(I)V

    const/16 p3, 0x59

    if-eqz p4, :cond_b

    if-eqz v4, :cond_b

    .line 1728
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, p3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1730
    :cond_b
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Ljavassist/bytecode/Bytecode;->addFconst(F)V

    .line 1731
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-ne p1, v5, :cond_c

    const/16 p1, 0x62

    goto :goto_3

    :cond_c
    const/16 p1, 0x66

    :goto_3
    invoke-virtual {v0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    if-eqz p4, :cond_d

    if-nez v4, :cond_d

    .line 1733
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, p3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1735
    :cond_d
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addFstore(I)V

    goto/16 :goto_7

    :cond_e
    const/16 v2, 0x12f

    if-eq v1, v2, :cond_10

    const/16 v2, 0x132

    if-eq v1, v2, :cond_10

    const/16 v2, 0x14e

    if-eq v1, v2, :cond_10

    const/16 v2, 0x144

    if-ne v1, v2, :cond_f

    goto :goto_4

    .line 1758
    :cond_f
    invoke-static {p3}, Ljavassist/compiler/CodeGen;->badType(Ljavassist/compiler/ast/Expr;)V

    goto :goto_7

    :cond_10
    :goto_4
    if-eqz p4, :cond_11

    if-eqz v4, :cond_11

    .line 1739
    iget-object p3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p3, p2}, Ljavassist/bytecode/Bytecode;->addIload(I)V

    :cond_11
    if-ne p1, v5, :cond_12

    goto :goto_5

    :cond_12
    const/4 v0, -0x1

    :goto_5
    const/16 p1, 0xff

    const/16 p3, 0x84

    if-le p2, p1, :cond_13

    .line 1743
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v1, 0xc4

    invoke-virtual {p1, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1744
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, p3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1745
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1746
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    goto :goto_6

    .line 1749
    :cond_13
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, p3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1750
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1751
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    :goto_6
    if-eqz p4, :cond_16

    if-nez v4, :cond_16

    .line 1755
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addIload(I)V

    goto :goto_7

    .line 1761
    :cond_14
    instance-of p2, v5, Ljavassist/compiler/ast/Expr;

    if-eqz p2, :cond_15

    .line 1762
    move-object p2, v5

    check-cast p2, Ljavassist/compiler/ast/Expr;

    .line 1763
    invoke-virtual {p2}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v0

    const/16 v1, 0x41

    if-ne v0, v1, :cond_15

    .line 1764
    invoke-virtual {p0, p1, v4, p2, p4}, Ljavassist/compiler/CodeGen;->atArrayPlusPlus(IZLjavassist/compiler/ast/Expr;Z)V

    return-void

    :cond_15
    move-object v2, p0

    move v3, p1

    move-object v6, p3

    move v7, p4

    .line 1769
    invoke-virtual/range {v2 .. v7}, Ljavassist/compiler/CodeGen;->atFieldPlusPlus(IZLjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/Expr;Z)V

    :cond_16
    :goto_7
    return-void
.end method

.method private atStringConcatExpr(Ljavassist/compiler/ast/Expr;IILjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1032
    iget p1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1033
    iget p4, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1034
    invoke-static {p1, p4}, Ljavassist/compiler/CodeGen;->is2word(II)Z

    move-result v0

    const-string v1, "java/lang/String"

    const/4 v2, 0x0

    const/16 v3, 0x133

    if-ne p1, v3, :cond_0

    .line 1035
    iget-object v4, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1039
    invoke-direct {p0, p1, p4}, Ljavassist/compiler/CodeGen;->convToString(II)V

    .line 1041
    :cond_1
    invoke-static {p2, p3}, Ljavassist/compiler/CodeGen;->is2word(II)Z

    move-result v5

    const/16 v6, 0x5f

    if-eqz v5, :cond_2

    .line 1042
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v7, 0x5b

    invoke-virtual {v5, v7}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1043
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v7, 0x57

    invoke-virtual {v5, v7}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_1

    .line 1046
    :cond_2
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1049
    :goto_1
    invoke-direct {p0, p2, p3}, Ljavassist/compiler/CodeGen;->convToString(II)V

    .line 1050
    iget-object p2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p2, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    if-nez v0, :cond_3

    if-nez v4, :cond_3

    .line 1053
    invoke-direct {p0, p1, p4}, Ljavassist/compiler/CodeGen;->convToString(II)V

    .line 1055
    :cond_3
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string p2, "java.lang.String"

    const-string p3, "concat"

    const-string p4, "(Ljava/lang/String;)Ljava/lang/String;"

    invoke-virtual {p1, p2, p3, p4}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    iput v3, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1058
    iput v2, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1059
    iput-object v1, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    return-void
.end method

.method private atStringPlusEq(Ljavassist/compiler/ast/Expr;IILjava/lang/String;Ljavassist/compiler/ast/ASTree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const-string v0, "java/lang/String"

    .line 885
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 886
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->badAssign(Ljavassist/compiler/ast/Expr;)V

    .line 888
    :cond_0
    invoke-direct {p0, p2, p3}, Ljavassist/compiler/CodeGen;->convToString(II)V

    .line 889
    invoke-virtual {p5, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 890
    iget p1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    iget p2, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    invoke-direct {p0, p1, p2}, Ljavassist/compiler/CodeGen;->convToString(II)V

    .line 891
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string p2, "java.lang.String"

    const-string p3, "concat"

    const-string p4, "(Ljava/lang/String;)Ljava/lang/String;"

    invoke-virtual {p1, p2, p3, p4}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x133

    .line 893
    iput p1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    const/4 p1, 0x0

    .line 894
    iput p1, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 895
    iput-object v0, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    return-void
.end method

.method private atSwitchStmnt(Ljavassist/compiler/ast/Stmnt;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 501
    invoke-virtual/range {p1 .. p1}, Ljavassist/compiler/ast/Stmnt;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/compiler/CodeGen;->compileExpr(Ljavassist/compiler/ast/ASTree;)V

    .line 503
    iget-object v1, v0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/ArrayList;

    .line 504
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/ArrayList;

    .line 505
    iget-object v2, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v2

    .line 506
    iget-object v3, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v4, 0xab

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    and-int/lit8 v3, v2, 0x3

    rsub-int/lit8 v3, v3, 0x3

    :goto_0
    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    if-lez v3, :cond_0

    .line 509
    iget-object v3, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v3, v5}, Ljavassist/bytecode/Bytecode;->add(I)V

    move v3, v4

    goto :goto_0

    .line 511
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljavassist/compiler/ast/Stmnt;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v3

    check-cast v3, Ljavassist/compiler/ast/Stmnt;

    move-object v4, v3

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x130

    if-eqz v4, :cond_2

    .line 514
    invoke-virtual {v4}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v8

    check-cast v8, Ljavassist/compiler/ast/Stmnt;

    invoke-virtual {v8}, Ljavassist/compiler/ast/Stmnt;->getOperator()I

    move-result v8

    if-ne v8, v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    .line 513
    :cond_1
    invoke-virtual {v4}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v4

    goto :goto_1

    .line 518
    :cond_2
    iget-object v4, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v4

    .line 519
    iget-object v8, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljavassist/bytecode/Bytecode;->addGap(I)V

    .line 520
    iget-object v8, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v8, v6}, Ljavassist/bytecode/Bytecode;->add32bit(I)V

    .line 521
    iget-object v8, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    mul-int/lit8 v9, v6, 0x8

    invoke-virtual {v8, v9}, Ljavassist/bytecode/Bytecode;->addGap(I)V

    .line 523
    new-array v8, v6, [J

    const/4 v9, -0x1

    const/4 v10, 0x0

    :goto_2
    const/16 v11, 0x20

    if-eqz v3, :cond_5

    .line 527
    invoke-virtual {v3}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v12

    check-cast v12, Ljavassist/compiler/ast/Stmnt;

    .line 528
    invoke-virtual {v12}, Ljavassist/compiler/ast/Stmnt;->getOperator()I

    move-result v13

    const/16 v14, 0x136

    if-ne v13, v14, :cond_3

    .line 530
    iget-object v9, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v9}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v9

    :goto_3
    move/from16 p1, v6

    goto :goto_4

    :cond_3
    if-eq v13, v7, :cond_4

    .line 532
    invoke-static {}, Ljavassist/compiler/CodeGen;->fatal()V

    goto :goto_3

    :cond_4
    add-int/lit8 v13, v10, 0x1

    .line 534
    invoke-virtual {v12}, Ljavassist/compiler/ast/Stmnt;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v14

    invoke-direct {v0, v14}, Ljavassist/compiler/CodeGen;->computeLabel(Ljavassist/compiler/ast/ASTree;)I

    move-result v14

    int-to-long v14, v14

    shl-long/2addr v14, v11

    iget-object v11, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v11}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v11

    sub-int/2addr v11, v2

    move/from16 p1, v6

    int-to-long v5, v11

    const-wide/16 v16, -0x1

    and-long v5, v5, v16

    add-long/2addr v14, v5

    aput-wide v14, v8, v10

    move v10, v13

    const/4 v5, 0x0

    .line 539
    :goto_4
    iput-boolean v5, v0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    .line 540
    invoke-virtual {v12}, Ljavassist/compiler/ast/Stmnt;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v5

    check-cast v5, Ljavassist/compiler/ast/Stmnt;

    invoke-virtual {v5, v0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 526
    invoke-virtual {v3}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v3

    move/from16 v6, p1

    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    move/from16 p1, v6

    .line 543
    invoke-static {v8}, Ljava/util/Arrays;->sort([J)V

    add-int/lit8 v3, v4, 0x8

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v6, :cond_6

    .line 546
    iget-object v7, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    aget-wide v12, v8, v5

    ushr-long/2addr v12, v11

    long-to-int v10, v12

    invoke-virtual {v7, v3, v10}, Ljavassist/bytecode/Bytecode;->write32bit(II)V

    .line 547
    iget-object v7, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    add-int/lit8 v10, v3, 0x4

    aget-wide v12, v8, v5

    long-to-int v13, v12

    invoke-virtual {v7, v10, v13}, Ljavassist/bytecode/Bytecode;->write32bit(II)V

    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    if-ltz v9, :cond_7

    .line 551
    iget-object v3, v0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    :cond_7
    const/4 v3, 0x0

    .line 552
    iput-boolean v3, v0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    .line 554
    :cond_8
    iget-object v3, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v3}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v3

    if-gez v9, :cond_9

    move v9, v3

    .line 558
    :cond_9
    iget-object v5, v0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    sub-int/2addr v9, v2

    invoke-virtual {v5, v4, v9}, Ljavassist/bytecode/Bytecode;->write32bit(II)V

    .line 560
    iget-object v2, v0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljavassist/compiler/CodeGen;->patchGoto(Ljava/util/ArrayList;I)V

    .line 561
    iput-object v1, v0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/ArrayList;

    return-void
.end method

.method private atSyncStmnt(Ljavassist/compiler/ast/Stmnt;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 643
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljavassist/compiler/CodeGen;->getListSize(Ljava/util/ArrayList;)I

    move-result v0

    .line 644
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->continueList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljavassist/compiler/CodeGen;->getListSize(Ljava/util/ArrayList;)I

    move-result v1

    .line 646
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljavassist/compiler/CodeGen;->compileExpr(Ljavassist/compiler/ast/ASTree;)V

    .line 647
    iget v2, p0, Ljavassist/compiler/CodeGen;->exprType:I

    const/16 v3, 0x133

    if-eq v2, v3, :cond_1

    iget v2, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-eqz v2, :cond_0

    goto :goto_0

    .line 648
    :cond_0
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string v0, "bad type expr for synchronized block"

    invoke-direct {p1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 650
    :cond_1
    :goto_0
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    .line 651
    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->getMaxLocals()I

    move-result v3

    const/4 v4, 0x1

    .line 652
    invoke-virtual {v2, v4}, Ljavassist/bytecode/Bytecode;->incMaxLocals(I)V

    const/16 v5, 0x59

    .line 653
    invoke-virtual {v2, v5}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 654
    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    const/16 v5, 0xc2

    .line 655
    invoke-virtual {v2, v5}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 657
    new-instance v5, Ljavassist/compiler/CodeGen$1;

    invoke-direct {v5, p0, p0, v3}, Ljavassist/compiler/CodeGen$1;-><init>(Ljavassist/compiler/CodeGen;Ljavassist/compiler/CodeGen;I)V

    .line 665
    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v3

    .line 666
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    check-cast p1, Ljavassist/compiler/ast/Stmnt;

    if-eqz p1, :cond_2

    .line 668
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 670
    :cond_2
    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result p1

    .line 672
    iget-boolean v6, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    const/4 v7, 0x0

    if-nez v6, :cond_3

    .line 673
    invoke-virtual {v5, v2, v7}, Ljavassist/compiler/CodeGen$ReturnHook;->doit(Ljavassist/bytecode/Bytecode;I)Z

    const/16 v6, 0xa7

    .line 674
    invoke-virtual {v2, v6}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 675
    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v6

    .line 676
    invoke-virtual {v2, v7}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-ge v3, p1, :cond_4

    .line 680
    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v8

    .line 681
    invoke-virtual {v5, v2, v7}, Ljavassist/compiler/CodeGen$ReturnHook;->doit(Ljavassist/bytecode/Bytecode;I)Z

    const/16 v9, 0xbf

    .line 682
    invoke-virtual {v2, v9}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 683
    invoke-virtual {v2, v3, p1, v8, v7}, Ljavassist/bytecode/Bytecode;->addExceptionHandler(IIII)V

    .line 686
    :cond_4
    iget-boolean p1, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    if-nez p1, :cond_5

    .line 687
    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result p1

    sub-int/2addr p1, v6

    add-int/2addr p1, v4

    invoke-virtual {v2, v6, p1}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    .line 689
    :cond_5
    invoke-virtual {v5, p0}, Ljavassist/compiler/CodeGen$ReturnHook;->remove(Ljavassist/compiler/CodeGen;)V

    .line 691
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljavassist/compiler/CodeGen;->getListSize(Ljava/util/ArrayList;)I

    move-result p1

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Ljavassist/compiler/CodeGen;->continueList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljavassist/compiler/CodeGen;->getListSize(Ljava/util/ArrayList;)I

    move-result p1

    if-ne p1, v1, :cond_6

    return-void

    .line 693
    :cond_6
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string v0, "sorry, cannot break/continue in synchronized block"

    invoke-direct {p1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private atThrowStmnt(Ljavassist/compiler/ast/Stmnt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 627
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    .line 628
    invoke-virtual {p0, p1}, Ljavassist/compiler/CodeGen;->compileExpr(Ljavassist/compiler/ast/ASTree;)V

    .line 629
    iget p1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    const/16 v0, 0x133

    if-ne p1, v0, :cond_0

    iget p1, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-gtz p1, :cond_0

    .line 632
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v0, 0xbf

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    const/4 p1, 0x1

    .line 633
    iput-boolean p1, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    return-void

    .line 630
    :cond_0
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string v0, "bad throw statement"

    invoke-direct {p1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private atVariableAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/Variable;Ljavassist/compiler/ast/Declarator;Ljavassist/compiler/ast/ASTree;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v3, p5

    .line 781
    invoke-virtual/range {p4 .. p4}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result v8

    .line 782
    invoke-virtual/range {p4 .. p4}, Ljavassist/compiler/ast/Declarator;->getArrayDim()I

    move-result v9

    .line 783
    invoke-virtual/range {p4 .. p4}, Ljavassist/compiler/ast/Declarator;->getClassName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p4

    .line 784
    invoke-virtual {p0, v0}, Ljavassist/compiler/CodeGen;->getLocalVar(Ljavassist/compiler/ast/Declarator;)I

    move-result v11

    const/16 v0, 0x3d

    move v2, p2

    if-eq v2, v0, :cond_0

    move-object v0, p3

    .line 787
    invoke-virtual {p0, p3}, Ljavassist/compiler/CodeGen;->atVariable(Ljavassist/compiler/ast/Variable;)V

    :cond_0
    if-nez p1, :cond_1

    .line 790
    instance-of v0, v3, Ljavassist/compiler/ast/ArrayInit;

    if-eqz v0, :cond_1

    .line 791
    move-object v0, v3

    check-cast v0, Ljavassist/compiler/ast/ArrayInit;

    invoke-virtual {p0, v0, v8, v9, v10}, Ljavassist/compiler/CodeGen;->atArrayVariableAssign(Ljavassist/compiler/ast/ArrayInit;IILjava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p5

    move v4, v8

    move v5, v9

    move-object v6, v10

    .line 793
    invoke-virtual/range {v0 .. v6}, Ljavassist/compiler/CodeGen;->atAssignCore(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;IILjava/lang/String;)V

    :goto_0
    if-eqz p6, :cond_3

    .line 796
    invoke-static {v8, v9}, Ljavassist/compiler/CodeGen;->is2word(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 797
    iget-object v0, v7, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_1

    .line 799
    :cond_2
    iget-object v0, v7, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    :cond_3
    :goto_1
    if-lez v9, :cond_4

    .line 802
    iget-object v0, v7, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v11}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    goto :goto_2

    :cond_4
    const/16 v0, 0x138

    if-ne v8, v0, :cond_5

    .line 804
    iget-object v0, v7, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v11}, Ljavassist/bytecode/Bytecode;->addDstore(I)V

    goto :goto_2

    :cond_5
    const/16 v0, 0x13d

    if-ne v8, v0, :cond_6

    .line 806
    iget-object v0, v7, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v11}, Ljavassist/bytecode/Bytecode;->addFstore(I)V

    goto :goto_2

    :cond_6
    const/16 v0, 0x146

    if-ne v8, v0, :cond_7

    .line 808
    iget-object v0, v7, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v11}, Ljavassist/bytecode/Bytecode;->addLstore(I)V

    goto :goto_2

    .line 809
    :cond_7
    invoke-static {v8}, Ljavassist/compiler/CodeGen;->isRefType(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 810
    iget-object v0, v7, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v11}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    goto :goto_2

    .line 812
    :cond_8
    iget-object v0, v7, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v11}, Ljavassist/bytecode/Bytecode;->addIstore(I)V

    .line 814
    :goto_2
    iput v8, v7, Ljavassist/compiler/CodeGen;->exprType:I

    .line 815
    iput v9, v7, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 816
    iput-object v10, v7, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    return-void
.end method

.method private atWhileStmnt(Ljavassist/compiler/ast/Stmnt;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 414
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/ArrayList;

    .line 415
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->continueList:Ljava/util/ArrayList;

    .line 416
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/ArrayList;

    .line 417
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ljavassist/compiler/CodeGen;->continueList:Ljava/util/ArrayList;

    .line 419
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    .line 420
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    check-cast p1, Ljavassist/compiler/ast/Stmnt;

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 424
    iget-object v4, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v5, 0xa7

    invoke-virtual {v4, v5}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 425
    iget-object v4, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v4

    .line 426
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5, v3}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    move v3, v4

    .line 429
    :cond_0
    iget-object v4, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v4

    if-eqz p1, :cond_1

    .line 431
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 433
    :cond_1
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result p1

    const/4 v5, 0x1

    if-eqz p2, :cond_2

    .line 435
    iget-object p2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    sub-int v6, p1, v3

    add-int/2addr v6, v5

    invoke-virtual {p2, v3, v6}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    .line 437
    :cond_2
    invoke-virtual {p0, v5, v2}, Ljavassist/compiler/CodeGen;->compileBooleanExpr(ZLjavassist/compiler/ast/ASTree;)Z

    move-result p2

    .line 438
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v3

    sub-int/2addr v4, v3

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 440
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/ArrayList;

    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v3}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljavassist/compiler/CodeGen;->patchGoto(Ljava/util/ArrayList;I)V

    .line 441
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->continueList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Ljavassist/compiler/CodeGen;->patchGoto(Ljava/util/ArrayList;I)V

    .line 442
    iput-object v1, p0, Ljavassist/compiler/CodeGen;->continueList:Ljava/util/ArrayList;

    .line 443
    iput-object v0, p0, Ljavassist/compiler/CodeGen;->breakList:Ljava/util/ArrayList;

    .line 444
    iput-boolean p2, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    return-void
.end method

.method protected static badAssign(Ljavassist/compiler/ast/Expr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "incompatible type for assignment"

    goto :goto_0

    .line 768
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "incompatible type for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/compiler/ast/Expr;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 770
    :goto_0
    new-instance v0, Ljavassist/compiler/CompileError;

    invoke-direct {v0, p0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static badType(Ljavassist/compiler/ast/Expr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1526
    new-instance v0, Ljavassist/compiler/CompileError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavassist/compiler/ast/Expr;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static badTypes(Ljavassist/compiler/ast/Expr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1256
    new-instance v0, Ljavassist/compiler/CompileError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid types for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavassist/compiler/ast/Expr;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private booleanExpr(ZLjavassist/compiler/ast/ASTree;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1099
    invoke-static {p2}, Ljavassist/compiler/CodeGen;->getCompOperator(Ljavassist/compiler/ast/ASTree;)I

    move-result v0

    const/16 v1, 0x12d

    const/4 v2, 0x0

    const/16 v3, 0x166

    if-ne v0, v3, :cond_0

    .line 1101
    check-cast p2, Ljavassist/compiler/ast/BinExpr;

    .line 1102
    invoke-direct {p0, p2}, Ljavassist/compiler/CodeGen;->compileOprands(Ljavassist/compiler/ast/BinExpr;)I

    move-result v0

    .line 1105
    invoke-virtual {p2}, Ljavassist/compiler/ast/BinExpr;->getOperator()I

    move-result v3

    invoke-direct {p0, p1, v3, v0, p2}, Ljavassist/compiler/CodeGen;->compareExpr(ZIILjavassist/compiler/ast/BinExpr;)V

    goto/16 :goto_3

    :cond_0
    const/16 v3, 0x21

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    xor-int/2addr p1, v4

    .line 1108
    check-cast p2, Ljavassist/compiler/ast/Expr;

    invoke-virtual {p2}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/compiler/CodeGen;->booleanExpr(ZLjavassist/compiler/ast/ASTree;)Z

    goto/16 :goto_3

    :cond_1
    const/16 v3, 0x171

    if-ne v0, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    const/16 v5, 0xa7

    if-nez v3, :cond_7

    const/16 v6, 0x170

    if-ne v0, v6, :cond_3

    goto :goto_2

    .line 1122
    :cond_3
    invoke-static {p2, p1}, Ljavassist/compiler/CodeGen;->isAlwaysBranch(Ljavassist/compiler/ast/ASTree;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1123
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, v5}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    return v4

    .line 1127
    :cond_4
    invoke-virtual {p2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 1128
    iget p2, p0, Ljavassist/compiler/CodeGen;->exprType:I

    if-ne p2, v1, :cond_6

    iget p2, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-nez p2, :cond_6

    .line 1131
    iget-object p2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-eqz p1, :cond_5

    const/16 p1, 0x9a

    goto :goto_1

    :cond_5
    const/16 p1, 0x99

    :goto_1
    invoke-virtual {p2, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_3

    .line 1129
    :cond_6
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string p2, "boolean expr is required"

    invoke-direct {p1, p2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1110
    :cond_7
    :goto_2
    check-cast p2, Ljavassist/compiler/ast/BinExpr;

    xor-int/lit8 v0, v3, 0x1

    .line 1111
    invoke-virtual {p2}, Ljavassist/compiler/ast/BinExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Ljavassist/compiler/CodeGen;->booleanExpr(ZLjavassist/compiler/ast/ASTree;)Z

    .line 1112
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v0

    .line 1113
    iget-object v4, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4, v2}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1115
    invoke-virtual {p2}, Ljavassist/compiler/ast/BinExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object p2

    invoke-direct {p0, v3, p2}, Ljavassist/compiler/CodeGen;->booleanExpr(ZLjavassist/compiler/ast/ASTree;)Z

    .line 1116
    iget-object p2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {p2, v0, v4}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    if-eq p1, v3, :cond_8

    .line 1118
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1119
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, v5}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1134
    :cond_8
    :goto_3
    iput v1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1135
    iput v2, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    return v2
.end method

.method private checkCastExpr(Ljavassist/compiler/ast/CastExpr;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1387
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getOprand()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 1388
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getArrayDim()I

    move-result v9

    .line 1389
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getType()I

    move-result p1

    .line 1390
    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 1391
    iget v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1392
    iget v3, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    iget-object v4, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    const/4 v8, 0x1

    move-object v1, p0

    move v2, v0

    move v5, p1

    move v6, v9

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Ljavassist/compiler/CodeGen;->invalidDim(IILjava/lang/String;IILjava/lang/String;Z)Z

    move-result v1

    const-string v2, "invalid cast"

    if-nez v1, :cond_3

    const/16 v1, 0x158

    if-eq v0, v1, :cond_3

    if-eq p1, v1, :cond_3

    const/16 v1, 0x133

    if-ne p1, v1, :cond_1

    .line 1397
    invoke-static {v0}, Ljavassist/compiler/CodeGen;->isRefType(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1400
    invoke-static {p2, v9}, Ljavassist/compiler/CodeGen;->toJvmArrayName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1398
    :cond_0
    new-instance p1, Ljavassist/compiler/CompileError;

    invoke-direct {p1, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-lez v9, :cond_2

    .line 1404
    invoke-static {p1, v9}, Ljavassist/compiler/CodeGen;->toJvmTypeName(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    .line 1394
    :cond_3
    new-instance p1, Ljavassist/compiler/CompileError;

    invoke-direct {p1, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private compareExpr(ZIILjavassist/compiler/ast/BinExpr;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1206
    iget v0, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-nez v0, :cond_0

    .line 1207
    iget v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    invoke-direct {p0, p3, v0, p4}, Ljavassist/compiler/CodeGen;->convertOprandTypes(IILjavassist/compiler/ast/Expr;)V

    .line 1209
    :cond_0
    iget p3, p0, Ljavassist/compiler/CodeGen;->exprType:I

    invoke-static {p3}, Ljavassist/compiler/CodeGen;->typePrecedence(I)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_10

    .line 1210
    iget v0, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-lez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne p3, v3, :cond_5

    .line 1219
    sget-object p3, Ljavassist/compiler/CodeGen;->ifOp:[I

    .line 1220
    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_4

    .line 1221
    aget v3, p3, v0

    if-ne v3, p2, :cond_3

    .line 1222
    iget-object p2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    aget p1, p3, v0

    invoke-virtual {p2, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 1226
    :cond_4
    invoke-static {p4}, Ljavassist/compiler/CodeGen;->badTypes(Ljavassist/compiler/ast/Expr;)V

    goto/16 :goto_7

    :cond_5
    const/16 v3, 0x165

    const/16 v4, 0x3c

    if-nez p3, :cond_8

    if-eq p2, v4, :cond_7

    if-ne p2, v3, :cond_6

    goto :goto_1

    .line 1233
    :cond_6
    iget-object p3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v3, 0x97

    invoke-virtual {p3, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_3

    .line 1231
    :cond_7
    :goto_1
    iget-object p3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v3, 0x98

    invoke-virtual {p3, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_3

    :cond_8
    if-ne p3, v2, :cond_b

    if-eq p2, v4, :cond_a

    if-ne p2, v3, :cond_9

    goto :goto_2

    .line 1238
    :cond_9
    iget-object p3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v3, 0x95

    invoke-virtual {p3, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_3

    .line 1236
    :cond_a
    :goto_2
    iget-object p3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v3, 0x96

    invoke-virtual {p3, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_3

    :cond_b
    if-ne p3, v1, :cond_c

    .line 1240
    iget-object p3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v3, 0x94

    invoke-virtual {p3, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_3

    .line 1242
    :cond_c
    invoke-static {}, Ljavassist/compiler/CodeGen;->fatal()V

    .line 1244
    :goto_3
    sget-object p3, Ljavassist/compiler/CodeGen;->ifOp2:[I

    .line 1245
    :goto_4
    array-length v3, p3

    if-ge v0, v3, :cond_f

    .line 1246
    aget v3, p3, v0

    if-ne v3, p2, :cond_e

    .line 1247
    iget-object p2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-eqz p1, :cond_d

    const/4 v1, 0x1

    :cond_d
    add-int/2addr v0, v1

    aget p1, p3, v0

    invoke-virtual {p2, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    return-void

    :cond_e
    add-int/lit8 v0, v0, 0x3

    goto :goto_4

    .line 1251
    :cond_f
    invoke-static {p4}, Ljavassist/compiler/CodeGen;->badTypes(Ljavassist/compiler/ast/Expr;)V

    goto :goto_7

    :cond_10
    :goto_5
    const/16 p3, 0x166

    const/16 v0, 0xa5

    const/16 v1, 0xa6

    if-ne p2, p3, :cond_12

    .line 1212
    iget-object p2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-eqz p1, :cond_11

    goto :goto_6

    :cond_11
    const/16 v0, 0xa6

    :goto_6
    invoke-virtual {p2, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_7

    :cond_12
    const/16 p3, 0x15e

    if-ne p2, p3, :cond_14

    .line 1214
    iget-object p2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-eqz p1, :cond_13

    const/16 v0, 0xa6

    :cond_13
    invoke-virtual {p2, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_7

    .line 1216
    :cond_14
    invoke-static {p4}, Ljavassist/compiler/CodeGen;->badTypes(Ljavassist/compiler/ast/Expr;)V

    :goto_7
    return-void
.end method

.method private compileOprands(Ljavassist/compiler/ast/BinExpr;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1167
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 1168
    iget v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1169
    iget v1, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1170
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 1171
    iget p1, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    const/16 v2, 0x19c

    if-eq v1, p1, :cond_2

    if-eq v0, v2, :cond_1

    .line 1172
    iget p1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 1173
    :cond_0
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string v0, "incompatible array types"

    invoke-direct {p1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1174
    :cond_1
    :goto_0
    iget p1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    if-ne p1, v2, :cond_2

    .line 1175
    iput v1, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    :cond_2
    if-ne v0, v2, :cond_3

    .line 1178
    iget p1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    return p1

    :cond_3
    return v0
.end method

.method private computeLabel(Ljavassist/compiler/ast/ASTree;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 565
    invoke-virtual {p0, p1}, Ljavassist/compiler/CodeGen;->doTypeCheck(Ljavassist/compiler/ast/ASTree;)V

    .line 566
    invoke-static {p1}, Ljavassist/compiler/TypeChecker;->stripPlusExpr(Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    .line 567
    instance-of v0, p1, Ljavassist/compiler/ast/IntConst;

    if-eqz v0, :cond_0

    .line 568
    check-cast p1, Ljavassist/compiler/ast/IntConst;

    invoke-virtual {p1}, Ljavassist/compiler/ast/IntConst;->get()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    .line 570
    :cond_0
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string v0, "bad case label"

    invoke-direct {p1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private convToString(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1065
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->isRefType(I)Z

    move-result v0

    const-string v1, "valueOf"

    const-string v2, "java.lang.String"

    if-nez v0, :cond_7

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x138

    if-ne p1, p2, :cond_1

    .line 1069
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string p2, "(D)Ljava/lang/String;"

    invoke-virtual {p1, v2, v1, p2}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 p2, 0x13d

    if-ne p1, p2, :cond_2

    .line 1072
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string p2, "(F)Ljava/lang/String;"

    invoke-virtual {p1, v2, v1, p2}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 p2, 0x146

    if-ne p1, p2, :cond_3

    .line 1075
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string p2, "(J)Ljava/lang/String;"

    invoke-virtual {p1, v2, v1, p2}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/16 p2, 0x12d

    if-ne p1, p2, :cond_4

    .line 1078
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string p2, "(Z)Ljava/lang/String;"

    invoke-virtual {p1, v2, v1, p2}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/16 p2, 0x132

    if-ne p1, p2, :cond_5

    .line 1081
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string p2, "(C)Ljava/lang/String;"

    invoke-virtual {p1, v2, v1, p2}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/16 p2, 0x158

    if-eq p1, p2, :cond_6

    .line 1086
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string p2, "(I)Ljava/lang/String;"

    invoke-virtual {p1, v2, v1, p2}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1084
    :cond_6
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string p2, "void type expression"

    invoke-direct {p1, p2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1066
    :cond_7
    :goto_0
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string p2, "(Ljava/lang/Object;)Ljava/lang/String;"

    invoke-virtual {p1, v2, v1, p2}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private convertOprandTypes(IILjavassist/compiler/ast/Expr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1310
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->typePrecedence(I)I

    move-result v0

    .line 1311
    invoke-static {p2}, Ljavassist/compiler/CodeGen;->typePrecedence(I)I

    move-result p2

    if-gez p2, :cond_0

    if-gez v0, :cond_0

    return-void

    :cond_0
    if-ltz p2, :cond_1

    if-gez v0, :cond_2

    .line 1317
    :cond_1
    invoke-static {p3}, Ljavassist/compiler/CodeGen;->badTypes(Ljavassist/compiler/ast/Expr;)V

    :cond_2
    const/4 p3, 0x1

    if-gt v0, p2, :cond_3

    const/4 v1, 0x0

    .line 1322
    iput p1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1323
    sget-object p1, Ljavassist/compiler/CodeGen;->castOp:[I

    mul-int/lit8 p2, p2, 0x4

    add-int/2addr p2, v0

    aget p1, p1, p2

    move p2, v0

    goto :goto_0

    .line 1328
    :cond_3
    sget-object p1, Ljavassist/compiler/CodeGen;->castOp:[I

    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p2

    aget p1, p1, v1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_a

    const/4 v1, 0x2

    if-eqz p2, :cond_7

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    if-ne p2, p3, :cond_6

    const/16 p2, 0x5f

    if-ne v0, v1, :cond_5

    .line 1346
    iget-object p3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v0, 0x5b

    invoke-virtual {p3, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1347
    iget-object p3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v0, 0x57

    invoke-virtual {p3, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_1

    .line 1350
    :cond_5
    iget-object p3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p3, p2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1352
    :goto_1
    iget-object p3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p3, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1353
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_5

    .line 1356
    :cond_6
    invoke-static {}, Ljavassist/compiler/CodeGen;->fatal()V

    goto :goto_5

    :cond_7
    :goto_2
    const/16 p2, 0x5e

    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_8

    goto :goto_3

    .line 1337
    :cond_8
    iget-object p3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v0, 0x5d

    invoke-virtual {p3, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_4

    .line 1335
    :cond_9
    :goto_3
    iget-object p3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p3, p2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1339
    :goto_4
    iget-object p3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v0, 0x58

    invoke-virtual {p3, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1340
    iget-object p3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p3, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1341
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1342
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_5

    :cond_a
    if-eqz p1, :cond_b

    .line 1359
    iget-object p2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p2, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    :cond_b
    :goto_5
    return-void
.end method

.method protected static fatal()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 99
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "fatal"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static getArrayReadOp(II)I
    .locals 1

    const/16 v0, 0x32

    if-lez p1, :cond_0

    return v0

    :cond_0
    const/16 p1, 0x12d

    if-eq p0, p1, :cond_7

    const/16 p1, 0x12f

    if-eq p0, p1, :cond_7

    const/16 p1, 0x132

    if-eq p0, p1, :cond_6

    const/16 p1, 0x138

    if-eq p0, p1, :cond_5

    const/16 p1, 0x13d

    if-eq p0, p1, :cond_4

    const/16 p1, 0x144

    if-eq p0, p1, :cond_3

    const/16 p1, 0x146

    if-eq p0, p1, :cond_2

    const/16 p1, 0x14e

    if-eq p0, p1, :cond_1

    return v0

    :cond_1
    const/16 p0, 0x35

    return p0

    :cond_2
    const/16 p0, 0x2f

    return p0

    :cond_3
    const/16 p0, 0x2e

    return p0

    :cond_4
    const/16 p0, 0x30

    return p0

    :cond_5
    const/16 p0, 0x31

    return p0

    :cond_6
    const/16 p0, 0x34

    return p0

    :cond_7
    const/16 p0, 0x33

    return p0
.end method

.method protected static getArrayWriteOp(II)I
    .locals 1

    const/16 v0, 0x53

    if-lez p1, :cond_0

    return v0

    :cond_0
    const/16 p1, 0x12d

    if-eq p0, p1, :cond_7

    const/16 p1, 0x12f

    if-eq p0, p1, :cond_7

    const/16 p1, 0x132

    if-eq p0, p1, :cond_6

    const/16 p1, 0x138

    if-eq p0, p1, :cond_5

    const/16 p1, 0x13d

    if-eq p0, p1, :cond_4

    const/16 p1, 0x144

    if-eq p0, p1, :cond_3

    const/16 p1, 0x146

    if-eq p0, p1, :cond_2

    const/16 p1, 0x14e

    if-eq p0, p1, :cond_1

    return v0

    :cond_1
    const/16 p0, 0x56

    return p0

    :cond_2
    const/16 p0, 0x50

    return p0

    :cond_3
    const/16 p0, 0x4f

    return p0

    :cond_4
    const/16 p0, 0x51

    return p0

    :cond_5
    const/16 p0, 0x52

    return p0

    :cond_6
    const/16 p0, 0x55

    return p0

    :cond_7
    const/16 p0, 0x54

    return p0
.end method

.method static getCompOperator(Ljavassist/compiler/ast/ASTree;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1150
    instance-of v0, p0, Ljavassist/compiler/ast/Expr;

    if-eqz v0, :cond_2

    .line 1151
    check-cast p0, Ljavassist/compiler/ast/Expr;

    .line 1152
    invoke-virtual {p0}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    return v1

    .line 1155
    :cond_0
    instance-of p0, p0, Ljavassist/compiler/ast/BinExpr;

    if-eqz p0, :cond_1

    const/16 p0, 0x170

    if-eq v0, p0, :cond_1

    const/16 p0, 0x171

    if-eq v0, p0, :cond_1

    const/16 p0, 0x26

    if-eq v0, p0, :cond_1

    const/16 p0, 0x7c

    if-eq v0, p0, :cond_1

    const/16 p0, 0x166

    return p0

    :cond_1
    return v0

    :cond_2
    const/16 p0, 0x20

    return p0
.end method

.method private static getListSize(Ljava/util/ArrayList;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 698
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method private invalidDim(IILjava/lang/String;IILjava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eq p2, p5, :cond_3

    const/16 v1, 0x19c

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const-string v1, "java/lang/Object"

    const/16 v2, 0x133

    if-nez p5, :cond_1

    if-ne p4, v2, :cond_1

    .line 905
    invoke-virtual {v1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    return v0

    :cond_1
    if-eqz p7, :cond_2

    if-nez p2, :cond_2

    if-ne p1, v2, :cond_2

    .line 908
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public static is2word(II)Z
    .locals 0

    if-nez p1, :cond_1

    const/16 p1, 0x138

    if-eq p0, p1, :cond_0

    const/16 p1, 0x146

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isAlwaysBranch(Ljavassist/compiler/ast/ASTree;Z)Z
    .locals 2

    .line 1141
    instance-of v0, p0, Ljavassist/compiler/ast/Keyword;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1142
    check-cast p0, Ljavassist/compiler/ast/Keyword;

    invoke-virtual {p0}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result p0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/16 p1, 0x19a

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_0
    const/16 p1, 0x19b

    if-ne p0, p1, :cond_1

    :goto_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static isP_INT(I)Z
    .locals 1

    .line 1286
    invoke-static {p0}, Ljavassist/compiler/CodeGen;->typePrecedence(I)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isPlusPlusExpr(Ljavassist/compiler/ast/ASTree;)Z
    .locals 2

    .line 702
    instance-of v0, p0, Ljavassist/compiler/ast/Expr;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 703
    check-cast p0, Ljavassist/compiler/ast/Expr;

    invoke-virtual {p0}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result p0

    const/16 v0, 0x16a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x16b

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected static isRefType(I)Z
    .locals 1

    const/16 v0, 0x133

    if-eq p0, v0, :cond_1

    const/16 v0, 0x19c

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static lookupBinOp(I)I
    .locals 4

    .line 948
    sget-object v0, Ljavassist/compiler/CodeGen;->binOp:[I

    .line 949
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 951
    aget v3, v0, v2

    if-ne v3, p0, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x5

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private needsSuperCall(Ljavassist/compiler/ast/Stmnt;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 303
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->getOperator()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 304
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    check-cast p1, Ljavassist/compiler/ast/Stmnt;

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 306
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->getOperator()I

    move-result v1

    const/16 v2, 0x45

    if-ne v1, v2, :cond_2

    .line 307
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 308
    instance-of v1, p1, Ljavassist/compiler/ast/Expr;

    if-eqz v1, :cond_2

    check-cast p1, Ljavassist/compiler/ast/Expr;

    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v1

    const/16 v2, 0x43

    if-ne v1, v2, :cond_2

    .line 310
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    .line 311
    instance-of v1, p1, Ljavassist/compiler/ast/Keyword;

    if-eqz v1, :cond_2

    .line 312
    check-cast p1, Ljavassist/compiler/ast/Keyword;

    invoke-virtual {p1}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result p1

    const/16 v1, 0x153

    if-eq p1, v1, :cond_1

    const/16 v1, 0x150

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method static rightIsStrong(II)Z
    .locals 0

    .line 1291
    invoke-static {p0}, Ljavassist/compiler/CodeGen;->typePrecedence(I)I

    move-result p0

    .line 1292
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->typePrecedence(I)I

    move-result p1

    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static toJvmArrayName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 175
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-lez p1, :cond_2

    const/16 p1, 0x5b

    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p1, v1

    goto :goto_0

    :cond_2
    const/16 p1, 0x4c

    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p0, 0x3b

    .line 182
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static toJvmTypeName(II)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x12d

    const/16 v1, 0x49

    if-eq p0, v0, :cond_7

    const/16 v0, 0x12f

    if-eq p0, v0, :cond_6

    const/16 v0, 0x132

    if-eq p0, v0, :cond_5

    const/16 v0, 0x138

    if-eq p0, v0, :cond_4

    const/16 v0, 0x13d

    if-eq p0, v0, :cond_3

    const/16 v0, 0x144

    if-eq p0, v0, :cond_8

    const/16 v0, 0x146

    if-eq p0, v0, :cond_2

    const/16 v0, 0x14e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x158

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x56

    goto :goto_0

    :cond_1
    const/16 v1, 0x53

    goto :goto_0

    :cond_2
    const/16 v1, 0x4a

    goto :goto_0

    :cond_3
    const/16 v1, 0x46

    goto :goto_0

    :cond_4
    const/16 v1, 0x44

    goto :goto_0

    :cond_5
    const/16 v1, 0x43

    goto :goto_0

    :cond_6
    const/16 v1, 0x42

    goto :goto_0

    :cond_7
    const/16 v1, 0x5a

    .line 220
    :cond_8
    :goto_0
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_9

    const/16 p1, 0x5b

    .line 222
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p1, v0

    goto :goto_1

    .line 224
    :cond_9
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 225
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static typePrecedence(I)I
    .locals 2

    const/16 v0, 0x138

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0x13d

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 v0, 0x146

    if-ne p0, v0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 1276
    :cond_2
    invoke-static {p0}, Ljavassist/compiler/CodeGen;->isRefType(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/16 v0, 0x158

    if-ne p0, v0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x3

    return p0
.end method


# virtual methods
.method protected arrayAccess(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1619
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 1620
    iget p1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1621
    iget v0, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-eqz v0, :cond_1

    .line 1625
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    .line 1627
    invoke-virtual {p2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 1628
    iget p2, p0, Ljavassist/compiler/CodeGen;->exprType:I

    invoke-static {p2}, Ljavassist/compiler/CodeGen;->typePrecedence(I)I

    move-result p2

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    iget p2, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-gtz p2, :cond_0

    .line 1631
    iput p1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    add-int/lit8 v0, v0, -0x1

    .line 1632
    iput v0, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1633
    iput-object v1, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    return-void

    .line 1629
    :cond_0
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string p2, "bad array index"

    invoke-direct {p1, p2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1623
    :cond_1
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string p2, "bad array access"

    invoke-direct {p1, p2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public atASTList(Ljavassist/compiler/ast/ASTList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 245
    invoke-static {}, Ljavassist/compiler/CodeGen;->fatal()V

    return-void
.end method

.method public abstract atArrayInit(Ljavassist/compiler/ast/ArrayInit;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method public atArrayPlusPlus(IZLjavassist/compiler/ast/Expr;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1776
    invoke-virtual {p3}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {p3}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavassist/compiler/CodeGen;->arrayAccess(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    .line 1777
    iget v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1778
    iget v1, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-lez v1, :cond_0

    .line 1780
    invoke-static {p3}, Ljavassist/compiler/CodeGen;->badType(Ljavassist/compiler/ast/Expr;)V

    .line 1782
    :cond_0
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v3, 0x5c

    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1783
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    iget v3, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    invoke-static {v0, v3}, Ljavassist/compiler/CodeGen;->getArrayReadOp(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1784
    invoke-static {v0, v1}, Ljavassist/compiler/CodeGen;->is2word(II)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x5e

    const/16 v4, 0x5e

    goto :goto_0

    :cond_1
    const/16 v2, 0x5b

    const/16 v4, 0x5b

    :goto_0
    move-object v3, p0

    move v5, p4

    move v6, p1

    move v7, p2

    move-object v8, p3

    .line 1785
    invoke-virtual/range {v3 .. v8}, Ljavassist/compiler/CodeGen;->atPlusPlusCore(IZIZLjavassist/compiler/ast/Expr;)V

    .line 1786
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-static {v0, v1}, Ljavassist/compiler/CodeGen;->getArrayWriteOp(II)I

    move-result p2

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    return-void
.end method

.method public atArrayRead(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1612
    invoke-virtual {p0, p1, p2}, Ljavassist/compiler/CodeGen;->arrayAccess(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    .line 1613
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    iget p2, p0, Ljavassist/compiler/CodeGen;->exprType:I

    iget v0, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    invoke-static {p2, v0}, Ljavassist/compiler/CodeGen;->getArrayReadOp(II)I

    move-result p2

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    return-void
.end method

.method protected abstract atArrayVariableAssign(Ljavassist/compiler/ast/ArrayInit;IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method protected atAssignCore(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;IILjava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    move-object v8, p0

    move v9, p2

    move/from16 v10, p4

    const/16 v11, 0x3d

    const/16 v0, 0x162

    if-ne v9, v0, :cond_0

    if-nez p5, :cond_0

    const/16 v0, 0x133

    if-ne v10, v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object v5, p3

    .line 858
    invoke-direct/range {v0 .. v5}, Ljavassist/compiler/CodeGen;->atStringPlusEq(Ljavassist/compiler/ast/Expr;IILjava/lang/String;Ljavassist/compiler/ast/ASTree;)V

    goto :goto_0

    :cond_0
    move-object v0, p3

    .line 860
    invoke-virtual {p3, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 861
    iget v1, v8, Ljavassist/compiler/CodeGen;->exprType:I

    iget v2, v8, Ljavassist/compiler/CodeGen;->arrayDim:I

    iget-object v3, v8, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v0, p0

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Ljavassist/compiler/CodeGen;->invalidDim(IILjava/lang/String;IILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    if-eq v9, v11, :cond_2

    if-lez p5, :cond_2

    .line 863
    :cond_1
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->badAssign(Ljavassist/compiler/ast/Expr;)V

    :cond_2
    if-eq v9, v11, :cond_4

    .line 866
    sget-object v0, Ljavassist/compiler/CodeGen;->assignOps:[I

    add-int/lit16 v1, v9, -0x15f

    aget v0, v0, v1

    .line 867
    invoke-static {v0}, Ljavassist/compiler/CodeGen;->lookupBinOp(I)I

    move-result v1

    if-gez v1, :cond_3

    .line 869
    invoke-static {}, Ljavassist/compiler/CodeGen;->fatal()V

    :cond_3
    move-object v2, p1

    .line 871
    invoke-direct {p0, p1, v0, v1, v10}, Ljavassist/compiler/CodeGen;->atArithBinExpr(Ljavassist/compiler/ast/Expr;III)V

    :cond_4
    :goto_0
    if-ne v9, v11, :cond_5

    if-nez p5, :cond_6

    .line 875
    invoke-static/range {p4 .. p4}, Ljavassist/compiler/CodeGen;->isRefType(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 876
    :cond_5
    iget v0, v8, Ljavassist/compiler/CodeGen;->exprType:I

    invoke-virtual {p0, v0, v10}, Ljavassist/compiler/CodeGen;->atNumCastExpr(II)V

    :cond_6
    return-void
.end method

.method public atAssignExpr(Ljavassist/compiler/ast/AssignExpr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 v0, 0x1

    .line 736
    invoke-virtual {p0, p1, v0}, Ljavassist/compiler/CodeGen;->atAssignExpr(Ljavassist/compiler/ast/AssignExpr;Z)V

    return-void
.end method

.method protected atAssignExpr(Ljavassist/compiler/ast/AssignExpr;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 743
    invoke-virtual {p1}, Ljavassist/compiler/ast/AssignExpr;->getOperator()I

    move-result v2

    .line 744
    invoke-virtual {p1}, Ljavassist/compiler/ast/AssignExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    .line 745
    invoke-virtual {p1}, Ljavassist/compiler/ast/AssignExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v5

    .line 746
    instance-of v0, v3, Ljavassist/compiler/ast/Variable;

    if-eqz v0, :cond_0

    .line 747
    check-cast v3, Ljavassist/compiler/ast/Variable;

    invoke-virtual {v3}, Ljavassist/compiler/ast/Variable;->getDeclarator()Ljavassist/compiler/ast/Declarator;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Ljavassist/compiler/CodeGen;->atVariableAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/Variable;Ljavassist/compiler/ast/Declarator;Ljavassist/compiler/ast/ASTree;Z)V

    goto :goto_0

    .line 751
    :cond_0
    instance-of v0, v3, Ljavassist/compiler/ast/Expr;

    if-eqz v0, :cond_1

    .line 752
    move-object v4, v3

    check-cast v4, Ljavassist/compiler/ast/Expr;

    .line 753
    invoke-virtual {v4}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v0

    const/16 v1, 0x41

    if-ne v0, v1, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v3, v4

    move-object v4, v5

    move v5, p2

    .line 754
    invoke-direct/range {v0 .. v5}, Ljavassist/compiler/CodeGen;->atArrayAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/Expr;Ljavassist/compiler/ast/ASTree;Z)V

    return-void

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v4, v5

    move v5, p2

    .line 759
    invoke-virtual/range {v0 .. v5}, Ljavassist/compiler/CodeGen;->atFieldAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Z)V

    :goto_0
    return-void
.end method

.method public atBinExpr(Ljavassist/compiler/ast/BinExpr;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 958
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->getOperator()I

    move-result v0

    .line 962
    invoke-static {v0}, Ljavassist/compiler/CodeGen;->lookupBinOp(I)I

    move-result v1

    if-ltz v1, :cond_4

    .line 964
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 965
    invoke-virtual {p1}, Ljavassist/compiler/ast/BinExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 969
    :cond_0
    iget v3, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 970
    iget v4, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 971
    iget-object v5, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    .line 972
    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 973
    iget v2, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-ne v4, v2, :cond_3

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_2

    if-nez v4, :cond_2

    const/16 v2, 0x133

    if-eq v3, v2, :cond_1

    .line 976
    iget v6, p0, Ljavassist/compiler/CodeGen;->exprType:I

    if-ne v6, v2, :cond_2

    .line 978
    :cond_1
    invoke-direct {p0, p1, v3, v4, v5}, Ljavassist/compiler/CodeGen;->atStringConcatExpr(Ljavassist/compiler/ast/Expr;IILjava/lang/String;)V

    goto :goto_0

    .line 980
    :cond_2
    invoke-direct {p0, p1, v0, v1, v3}, Ljavassist/compiler/CodeGen;->atArithBinExpr(Ljavassist/compiler/ast/Expr;III)V

    goto :goto_0

    .line 974
    :cond_3
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string v0, "incompatible array types"

    invoke-direct {p1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 v0, 0x1

    .line 985
    invoke-direct {p0, v0, p1}, Ljavassist/compiler/CodeGen;->booleanExpr(ZLjavassist/compiler/ast/ASTree;)Z

    .line 986
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 987
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 988
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v1, 0xa7

    invoke-virtual {p1, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 989
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 990
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    :goto_0
    return-void
.end method

.method public abstract atCallExpr(Ljavassist/compiler/ast/CallExpr;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method public atCastExpr(Ljavassist/compiler/ast/CastExpr;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1363
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getClassName()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/compiler/CodeGen;->resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;

    move-result-object v0

    .line 1364
    invoke-direct {p0, p1, v0}, Ljavassist/compiler/CodeGen;->checkCastExpr(Ljavassist/compiler/ast/CastExpr;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1365
    iget v2, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1366
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getType()I

    move-result v3

    iput v3, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1367
    invoke-virtual {p1}, Ljavassist/compiler/ast/CastExpr;->getArrayDim()I

    move-result p1

    iput p1, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1368
    iput-object v0, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1370
    iget p1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    invoke-virtual {p0, v2, p1}, Ljavassist/compiler/CodeGen;->atNumCastExpr(II)V

    goto :goto_0

    .line 1372
    :cond_0
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, v1}, Ljavassist/bytecode/Bytecode;->addCheckcast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public atClassObject(Ljavassist/compiler/ast/Expr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1534
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    .line 1535
    instance-of v0, p1, Ljavassist/compiler/ast/Symbol;

    if-eqz v0, :cond_3

    .line 1538
    check-cast p1, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {p1}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object p1

    const-string v0, "["

    .line 1539
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[L"

    .line 1540
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    add-int/lit8 v1, v0, 0x2

    .line 1542
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1543
    invoke-virtual {p0, v1}, Ljavassist/compiler/CodeGen;->resolveClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1544
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1549
    invoke-static {v2}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1550
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ltz v0, :cond_0

    const/16 v0, 0x5b

    .line 1552
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v2

    goto :goto_0

    :cond_0
    const/16 v0, 0x4c

    .line 1554
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1555
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1560
    :cond_1
    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavassist/compiler/CodeGen;->resolveClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1561
    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1564
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Ljavassist/compiler/CodeGen;->atClassObject2(Ljava/lang/String;)V

    const/16 p1, 0x133

    .line 1565
    iput p1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    const/4 p1, 0x0

    .line 1566
    iput p1, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    const-string p1, "java/lang/Class"

    .line 1567
    iput-object p1, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    return-void

    .line 1536
    :cond_3
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string v0, "fatal error: badly parsed .class expr"

    invoke-direct {p1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method protected atClassObject2(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1573
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v0

    .line 1574
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1, p1}, Ljavassist/bytecode/Bytecode;->addLdc(Ljava/lang/String;)V

    .line 1575
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string v1, "java.lang.Class"

    const-string v2, "forName"

    const-string v3, "(Ljava/lang/String;)Ljava/lang/Class;"

    invoke-virtual {p1, v1, v2, v3}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result p1

    .line 1578
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v2, 0xa7

    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1579
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v1

    .line 1580
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1582
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v3

    const-string v4, "java.lang.ClassNotFoundException"

    invoke-virtual {v2, v0, p1, v3, v4}, Ljavassist/bytecode/Bytecode;->addExceptionHandler(IIILjava/lang/String;)V

    .line 1601
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 1602
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-string v2, "javassist.runtime.DotClass"

    const-string v3, "fail"

    const-string v4, "(Ljava/lang/ClassNotFoundException;)Ljava/lang/NoClassDefFoundError;"

    invoke-virtual {p1, v2, v3, v4}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v2, 0xbf

    invoke-virtual {p1, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1606
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    return-void
.end method

.method public atCondExpr(Ljavassist/compiler/ast/CondExpr;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 918
    invoke-virtual {p1}, Ljavassist/compiler/ast/CondExpr;->condExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljavassist/compiler/CodeGen;->booleanExpr(ZLjavassist/compiler/ast/ASTree;)Z

    .line 919
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v0

    .line 920
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 921
    invoke-virtual {p1}, Ljavassist/compiler/ast/CondExpr;->thenExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 922
    iget v2, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 923
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v4, 0xa7

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 924
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v3}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v3

    .line 925
    iget-object v4, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v4, v1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 926
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v0, v4}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    .line 927
    invoke-virtual {p1}, Ljavassist/compiler/ast/CondExpr;->elseExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 928
    iget p1, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-ne v2, p1, :cond_0

    .line 931
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v0

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v3, v0}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    return-void

    .line 929
    :cond_0
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string v0, "type mismatch in ?:"

    invoke-direct {p1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public atDeclarator(Ljavassist/compiler/ast/Declarator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 711
    invoke-virtual {p0}, Ljavassist/compiler/CodeGen;->getMaxLocals()I

    move-result v0

    invoke-virtual {p1, v0}, Ljavassist/compiler/ast/Declarator;->setLocalVar(I)V

    .line 712
    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/compiler/CodeGen;->resolveClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/compiler/ast/Declarator;->setClassName(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result v0

    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getArrayDim()I

    move-result v1

    invoke-static {v0, v1}, Ljavassist/compiler/CodeGen;->is2word(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 720
    :goto_0
    invoke-virtual {p0, v0}, Ljavassist/compiler/CodeGen;->incMaxLocals(I)V

    .line 724
    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getInitializer()Ljavassist/compiler/ast/ASTree;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 726
    invoke-virtual {p0, v6}, Ljavassist/compiler/CodeGen;->doTypeCheck(Ljavassist/compiler/ast/ASTree;)V

    const/4 v2, 0x0

    const/16 v3, 0x3d

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, p1

    .line 727
    invoke-direct/range {v1 .. v7}, Ljavassist/compiler/CodeGen;->atVariableAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/Variable;Ljavassist/compiler/ast/Declarator;Ljavassist/compiler/ast/ASTree;Z)V

    :cond_1
    return-void
.end method

.method public atDoubleConst(Ljavassist/compiler/ast/DoubleConst;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1912
    iput v0, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1913
    invoke-virtual {p1}, Ljavassist/compiler/ast/DoubleConst;->getType()I

    move-result v0

    const/16 v1, 0x195

    if-ne v0, v1, :cond_0

    const/16 v0, 0x138

    .line 1914
    iput v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1915
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/compiler/ast/DoubleConst;->get()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljavassist/bytecode/Bytecode;->addDconst(D)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x13d

    .line 1918
    iput v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1919
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/compiler/ast/DoubleConst;->get()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-virtual {v0, p1}, Ljavassist/bytecode/Bytecode;->addFconst(F)V

    :goto_0
    return-void
.end method

.method public atExpr(Ljavassist/compiler/ast/Expr;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1450
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v0

    .line 1451
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_1

    .line 1453
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v0

    const-string v1, "class"

    .line 1454
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1455
    invoke-virtual {p0, p1}, Ljavassist/compiler/CodeGen;->atClassObject(Ljavassist/compiler/ast/Expr;)V

    goto/16 :goto_1

    .line 1457
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/compiler/CodeGen;->atFieldRead(Ljavassist/compiler/ast/ASTree;)V

    goto/16 :goto_1

    :cond_1
    const/16 v2, 0x23

    if-ne v0, v2, :cond_2

    .line 1464
    invoke-virtual {p0, p1}, Ljavassist/compiler/CodeGen;->atFieldRead(Ljavassist/compiler/ast/ASTree;)V

    goto/16 :goto_1

    :cond_2
    const/16 v2, 0x41

    if-ne v0, v2, :cond_3

    .line 1467
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ljavassist/compiler/CodeGen;->atArrayRead(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    goto/16 :goto_1

    :cond_3
    const/16 v2, 0x16a

    const/4 v3, 0x1

    if-eq v0, v2, :cond_11

    const/16 v2, 0x16b

    if-ne v0, v2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x21

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    .line 1471
    invoke-direct {p0, v0, p1}, Ljavassist/compiler/CodeGen;->booleanExpr(ZLjavassist/compiler/ast/ASTree;)Z

    .line 1472
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1473
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, v3}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1474
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v1, 0xa7

    invoke-virtual {p1, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1475
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1476
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    goto/16 :goto_1

    :cond_5
    const/16 v1, 0x43

    if-ne v0, v1, :cond_6

    .line 1479
    invoke-static {}, Ljavassist/compiler/CodeGen;->fatal()V

    goto/16 :goto_1

    .line 1481
    :cond_6
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 1482
    iget v1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    invoke-static {v1}, Ljavassist/compiler/CodeGen;->typePrecedence(I)I

    move-result v1

    .line 1483
    iget v2, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-lez v2, :cond_7

    .line 1484
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->badType(Ljavassist/compiler/ast/Expr;)V

    :cond_7
    const/16 v2, 0x2d

    const/16 v4, 0x144

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-ne v0, v2, :cond_c

    if-nez v1, :cond_8

    .line 1488
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v0, 0x77

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_1

    :cond_8
    if-ne v1, v3, :cond_9

    .line 1490
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v0, 0x76

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_1

    :cond_9
    if-ne v1, v5, :cond_a

    .line 1492
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v0, 0x75

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_1

    :cond_a
    if-ne v1, v6, :cond_b

    .line 1494
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v0, 0x74

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1495
    iput v4, p0, Ljavassist/compiler/CodeGen;->exprType:I

    goto :goto_1

    .line 1498
    :cond_b
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->badType(Ljavassist/compiler/ast/Expr;)V

    goto :goto_1

    :cond_c
    const/16 v2, 0x7e

    const/4 v3, -0x1

    if-ne v0, v2, :cond_f

    if-ne v1, v6, :cond_d

    .line 1502
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, v3}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1503
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v0, 0x82

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1504
    iput v4, p0, Ljavassist/compiler/CodeGen;->exprType:I

    goto :goto_1

    :cond_d
    if-ne v1, v5, :cond_e

    .line 1507
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Ljavassist/bytecode/Bytecode;->addLconst(J)V

    .line 1508
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v0, 0x83

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_1

    .line 1511
    :cond_e
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->badType(Ljavassist/compiler/ast/Expr;)V

    goto :goto_1

    :cond_f
    const/16 v2, 0x2b

    if-ne v0, v2, :cond_10

    if-ne v1, v3, :cond_12

    .line 1516
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->badType(Ljavassist/compiler/ast/Expr;)V

    goto :goto_1

    .line 1521
    :cond_10
    invoke-static {}, Ljavassist/compiler/CodeGen;->fatal()V

    goto :goto_1

    .line 1469
    :cond_11
    :goto_0
    invoke-direct {p0, v0, v1, p1, v3}, Ljavassist/compiler/CodeGen;->atPlusPlus(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/Expr;Z)V

    :cond_12
    :goto_1
    return-void
.end method

.method protected abstract atFieldAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method public atFieldDecl(Ljavassist/compiler/ast/FieldDecl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 252
    invoke-virtual {p1}, Ljavassist/compiler/ast/FieldDecl;->getInit()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    return-void
.end method

.method protected abstract atFieldPlusPlus(IZLjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/Expr;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method protected abstract atFieldRead(Ljavassist/compiler/ast/ASTree;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method public atInstanceOfExpr(Ljavassist/compiler/ast/InstanceOfExpr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1376
    invoke-virtual {p1}, Ljavassist/compiler/ast/InstanceOfExpr;->getClassName()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/compiler/CodeGen;->resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;

    move-result-object v0

    .line 1377
    invoke-direct {p0, p1, v0}, Ljavassist/compiler/CodeGen;->checkCastExpr(Ljavassist/compiler/ast/CastExpr;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1378
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/Bytecode;->addInstanceof(Ljava/lang/String;)V

    const/16 p1, 0x12d

    .line 1379
    iput p1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    const/4 p1, 0x0

    .line 1380
    iput p1, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    return-void
.end method

.method public atIntConst(Ljavassist/compiler/ast/IntConst;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1898
    iput v0, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1899
    invoke-virtual {p1}, Ljavassist/compiler/ast/IntConst;->get()J

    move-result-wide v0

    .line 1900
    invoke-virtual {p1}, Ljavassist/compiler/ast/IntConst;->getType()I

    move-result p1

    const/16 v2, 0x192

    if-eq p1, v2, :cond_1

    const/16 v3, 0x191

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x146

    .line 1906
    iput p1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1907
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, v0, v1}, Ljavassist/bytecode/Bytecode;->addLconst(J)V

    goto :goto_2

    :cond_1
    :goto_0
    if-ne p1, v2, :cond_2

    const/16 p1, 0x144

    goto :goto_1

    :cond_2
    const/16 p1, 0x132

    .line 1902
    :goto_1
    iput p1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1903
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    :goto_2
    return-void
.end method

.method public atKeyword(Ljavassist/compiler/ast/Keyword;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1857
    iput v0, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1858
    invoke-virtual {p1}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result p1

    const/16 v1, 0x150

    const/16 v2, 0x153

    if-eq p1, v1, :cond_0

    if-eq p1, v2, :cond_0

    const/16 v1, 0x12d

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1886
    invoke-static {}, Ljavassist/compiler/CodeGen;->fatal()V

    goto :goto_1

    .line 1869
    :pswitch_0
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    const/16 p1, 0x19c

    .line 1870
    iput p1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    goto :goto_1

    .line 1865
    :pswitch_1
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1866
    iput v1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    goto :goto_1

    .line 1861
    :pswitch_2
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, v2}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1862
    iput v1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    goto :goto_1

    .line 1874
    :cond_0
    iget-boolean v1, p0, Ljavassist/compiler/CodeGen;->inStaticMethod:Z

    if-eqz v1, :cond_2

    .line 1875
    new-instance v0, Ljavassist/compiler/CompileError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not-available: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne p1, v2, :cond_1

    const-string p1, "this"

    goto :goto_0

    :cond_1
    const-string p1, "super"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1878
    :cond_2
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    const/16 v0, 0x133

    .line 1879
    iput v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    if-ne p1, v2, :cond_3

    .line 1881
    invoke-virtual {p0}, Ljavassist/compiler/CodeGen;->getThisName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    goto :goto_1

    .line 1883
    :cond_3
    invoke-virtual {p0}, Ljavassist/compiler/CodeGen;->getSuperName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x19a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract atMember(Ljavassist/compiler/ast/Member;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method public atMethodBody(Ljavassist/compiler/ast/Stmnt;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 288
    invoke-direct {p0, p1}, Ljavassist/compiler/CodeGen;->needsSuperCall(Ljavassist/compiler/ast/Stmnt;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 289
    invoke-virtual {p0}, Ljavassist/compiler/CodeGen;->insertDefaultSuperCall()V

    :cond_1
    const/4 p2, 0x0

    .line 291
    iput-boolean p2, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    .line 292
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 293
    iget-boolean p1, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    if-nez p1, :cond_3

    if-eqz p3, :cond_2

    .line 295
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 p2, 0xb1

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    const/4 p1, 0x1

    .line 296
    iput-boolean p1, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    goto :goto_0

    .line 299
    :cond_2
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string p2, "no return statement"

    invoke-direct {p1, p2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public atMethodDecl(Ljavassist/compiler/ast/MethodDecl;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 256
    invoke-virtual {p1}, Ljavassist/compiler/ast/MethodDecl;->getModifiers()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    const/4 v1, 0x1

    .line 257
    invoke-virtual {p0, v1}, Ljavassist/compiler/CodeGen;->setMaxLocals(I)V

    :cond_0
    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    check-cast v3, Ljavassist/compiler/ast/Keyword;

    .line 260
    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    .line 261
    invoke-virtual {v3}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result v3

    const/16 v4, 0x14f

    if-ne v3, v4, :cond_0

    .line 262
    invoke-virtual {p0, v2}, Ljavassist/compiler/CodeGen;->setMaxLocals(I)V

    .line 263
    iput-boolean v1, p0, Ljavassist/compiler/CodeGen;->inStaticMethod:Z

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {p1}, Ljavassist/compiler/ast/MethodDecl;->getParams()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    .line 269
    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    check-cast v3, Ljavassist/compiler/ast/Declarator;

    invoke-virtual {p0, v3}, Ljavassist/compiler/CodeGen;->atDeclarator(Ljavassist/compiler/ast/Declarator;)V

    .line 270
    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    goto :goto_1

    .line 273
    :cond_2
    invoke-virtual {p1}, Ljavassist/compiler/ast/MethodDecl;->getBody()Ljavassist/compiler/ast/Stmnt;

    move-result-object v0

    .line 274
    invoke-virtual {p1}, Ljavassist/compiler/ast/MethodDecl;->isConstructor()Z

    move-result v3

    invoke-virtual {p1}, Ljavassist/compiler/ast/MethodDecl;->getReturn()Ljavassist/compiler/ast/Declarator;

    move-result-object p1

    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result p1

    const/16 v4, 0x158

    if-ne p1, v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0, v0, v3, v1}, Ljavassist/compiler/CodeGen;->atMethodBody(Ljavassist/compiler/ast/Stmnt;ZZ)V

    return-void
.end method

.method public abstract atNewExpr(Ljavassist/compiler/ast/NewExpr;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method atNumCastExpr(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    if-ne p1, p2, :cond_0

    return-void

    .line 1416
    :cond_0
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->typePrecedence(I)I

    move-result p1

    .line 1417
    invoke-static {p2}, Ljavassist/compiler/CodeGen;->typePrecedence(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz p1, :cond_1

    const/4 v2, 0x3

    if-ge p1, v2, :cond_1

    .line 1419
    sget-object v2, Ljavassist/compiler/CodeGen;->castOp:[I

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v0

    aget p1, v2, p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x138

    if-ne p2, v0, :cond_2

    const/16 v1, 0x87

    goto :goto_1

    :cond_2
    const/16 v0, 0x13d

    if-ne p2, v0, :cond_3

    const/16 v1, 0x86

    goto :goto_1

    :cond_3
    const/16 v0, 0x146

    if-ne p2, v0, :cond_4

    const/16 v1, 0x85

    goto :goto_1

    :cond_4
    const/16 v0, 0x14e

    if-ne p2, v0, :cond_5

    const/16 v1, 0x93

    goto :goto_1

    :cond_5
    const/16 v0, 0x132

    if-ne p2, v0, :cond_6

    const/16 v1, 0x92

    goto :goto_1

    :cond_6
    const/16 v0, 0x12f

    if-ne p2, v0, :cond_7

    const/16 v1, 0x91

    :cond_7
    :goto_1
    if-eqz p1, :cond_8

    .line 1439
    iget-object p2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p2, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    :cond_8
    if-eqz p1, :cond_9

    const/16 p2, 0x88

    if-eq p1, p2, :cond_9

    const/16 p2, 0x8b

    if-eq p1, p2, :cond_9

    const/16 p2, 0x8e

    if-ne p1, p2, :cond_a

    :cond_9
    if-eqz v1, :cond_a

    .line 1443
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    :cond_a
    return-void
.end method

.method public atPair(Ljavassist/compiler/ast/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 247
    invoke-static {}, Ljavassist/compiler/CodeGen;->fatal()V

    return-void
.end method

.method protected atPlusPlusCore(IZIZLjavassist/compiler/ast/Expr;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1793
    iget v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    .line 1796
    iget-object v1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    :cond_0
    const/16 v1, 0x144

    const/16 v2, 0x16a

    if-eq v0, v1, :cond_8

    const/16 v3, 0x12f

    if-eq v0, v3, :cond_8

    const/16 v3, 0x132

    if-eq v0, v3, :cond_8

    const/16 v3, 0x14e

    if-ne v0, v3, :cond_1

    goto :goto_3

    :cond_1
    const/16 v1, 0x146

    if-ne v0, v1, :cond_3

    .line 1804
    iget-object p5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-wide/16 v0, 0x1

    invoke-virtual {p5, v0, v1}, Ljavassist/bytecode/Bytecode;->addLconst(J)V

    .line 1805
    iget-object p5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-ne p3, v2, :cond_2

    const/16 p3, 0x61

    goto :goto_0

    :cond_2
    const/16 p3, 0x65

    :goto_0
    invoke-virtual {p5, p3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_5

    :cond_3
    const/16 v1, 0x13d

    if-ne v0, v1, :cond_5

    .line 1808
    iget-object p5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p5, v0}, Ljavassist/bytecode/Bytecode;->addFconst(F)V

    .line 1809
    iget-object p5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-ne p3, v2, :cond_4

    const/16 p3, 0x62

    goto :goto_1

    :cond_4
    const/16 p3, 0x66

    :goto_1
    invoke-virtual {p5, p3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_5

    :cond_5
    const/16 v1, 0x138

    if-ne v0, v1, :cond_7

    .line 1812
    iget-object p5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p5, v0, v1}, Ljavassist/bytecode/Bytecode;->addDconst(D)V

    .line 1813
    iget-object p5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-ne p3, v2, :cond_6

    const/16 p3, 0x63

    goto :goto_2

    :cond_6
    const/16 p3, 0x67

    :goto_2
    invoke-virtual {p5, p3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_5

    .line 1816
    :cond_7
    invoke-static {p5}, Ljavassist/compiler/CodeGen;->badType(Ljavassist/compiler/ast/Expr;)V

    goto :goto_5

    .line 1799
    :cond_8
    :goto_3
    iget-object p5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v0, 0x1

    invoke-virtual {p5, v0}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1800
    iget-object p5, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-ne p3, v2, :cond_9

    const/16 p3, 0x60

    goto :goto_4

    :cond_9
    const/16 p3, 0x64

    :goto_4
    invoke-virtual {p5, p3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1801
    iput v1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    :goto_5
    if-eqz p2, :cond_a

    if-nez p4, :cond_a

    .line 1819
    iget-object p2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p2, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    :cond_a
    return-void
.end method

.method protected atReturnStmnt(Ljavassist/compiler/ast/Stmnt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 590
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavassist/compiler/CodeGen;->atReturnStmnt2(Ljavassist/compiler/ast/ASTree;)V

    return-void
.end method

.method protected final atReturnStmnt2(Ljavassist/compiler/ast/ASTree;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/16 v0, 0xb0

    if-nez p1, :cond_0

    const/16 v0, 0xb1

    goto :goto_0

    .line 598
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/compiler/CodeGen;->compileExpr(Ljavassist/compiler/ast/ASTree;)V

    .line 599
    iget p1, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-lez p1, :cond_1

    goto :goto_0

    .line 602
    :cond_1
    iget p1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    const/16 v1, 0x138

    if-ne p1, v1, :cond_2

    const/16 v0, 0xaf

    goto :goto_0

    :cond_2
    const/16 v1, 0x13d

    if-ne p1, v1, :cond_3

    const/16 v0, 0xae

    goto :goto_0

    :cond_3
    const/16 v1, 0x146

    if-ne p1, v1, :cond_4

    const/16 v0, 0xad

    goto :goto_0

    .line 609
    :cond_4
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->isRefType(I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/16 v0, 0xac

    .line 616
    :goto_0
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->returnHooks:Ljavassist/compiler/CodeGen$ReturnHook;

    :goto_1
    const/4 v1, 0x1

    if-eqz p1, :cond_7

    .line 617
    iget-object v2, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, v2, v0}, Ljavassist/compiler/CodeGen$ReturnHook;->doit(Ljavassist/bytecode/Bytecode;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 618
    iput-boolean v1, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    return-void

    .line 616
    :cond_6
    iget-object p1, p1, Ljavassist/compiler/CodeGen$ReturnHook;->next:Ljavassist/compiler/CodeGen$ReturnHook;

    goto :goto_1

    .line 622
    :cond_7
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 623
    iput-boolean v1, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    return-void
.end method

.method public atStmnt(Ljavassist/compiler/ast/Stmnt;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 327
    :cond_0
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->getOperator()I

    move-result v0

    const/16 v1, 0x45

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 329
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    .line 330
    invoke-virtual {p0, p1}, Ljavassist/compiler/CodeGen;->doTypeCheck(Ljavassist/compiler/ast/ASTree;)V

    .line 331
    instance-of v0, p1, Ljavassist/compiler/ast/AssignExpr;

    if-eqz v0, :cond_1

    .line 332
    check-cast p1, Ljavassist/compiler/ast/AssignExpr;

    invoke-virtual {p0, p1, v2}, Ljavassist/compiler/CodeGen;->atAssignExpr(Ljavassist/compiler/ast/AssignExpr;Z)V

    goto/16 :goto_3

    .line 333
    :cond_1
    invoke-static {p1}, Ljavassist/compiler/CodeGen;->isPlusPlusExpr(Ljavassist/compiler/ast/ASTree;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    check-cast p1, Ljavassist/compiler/ast/Expr;

    .line 335
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v0

    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1, v2}, Ljavassist/compiler/CodeGen;->atPlusPlus(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/Expr;Z)V

    goto/16 :goto_3

    .line 338
    :cond_2
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 339
    iget p1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    iget v0, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    invoke-static {p1, v0}, Ljavassist/compiler/CodeGen;->is2word(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 340
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v0, 0x58

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto/16 :goto_3

    .line 341
    :cond_3
    iget p1, p0, Ljavassist/compiler/CodeGen;->exprType:I

    const/16 v0, 0x158

    if-eq p1, v0, :cond_14

    .line 342
    iget-object p1, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v0, 0x57

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto/16 :goto_3

    :cond_4
    const/16 v1, 0x44

    if-eq v0, v1, :cond_13

    const/16 v1, 0x42

    if-ne v0, v1, :cond_5

    goto/16 :goto_2

    :cond_5
    const/16 v1, 0x140

    if-ne v0, v1, :cond_6

    .line 355
    invoke-direct {p0, p1}, Ljavassist/compiler/CodeGen;->atIfStmnt(Ljavassist/compiler/ast/Stmnt;)V

    goto/16 :goto_3

    :cond_6
    const/4 v1, 0x1

    const/16 v3, 0x15a

    if-eq v0, v3, :cond_11

    const/16 v4, 0x137

    if-ne v0, v4, :cond_7

    goto :goto_1

    :cond_7
    const/16 v3, 0x13e

    if-ne v0, v3, :cond_8

    .line 359
    invoke-direct {p0, p1}, Ljavassist/compiler/CodeGen;->atForStmnt(Ljavassist/compiler/ast/Stmnt;)V

    goto/16 :goto_3

    :cond_8
    const/16 v3, 0x12e

    if-eq v0, v3, :cond_f

    const/16 v4, 0x135

    if-ne v0, v4, :cond_9

    goto :goto_0

    :cond_9
    const/16 v1, 0x14d

    if-ne v0, v1, :cond_a

    .line 363
    invoke-virtual {p0, p1}, Ljavassist/compiler/CodeGen;->atReturnStmnt(Ljavassist/compiler/ast/Stmnt;)V

    goto :goto_3

    :cond_a
    const/16 v1, 0x154

    if-ne v0, v1, :cond_b

    .line 365
    invoke-direct {p0, p1}, Ljavassist/compiler/CodeGen;->atThrowStmnt(Ljavassist/compiler/ast/Stmnt;)V

    goto :goto_3

    :cond_b
    const/16 v1, 0x157

    if-ne v0, v1, :cond_c

    .line 367
    invoke-virtual {p0, p1}, Ljavassist/compiler/CodeGen;->atTryStmnt(Ljavassist/compiler/ast/Stmnt;)V

    goto :goto_3

    :cond_c
    const/16 v1, 0x151

    if-ne v0, v1, :cond_d

    .line 369
    invoke-direct {p0, p1}, Ljavassist/compiler/CodeGen;->atSwitchStmnt(Ljavassist/compiler/ast/Stmnt;)V

    goto :goto_3

    :cond_d
    const/16 v1, 0x152

    if-ne v0, v1, :cond_e

    .line 371
    invoke-direct {p0, p1}, Ljavassist/compiler/CodeGen;->atSyncStmnt(Ljavassist/compiler/ast/Stmnt;)V

    goto :goto_3

    .line 374
    :cond_e
    iput-boolean v2, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    .line 375
    new-instance p1, Ljavassist/compiler/CompileError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sorry, not supported statement: TokenId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    :goto_0
    if-ne v0, v3, :cond_10

    const/4 v2, 0x1

    .line 361
    :cond_10
    invoke-direct {p0, p1, v2}, Ljavassist/compiler/CodeGen;->atBreakStmnt(Ljavassist/compiler/ast/Stmnt;Z)V

    goto :goto_3

    :cond_11
    :goto_1
    if-ne v0, v3, :cond_12

    const/4 v2, 0x1

    .line 357
    :cond_12
    invoke-direct {p0, p1, v2}, Ljavassist/compiler/CodeGen;->atWhileStmnt(Ljavassist/compiler/ast/Stmnt;Z)V

    goto :goto_3

    :cond_13
    :goto_2
    if-eqz p1, :cond_14

    .line 348
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 349
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    if-eqz v0, :cond_13

    .line 351
    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    goto :goto_2

    :cond_14
    :goto_3
    return-void
.end method

.method public atStringL(Ljavassist/compiler/ast/StringL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/16 v0, 0x133

    .line 1891
    iput v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    const/4 v0, 0x0

    .line 1892
    iput v0, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    const-string v0, "java/lang/String"

    .line 1893
    iput-object v0, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    .line 1894
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/compiler/ast/StringL;->get()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavassist/bytecode/Bytecode;->addLdc(Ljava/lang/String;)V

    return-void
.end method

.method public atSymbol(Ljavassist/compiler/ast/Symbol;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 249
    invoke-static {}, Ljavassist/compiler/CodeGen;->fatal()V

    return-void
.end method

.method protected atTryStmnt(Ljavassist/compiler/ast/Stmnt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 p1, 0x0

    .line 639
    iput-boolean p1, p0, Ljavassist/compiler/CodeGen;->hasReturned:Z

    return-void
.end method

.method public atVariable(Ljavassist/compiler/ast/Variable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1828
    invoke-virtual {p1}, Ljavassist/compiler/ast/Variable;->getDeclarator()Ljavassist/compiler/ast/Declarator;

    move-result-object p1

    .line 1829
    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result v0

    iput v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    .line 1830
    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getArrayDim()I

    move-result v0

    iput v0, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    .line 1831
    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/compiler/CodeGen;->className:Ljava/lang/String;

    .line 1832
    invoke-virtual {p0, p1}, Ljavassist/compiler/CodeGen;->getLocalVar(Ljavassist/compiler/ast/Declarator;)I

    move-result p1

    .line 1834
    iget v0, p0, Ljavassist/compiler/CodeGen;->arrayDim:I

    if-lez v0, :cond_0

    .line 1835
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    goto :goto_0

    .line 1837
    :cond_0
    iget v0, p0, Ljavassist/compiler/CodeGen;->exprType:I

    const/16 v1, 0x133

    if-eq v0, v1, :cond_4

    const/16 v1, 0x138

    if-eq v0, v1, :cond_3

    const/16 v1, 0x13d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x146

    if-eq v0, v1, :cond_1

    .line 1851
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/Bytecode;->addIload(I)V

    goto :goto_0

    .line 1842
    :cond_1
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/Bytecode;->addLload(I)V

    goto :goto_0

    .line 1845
    :cond_2
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/Bytecode;->addFload(I)V

    goto :goto_0

    .line 1848
    :cond_3
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/Bytecode;->addDload(I)V

    goto :goto_0

    .line 1839
    :cond_4
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    :goto_0
    return-void
.end method

.method public compileBooleanExpr(ZLjavassist/compiler/ast/ASTree;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 236
    invoke-virtual {p0, p2}, Ljavassist/compiler/CodeGen;->doTypeCheck(Ljavassist/compiler/ast/ASTree;)V

    .line 237
    invoke-direct {p0, p1, p2}, Ljavassist/compiler/CodeGen;->booleanExpr(ZLjavassist/compiler/ast/ASTree;)Z

    move-result p1

    return p1
.end method

.method public compileExpr(Ljavassist/compiler/ast/ASTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 229
    invoke-virtual {p0, p1}, Ljavassist/compiler/CodeGen;->doTypeCheck(Ljavassist/compiler/ast/ASTree;)V

    .line 230
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    return-void
.end method

.method public doTypeCheck(Ljavassist/compiler/ast/ASTree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->typeChecker:Ljavassist/compiler/TypeChecker;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p1, v0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    :cond_0
    return-void
.end method

.method protected getLocalVar(Ljavassist/compiler/ast/Declarator;)I
    .locals 1

    .line 130
    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getLocalVar()I

    move-result v0

    if-gez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Ljavassist/compiler/CodeGen;->getMaxLocals()I

    move-result v0

    .line 133
    invoke-virtual {p1, v0}, Ljavassist/compiler/ast/Declarator;->setLocalVar(I)V

    const/4 p1, 0x1

    .line 134
    invoke-virtual {p0, p1}, Ljavassist/compiler/CodeGen;->incMaxLocals(I)V

    :cond_0
    return v0
.end method

.method public getMaxLocals()I
    .locals 1

    .line 106
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->getMaxLocals()I

    move-result v0

    return v0
.end method

.method protected abstract getSuperName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method protected getTempVar()I
    .locals 1

    .line 121
    iget v0, p0, Ljavassist/compiler/CodeGen;->tempVar:I

    if-gez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Ljavassist/compiler/CodeGen;->getMaxLocals()I

    move-result v0

    iput v0, p0, Ljavassist/compiler/CodeGen;->tempVar:I

    const/4 v0, 0x2

    .line 123
    invoke-virtual {p0, v0}, Ljavassist/compiler/CodeGen;->incMaxLocals(I)V

    .line 126
    :cond_0
    iget v0, p0, Ljavassist/compiler/CodeGen;->tempVar:I

    return v0
.end method

.method protected abstract getThisName()Ljava/lang/String;
.end method

.method protected incMaxLocals(I)V
    .locals 1

    .line 113
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/Bytecode;->incMaxLocals(I)V

    return-void
.end method

.method protected abstract insertDefaultSuperCall()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method protected patchGoto(Ljava/util/ArrayList;I)V
    .locals 5

    .line 448
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 450
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 451
    iget-object v3, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    sub-int v4, p2, v2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v2, v4}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected abstract resolveClassName(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method protected abstract resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method public setMaxLocals(I)V
    .locals 1

    .line 109
    iget-object v0, p0, Ljavassist/compiler/CodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/Bytecode;->setMaxLocals(I)V

    return-void
.end method

.method public setTypeChecker(Ljavassist/compiler/TypeChecker;)V
    .locals 0

    .line 95
    iput-object p1, p0, Ljavassist/compiler/CodeGen;->typeChecker:Ljavassist/compiler/TypeChecker;

    return-void
.end method
