.class Ljavassist/compiler/CodeGen$1;
.super Ljavassist/compiler/CodeGen$ReturnHook;
.source "CodeGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavassist/compiler/CodeGen;->atSyncStmnt(Ljavassist/compiler/ast/Stmnt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavassist/compiler/CodeGen;

.field final synthetic val$var:I


# direct methods
.method constructor <init>(Ljavassist/compiler/CodeGen;Ljavassist/compiler/CodeGen;I)V
    .locals 0

    .line 657
    iput-object p1, p0, Ljavassist/compiler/CodeGen$1;->this$0:Ljavassist/compiler/CodeGen;

    iput p3, p0, Ljavassist/compiler/CodeGen$1;->val$var:I

    invoke-direct {p0, p2}, Ljavassist/compiler/CodeGen$ReturnHook;-><init>(Ljavassist/compiler/CodeGen;)V

    return-void
.end method


# virtual methods
.method protected doit(Ljavassist/bytecode/Bytecode;I)Z
    .locals 0

    .line 659
    iget p2, p0, Ljavassist/compiler/CodeGen$1;->val$var:I

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    const/16 p2, 0xc3

    .line 660
    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    const/4 p1, 0x0

    return p1
.end method
