.class public Ljavassist/compiler/ast/Symbol;
.super Ljavassist/compiler/ast/ASTree;
.source "Symbol.java"


# instance fields
.field protected identifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljavassist/compiler/ast/ASTree;-><init>()V

    .line 28
    iput-object p1, p0, Ljavassist/compiler/ast/Symbol;->identifier:Ljava/lang/String;

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

    .line 35
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atSymbol(Ljavassist/compiler/ast/Symbol;)V

    return-void
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Ljavassist/compiler/ast/Symbol;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Ljavassist/compiler/ast/Symbol;->identifier:Ljava/lang/String;

    return-object v0
.end method
