.class public Ljavassist/bytecode/analysis/ControlFlow$Block;
.super Ljavassist/bytecode/stackmap/BasicBlock;
.source "ControlFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/analysis/ControlFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Block"
.end annotation


# instance fields
.field public clientData:Ljava/lang/Object;

.field entrances:[Ljavassist/bytecode/analysis/ControlFlow$Block;

.field index:I

.field method:Ljavassist/bytecode/MethodInfo;


# direct methods
.method constructor <init>(ILjavassist/bytecode/MethodInfo;)V
    .locals 0

    .line 242
    invoke-direct {p0, p1}, Ljavassist/bytecode/stackmap/BasicBlock;-><init>(I)V

    const/4 p1, 0x0

    .line 235
    iput-object p1, p0, Ljavassist/bytecode/analysis/ControlFlow$Block;->clientData:Ljava/lang/Object;

    .line 243
    iput-object p2, p0, Ljavassist/bytecode/analysis/ControlFlow$Block;->method:Ljavassist/bytecode/MethodInfo;

    return-void
.end method


# virtual methods
.method public catchers()[Ljavassist/bytecode/analysis/ControlFlow$Catcher;
    .locals 3

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    iget-object v1, p0, Ljavassist/bytecode/analysis/ControlFlow$Block;->toCatch:Ljavassist/bytecode/stackmap/BasicBlock$Catch;

    :goto_0
    if-eqz v1, :cond_0

    .line 311
    new-instance v2, Ljavassist/bytecode/analysis/ControlFlow$Catcher;

    invoke-direct {v2, v1}, Ljavassist/bytecode/analysis/ControlFlow$Catcher;-><init>(Ljavassist/bytecode/stackmap/BasicBlock$Catch;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v1, v1, Ljavassist/bytecode/stackmap/BasicBlock$Catch;->next:Ljavassist/bytecode/stackmap/BasicBlock$Catch;

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljavassist/bytecode/analysis/ControlFlow$Catcher;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavassist/bytecode/analysis/ControlFlow$Catcher;

    check-cast v0, [Ljavassist/bytecode/analysis/ControlFlow$Catcher;

    return-object v0
.end method

.method public exit(I)Ljavassist/bytecode/analysis/ControlFlow$Block;
    .locals 1

    .line 301
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Block;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    aget-object p1, v0, p1

    check-cast p1, Ljavassist/bytecode/analysis/ControlFlow$Block;

    return-object p1
.end method

.method public exits()I
    .locals 1

    .line 293
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Block;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Block;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    array-length v0, v0

    :goto_0
    return v0
.end method

.method getExit()[Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 1

    .line 255
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Block;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    return-object v0
.end method

.method public incoming(I)Ljavassist/bytecode/analysis/ControlFlow$Block;
    .locals 1

    .line 286
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Block;->entrances:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public incomings()I
    .locals 1

    .line 280
    iget v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Block;->incoming:I

    return v0
.end method

.method public index()I
    .locals 1

    .line 264
    iget v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    return v0
.end method

.method public length()I
    .locals 1

    .line 275
    iget v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Block;->length:I

    return v0
.end method

.method public position()I
    .locals 1

    .line 270
    iget v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Block;->position:I

    return v0
.end method

.method protected toString2(Ljava/lang/StringBuffer;)V
    .locals 3

    .line 247
    invoke-super {p0, p1}, Ljavassist/bytecode/stackmap/BasicBlock;->toString2(Ljava/lang/StringBuffer;)V

    const-string v0, ", incomping{"

    .line 248
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 249
    :goto_0
    iget-object v1, p0, Ljavassist/bytecode/analysis/ControlFlow$Block;->entrances:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 250
    aget-object v1, v1, v0

    iget v1, v1, Ljavassist/bytecode/analysis/ControlFlow$Block;->position:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "}"

    .line 252
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
