.class public final Ljavassist/compiler/SymbolTable;
.super Ljava/util/HashMap;
.source "SymbolTable.java"


# instance fields
.field private parent:Ljavassist/compiler/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0}, Ljavassist/compiler/SymbolTable;-><init>(Ljavassist/compiler/SymbolTable;)V

    return-void
.end method

.method public constructor <init>(Ljavassist/compiler/SymbolTable;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 29
    iput-object p1, p0, Ljavassist/compiler/SymbolTable;->parent:Ljavassist/compiler/SymbolTable;

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljavassist/compiler/ast/Declarator;)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Ljavassist/compiler/SymbolTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getParent()Ljavassist/compiler/SymbolTable;
    .locals 1

    .line 32
    iget-object v0, p0, Ljavassist/compiler/SymbolTable;->parent:Ljavassist/compiler/SymbolTable;

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Ljavassist/compiler/ast/Declarator;
    .locals 2

    .line 35
    invoke-virtual {p0, p1}, Ljavassist/compiler/SymbolTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/Declarator;

    if-nez v0, :cond_0

    .line 36
    iget-object v1, p0, Ljavassist/compiler/SymbolTable;->parent:Ljavassist/compiler/SymbolTable;

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v1, p1}, Ljavassist/compiler/SymbolTable;->lookup(Ljava/lang/String;)Ljavassist/compiler/ast/Declarator;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method
