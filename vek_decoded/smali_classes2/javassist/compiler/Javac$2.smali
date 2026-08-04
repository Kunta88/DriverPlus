.class Ljavassist/compiler/Javac$2;
.super Ljava/lang/Object;
.source "Javac.java"

# interfaces
.implements Ljavassist/compiler/ProceedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavassist/compiler/Javac;->recordStaticProceed(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavassist/compiler/Javac;

.field final synthetic val$c:Ljava/lang/String;

.field final synthetic val$m:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljavassist/compiler/Javac;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 483
    iput-object p1, p0, Ljavassist/compiler/Javac$2;->this$0:Ljavassist/compiler/Javac;

    iput-object p2, p0, Ljavassist/compiler/Javac$2;->val$c:Ljava/lang/String;

    iput-object p3, p0, Ljavassist/compiler/Javac$2;->val$m:Ljava/lang/String;

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

    .line 487
    new-instance p2, Ljavassist/compiler/ast/Symbol;

    iget-object v0, p0, Ljavassist/compiler/Javac$2;->val$c:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljavassist/compiler/ast/Member;

    iget-object v1, p0, Ljavassist/compiler/Javac$2;->val$m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavassist/compiler/ast/Member;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x23

    invoke-static {v1, p2, v0}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object p2

    .line 489
    invoke-static {p2, p3}, Ljavassist/compiler/ast/CallExpr;->makeCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/CallExpr;

    move-result-object p2

    .line 490
    invoke-virtual {p1, p2}, Ljavassist/compiler/JvstCodeGen;->compileExpr(Ljavassist/compiler/ast/ASTree;)V

    .line 491
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

    .line 497
    new-instance v0, Ljavassist/compiler/ast/Symbol;

    iget-object v1, p0, Ljavassist/compiler/Javac$2;->val$c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljavassist/compiler/ast/Member;

    iget-object v2, p0, Ljavassist/compiler/Javac$2;->val$m:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljavassist/compiler/ast/Member;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x23

    invoke-static {v2, v0, v1}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v0

    .line 499
    invoke-static {v0, p2}, Ljavassist/compiler/ast/CallExpr;->makeCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/CallExpr;

    move-result-object p2

    .line 500
    invoke-virtual {p2, p1}, Ljavassist/compiler/ast/Expr;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 501
    invoke-virtual {p1}, Ljavassist/compiler/JvstTypeChecker;->addNullIfVoid()V

    return-void
.end method
