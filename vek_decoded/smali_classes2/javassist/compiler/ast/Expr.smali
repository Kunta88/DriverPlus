.class public Ljavassist/compiler/ast/Expr;
.super Ljavassist/compiler/ast/ASTList;
.source "Expr.java"

# interfaces
.implements Ljavassist/compiler/TokenId;


# instance fields
.field protected operatorId:I


# direct methods
.method constructor <init>(ILjavassist/compiler/ast/ASTree;)V
    .locals 0

    .line 40
    invoke-direct {p0, p2}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    .line 41
    iput p1, p0, Ljavassist/compiler/ast/Expr;->operatorId:I

    return-void
.end method

.method constructor <init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V
    .locals 0

    .line 35
    invoke-direct {p0, p2, p3}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    .line 36
    iput p1, p0, Ljavassist/compiler/ast/Expr;->operatorId:I

    return-void
.end method

.method public static make(ILjavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;
    .locals 1

    .line 49
    new-instance v0, Ljavassist/compiler/ast/Expr;

    invoke-direct {v0, p0, p1}, Ljavassist/compiler/ast/Expr;-><init>(ILjavassist/compiler/ast/ASTree;)V

    return-object v0
.end method

.method public static make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;
    .locals 2

    .line 45
    new-instance v0, Ljavassist/compiler/ast/Expr;

    new-instance v1, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v1, p2}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-direct {v0, p0, p1, v1}, Ljavassist/compiler/ast/Expr;-><init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljavassist/compiler/ast/Visitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 68
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atExpr(Ljavassist/compiler/ast/Expr;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 71
    iget v0, p0, Ljavassist/compiler/ast/Expr;->operatorId:I

    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    int-to-char v0, v0

    .line 73
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0x15e

    if-gt v1, v0, :cond_1

    const/16 v2, 0x173

    if-gt v0, v2, :cond_1

    .line 75
    sget-object v2, Ljavassist/compiler/ast/Expr;->opNames:[Ljava/lang/String;

    sub-int/2addr v0, v1

    aget-object v0, v2, v0

    return-object v0

    :cond_1
    const/16 v1, 0x143

    if-ne v0, v1, :cond_2

    const-string v0, "instanceof"

    return-object v0

    .line 79
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperator()I
    .locals 1

    .line 52
    iget v0, p0, Ljavassist/compiler/ast/Expr;->operatorId:I

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "op:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/compiler/ast/Expr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public oprand1()Ljavassist/compiler/ast/ASTree;
    .locals 1

    .line 56
    invoke-virtual {p0}, Ljavassist/compiler/ast/Expr;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    return-object v0
.end method

.method public oprand2()Ljavassist/compiler/ast/ASTree;
    .locals 1

    .line 62
    invoke-virtual {p0}, Ljavassist/compiler/ast/Expr;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTree;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    return-object v0
.end method

.method public setOperator(I)V
    .locals 0

    .line 54
    iput p1, p0, Ljavassist/compiler/ast/Expr;->operatorId:I

    return-void
.end method

.method public setOprand1(Ljavassist/compiler/ast/ASTree;)V
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Ljavassist/compiler/ast/Expr;->setLeft(Ljavassist/compiler/ast/ASTree;)V

    return-void
.end method

.method public setOprand2(Ljavassist/compiler/ast/ASTree;)V
    .locals 1

    .line 65
    invoke-virtual {p0}, Ljavassist/compiler/ast/Expr;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavassist/compiler/ast/ASTree;->setLeft(Ljavassist/compiler/ast/ASTree;)V

    return-void
.end method
