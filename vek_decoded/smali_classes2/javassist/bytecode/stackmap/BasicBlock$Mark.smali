.class Ljavassist/bytecode/stackmap/BasicBlock$Mark;
.super Ljava/lang/Object;
.source "BasicBlock.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/stackmap/BasicBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Mark"
.end annotation


# instance fields
.field alwaysJmp:Z

.field block:Ljavassist/bytecode/stackmap/BasicBlock;

.field catcher:Ljavassist/bytecode/stackmap/BasicBlock$Catch;

.field jump:[Ljavassist/bytecode/stackmap/BasicBlock;

.field position:I

.field size:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->position:I

    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    .line 107
    iput-object p1, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->jump:[Ljavassist/bytecode/stackmap/BasicBlock;

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->alwaysJmp:Z

    .line 109
    iput v0, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->size:I

    .line 110
    iput-object p1, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->catcher:Ljavassist/bytecode/stackmap/BasicBlock$Catch;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 114
    instance-of v0, p1, Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    if-eqz v0, :cond_0

    .line 115
    check-cast p1, Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    iget p1, p1, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->position:I

    .line 116
    iget v0, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->position:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method setJump([Ljavassist/bytecode/stackmap/BasicBlock;IZ)V
    .locals 0

    .line 123
    iput-object p1, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->jump:[Ljavassist/bytecode/stackmap/BasicBlock;

    .line 124
    iput p2, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->size:I

    .line 125
    iput-boolean p3, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->alwaysJmp:Z

    return-void
.end method
