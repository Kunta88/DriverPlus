.class public Ljavassist/compiler/ast/CallExpr;
.super Ljavassist/compiler/ast/Expr;
.source "CallExpr.java"


# instance fields
.field private method:Ljavassist/compiler/MemberResolver$Method;


# direct methods
.method private constructor <init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V
    .locals 1

    const/16 v0, 0x43

    .line 30
    invoke-direct {p0, v0, p1, p2}, Ljavassist/compiler/ast/Expr;-><init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Ljavassist/compiler/ast/CallExpr;->method:Ljavassist/compiler/MemberResolver$Method;

    return-void
.end method

.method public static makeCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/CallExpr;
    .locals 2

    .line 43
    new-instance v0, Ljavassist/compiler/ast/CallExpr;

    new-instance v1, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v1, p1}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-direct {v0, p0, v1}, Ljavassist/compiler/ast/CallExpr;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

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

    .line 46
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atCallExpr(Ljavassist/compiler/ast/CallExpr;)V

    return-void
.end method

.method public getMethod()Ljavassist/compiler/MemberResolver$Method;
    .locals 1

    .line 39
    iget-object v0, p0, Ljavassist/compiler/ast/CallExpr;->method:Ljavassist/compiler/MemberResolver$Method;

    return-object v0
.end method

.method public setMethod(Ljavassist/compiler/MemberResolver$Method;)V
    .locals 0

    .line 35
    iput-object p1, p0, Ljavassist/compiler/ast/CallExpr;->method:Ljavassist/compiler/MemberResolver$Method;

    return-void
.end method
