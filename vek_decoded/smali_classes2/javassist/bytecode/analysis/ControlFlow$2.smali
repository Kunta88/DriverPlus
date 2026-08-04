.class Ljavassist/bytecode/analysis/ControlFlow$2;
.super Ljavassist/bytecode/analysis/ControlFlow$Access;
.source "ControlFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavassist/bytecode/analysis/ControlFlow;->dominatorTree()[Ljavassist/bytecode/analysis/ControlFlow$Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavassist/bytecode/analysis/ControlFlow;


# direct methods
.method constructor <init>(Ljavassist/bytecode/analysis/ControlFlow;[Ljavassist/bytecode/analysis/ControlFlow$Node;)V
    .locals 0

    .line 147
    iput-object p1, p0, Ljavassist/bytecode/analysis/ControlFlow$2;->this$0:Ljavassist/bytecode/analysis/ControlFlow;

    invoke-direct {p0, p2}, Ljavassist/bytecode/analysis/ControlFlow$Access;-><init>([Ljavassist/bytecode/analysis/ControlFlow$Node;)V

    return-void
.end method


# virtual methods
.method entrances(Ljavassist/bytecode/analysis/ControlFlow$Node;)[Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 0

    .line 149
    invoke-static {p1}, Ljavassist/bytecode/analysis/ControlFlow$Node;->access$100(Ljavassist/bytecode/analysis/ControlFlow$Node;)Ljavassist/bytecode/analysis/ControlFlow$Block;

    move-result-object p1

    iget-object p1, p1, Ljavassist/bytecode/analysis/ControlFlow$Block;->entrances:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    return-object p1
.end method

.method exits(Ljavassist/bytecode/analysis/ControlFlow$Node;)[Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 0

    .line 148
    invoke-static {p1}, Ljavassist/bytecode/analysis/ControlFlow$Node;->access$100(Ljavassist/bytecode/analysis/ControlFlow$Node;)Ljavassist/bytecode/analysis/ControlFlow$Block;

    move-result-object p1

    invoke-virtual {p1}, Ljavassist/bytecode/analysis/ControlFlow$Block;->getExit()[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object p1

    return-object p1
.end method
