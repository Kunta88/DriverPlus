.class public Ljavassist/compiler/ast/Declarator;
.super Ljavassist/compiler/ast/ASTList;
.source "Declarator.java"

# interfaces
.implements Ljavassist/compiler/TokenId;


# instance fields
.field protected arrayDim:I

.field protected localVar:I

.field protected qualifiedClass:Ljava/lang/String;

.field protected varType:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    .line 33
    iput p1, p0, Ljavassist/compiler/ast/Declarator;->varType:I

    .line 34
    iput p2, p0, Ljavassist/compiler/ast/Declarator;->arrayDim:I

    const/4 p1, -0x1

    .line 35
    iput p1, p0, Ljavassist/compiler/ast/Declarator;->localVar:I

    .line 36
    iput-object v0, p0, Ljavassist/compiler/ast/Declarator;->qualifiedClass:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IILjavassist/compiler/ast/Symbol;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    .line 52
    iput p1, p0, Ljavassist/compiler/ast/Declarator;->varType:I

    .line 53
    iput p3, p0, Ljavassist/compiler/ast/Declarator;->arrayDim:I

    .line 54
    iput p4, p0, Ljavassist/compiler/ast/Declarator;->localVar:I

    .line 55
    iput-object p2, p0, Ljavassist/compiler/ast/Declarator;->qualifiedClass:Ljava/lang/String;

    .line 56
    invoke-virtual {p0, p5}, Ljavassist/compiler/ast/Declarator;->setLeft(Ljavassist/compiler/ast/ASTree;)V

    .line 57
    invoke-static {p0, v0}, Ljavassist/compiler/ast/Declarator;->append(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;

    return-void
.end method

.method public constructor <init>(Ljavassist/compiler/ast/ASTList;I)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    const/16 v0, 0x133

    .line 41
    iput v0, p0, Ljavassist/compiler/ast/Declarator;->varType:I

    .line 42
    iput p2, p0, Ljavassist/compiler/ast/Declarator;->arrayDim:I

    const/4 p2, -0x1

    .line 43
    iput p2, p0, Ljavassist/compiler/ast/Declarator;->localVar:I

    const/16 p2, 0x2f

    .line 44
    invoke-static {p1, p2}, Ljavassist/compiler/ast/Declarator;->astToClassName(Ljavassist/compiler/ast/ASTList;C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/compiler/ast/Declarator;->qualifiedClass:Ljava/lang/String;

    return-void
.end method

.method public static astToClassName(Ljavassist/compiler/ast/ASTList;C)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    invoke-static {v0, p0, p1}, Ljavassist/compiler/ast/Declarator;->astToClassName(Ljava/lang/StringBuffer;Ljavassist/compiler/ast/ASTList;C)V

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static astToClassName(Ljava/lang/StringBuffer;Ljavassist/compiler/ast/ASTList;C)V
    .locals 2

    .line 115
    :goto_0
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 116
    instance-of v1, v0, Ljavassist/compiler/ast/Symbol;

    if-eqz v1, :cond_0

    .line 117
    check-cast v0, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 118
    :cond_0
    instance-of v1, v0, Ljavassist/compiler/ast/ASTList;

    if-eqz v1, :cond_1

    .line 119
    check-cast v0, Ljavassist/compiler/ast/ASTList;

    invoke-static {p0, v0, p2}, Ljavassist/compiler/ast/Declarator;->astToClassName(Ljava/lang/StringBuffer;Ljavassist/compiler/ast/ASTList;C)V

    .line 121
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 125
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public accept(Ljavassist/compiler/ast/Visitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 100
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atDeclarator(Ljavassist/compiler/ast/Declarator;)V

    return-void
.end method

.method public addArrayDim(I)V
    .locals 1

    .line 75
    iget v0, p0, Ljavassist/compiler/ast/Declarator;->arrayDim:I

    add-int/2addr v0, p1

    iput v0, p0, Ljavassist/compiler/ast/Declarator;->arrayDim:I

    return-void
.end method

.method public getArrayDim()I
    .locals 1

    .line 73
    iget v0, p0, Ljavassist/compiler/ast/Declarator;->arrayDim:I

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Ljavassist/compiler/ast/Declarator;->qualifiedClass:Ljava/lang/String;

    return-object v0
.end method

.method public getInitializer()Ljavassist/compiler/ast/ASTree;
    .locals 1

    .line 86
    invoke-virtual {p0}, Ljavassist/compiler/ast/Declarator;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalVar()I
    .locals 1

    .line 95
    iget v0, p0, Ljavassist/compiler/ast/Declarator;->localVar:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "decl"

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 71
    iget v0, p0, Ljavassist/compiler/ast/Declarator;->varType:I

    return v0
.end method

.method public getVariable()Ljavassist/compiler/ast/Symbol;
    .locals 1

    .line 81
    invoke-virtual {p0}, Ljavassist/compiler/ast/Declarator;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/Symbol;

    return-object v0
.end method

.method public make(Ljavassist/compiler/ast/Symbol;ILjavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Declarator;
    .locals 3

    .line 61
    new-instance v0, Ljavassist/compiler/ast/Declarator;

    iget v1, p0, Ljavassist/compiler/ast/Declarator;->varType:I

    iget v2, p0, Ljavassist/compiler/ast/Declarator;->arrayDim:I

    add-int/2addr v2, p2

    invoke-direct {v0, v1, v2}, Ljavassist/compiler/ast/Declarator;-><init>(II)V

    .line 62
    iget-object p2, p0, Ljavassist/compiler/ast/Declarator;->qualifiedClass:Ljava/lang/String;

    iput-object p2, v0, Ljavassist/compiler/ast/Declarator;->qualifiedClass:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, p1}, Ljavassist/compiler/ast/Declarator;->setLeft(Ljavassist/compiler/ast/ASTree;)V

    .line 64
    invoke-static {v0, p3}, Ljavassist/compiler/ast/Declarator;->append(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Ljavassist/compiler/ast/Declarator;->qualifiedClass:Ljava/lang/String;

    return-void
.end method

.method public setLocalVar(I)V
    .locals 0

    .line 93
    iput p1, p0, Ljavassist/compiler/ast/Declarator;->localVar:I

    return-void
.end method

.method public setVariable(Ljavassist/compiler/ast/Symbol;)V
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Ljavassist/compiler/ast/Declarator;->setLeft(Ljavassist/compiler/ast/ASTree;)V

    return-void
.end method
