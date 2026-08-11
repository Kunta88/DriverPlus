.class public Ljavassist/compiler/Javac$CtFieldWithInit;
.super Ljavassist/CtField;
.source "Javac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/compiler/Javac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CtFieldWithInit"
.end annotation


# instance fields
.field private init:Ljavassist/compiler/ast/ASTree;


# direct methods
.method constructor <init>(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 117
    invoke-direct {p0, p1, p2, p3}, Ljavassist/CtField;-><init>(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)V

    const/4 p1, 0x0

    .line 118
    iput-object p1, p0, Ljavassist/compiler/Javac$CtFieldWithInit;->init:Ljavassist/compiler/ast/ASTree;

    return-void
.end method


# virtual methods
.method protected getInitAST()Ljavassist/compiler/ast/ASTree;
    .locals 1

    .line 124
    iget-object v0, p0, Ljavassist/compiler/Javac$CtFieldWithInit;->init:Ljavassist/compiler/ast/ASTree;

    return-object v0
.end method

.method protected setInit(Ljavassist/compiler/ast/ASTree;)V
    .locals 0

    .line 121
    iput-object p1, p0, Ljavassist/compiler/Javac$CtFieldWithInit;->init:Ljavassist/compiler/ast/ASTree;

    return-void
.end method
