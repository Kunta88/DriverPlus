.class public Ljavassist/compiler/ast/CondExpr;
.super Ljavassist/compiler/ast/ASTList;
.source "CondExpr.java"


# direct methods
.method public constructor <init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V
    .locals 2

    .line 26
    new-instance v0, Ljavassist/compiler/ast/ASTList;

    new-instance v1, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v1, p3}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-direct {v0, p2, v1}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    invoke-direct {p0, p1, v0}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    return-void
.end method


# virtual methods
.method public accept(Ljavassist/compiler/ast/Visitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 43
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atCondExpr(Ljavassist/compiler/ast/CondExpr;)V

    return-void
.end method

.method public condExpr()Ljavassist/compiler/ast/ASTree;
    .locals 1

    .line 29
    invoke-virtual {p0}, Ljavassist/compiler/ast/CondExpr;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    return-object v0
.end method

.method public elseExpr()Ljavassist/compiler/ast/ASTree;
    .locals 1

    .line 37
    invoke-virtual {p0}, Ljavassist/compiler/ast/CondExpr;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "?:"

    return-object v0
.end method

.method public setCond(Ljavassist/compiler/ast/ASTree;)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Ljavassist/compiler/ast/CondExpr;->setHead(Ljavassist/compiler/ast/ASTree;)V

    return-void
.end method

.method public setElse(Ljavassist/compiler/ast/ASTree;)V
    .locals 1

    .line 39
    invoke-virtual {p0}, Ljavassist/compiler/ast/CondExpr;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavassist/compiler/ast/ASTList;->setHead(Ljavassist/compiler/ast/ASTree;)V

    return-void
.end method

.method public setThen(Ljavassist/compiler/ast/ASTree;)V
    .locals 1

    .line 35
    invoke-virtual {p0}, Ljavassist/compiler/ast/CondExpr;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavassist/compiler/ast/ASTList;->setHead(Ljavassist/compiler/ast/ASTree;)V

    return-void
.end method

.method public thenExpr()Ljavassist/compiler/ast/ASTree;
    .locals 1

    .line 33
    invoke-virtual {p0}, Ljavassist/compiler/ast/CondExpr;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    return-object v0
.end method
