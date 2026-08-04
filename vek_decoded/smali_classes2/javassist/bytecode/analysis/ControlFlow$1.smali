.class Ljavassist/bytecode/analysis/ControlFlow$1;
.super Ljavassist/bytecode/stackmap/BasicBlock$Maker;
.source "ControlFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavassist/bytecode/analysis/ControlFlow;-><init>(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavassist/bytecode/analysis/ControlFlow;


# direct methods
.method constructor <init>(Ljavassist/bytecode/analysis/ControlFlow;)V
    .locals 0

    .line 66
    iput-object p1, p0, Ljavassist/bytecode/analysis/ControlFlow$1;->this$0:Ljavassist/bytecode/analysis/ControlFlow;

    invoke-direct {p0}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;-><init>()V

    return-void
.end method


# virtual methods
.method protected makeArray(I)[Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 0

    .line 71
    new-array p1, p1, [Ljavassist/bytecode/analysis/ControlFlow$Block;

    return-object p1
.end method

.method protected makeBlock(I)Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 2

    .line 68
    new-instance v0, Ljavassist/bytecode/analysis/ControlFlow$Block;

    iget-object v1, p0, Ljavassist/bytecode/analysis/ControlFlow$1;->this$0:Ljavassist/bytecode/analysis/ControlFlow;

    invoke-static {v1}, Ljavassist/bytecode/analysis/ControlFlow;->access$000(Ljavassist/bytecode/analysis/ControlFlow;)Ljavassist/bytecode/MethodInfo;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavassist/bytecode/analysis/ControlFlow$Block;-><init>(ILjavassist/bytecode/MethodInfo;)V

    return-object v0
.end method
