.class Ljavassist/compiler/Javac$1;
.super Ljava/lang/Object;
.source "Javac.java"

# interfaces
.implements Ljavassist/compiler/ProceedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavassist/compiler/Javac;->recordProceed(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavassist/compiler/Javac;

.field final synthetic val$m:Ljava/lang/String;

.field final synthetic val$texpr:Ljavassist/compiler/ast/ASTree;


# direct methods
.method constructor <init>(Ljavassist/compiler/Javac;Ljava/lang/String;Ljavassist/compiler/ast/ASTree;)V
    .locals 0

    .line 439
    iput-object p1, p0, Ljavassist/compiler/Javac$1;->this$0:Ljavassist/compiler/Javac;

    iput-object p2, p0, Ljavassist/compiler/Javac$1;->val$m:Ljava/lang/String;

    iput-object p3, p0, Ljavassist/compiler/Javac$1;->val$texpr:Ljavassist/compiler/ast/ASTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doit(Ljavassist/compiler/JvstCodeGen;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/ast/ASTList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 443
    new-instance p2, Ljavassist/compiler/ast/Member;

    iget-object v0, p0, Ljavassist/compiler/Javac$1;->val$m:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljavassist/compiler/ast/Member;-><init>(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Ljavassist/compiler/Javac$1;->val$texpr:Ljavassist/compiler/ast/ASTree;

    if-eqz v0, :cond_0

    const/16 v1, 0x2e

    .line 445
    invoke-static {v1, v0, p2}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object p2

    .line 447
    :cond_0
    invoke-static {p2, p3}, Ljavassist/compiler/ast/CallExpr;->makeCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/CallExpr;

    move-result-object p2

    .line 448
    invoke-virtual {p1, p2}, Ljavassist/compiler/JvstCodeGen;->compileExpr(Ljavassist/compiler/ast/ASTree;)V

    .line 449
    invoke-virtual {p1}, Ljavassist/compiler/JvstCodeGen;->addNullIfVoid()V

    return-void
.end method

.method public setReturnType(Ljavassist/compiler/JvstTypeChecker;Ljavassist/compiler/ast/ASTList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 455
    new-instance v0, Ljavassist/compiler/ast/Member;

    iget-object v1, p0, Ljavassist/compiler/Javac$1;->val$m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavassist/compiler/ast/Member;-><init>(Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Ljavassist/compiler/Javac$1;->val$texpr:Ljavassist/compiler/ast/ASTree;

    if-eqz v1, :cond_0

    const/16 v2, 0x2e

    .line 457
    invoke-static {v2, v1, v0}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v0

    .line 459
    :cond_0
    invoke-static {v0, p2}, Ljavassist/compiler/ast/CallExpr;->makeCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/CallExpr;

    move-result-object p2

    .line 460
    invoke-virtual {p2, p1}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 461
    invoke-virtual {p1}, Ljavassist/compiler/JvstTypeChecker;->addNullIfVoid()V

    return-void
.end method
