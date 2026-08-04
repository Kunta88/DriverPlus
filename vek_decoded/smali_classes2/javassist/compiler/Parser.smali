.class public final Ljavassist/compiler/Parser;
.super Ljava/lang/Object;
.source "Parser.java"

# interfaces
.implements Ljavassist/compiler/TokenId;


# static fields
.field private static final binaryOpPrecedence:[I


# instance fields
.field private lex:Ljavassist/compiler/Lex;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1f

    new-array v0, v0, [I

    .line 821
    fill-array-data v0, :array_0

    sput-object v0, Ljavassist/compiler/Parser;->binaryOpPrecedence:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x6
        0x0
        0x0
        0x0
        0x1
        0x2
        0x0
        0x2
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x0
        0x4
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljavassist/compiler/Lex;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    return-void
.end method

.method private binaryExpr2(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/ASTree;I)Ljavassist/compiler/ast/ASTree;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 805
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    const/16 v1, 0x143

    if-ne v0, v1, :cond_0

    .line 807
    invoke-direct {p0, p1, p2}, Ljavassist/compiler/Parser;->parseInstanceOf(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    return-object p1

    .line 809
    :cond_0
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseUnaryExpr(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 811
    :goto_0
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v2

    .line 812
    invoke-direct {p0, v2}, Ljavassist/compiler/Parser;->getOpPrecedence(I)I

    move-result v2

    if-eqz v2, :cond_1

    if-le p3, v2, :cond_1

    .line 814
    invoke-direct {p0, p1, v1, v2}, Ljavassist/compiler/Parser;->binaryExpr2(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/ASTree;I)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    goto :goto_0

    .line 816
    :cond_1
    invoke-static {v0, p2, v1}, Ljavassist/compiler/ast/BinExpr;->makeBin(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/BinExpr;

    move-result-object p1

    return-object p1
.end method

.method private getOpPrecedence(I)I
    .locals 2

    const/16 v0, 0x21

    if-gt v0, p1, :cond_0

    const/16 v1, 0x3f

    if-gt p1, v1, :cond_0

    .line 829
    sget-object v1, Ljavassist/compiler/Parser;->binaryOpPrecedence:[I

    sub-int/2addr p1, v0

    aget p1, v1, p1

    return p1

    :cond_0
    const/16 v0, 0x5e

    if-ne p1, v0, :cond_1

    const/4 p1, 0x7

    return p1

    :cond_1
    const/16 v0, 0x7c

    if-ne p1, v0, :cond_2

    const/16 p1, 0x8

    return p1

    :cond_2
    const/16 v0, 0x171

    if-ne p1, v0, :cond_3

    const/16 p1, 0x9

    return p1

    :cond_3
    const/16 v0, 0x170

    if-ne p1, v0, :cond_4

    const/16 p1, 0xa

    return p1

    :cond_4
    const/16 v0, 0x166

    if-eq p1, v0, :cond_a

    const/16 v0, 0x15e

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    const/16 v0, 0x165

    if-eq p1, v0, :cond_9

    const/16 v0, 0x167

    if-eq p1, v0, :cond_9

    const/16 v0, 0x143

    if-ne p1, v0, :cond_6

    goto :goto_1

    :cond_6
    const/16 v0, 0x16c

    if-eq p1, v0, :cond_8

    const/16 v0, 0x16e

    if-eq p1, v0, :cond_8

    const/16 v0, 0x172

    if-ne p1, v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    return p1

    :cond_8
    :goto_0
    const/4 p1, 0x3

    return p1

    :cond_9
    :goto_1
    const/4 p1, 0x4

    return p1

    :cond_a
    :goto_2
    const/4 p1, 0x5

    return p1
.end method

.method private static isAssignOp(I)Z
    .locals 1

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x160

    if-eq p0, v0, :cond_1

    const/16 v0, 0x161

    if-eq p0, v0, :cond_1

    const/16 v0, 0x162

    if-eq p0, v0, :cond_1

    const/16 v0, 0x163

    if-eq p0, v0, :cond_1

    const/16 v0, 0x164

    if-eq p0, v0, :cond_1

    const/16 v0, 0x168

    if-eq p0, v0, :cond_1

    const/16 v0, 0x169

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x173

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

.method private static isBuiltinType(I)Z
    .locals 1

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x132

    if-eq p0, v0, :cond_1

    const/16 v0, 0x14e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x144

    if-eq p0, v0, :cond_1

    const/16 v0, 0x146

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x138

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

.method private nextIsBuiltinCast()Z
    .locals 4

    const/4 v0, 0x2

    .line 927
    :goto_0
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v0

    const/16 v1, 0x5b

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 928
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v2}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v0

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_0

    return v3

    :cond_0
    move v0, v1

    goto :goto_0

    .line 931
    :cond_1
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const/4 v1, 0x1

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v0

    const/16 v2, 0x29

    if-ne v0, v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method private nextIsClassCast()Z
    .locals 5

    const/4 v0, 0x1

    .line 935
    invoke-direct {p0, v0}, Ljavassist/compiler/Parser;->nextIsClassType(I)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    .line 939
    :cond_0
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3, v1}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_1

    return v2

    .line 943
    :cond_1
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    add-int/2addr v1, v0

    invoke-virtual {v3, v1}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v1

    const/16 v3, 0x28

    if-eq v1, v3, :cond_3

    const/16 v3, 0x19c

    if-eq v1, v3, :cond_3

    const/16 v3, 0x196

    if-eq v1, v3, :cond_3

    const/16 v3, 0x190

    if-eq v1, v3, :cond_3

    const/16 v3, 0x153

    if-eq v1, v3, :cond_3

    const/16 v3, 0x150

    if-eq v1, v3, :cond_3

    const/16 v3, 0x148

    if-eq v1, v3, :cond_3

    const/16 v3, 0x19a

    if-eq v1, v3, :cond_3

    const/16 v3, 0x19b

    if-eq v1, v3, :cond_3

    const/16 v3, 0x193

    if-eq v1, v3, :cond_3

    const/16 v3, 0x192

    if-eq v1, v3, :cond_3

    const/16 v3, 0x191

    if-eq v1, v3, :cond_3

    const/16 v3, 0x195

    if-eq v1, v3, :cond_3

    const/16 v3, 0x194

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method private nextIsClassType(I)I
    .locals 3

    .line 953
    :cond_0
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v0

    const/16 v1, 0x2e

    const/4 v2, -0x1

    if-ne v0, v1, :cond_1

    .line 954
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v0

    const/16 v1, 0x190

    if-eq v0, v1, :cond_0

    return v2

    .line 957
    :cond_1
    :goto_0
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result p1

    const/16 v0, 0x5b

    if-ne p1, v0, :cond_3

    .line 958
    iget-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result p1

    const/16 v1, 0x5d

    if-eq p1, v1, :cond_2

    return v2

    :cond_2
    move p1, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private parseArgumentList(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1324
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 1328
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    const/16 v2, 0x29

    if-eq v1, v2, :cond_0

    .line 1330
    :goto_0
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-static {v0, v1}, Ljavassist/compiler/ast/ASTList;->append(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    .line 1331
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_0

    .line 1332
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    goto :goto_0

    .line 1337
    :cond_0
    iget-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p1}, Ljavassist/compiler/Lex;->get()I

    move-result p1

    if-ne p1, v2, :cond_1

    return-object v0

    .line 1338
    :cond_1
    new-instance p1, Ljavassist/compiler/CompileError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v1, ") is missing"

    invoke-direct {p1, v1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw p1

    .line 1325
    :cond_2
    new-instance p1, Ljavassist/compiler/CompileError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v1, "( is missing"

    invoke-direct {p1, v1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private parseArrayDimension()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 v0, 0x0

    .line 968
    :goto_0
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 970
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    .line 971
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 972
    :cond_0
    new-instance v0, Ljavassist/compiler/CompileError;

    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v2, "] is missing"

    invoke-direct {v0, v2, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw v0

    :cond_1
    return v0
.end method

.method private parseArrayIndex(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1307
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    .line 1308
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_0

    .line 1309
    iget-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p1}, Ljavassist/compiler/Lex;->get()I

    const/4 p1, 0x0

    return-object p1

    .line 1313
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    .line 1314
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    if-ne v0, v1, :cond_1

    return-object p1

    .line 1315
    :cond_1
    new-instance p1, Ljavassist/compiler/CompileError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v1, "] is missing"

    invoke-direct {p1, v1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw p1
.end method

.method private parseArrayInitializer(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ArrayInit;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 667
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    .line 668
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 669
    new-instance v1, Ljavassist/compiler/ast/ArrayInit;

    invoke-direct {v1, v0}, Ljavassist/compiler/ast/ArrayInit;-><init>(Ljavassist/compiler/ast/ASTree;)V

    .line 670
    :goto_0
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    const/16 v2, 0x2c

    if-ne v0, v2, :cond_0

    .line 671
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    .line 672
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 673
    invoke-static {v1, v0}, Ljavassist/compiler/ast/ASTList;->append(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;

    goto :goto_0

    .line 676
    :cond_0
    iget-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p1}, Ljavassist/compiler/Lex;->get()I

    move-result p1

    const/16 v0, 0x7d

    if-ne p1, v0, :cond_1

    return-object v1

    .line 677
    :cond_1
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, v0}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private parseArraySize(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1298
    :goto_0
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 1299
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseArrayIndex(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-static {v0, v1}, Ljavassist/compiler/ast/ASTList;->append(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private parseBinaryExpr(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 775
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseUnaryExpr(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 777
    :goto_0
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    .line 778
    invoke-direct {p0, v1}, Ljavassist/compiler/Parser;->getOpPrecedence(I)I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 782
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Ljavassist/compiler/Parser;->binaryExpr2(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/ASTree;I)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    goto :goto_0
.end method

.method private parseBlock(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 287
    new-instance v1, Ljavassist/compiler/SymbolTable;

    invoke-direct {v1, p1}, Ljavassist/compiler/SymbolTable;-><init>(Ljavassist/compiler/SymbolTable;)V

    .line 288
    :cond_0
    :goto_0
    iget-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result p1

    const/16 v2, 0x7d

    const/16 v3, 0x42

    if-eq p1, v2, :cond_1

    .line 289
    invoke-virtual {p0, v1}, Ljavassist/compiler/Parser;->parseStatement(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 291
    new-instance v2, Ljavassist/compiler/ast/Stmnt;

    invoke-direct {v2, v3, p1}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;)V

    invoke-static {v0, v2}, Ljavassist/compiler/ast/ASTList;->concat(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    check-cast p1, Ljavassist/compiler/ast/Stmnt;

    move-object v0, p1

    goto :goto_0

    .line 294
    :cond_1
    iget-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p1}, Ljavassist/compiler/Lex;->get()I

    if-nez v0, :cond_2

    .line 296
    new-instance p1, Ljavassist/compiler/ast/Stmnt;

    invoke-direct {p1, v3}, Ljavassist/compiler/ast/Stmnt;-><init>(I)V

    return-object p1

    :cond_2
    return-object v0

    .line 284
    :cond_3
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, v0}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private parseBreak(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 531
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseContinue(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    return-object p1
.end method

.method private parseCast(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 901
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v0

    .line 902
    invoke-static {v0}, Ljavassist/compiler/Parser;->isBuiltinType(I)Z

    move-result v1

    const-string v2, ") is missing"

    const/16 v3, 0x29

    if-eqz v1, :cond_1

    invoke-direct {p0}, Ljavassist/compiler/Parser;->nextIsBuiltinCast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 903
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    .line 904
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    .line 905
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result v1

    .line 906
    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v4}, Ljavassist/compiler/Lex;->get()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 909
    new-instance v2, Ljavassist/compiler/ast/CastExpr;

    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseUnaryExpr(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-direct {v2, v0, v1, p1}, Ljavassist/compiler/ast/CastExpr;-><init>(IILjavassist/compiler/ast/ASTree;)V

    return-object v2

    .line 907
    :cond_0
    new-instance p1, Ljavassist/compiler/CompileError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, v2, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw p1

    :cond_1
    const/16 v1, 0x190

    if-ne v0, v1, :cond_3

    .line 911
    invoke-direct {p0}, Ljavassist/compiler/Parser;->nextIsClassCast()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 912
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    .line 913
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseClassType(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    .line 914
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result v1

    .line 915
    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v4}, Ljavassist/compiler/Lex;->get()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 918
    new-instance v2, Ljavassist/compiler/ast/CastExpr;

    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseUnaryExpr(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-direct {v2, v0, v1, p1}, Ljavassist/compiler/ast/CastExpr;-><init>(Ljavassist/compiler/ast/ASTList;ILjavassist/compiler/ast/ASTree;)V

    return-object v2

    .line 916
    :cond_2
    new-instance p1, Ljavassist/compiler/CompileError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, v2, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw p1

    .line 921
    :cond_3
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parsePostfix(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    return-object p1
.end method

.method private parseClassType(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 p1, 0x0

    .line 983
    :goto_0
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    .line 986
    new-instance v0, Ljavassist/compiler/ast/Symbol;

    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Ljavassist/compiler/ast/ASTList;->append(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    .line 987
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 988
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    goto :goto_0

    :cond_0
    return-object p1

    .line 984
    :cond_1
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, v0}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private parseConditionalExpr(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 719
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseBinaryExpr(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 720
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_1

    .line 721
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    .line 722
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 723
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    .line 726
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    .line 727
    new-instance v2, Ljavassist/compiler/ast/CondExpr;

    invoke-direct {v2, v0, v1, p1}, Ljavassist/compiler/ast/CondExpr;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    return-object v2

    .line 724
    :cond_0
    new-instance p1, Ljavassist/compiler/CompileError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v1, ": is missing"

    invoke-direct {p1, v1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw p1

    :cond_1
    return-object v0
.end method

.method private parseContinue(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 539
    iget-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p1}, Ljavassist/compiler/Lex;->get()I

    move-result p1

    .line 540
    new-instance v0, Ljavassist/compiler/ast/Stmnt;

    invoke-direct {v0, p1}, Ljavassist/compiler/ast/Stmnt;-><init>(I)V

    .line 541
    iget-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p1}, Ljavassist/compiler/Lex;->get()I

    move-result p1

    const/16 v1, 0x190

    if-ne p1, v1, :cond_0

    .line 543
    new-instance p1, Ljavassist/compiler/ast/Symbol;

    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljavassist/compiler/ast/Stmnt;->setLeft(Ljavassist/compiler/ast/ASTree;)V

    .line 544
    iget-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p1}, Ljavassist/compiler/Lex;->get()I

    move-result p1

    :cond_0
    const/16 v1, 0x3b

    if-ne p1, v1, :cond_1

    return-object v0

    .line 548
    :cond_1
    new-instance p1, Ljavassist/compiler/CompileError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v1, "; is missing"

    invoke-direct {p1, v1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw p1
.end method

.method private parseDeclarationOrExpression(Ljavassist/compiler/SymbolTable;Z)Ljavassist/compiler/ast/Stmnt;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 566
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    :goto_0
    const/16 v1, 0x13b

    if-ne v0, v1, :cond_0

    .line 568
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    .line 569
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    goto :goto_0

    .line 572
    :cond_0
    invoke-static {v0}, Ljavassist/compiler/Parser;->isBuiltinType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 573
    iget-object p2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p2}, Ljavassist/compiler/Lex;->get()I

    move-result p2

    .line 574
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result v0

    .line 575
    new-instance v1, Ljavassist/compiler/ast/Declarator;

    invoke-direct {v1, p2, v0}, Ljavassist/compiler/ast/Declarator;-><init>(II)V

    invoke-direct {p0, p1, v1}, Ljavassist/compiler/Parser;->parseDeclarators(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/Declarator;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v1, 0x190

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 578
    invoke-direct {p0, v0}, Ljavassist/compiler/Parser;->nextIsClassType(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 580
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2, v0}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 581
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseClassType(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;

    move-result-object p2

    .line 582
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result v0

    .line 583
    new-instance v1, Ljavassist/compiler/ast/Declarator;

    invoke-direct {v1, p2, v0}, Ljavassist/compiler/ast/Declarator;-><init>(Ljavassist/compiler/ast/ASTList;I)V

    invoke-direct {p0, p1, v1}, Ljavassist/compiler/Parser;->parseDeclarators(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/Declarator;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p2, :cond_3

    .line 589
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseExprList(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    goto :goto_1

    .line 591
    :cond_3
    new-instance p2, Ljavassist/compiler/ast/Stmnt;

    const/16 v0, 0x45

    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;)V

    move-object p1, p2

    .line 593
    :goto_1
    iget-object p2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p2}, Ljavassist/compiler/Lex;->get()I

    move-result p2

    const/16 v0, 0x3b

    if-ne p2, v0, :cond_4

    return-object p1

    .line 594
    :cond_4
    new-instance p1, Ljavassist/compiler/CompileError;

    iget-object p2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v0, "; is missing"

    invoke-direct {p1, v0, p2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private parseDeclarator(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/Declarator;)Ljavassist/compiler/ast/Declarator;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 635
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result v0

    const/16 v1, 0x158

    if-eq v0, v1, :cond_1

    .line 638
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->getString()Ljava/lang/String;

    move-result-object v0

    .line 639
    new-instance v1, Ljavassist/compiler/ast/Symbol;

    invoke-direct {v1, v0}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    .line 640
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result v2

    const/4 v3, 0x0

    .line 642
    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v4}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v4

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_0

    .line 643
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->get()I

    .line 644
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseInitializer(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    .line 647
    :cond_0
    invoke-virtual {p2, v1, v2, v3}, Ljavassist/compiler/ast/Declarator;->make(Ljavassist/compiler/ast/Symbol;ILjavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Declarator;

    move-result-object p2

    .line 648
    invoke-virtual {p1, v0, p2}, Ljavassist/compiler/SymbolTable;->append(Ljava/lang/String;Ljavassist/compiler/ast/Declarator;)V

    return-object p2

    .line 636
    :cond_1
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object p2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, p2}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw p1
.end method

.method private parseDeclarators(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/Declarator;)Ljavassist/compiler/ast/Stmnt;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 v0, 0x0

    .line 620
    :goto_0
    new-instance v1, Ljavassist/compiler/ast/Stmnt;

    const/16 v2, 0x44

    invoke-direct {p0, p1, p2}, Ljavassist/compiler/Parser;->parseDeclarator(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/Declarator;)Ljavassist/compiler/ast/Declarator;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;)V

    invoke-static {v0, v1}, Ljavassist/compiler/ast/ASTList;->concat(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/Stmnt;

    .line 622
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 626
    :cond_1
    new-instance p1, Ljavassist/compiler/CompileError;

    iget-object p2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v0, "; is missing"

    invoke-direct {p1, v0, p2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private parseDo(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    .line 334
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseStatement(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v1

    .line 335
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    const/16 v3, 0x15a

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_1

    .line 338
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    .line 339
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    .line 342
    new-instance v2, Ljavassist/compiler/ast/Stmnt;

    invoke-direct {v2, v0, p1, v1}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    return-object v2

    .line 340
    :cond_0
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, v0}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw p1

    .line 336
    :cond_1
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, v0}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw p1
.end method

.method private parseDotClass(II)Ljavassist/compiler/ast/ASTree;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    if-lez p2, :cond_0

    .line 1115
    invoke-static {p1, p2}, Ljavassist/compiler/CodeGen;->toJvmTypeName(II)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x2e

    .line 1116
    new-instance v0, Ljavassist/compiler/ast/Symbol;

    invoke-direct {v0, p1}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljavassist/compiler/ast/Member;

    const-string v1, "class"

    invoke-direct {p1, v1}, Ljavassist/compiler/ast/Member;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v0, p1}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p2, 0x12d

    if-eq p1, p2, :cond_9

    const/16 p2, 0x12f

    if-eq p1, p2, :cond_8

    const/16 p2, 0x132

    if-eq p1, p2, :cond_7

    const/16 p2, 0x138

    if-eq p1, p2, :cond_6

    const/16 p2, 0x13d

    if-eq p1, p2, :cond_5

    const/16 p2, 0x144

    if-eq p1, p2, :cond_4

    const/16 p2, 0x146

    if-eq p1, p2, :cond_3

    const/16 p2, 0x14e

    if-eq p1, p2, :cond_2

    const/16 p2, 0x158

    if-ne p1, p2, :cond_1

    const-string p1, "java.lang.Void"

    goto :goto_0

    .line 1149
    :cond_1
    new-instance p2, Ljavassist/compiler/CompileError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid builtin type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const-string p1, "java.lang.Short"

    goto :goto_0

    :cond_3
    const-string p1, "java.lang.Long"

    goto :goto_0

    :cond_4
    const-string p1, "java.lang.Integer"

    goto :goto_0

    :cond_5
    const-string p1, "java.lang.Float"

    goto :goto_0

    :cond_6
    const-string p1, "java.lang.Double"

    goto :goto_0

    :cond_7
    const-string p1, "java.lang.Character"

    goto :goto_0

    :cond_8
    const-string p1, "java.lang.Byte"

    goto :goto_0

    :cond_9
    const-string p1, "java.lang.Boolean"

    :goto_0
    const/16 p2, 0x23

    .line 1153
    new-instance v0, Ljavassist/compiler/ast/Symbol;

    invoke-direct {v0, p1}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljavassist/compiler/ast/Member;

    const-string v1, "TYPE"

    invoke-direct {p1, v1}, Ljavassist/compiler/ast/Member;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v0, p1}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object p1

    return-object p1
.end method

.method private parseDotClass(Ljavassist/compiler/ast/ASTree;I)Ljavassist/compiler/ast/ASTree;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1094
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->toClassName(Ljavassist/compiler/ast/ASTree;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    if-lez p2, :cond_1

    .line 1096
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    add-int/lit8 v2, p2, -0x1

    if-lez p2, :cond_0

    const/16 p2, 0x5b

    .line 1098
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p2, v2

    goto :goto_0

    :cond_0
    const/16 p2, 0x4c

    .line 1100
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object p2

    const/16 v2, 0x2f

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const/16 p2, 0x3b

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1101
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1104
    :cond_1
    new-instance p2, Ljavassist/compiler/ast/Symbol;

    invoke-direct {p2, p1}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljavassist/compiler/ast/Member;

    const-string v1, "class"

    invoke-direct {p1, v1}, Ljavassist/compiler/ast/Member;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p2, p1}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object p1

    return-object p1
.end method

.method private parseExprList(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 v0, 0x0

    .line 604
    :goto_0
    new-instance v1, Ljavassist/compiler/ast/Stmnt;

    const/16 v2, 0x45

    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;)V

    .line 605
    new-instance v2, Ljavassist/compiler/ast/Stmnt;

    const/16 v3, 0x42

    invoke-direct {v2, v3, v1}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;)V

    invoke-static {v0, v2}, Ljavassist/compiler/ast/ASTList;->concat(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/Stmnt;

    .line 606
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_0

    .line 607
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private parseField(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/Declarator;)Ljavassist/compiler/ast/FieldDecl;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    .line 81
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 84
    :goto_0
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_1

    .line 86
    new-instance v0, Ljavassist/compiler/ast/FieldDecl;

    new-instance v1, Ljavassist/compiler/ast/ASTList;

    new-instance v2, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v2, p1}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-direct {v1, p3, v2}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    invoke-direct {v0, p2, v1}, Ljavassist/compiler/ast/FieldDecl;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    return-object v0

    :cond_1
    const/16 p1, 0x2c

    if-ne v0, p1, :cond_2

    .line 88
    new-instance p1, Ljavassist/compiler/CompileError;

    iget-object p2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string p3, "only one field can be declared in one declaration"

    invoke-direct {p1, p3, p2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw p1

    .line 91
    :cond_2
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object p2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, p2}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw p1
.end method

.method private parseFor(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 351
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    .line 353
    new-instance v1, Ljavassist/compiler/SymbolTable;

    invoke-direct {v1, p1}, Ljavassist/compiler/SymbolTable;-><init>(Ljavassist/compiler/SymbolTable;)V

    .line 355
    iget-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p1}, Ljavassist/compiler/Lex;->get()I

    move-result p1

    const/16 v2, 0x28

    if-ne p1, v2, :cond_5

    .line 358
    iget-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result p1

    const/4 v2, 0x0

    const/16 v3, 0x3b

    if-ne p1, v3, :cond_0

    .line 359
    iget-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p1}, Ljavassist/compiler/Lex;->get()I

    move-object p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 363
    invoke-direct {p0, v1, p1}, Ljavassist/compiler/Parser;->parseDeclarationOrExpression(Ljavassist/compiler/SymbolTable;Z)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    .line 365
    :goto_0
    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v4}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v4

    if-ne v4, v3, :cond_1

    move-object v4, v2

    goto :goto_1

    .line 368
    :cond_1
    invoke-virtual {p0, v1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    .line 370
    :goto_1
    iget-object v5, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v5}, Ljavassist/compiler/Lex;->get()I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 373
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v3

    const/16 v5, 0x29

    if-ne v3, v5, :cond_2

    goto :goto_2

    .line 376
    :cond_2
    invoke-direct {p0, v1}, Ljavassist/compiler/Parser;->parseExprList(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v2

    .line 378
    :goto_2
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->get()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 381
    invoke-virtual {p0, v1}, Ljavassist/compiler/Parser;->parseStatement(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v1

    .line 382
    new-instance v3, Ljavassist/compiler/ast/Stmnt;

    new-instance v5, Ljavassist/compiler/ast/ASTList;

    new-instance v6, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v6, v2, v1}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    invoke-direct {v5, v4, v6}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    invoke-direct {v3, v0, p1, v5}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    return-object v3

    .line 379
    :cond_3
    new-instance p1, Ljavassist/compiler/CompileError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v1, ") is missing"

    invoke-direct {p1, v1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw p1

    .line 371
    :cond_4
    new-instance p1, Ljavassist/compiler/CompileError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v1, "; is missing"

    invoke-direct {p1, v1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw p1

    .line 356
    :cond_5
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, v0}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw p1
.end method

.method private parseFormalParam(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Declarator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 208
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseFormalType(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Declarator;

    move-result-object v0

    .line 209
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_0

    .line 212
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->getString()Ljava/lang/String;

    move-result-object v1

    .line 213
    new-instance v2, Ljavassist/compiler/ast/Symbol;

    invoke-direct {v2, v1}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavassist/compiler/ast/Declarator;->setVariable(Ljavassist/compiler/ast/Symbol;)V

    .line 214
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result v2

    invoke-virtual {v0, v2}, Ljavassist/compiler/ast/Declarator;->addArrayDim(I)V

    .line 215
    invoke-virtual {p1, v1, v0}, Ljavassist/compiler/SymbolTable;->append(Ljava/lang/String;Ljavassist/compiler/ast/Declarator;)V

    return-object v0

    .line 210
    :cond_0
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, v0}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw p1
.end method

.method private parseFormalType(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Declarator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    .line 186
    invoke-static {v0}, Ljavassist/compiler/Parser;->isBuiltinType(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x158

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseClassType(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    .line 193
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result v0

    .line 194
    new-instance v1, Ljavassist/compiler/ast/Declarator;

    invoke-direct {v1, p1, v0}, Ljavassist/compiler/ast/Declarator;-><init>(Ljavassist/compiler/ast/ASTList;I)V

    return-object v1

    .line 187
    :cond_1
    :goto_0
    iget-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p1}, Ljavassist/compiler/Lex;->get()I

    .line 188
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result p1

    .line 189
    new-instance v1, Ljavassist/compiler/ast/Declarator;

    invoke-direct {v1, v0, p1}, Ljavassist/compiler/ast/Declarator;-><init>(II)V

    return-object v1
.end method

.method private parseIf(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    .line 306
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseParExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 307
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseStatement(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v2

    .line 309
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v3

    const/16 v4, 0x139

    if-ne v3, v4, :cond_0

    .line 310
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->get()I

    .line 311
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseStatement(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 316
    :goto_0
    new-instance v3, Ljavassist/compiler/ast/Stmnt;

    new-instance v4, Ljavassist/compiler/ast/ASTList;

    new-instance v5, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v5, p1}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-direct {v4, v2, v5}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    invoke-direct {v3, v0, v1, v4}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    return-object v3
.end method

.method private parseInitializer(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 655
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    .line 656
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseArrayInitializer(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ArrayInit;

    move-result-object p1

    return-object p1

    .line 658
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    return-object p1
.end method

.method private parseInstanceOf(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 789
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    .line 790
    invoke-static {v0}, Ljavassist/compiler/Parser;->isBuiltinType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 791
    iget-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p1}, Ljavassist/compiler/Lex;->get()I

    .line 792
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result p1

    .line 793
    new-instance v1, Ljavassist/compiler/ast/InstanceOfExpr;

    invoke-direct {v1, v0, p1, p2}, Ljavassist/compiler/ast/InstanceOfExpr;-><init>(IILjavassist/compiler/ast/ASTree;)V

    return-object v1

    .line 796
    :cond_0
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseClassType(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    .line 797
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result v0

    .line 798
    new-instance v1, Ljavassist/compiler/ast/InstanceOfExpr;

    invoke-direct {v1, p1, v0, p2}, Ljavassist/compiler/ast/InstanceOfExpr;-><init>(Ljavassist/compiler/ast/ASTList;ILjavassist/compiler/ast/ASTree;)V

    return-object v1
.end method

.method private parseMemberMods()Ljavassist/compiler/ast/ASTList;
    .locals 4

    const/4 v0, 0x0

    .line 170
    :goto_0
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x13b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x14c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x14b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x14a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x152

    if-eq v1, v2, :cond_1

    const/16 v2, 0x14f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x159

    if-eq v1, v2, :cond_1

    const/16 v2, 0x156

    if-eq v1, v2, :cond_1

    const/16 v2, 0x15b

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    return-object v0

    .line 174
    :cond_1
    :goto_1
    new-instance v1, Ljavassist/compiler/ast/ASTList;

    new-instance v2, Ljavassist/compiler/ast/Keyword;

    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->get()I

    move-result v3

    invoke-direct {v2, v3}, Ljavassist/compiler/ast/Keyword;-><init>(I)V

    invoke-direct {v1, v2, v0}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private parseMethod1(Ljavassist/compiler/SymbolTable;ZLjavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/Declarator;)Ljavassist/compiler/ast/MethodDecl;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_7

    .line 112
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    const/16 v1, 0x2c

    const/16 v2, 0x29

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    move-object v0, v3

    .line 114
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseFormalParam(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Declarator;

    move-result-object v4

    invoke-static {v0, v4}, Ljavassist/compiler/ast/ASTList;->append(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    .line 115
    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v4}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 117
    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v4}, Ljavassist/compiler/Lex;->get()I

    goto :goto_0

    :cond_1
    if-ne v4, v2, :cond_0

    goto :goto_1

    :cond_2
    move-object v0, v3

    .line 122
    :goto_1
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    .line 123
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result v2

    invoke-virtual {p4, v2}, Ljavassist/compiler/ast/Declarator;->addArrayDim(I)V

    if-eqz p2, :cond_4

    .line 124
    invoke-virtual {p4}, Ljavassist/compiler/ast/Declarator;->getArrayDim()I

    move-result p2

    if-gtz p2, :cond_3

    goto :goto_2

    .line 125
    :cond_3
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object p2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, p2}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw p1

    .line 128
    :cond_4
    :goto_2
    iget-object p2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p2}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result p2

    const/16 v2, 0x155

    if-ne p2, v2, :cond_5

    .line 129
    iget-object p2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p2}, Ljavassist/compiler/Lex;->get()I

    move-object p2, v3

    .line 131
    :goto_3
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseClassType(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;

    move-result-object v2

    invoke-static {p2, v2}, Ljavassist/compiler/ast/ASTList;->append(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;

    move-result-object p2

    .line 132
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 133
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    goto :goto_3

    :cond_5
    move-object p2, v3

    .line 139
    :cond_6
    new-instance p1, Ljavassist/compiler/ast/MethodDecl;

    new-instance v1, Ljavassist/compiler/ast/ASTList;

    invoke-static {v0, p2, v3}, Ljavassist/compiler/ast/ASTList;->make(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;

    move-result-object p2

    invoke-direct {v1, p4, p2}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    invoke-direct {p1, p3, v1}, Ljavassist/compiler/ast/MethodDecl;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    return-object p1

    .line 109
    :cond_7
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object p2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, p2}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private parseMethodCall(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1165
    instance-of v0, p2, Ljavassist/compiler/ast/Keyword;

    if-eqz v0, :cond_1

    .line 1166
    move-object v0, p2

    check-cast v0, Ljavassist/compiler/ast/Keyword;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result v0

    const/16 v1, 0x153

    if-eq v0, v1, :cond_4

    const/16 v1, 0x150

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1168
    :cond_0
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object p2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, p2}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw p1

    .line 1170
    :cond_1
    instance-of v0, p2, Ljavassist/compiler/ast/Symbol;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1172
    :cond_2
    instance-of v0, p2, Ljavassist/compiler/ast/Expr;

    if-eqz v0, :cond_4

    .line 1173
    move-object v0, p2

    check-cast v0, Ljavassist/compiler/ast/Expr;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_4

    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 1175
    :cond_3
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object p2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, p2}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw p1

    .line 1178
    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseArgumentList(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    invoke-static {p2, p1}, Ljavassist/compiler/ast/CallExpr;->makeCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/CallExpr;

    move-result-object p1

    return-object p1
.end method

.method private parseNew(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/NewExpr;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1266
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    .line 1267
    invoke-static {v0}, Ljavassist/compiler/Parser;->isBuiltinType(I)Z

    move-result v1

    const/16 v2, 0x7b

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1268
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    .line 1269
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseArraySize(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    .line 1270
    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v4}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 1271
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseArrayInitializer(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ArrayInit;

    move-result-object v3

    .line 1273
    :cond_0
    new-instance p1, Ljavassist/compiler/ast/NewExpr;

    invoke-direct {p1, v0, v1, v3}, Ljavassist/compiler/ast/NewExpr;-><init>(ILjavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ArrayInit;)V

    return-object p1

    :cond_1
    const/16 v1, 0x190

    if-ne v0, v1, :cond_4

    .line 1276
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseClassType(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    .line 1277
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    const/16 v4, 0x28

    if-ne v1, v4, :cond_2

    .line 1279
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseArgumentList(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    .line 1280
    new-instance v1, Ljavassist/compiler/ast/NewExpr;

    invoke-direct {v1, v0, p1}, Ljavassist/compiler/ast/NewExpr;-><init>(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)V

    return-object v1

    :cond_2
    const/16 v4, 0x5b

    if-ne v1, v4, :cond_4

    .line 1283
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseArraySize(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    .line 1284
    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v4}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 1285
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseArrayInitializer(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ArrayInit;

    move-result-object v3

    .line 1287
    :cond_3
    invoke-static {v0, v1, v3}, Ljavassist/compiler/ast/NewExpr;->makeObjectArray(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ArrayInit;)Ljavassist/compiler/ast/NewExpr;

    move-result-object p1

    return-object p1

    .line 1291
    :cond_4
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, v0}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw p1
.end method

.method private parseParExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 685
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_1

    .line 688
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    .line 689
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_0

    return-object p1

    .line 690
    :cond_0
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, v0}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw p1

    .line 686
    :cond_1
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, v0}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw p1
.end method

.method private parsePostfix(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1013
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1030
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parsePrimaryExpr(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    goto :goto_0

    .line 1022
    :pswitch_0
    iget-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p1}, Ljavassist/compiler/Lex;->get()I

    .line 1023
    new-instance p1, Ljavassist/compiler/ast/DoubleConst;

    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->getDouble()D

    move-result-wide v1

    invoke-direct {p1, v1, v2, v0}, Ljavassist/compiler/ast/DoubleConst;-><init>(DI)V

    return-object p1

    .line 1018
    :pswitch_1
    iget-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p1}, Ljavassist/compiler/Lex;->get()I

    .line 1019
    new-instance p1, Ljavassist/compiler/ast/IntConst;

    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->getLong()J

    move-result-wide v1

    invoke-direct {p1, v1, v2, v0}, Ljavassist/compiler/ast/IntConst;-><init>(JI)V

    return-object p1

    .line 1033
    :goto_0
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    const/16 v2, 0x190

    const/16 v3, 0x23

    if-eq v1, v3, :cond_9

    const/16 v3, 0x28

    if-eq v1, v3, :cond_8

    const/16 v3, 0x133

    const/16 v4, 0x2e

    if-eq v1, v4, :cond_5

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x16a

    if-eq v1, v2, :cond_0

    const/16 v2, 0x16b

    if-eq v1, v2, :cond_0

    return-object v0

    .line 1055
    :cond_0
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    move-result v1

    const/4 v2, 0x0

    .line 1056
    invoke-static {v1, v2, v0}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v0

    goto :goto_0

    .line 1038
    :cond_1
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_3

    .line 1039
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result v1

    .line 1040
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 1043
    invoke-direct {p0, v0, v1}, Ljavassist/compiler/Parser;->parseDotClass(Ljavassist/compiler/ast/ASTree;I)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    goto :goto_0

    .line 1041
    :cond_2
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, v0}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw p1

    .line 1046
    :cond_3
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseArrayIndex(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    if-eqz v1, :cond_4

    const/16 v2, 0x41

    .line 1050
    invoke-static {v2, v0, v1}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v0

    goto :goto_0

    .line 1048
    :cond_4
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, v0}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw p1

    .line 1059
    :cond_5
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    .line 1060
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    move-result v1

    if-ne v1, v3, :cond_6

    const/4 v1, 0x0

    .line 1062
    invoke-direct {p0, v0, v1}, Ljavassist/compiler/Parser;->parseDotClass(Ljavassist/compiler/ast/ASTree;I)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    if-ne v1, v2, :cond_7

    .line 1065
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->getString()Ljava/lang/String;

    move-result-object v1

    .line 1066
    new-instance v2, Ljavassist/compiler/ast/Member;

    invoke-direct {v2, v1}, Ljavassist/compiler/ast/Member;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v0, v2}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v0

    goto/16 :goto_0

    .line 1069
    :cond_7
    new-instance p1, Ljavassist/compiler/CompileError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v1, "missing member name"

    invoke-direct {p1, v1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw p1

    .line 1035
    :cond_8
    invoke-direct {p0, p1, v0}, Ljavassist/compiler/Parser;->parseMethodCall(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    goto/16 :goto_0

    .line 1072
    :cond_9
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    .line 1073
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    move-result v1

    if-ne v1, v2, :cond_a

    .line 1077
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->getString()Ljava/lang/String;

    move-result-object v1

    .line 1078
    new-instance v2, Ljavassist/compiler/ast/Symbol;

    invoke-direct {p0, v0}, Ljavassist/compiler/Parser;->toClassName(Ljavassist/compiler/ast/ASTree;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljavassist/compiler/ast/Member;

    invoke-direct {v0, v1}, Ljavassist/compiler/ast/Member;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2, v0}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v0

    goto/16 :goto_0

    .line 1075
    :cond_a
    new-instance p1, Ljavassist/compiler/CompileError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v1, "missing static member name"

    invoke-direct {p1, v1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private parsePrimaryExpr(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1225
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_7

    const/16 v1, 0x148

    if-eq v0, v1, :cond_6

    const/16 v1, 0x150

    if-eq v0, v1, :cond_5

    const/16 v1, 0x153

    if-eq v0, v1, :cond_5

    const/16 v1, 0x190

    if-eq v0, v1, :cond_3

    const/16 p1, 0x196

    if-eq v0, p1, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 1250
    invoke-static {v0}, Ljavassist/compiler/Parser;->isBuiltinType(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x158

    if-ne v0, p1, :cond_1

    .line 1251
    :cond_0
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result p1

    .line 1252
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    move-result v1

    const/16 v2, 0x133

    if-ne v1, v2, :cond_1

    .line 1253
    invoke-direct {p0, v0, p1}, Ljavassist/compiler/Parser;->parseDotClass(II)Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    return-object p1

    .line 1256
    :cond_1
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, v0}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw p1

    .line 1240
    :cond_2
    new-instance p1, Ljavassist/compiler/ast/StringL;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavassist/compiler/ast/StringL;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 1233
    :cond_3
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1234
    invoke-virtual {p1, v0}, Ljavassist/compiler/SymbolTable;->lookup(Ljava/lang/String;)Ljavassist/compiler/ast/Declarator;

    move-result-object p1

    if-nez p1, :cond_4

    .line 1236
    new-instance p1, Ljavassist/compiler/ast/Member;

    invoke-direct {p1, v0}, Ljavassist/compiler/ast/Member;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 1238
    :cond_4
    new-instance v1, Ljavassist/compiler/ast/Variable;

    invoke-direct {v1, v0, p1}, Ljavassist/compiler/ast/Variable;-><init>(Ljava/lang/String;Ljavassist/compiler/ast/Declarator;)V

    return-object v1

    .line 1231
    :cond_5
    :pswitch_0
    new-instance p1, Ljavassist/compiler/ast/Keyword;

    invoke-direct {p1, v0}, Ljavassist/compiler/ast/Keyword;-><init>(I)V

    return-object p1

    .line 1242
    :cond_6
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseNew(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/NewExpr;

    move-result-object p1

    return-object p1

    .line 1244
    :cond_7
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    .line 1245
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_8

    return-object p1

    .line 1248
    :cond_8
    new-instance p1, Ljavassist/compiler/CompileError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v1, ") is missing"

    invoke-direct {p1, v1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x19a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private parseReturn(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 504
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    .line 505
    new-instance v1, Ljavassist/compiler/ast/Stmnt;

    invoke-direct {v1, v0}, Ljavassist/compiler/ast/Stmnt;-><init>(I)V

    .line 506
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_0

    .line 507
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavassist/compiler/ast/Stmnt;->setLeft(Ljavassist/compiler/ast/ASTree;)V

    .line 509
    :cond_0
    iget-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p1}, Ljavassist/compiler/Lex;->get()I

    move-result p1

    if-ne p1, v2, :cond_1

    return-object v1

    .line 510
    :cond_1
    new-instance p1, Ljavassist/compiler/CompileError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v1, "; is missing"

    invoke-direct {p1, v1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw p1
.end method

.method private parseStmntOrCase(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 433
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    const/16 v1, 0x136

    const/16 v2, 0x130

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 435
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseStatement(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    return-object p1

    .line 437
    :cond_0
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->get()I

    if-ne v0, v2, :cond_1

    .line 440
    new-instance v1, Ljavassist/compiler/ast/Stmnt;

    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;)V

    goto :goto_0

    .line 442
    :cond_1
    new-instance p1, Ljavassist/compiler/ast/Stmnt;

    invoke-direct {p1, v1}, Ljavassist/compiler/ast/Stmnt;-><init>(I)V

    move-object v1, p1

    .line 444
    :goto_0
    iget-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p1}, Ljavassist/compiler/Lex;->get()I

    move-result p1

    const/16 v0, 0x3a

    if-ne p1, v0, :cond_2

    return-object v1

    .line 445
    :cond_2
    new-instance p1, Ljavassist/compiler/CompileError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v1, ": is missing"

    invoke-direct {p1, v1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw p1
.end method

.method private parseSwitch(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 394
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    .line 395
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseParExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 396
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseSwitchBlock(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    .line 397
    new-instance v2, Ljavassist/compiler/ast/Stmnt;

    invoke-direct {v2, v0, v1, p1}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    return-object v2
.end method

.method private parseSwitchBlock(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 401
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_7

    .line 404
    new-instance v0, Ljavassist/compiler/SymbolTable;

    invoke-direct {v0, p1}, Ljavassist/compiler/SymbolTable;-><init>(Ljavassist/compiler/SymbolTable;)V

    .line 405
    invoke-direct {p0, v0}, Ljavassist/compiler/Parser;->parseStmntOrCase(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 409
    invoke-virtual {p1}, Ljavassist/compiler/ast/Stmnt;->getOperator()I

    move-result v1

    const/16 v2, 0x136

    const/16 v3, 0x130

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 411
    :cond_0
    new-instance p1, Ljavassist/compiler/CompileError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v1, "no case or default in a switch block"

    invoke-direct {p1, v1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw p1

    .line 414
    :cond_1
    :goto_0
    new-instance v1, Ljavassist/compiler/ast/Stmnt;

    const/16 v4, 0x42

    invoke-direct {v1, v4, p1}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;)V

    .line 415
    :cond_2
    :goto_1
    iget-object v5, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v5}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v5

    const/16 v6, 0x7d

    if-eq v5, v6, :cond_5

    .line 416
    invoke-direct {p0, v0}, Ljavassist/compiler/Parser;->parseStmntOrCase(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 418
    invoke-virtual {v5}, Ljavassist/compiler/ast/Stmnt;->getOperator()I

    move-result v6

    if-eq v6, v3, :cond_4

    if-ne v6, v2, :cond_3

    goto :goto_2

    .line 424
    :cond_3
    new-instance v6, Ljavassist/compiler/ast/Stmnt;

    invoke-direct {v6, v4, v5}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;)V

    invoke-static {p1, v6}, Ljavassist/compiler/ast/ASTList;->concat(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    check-cast p1, Ljavassist/compiler/ast/Stmnt;

    goto :goto_1

    .line 420
    :cond_4
    :goto_2
    new-instance p1, Ljavassist/compiler/ast/Stmnt;

    invoke-direct {p1, v4, v5}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;)V

    invoke-static {v1, p1}, Ljavassist/compiler/ast/ASTList;->concat(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    check-cast p1, Ljavassist/compiler/ast/Stmnt;

    move-object v1, p1

    move-object p1, v5

    goto :goto_1

    .line 428
    :cond_5
    iget-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p1}, Ljavassist/compiler/Lex;->get()I

    return-object v1

    .line 407
    :cond_6
    new-instance p1, Ljavassist/compiler/CompileError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v1, "empty switch block"

    invoke-direct {p1, v1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw p1

    .line 402
    :cond_7
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, v0}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private parseSynchronized(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 454
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    .line 455
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_1

    .line 458
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 459
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_0

    .line 462
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseBlock(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    .line 463
    new-instance v2, Ljavassist/compiler/ast/Stmnt;

    invoke-direct {v2, v0, v1, p1}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    return-object v2

    .line 460
    :cond_0
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, v0}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw p1

    .line 456
    :cond_1
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, v0}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw p1
.end method

.method private parseThrow(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 518
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    .line 519
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    .line 520
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_0

    .line 523
    new-instance v1, Ljavassist/compiler/ast/Stmnt;

    invoke-direct {v1, v0, p1}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;)V

    return-object v1

    .line 521
    :cond_0
    new-instance p1, Ljavassist/compiler/CompileError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v1, "; is missing"

    invoke-direct {p1, v1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw p1
.end method

.method private parseTry(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 472
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    .line 473
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseBlock(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 475
    :goto_0
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v3

    const/16 v4, 0x131

    if-ne v3, v4, :cond_3

    .line 476
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->get()I

    .line 477
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->get()I

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_2

    .line 480
    new-instance v3, Ljavassist/compiler/SymbolTable;

    invoke-direct {v3, p1}, Ljavassist/compiler/SymbolTable;-><init>(Ljavassist/compiler/SymbolTable;)V

    .line 481
    invoke-direct {p0, v3}, Ljavassist/compiler/Parser;->parseFormalParam(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Declarator;

    move-result-object v4

    .line 482
    invoke-virtual {v4}, Ljavassist/compiler/ast/Declarator;->getArrayDim()I

    move-result v5

    if-gtz v5, :cond_1

    invoke-virtual {v4}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result v5

    const/16 v6, 0x133

    if-ne v5, v6, :cond_1

    .line 485
    iget-object v5, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v5}, Ljavassist/compiler/Lex;->get()I

    move-result v5

    const/16 v6, 0x29

    if-ne v5, v6, :cond_0

    .line 488
    invoke-direct {p0, v3}, Ljavassist/compiler/Parser;->parseBlock(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v3

    .line 489
    new-instance v5, Ljavassist/compiler/ast/Pair;

    invoke-direct {v5, v4, v3}, Ljavassist/compiler/ast/Pair;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    invoke-static {v2, v5}, Ljavassist/compiler/ast/ASTList;->append(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;

    move-result-object v2

    goto :goto_0

    .line 486
    :cond_0
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, v0}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw p1

    .line 483
    :cond_1
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, v0}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw p1

    .line 478
    :cond_2
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, v0}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw p1

    .line 493
    :cond_3
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v3

    const/16 v4, 0x13c

    if-ne v3, v4, :cond_4

    .line 494
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    .line 495
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseBlock(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v1

    :cond_4
    const/16 p1, 0x157

    .line 498
    invoke-static {p1, v0, v2, v1}, Ljavassist/compiler/ast/Stmnt;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    return-object p1
.end method

.method private parseUnaryExpr(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 859
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    const/16 v1, 0x21

    const/16 v2, 0x2d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x7e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16b

    if-eq v0, v1, :cond_1

    .line 888
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parsePostfix(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    return-object p1

    .line 886
    :cond_0
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseCast(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    return-object p1

    .line 866
    :cond_1
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 868
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 877
    :pswitch_0
    iget-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p1}, Ljavassist/compiler/Lex;->get()I

    .line 878
    new-instance p1, Ljavassist/compiler/ast/DoubleConst;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->getDouble()D

    move-result-wide v2

    neg-double v2, v2

    invoke-direct {p1, v2, v3, v1}, Ljavassist/compiler/ast/DoubleConst;-><init>(DI)V

    return-object p1

    .line 873
    :pswitch_1
    iget-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p1}, Ljavassist/compiler/Lex;->get()I

    .line 874
    new-instance p1, Ljavassist/compiler/ast/IntConst;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->getLong()J

    move-result-wide v2

    neg-long v2, v2

    invoke-direct {p1, v2, v3, v1}, Ljavassist/compiler/ast/IntConst;-><init>(JI)V

    return-object p1

    .line 884
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseUnaryExpr(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-static {v0, p1}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private parseWhile(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    .line 325
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseParExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 326
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseStatement(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    .line 327
    new-instance v2, Ljavassist/compiler/ast/Stmnt;

    invoke-direct {v2, v0, v1, p1}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    return-object v2
.end method

.method private toClassName(Ljavassist/compiler/ast/ASTree;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1184
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1185
    invoke-direct {p0, p1, v0}, Ljavassist/compiler/Parser;->toClassName(Ljavassist/compiler/ast/ASTree;Ljava/lang/StringBuffer;)V

    .line 1186
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toClassName(Ljavassist/compiler/ast/ASTree;Ljava/lang/StringBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1192
    instance-of v0, p1, Ljavassist/compiler/ast/Symbol;

    if-eqz v0, :cond_0

    .line 1193
    check-cast p1, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {p1}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    .line 1196
    :cond_0
    instance-of v0, p1, Ljavassist/compiler/ast/Expr;

    if-eqz v0, :cond_1

    .line 1197
    check-cast p1, Ljavassist/compiler/ast/Expr;

    .line 1198
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_1

    .line 1199
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljavassist/compiler/Parser;->toClassName(Ljavassist/compiler/ast/ASTree;Ljava/lang/StringBuffer;)V

    .line 1200
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1201
    invoke-virtual {p1}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljavassist/compiler/Parser;->toClassName(Ljavassist/compiler/ast/ASTree;Ljava/lang/StringBuffer;)V

    return-void

    .line 1206
    :cond_1
    new-instance p1, Ljavassist/compiler/CompileError;

    iget-object p2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v0, "bad static member access"

    invoke-direct {p1, v0, p2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw p1
.end method


# virtual methods
.method public hasMore()Z
    .locals 1

    .line 28
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 699
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseConditionalExpr(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 700
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    invoke-static {v1}, Ljavassist/compiler/Parser;->isAssignOp(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 703
    :cond_0
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    move-result v1

    .line 704
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    .line 705
    invoke-static {v1, v0, p1}, Ljavassist/compiler/ast/AssignExpr;->makeAssign(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/AssignExpr;

    move-result-object p1

    return-object p1
.end method

.method public parseMember(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseMember1(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    .line 35
    instance-of v1, v0, Ljavassist/compiler/ast/MethodDecl;

    if-eqz v1, :cond_0

    .line 36
    check-cast v0, Ljavassist/compiler/ast/MethodDecl;

    invoke-virtual {p0, p1, v0}, Ljavassist/compiler/Parser;->parseMethod2(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/MethodDecl;)Ljavassist/compiler/ast/MethodDecl;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public parseMember1(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseMemberMods()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    .line 47
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    const/16 v2, 0x28

    const/4 v3, 0x1

    const/16 v4, 0x190

    const/4 v5, 0x0

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1, v3}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 48
    new-instance v1, Ljavassist/compiler/ast/Declarator;

    const/16 v6, 0x158

    invoke-direct {v1, v6, v5}, Ljavassist/compiler/ast/Declarator;-><init>(II)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseFormalType(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Declarator;

    move-result-object v1

    const/4 v3, 0x0

    .line 54
    :goto_0
    iget-object v5, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v5}, Ljavassist/compiler/Lex;->get()I

    move-result v5

    if-ne v5, v4, :cond_4

    if-eqz v3, :cond_1

    const-string v4, "<init>"

    goto :goto_1

    .line 61
    :cond_1
    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v4}, Ljavassist/compiler/Lex;->getString()Ljava/lang/String;

    move-result-object v4

    .line 63
    :goto_1
    new-instance v5, Ljavassist/compiler/ast/Symbol;

    invoke-direct {v5, v4}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljavassist/compiler/ast/Declarator;->setVariable(Ljavassist/compiler/ast/Symbol;)V

    if-nez v3, :cond_3

    .line 64
    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v4}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v4

    if-ne v4, v2, :cond_2

    goto :goto_2

    .line 67
    :cond_2
    invoke-direct {p0, p1, v0, v1}, Ljavassist/compiler/Parser;->parseField(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/Declarator;)Ljavassist/compiler/ast/FieldDecl;

    move-result-object p1

    return-object p1

    .line 65
    :cond_3
    :goto_2
    invoke-direct {p0, p1, v3, v0, v1}, Ljavassist/compiler/Parser;->parseMethod1(Ljavassist/compiler/SymbolTable;ZLjavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/Declarator;)Ljavassist/compiler/ast/MethodDecl;

    move-result-object p1

    return-object p1

    .line 55
    :cond_4
    new-instance p1, Ljavassist/compiler/SyntaxError;

    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {p1, v0}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw p1
.end method

.method public parseMethod2(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/MethodDecl;)Ljavassist/compiler/ast/MethodDecl;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 150
    iget-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p1}, Ljavassist/compiler/Lex;->get()I

    const/4 p1, 0x0

    goto :goto_0

    .line 152
    :cond_0
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseBlock(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    if-nez p1, :cond_1

    .line 154
    new-instance p1, Ljavassist/compiler/ast/Stmnt;

    const/16 v0, 0x42

    invoke-direct {p1, v0}, Ljavassist/compiler/ast/Stmnt;-><init>(I)V

    :cond_1
    :goto_0
    const/4 v0, 0x4

    .line 157
    invoke-virtual {p2, v0}, Ljavassist/compiler/ast/MethodDecl;->sublist(I)Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavassist/compiler/ast/ASTList;->setHead(Ljavassist/compiler/ast/ASTree;)V

    return-object p2
.end method

.method public parseStatement(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    .line 243
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseBlock(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v1, 0x3b

    if-ne v0, v1, :cond_1

    .line 245
    iget-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {p1}, Ljavassist/compiler/Lex;->get()I

    .line 246
    new-instance p1, Ljavassist/compiler/ast/Stmnt;

    const/16 v0, 0x42

    invoke-direct {p1, v0}, Ljavassist/compiler/ast/Stmnt;-><init>(I)V

    return-object p1

    :cond_1
    const/16 v1, 0x190

    if-ne v0, v1, :cond_2

    .line 248
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_2

    .line 249
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    .line 250
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->getString()Ljava/lang/String;

    move-result-object v0

    .line 251
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    const/16 v1, 0x4c

    .line 252
    new-instance v2, Ljavassist/compiler/ast/Symbol;

    invoke-direct {v2, v0}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseStatement(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    invoke-static {v1, v2, p1}, Ljavassist/compiler/ast/Stmnt;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v1, 0x140

    if-ne v0, v1, :cond_3

    .line 255
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseIf(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 v1, 0x15a

    if-ne v0, v1, :cond_4

    .line 257
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseWhile(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    return-object p1

    :cond_4
    const/16 v1, 0x137

    if-ne v0, v1, :cond_5

    .line 259
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseDo(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    return-object p1

    :cond_5
    const/16 v1, 0x13e

    if-ne v0, v1, :cond_6

    .line 261
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseFor(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    return-object p1

    :cond_6
    const/16 v1, 0x157

    if-ne v0, v1, :cond_7

    .line 263
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseTry(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    return-object p1

    :cond_7
    const/16 v1, 0x151

    if-ne v0, v1, :cond_8

    .line 265
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseSwitch(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    return-object p1

    :cond_8
    const/16 v1, 0x152

    if-ne v0, v1, :cond_9

    .line 267
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseSynchronized(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    return-object p1

    :cond_9
    const/16 v1, 0x14d

    if-ne v0, v1, :cond_a

    .line 269
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseReturn(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    return-object p1

    :cond_a
    const/16 v1, 0x154

    if-ne v0, v1, :cond_b

    .line 271
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseThrow(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    return-object p1

    :cond_b
    const/16 v1, 0x12e

    if-ne v0, v1, :cond_c

    .line 273
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseBreak(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    return-object p1

    :cond_c
    const/16 v1, 0x135

    if-ne v0, v1, :cond_d

    .line 275
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseContinue(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    return-object p1

    :cond_d
    const/4 v0, 0x0

    .line 277
    invoke-direct {p0, p1, v0}, Ljavassist/compiler/Parser;->parseDeclarationOrExpression(Ljavassist/compiler/SymbolTable;Z)Ljavassist/compiler/ast/Stmnt;

    move-result-object p1

    return-object p1
.end method
