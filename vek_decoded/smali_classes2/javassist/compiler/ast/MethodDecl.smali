.class public Ljavassist/compiler/ast/MethodDecl;
.super Ljavassist/compiler/ast/ASTList;
.source "MethodDecl.java"


# static fields
.field public static final initName:Ljava/lang/String; = "<init>"


# direct methods
.method public constructor <init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

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

    .line 44
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atMethodDecl(Ljavassist/compiler/ast/MethodDecl;)V

    return-void
.end method

.method public getBody()Ljavassist/compiler/ast/Stmnt;
    .locals 1

    const/4 v0, 0x4

    .line 41
    invoke-virtual {p0, v0}, Ljavassist/compiler/ast/MethodDecl;->sublist(I)Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/Stmnt;

    return-object v0
.end method

.method public getModifiers()Ljavassist/compiler/ast/ASTList;
    .locals 1

    .line 33
    invoke-virtual {p0}, Ljavassist/compiler/ast/MethodDecl;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/ASTList;

    return-object v0
.end method

.method public getParams()Ljavassist/compiler/ast/ASTList;
    .locals 1

    const/4 v0, 0x2

    .line 37
    invoke-virtual {p0, v0}, Ljavassist/compiler/ast/MethodDecl;->sublist(I)Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/ASTList;

    return-object v0
.end method

.method public getReturn()Ljavassist/compiler/ast/Declarator;
    .locals 1

    .line 35
    invoke-virtual {p0}, Ljavassist/compiler/ast/MethodDecl;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/Declarator;

    return-object v0
.end method

.method public getThrows()Ljavassist/compiler/ast/ASTList;
    .locals 1

    const/4 v0, 0x3

    .line 39
    invoke-virtual {p0, v0}, Ljavassist/compiler/ast/MethodDecl;->sublist(I)Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/ASTList;

    return-object v0
.end method

.method public isConstructor()Z
    .locals 2

    .line 29
    invoke-virtual {p0}, Ljavassist/compiler/ast/MethodDecl;->getReturn()Ljavassist/compiler/ast/Declarator;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/compiler/ast/Declarator;->getVariable()Ljavassist/compiler/ast/Symbol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
