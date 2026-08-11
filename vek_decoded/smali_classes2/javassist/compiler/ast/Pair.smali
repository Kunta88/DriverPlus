.class public Ljavassist/compiler/ast/Pair;
.super Ljavassist/compiler/ast/ASTree;
.source "Pair.java"


# instance fields
.field protected left:Ljavassist/compiler/ast/ASTree;

.field protected right:Ljavassist/compiler/ast/ASTree;


# direct methods
.method public constructor <init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljavassist/compiler/ast/ASTree;-><init>()V

    .line 29
    iput-object p1, p0, Ljavassist/compiler/ast/Pair;->left:Ljavassist/compiler/ast/ASTree;

    .line 30
    iput-object p2, p0, Ljavassist/compiler/ast/Pair;->right:Ljavassist/compiler/ast/ASTree;

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

    .line 33
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atPair(Ljavassist/compiler/ast/Pair;)V

    return-void
.end method

.method public getLeft()Ljavassist/compiler/ast/ASTree;
    .locals 1

    .line 45
    iget-object v0, p0, Ljavassist/compiler/ast/Pair;->left:Ljavassist/compiler/ast/ASTree;

    return-object v0
.end method

.method public getRight()Ljavassist/compiler/ast/ASTree;
    .locals 1

    .line 47
    iget-object v0, p0, Ljavassist/compiler/ast/Pair;->right:Ljavassist/compiler/ast/ASTree;

    return-object v0
.end method

.method public setLeft(Ljavassist/compiler/ast/ASTree;)V
    .locals 0

    .line 49
    iput-object p1, p0, Ljavassist/compiler/ast/Pair;->left:Ljavassist/compiler/ast/ASTree;

    return-void
.end method

.method public setRight(Ljavassist/compiler/ast/ASTree;)V
    .locals 0

    .line 51
    iput-object p1, p0, Ljavassist/compiler/ast/Pair;->right:Ljavassist/compiler/ast/ASTree;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 36
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "(<Pair> "

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    iget-object v1, p0, Ljavassist/compiler/ast/Pair;->left:Ljavassist/compiler/ast/ASTree;

    const-string v2, "<null>"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljavassist/compiler/ast/ASTree;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " . "

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    iget-object v1, p0, Ljavassist/compiler/ast/Pair;->right:Ljavassist/compiler/ast/ASTree;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljavassist/compiler/ast/ASTree;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
