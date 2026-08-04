.class public Ljavassist/bytecode/analysis/ControlFlow$Node;
.super Ljava/lang/Object;
.source "ControlFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/analysis/ControlFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# instance fields
.field private block:Ljavassist/bytecode/analysis/ControlFlow$Block;

.field private children:[Ljavassist/bytecode/analysis/ControlFlow$Node;

.field private parent:Ljavassist/bytecode/analysis/ControlFlow$Node;


# direct methods
.method constructor <init>(Ljavassist/bytecode/analysis/ControlFlow$Block;)V
    .locals 0

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p1, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    const/4 p1, 0x0

    .line 337
    iput-object p1, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    return-void
.end method

.method static synthetic access$100(Ljavassist/bytecode/analysis/ControlFlow$Node;)Ljavassist/bytecode/analysis/ControlFlow$Block;
    .locals 0

    .line 330
    iget-object p0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    return-object p0
.end method

.method static synthetic access$200([Ljavassist/bytecode/analysis/ControlFlow$Node;)V
    .locals 0

    .line 330
    invoke-static {p0}, Ljavassist/bytecode/analysis/ControlFlow$Node;->setChildren([Ljavassist/bytecode/analysis/ControlFlow$Node;)V

    return-void
.end method

.method private static getAncestor(Ljavassist/bytecode/analysis/ControlFlow$Node;Ljavassist/bytecode/analysis/ControlFlow$Node;[I)Ljavassist/bytecode/analysis/ControlFlow$Node;
    .locals 2

    :cond_0
    if-eq p0, p1, :cond_3

    .line 433
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    iget v0, v0, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    aget v0, p2, v0

    iget-object v1, p1, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    iget v1, v1, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    aget v1, p2, v1

    if-ge v0, v1, :cond_1

    .line 434
    iget-object p0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    goto :goto_0

    .line 436
    :cond_1
    iget-object p1, p1, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    :goto_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    :cond_2
    const/4 p0, 0x0

    :cond_3
    return-object p0
.end method

.method private static setChildren([Ljavassist/bytecode/analysis/ControlFlow$Node;)V
    .locals 8

    .line 446
    array-length v0, p0

    .line 447
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 449
    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    .line 452
    aget-object v4, p0, v3

    iget-object v4, v4, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    if-eqz v4, :cond_1

    .line 454
    iget-object v4, v4, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    iget v4, v4, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_3

    .line 458
    aget-object v4, p0, v3

    aget v5, v1, v3

    new-array v5, v5, [Ljavassist/bytecode/analysis/ControlFlow$Node;

    iput-object v5, v4, Ljavassist/bytecode/analysis/ControlFlow$Node;->children:[Ljavassist/bytecode/analysis/ControlFlow$Node;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_4

    .line 461
    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-ge v2, v0, :cond_6

    .line 464
    aget-object v3, p0, v2

    .line 465
    iget-object v4, v3, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    if-eqz v4, :cond_5

    .line 467
    iget-object v5, v4, Ljavassist/bytecode/analysis/ControlFlow$Node;->children:[Ljavassist/bytecode/analysis/ControlFlow$Node;

    iget-object v4, v4, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    iget v4, v4, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    aget v6, v1, v4

    add-int/lit8 v7, v6, 0x1

    aput v7, v1, v4

    aput-object v3, v5, v6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method


# virtual methods
.method public block()Ljavassist/bytecode/analysis/ControlFlow$Block;
    .locals 1

    .line 359
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    return-object v0
.end method

.method public child(I)Ljavassist/bytecode/analysis/ControlFlow$Node;
    .locals 1

    .line 376
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->children:[Ljavassist/bytecode/analysis/ControlFlow$Node;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public children()I
    .locals 1

    .line 369
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->children:[Ljavassist/bytecode/analysis/ControlFlow$Node;

    array-length v0, v0

    return v0
.end method

.method makeDepth1stTree(Ljavassist/bytecode/analysis/ControlFlow$Node;[ZI[ILjavassist/bytecode/analysis/ControlFlow$Access;)I
    .locals 8

    .line 384
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    iget v0, v0, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    .line 385
    aget-boolean v1, p2, v0

    if-eqz v1, :cond_0

    return p3

    :cond_0
    const/4 v1, 0x1

    .line 388
    aput-boolean v1, p2, v0

    .line 389
    iput-object p1, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    .line 390
    invoke-virtual {p5, p0}, Ljavassist/bytecode/analysis/ControlFlow$Access;->exits(Ljavassist/bytecode/analysis/ControlFlow$Node;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    move v5, p3

    .line 392
    :goto_0
    array-length p3, p1

    if-ge v1, p3, :cond_1

    .line 393
    aget-object p3, p1, v1

    invoke-virtual {p5, p3}, Ljavassist/bytecode/analysis/ControlFlow$Access;->node(Ljavassist/bytecode/stackmap/BasicBlock;)Ljavassist/bytecode/analysis/ControlFlow$Node;

    move-result-object v2

    move-object v3, p0

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    .line 394
    invoke-virtual/range {v2 .. v7}, Ljavassist/bytecode/analysis/ControlFlow$Node;->makeDepth1stTree(Ljavassist/bytecode/analysis/ControlFlow$Node;[ZI[ILjavassist/bytecode/analysis/ControlFlow$Access;)I

    move-result v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p3, v5

    :cond_2
    add-int/lit8 p1, p3, 0x1

    .line 397
    aput p3, p4, v0

    return p1
.end method

.method makeDominatorTree([Z[ILjavassist/bytecode/analysis/ControlFlow$Access;)Z
    .locals 6

    .line 402
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    iget v0, v0, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    .line 403
    aget-boolean v1, p1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    .line 406
    aput-boolean v1, p1, v0

    .line 408
    invoke-virtual {p3, p0}, Ljavassist/bytecode/analysis/ControlFlow$Access;->exits(Ljavassist/bytecode/analysis/ControlFlow$Node;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 410
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_3

    .line 411
    aget-object v5, v0, v3

    invoke-virtual {p3, v5}, Ljavassist/bytecode/analysis/ControlFlow$Access;->node(Ljavassist/bytecode/stackmap/BasicBlock;)Ljavassist/bytecode/analysis/ControlFlow$Node;

    move-result-object v5

    .line 412
    invoke-virtual {v5, p1, p2, p3}, Ljavassist/bytecode/analysis/ControlFlow$Node;->makeDominatorTree([Z[ILjavassist/bytecode/analysis/ControlFlow$Access;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 416
    :cond_3
    invoke-virtual {p3, p0}, Ljavassist/bytecode/analysis/ControlFlow$Access;->entrances(Ljavassist/bytecode/analysis/ControlFlow$Node;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 418
    :goto_1
    array-length v0, p1

    if-ge v2, v0, :cond_5

    .line 419
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    if-eqz v0, :cond_4

    .line 420
    aget-object v3, p1, v2

    invoke-virtual {p3, v3}, Ljavassist/bytecode/analysis/ControlFlow$Access;->node(Ljavassist/bytecode/stackmap/BasicBlock;)Ljavassist/bytecode/analysis/ControlFlow$Node;

    move-result-object v3

    invoke-static {v0, v3, p2}, Ljavassist/bytecode/analysis/ControlFlow$Node;->getAncestor(Ljavassist/bytecode/analysis/ControlFlow$Node;Ljavassist/bytecode/analysis/ControlFlow$Node;[I)Ljavassist/bytecode/analysis/ControlFlow$Node;

    move-result-object v0

    .line 421
    iget-object v3, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    if-eq v0, v3, :cond_4

    .line 422
    iput-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    const/4 v4, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return v4
.end method

.method public parent()Ljavassist/bytecode/analysis/ControlFlow$Node;
    .locals 1

    .line 364
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 344
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Node[pos="

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljavassist/bytecode/analysis/ControlFlow$Node;->block()Ljavassist/bytecode/analysis/ControlFlow$Block;

    move-result-object v2

    invoke-virtual {v2}, Ljavassist/bytecode/analysis/ControlFlow$Block;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", parent="

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    iget-object v1, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    if-nez v1, :cond_0

    const-string v1, "*"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljavassist/bytecode/analysis/ControlFlow$Node;->block()Ljavassist/bytecode/analysis/ControlFlow$Block;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/bytecode/analysis/ControlFlow$Block;->position()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", children{"

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 349
    :goto_1
    iget-object v2, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->children:[Ljavassist/bytecode/analysis/ControlFlow$Node;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 350
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljavassist/bytecode/analysis/ControlFlow$Node;->block()Ljavassist/bytecode/analysis/ControlFlow$Block;

    move-result-object v2

    invoke-virtual {v2}, Ljavassist/bytecode/analysis/ControlFlow$Block;->position()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "}]"

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
