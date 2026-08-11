.class public Ljavassist/bytecode/analysis/ControlFlow;
.super Ljava/lang/Object;
.source "ControlFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/analysis/ControlFlow$Catcher;,
        Ljavassist/bytecode/analysis/ControlFlow$Node;,
        Ljavassist/bytecode/analysis/ControlFlow$Access;,
        Ljavassist/bytecode/analysis/ControlFlow$Block;
    }
.end annotation


# instance fields
.field private basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

.field private clazz:Ljavassist/CtClass;

.field private frames:[Ljavassist/bytecode/analysis/Frame;

.field private methodInfo:Ljavassist/bytecode/MethodInfo;


# direct methods
.method public constructor <init>(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Ljavassist/bytecode/analysis/ControlFlow;->clazz:Ljavassist/CtClass;

    .line 64
    iput-object p2, p0, Ljavassist/bytecode/analysis/ControlFlow;->methodInfo:Ljavassist/bytecode/MethodInfo;

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Ljavassist/bytecode/analysis/ControlFlow;->frames:[Ljavassist/bytecode/analysis/Frame;

    .line 66
    new-instance p1, Ljavassist/bytecode/analysis/ControlFlow$1;

    invoke-direct {p1, p0}, Ljavassist/bytecode/analysis/ControlFlow$1;-><init>(Ljavassist/bytecode/analysis/ControlFlow;)V

    invoke-virtual {p1, p2}, Ljavassist/bytecode/analysis/ControlFlow$1;->make(Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object p1

    check-cast p1, [Ljavassist/bytecode/analysis/ControlFlow$Block;

    check-cast p1, [Ljavassist/bytecode/analysis/ControlFlow$Block;

    iput-object p1, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    .line 74
    array-length p1, p1

    .line 75
    new-array p2, p1, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 77
    iget-object v2, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    aget-object v2, v2, v1

    .line 78
    iput v1, v2, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    .line 79
    invoke-virtual {v2}, Ljavassist/bytecode/analysis/ControlFlow$Block;->incomings()I

    move-result v3

    new-array v3, v3, [Ljavassist/bytecode/analysis/ControlFlow$Block;

    iput-object v3, v2, Ljavassist/bytecode/analysis/ControlFlow$Block;->entrances:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    .line 80
    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    .line 84
    iget-object v2, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    .line 85
    :goto_2
    invoke-virtual {v2}, Ljavassist/bytecode/analysis/ControlFlow$Block;->exits()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 86
    invoke-virtual {v2, v3}, Ljavassist/bytecode/analysis/ControlFlow$Block;->exit(I)Ljavassist/bytecode/analysis/ControlFlow$Block;

    move-result-object v4

    .line 87
    iget-object v5, v4, Ljavassist/bytecode/analysis/ControlFlow$Block;->entrances:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    iget v4, v4, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    aget v6, p2, v4

    add-int/lit8 v7, v6, 0x1

    aput v7, p2, v4

    aput-object v2, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljavassist/CtMethod;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/analysis/ControlFlow;-><init>(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    return-void
.end method

.method static synthetic access$000(Ljavassist/bytecode/analysis/ControlFlow;)Ljavassist/bytecode/MethodInfo;
    .locals 0

    .line 46
    iget-object p0, p0, Ljavassist/bytecode/analysis/ControlFlow;->methodInfo:Ljavassist/bytecode/MethodInfo;

    return-object p0
.end method


# virtual methods
.method public basicBlocks()[Ljavassist/bytecode/analysis/ControlFlow$Block;
    .locals 1

    .line 96
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    return-object v0
.end method

.method public dominatorTree()[Ljavassist/bytecode/analysis/ControlFlow$Node;
    .locals 12

    .line 135
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 139
    :cond_0
    new-array v1, v0, [Ljavassist/bytecode/analysis/ControlFlow$Node;

    .line 140
    new-array v8, v0, [Z

    .line 141
    new-array v9, v0, [I

    const/4 v10, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 143
    new-instance v3, Ljavassist/bytecode/analysis/ControlFlow$Node;

    iget-object v4, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Ljavassist/bytecode/analysis/ControlFlow$Node;-><init>(Ljavassist/bytecode/analysis/ControlFlow$Block;)V

    aput-object v3, v1, v2

    .line 144
    aput-boolean v10, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    :cond_1
    new-instance v11, Ljavassist/bytecode/analysis/ControlFlow$2;

    invoke-direct {v11, p0, v1}, Ljavassist/bytecode/analysis/ControlFlow$2;-><init>(Ljavassist/bytecode/analysis/ControlFlow;[Ljavassist/bytecode/analysis/ControlFlow$Node;)V

    .line 151
    aget-object v2, v1, v10

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, v8

    move-object v6, v9

    move-object v7, v11

    invoke-virtual/range {v2 .. v7}, Ljavassist/bytecode/analysis/ControlFlow$Node;->makeDepth1stTree(Ljavassist/bytecode/analysis/ControlFlow$Node;[ZI[ILjavassist/bytecode/analysis/ControlFlow$Access;)I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 153
    aput-boolean v10, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 155
    :cond_2
    :goto_2
    aget-object v0, v1, v10

    invoke-virtual {v0, v8, v9, v11}, Ljavassist/bytecode/analysis/ControlFlow$Node;->makeDominatorTree([Z[ILjavassist/bytecode/analysis/ControlFlow$Access;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 158
    :cond_3
    invoke-static {v1}, Ljavassist/bytecode/analysis/ControlFlow$Node;->access$200([Ljavassist/bytecode/analysis/ControlFlow$Node;)V

    return-object v1
.end method

.method public frameAt(I)Ljavassist/bytecode/analysis/Frame;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow;->frames:[Ljavassist/bytecode/analysis/Frame;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljavassist/bytecode/analysis/Analyzer;

    invoke-direct {v0}, Ljavassist/bytecode/analysis/Analyzer;-><init>()V

    iget-object v1, p0, Ljavassist/bytecode/analysis/ControlFlow;->clazz:Ljavassist/CtClass;

    iget-object v2, p0, Ljavassist/bytecode/analysis/ControlFlow;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0, v1, v2}, Ljavassist/bytecode/analysis/Analyzer;->analyze(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/analysis/Frame;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow;->frames:[Ljavassist/bytecode/analysis/Frame;

    .line 111
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow;->frames:[Ljavassist/bytecode/analysis/Frame;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public postDominatorTree()[Ljavassist/bytecode/analysis/ControlFlow$Node;
    .locals 13

    .line 183
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 187
    :cond_0
    new-array v1, v0, [Ljavassist/bytecode/analysis/ControlFlow$Node;

    .line 188
    new-array v8, v0, [Z

    .line 189
    new-array v9, v0, [I

    const/4 v10, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 191
    new-instance v3, Ljavassist/bytecode/analysis/ControlFlow$Node;

    iget-object v4, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Ljavassist/bytecode/analysis/ControlFlow$Node;-><init>(Ljavassist/bytecode/analysis/ControlFlow$Block;)V

    aput-object v3, v1, v2

    .line 192
    aput-boolean v10, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    :cond_1
    new-instance v11, Ljavassist/bytecode/analysis/ControlFlow$3;

    invoke-direct {v11, p0, v1}, Ljavassist/bytecode/analysis/ControlFlow$3;-><init>(Ljavassist/bytecode/analysis/ControlFlow;[Ljavassist/bytecode/analysis/ControlFlow$Node;)V

    const/4 v5, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v0, :cond_3

    .line 202
    aget-object v2, v1, v12

    invoke-static {v2}, Ljavassist/bytecode/analysis/ControlFlow$Node;->access$100(Ljavassist/bytecode/analysis/ControlFlow$Node;)Ljavassist/bytecode/analysis/ControlFlow$Block;

    move-result-object v2

    invoke-virtual {v2}, Ljavassist/bytecode/analysis/ControlFlow$Block;->exits()I

    move-result v2

    if-nez v2, :cond_2

    .line 203
    aget-object v2, v1, v12

    const/4 v3, 0x0

    move-object v4, v8

    move-object v6, v9

    move-object v7, v11

    invoke-virtual/range {v2 .. v7}, Ljavassist/bytecode/analysis/ControlFlow$Node;->makeDepth1stTree(Ljavassist/bytecode/analysis/ControlFlow$Node;[ZI[ILjavassist/bytecode/analysis/ControlFlow$Access;)I

    move-result v5

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_4

    .line 206
    aput-boolean v10, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    if-ge v2, v0, :cond_6

    .line 212
    aget-object v4, v1, v2

    invoke-static {v4}, Ljavassist/bytecode/analysis/ControlFlow$Node;->access$100(Ljavassist/bytecode/analysis/ControlFlow$Node;)Ljavassist/bytecode/analysis/ControlFlow$Block;

    move-result-object v4

    invoke-virtual {v4}, Ljavassist/bytecode/analysis/ControlFlow$Block;->exits()I

    move-result v4

    if-nez v4, :cond_5

    .line 213
    aget-object v4, v1, v2

    invoke-virtual {v4, v8, v9, v11}, Ljavassist/bytecode/analysis/ControlFlow$Node;->makeDominatorTree([Z[ILjavassist/bytecode/analysis/ControlFlow$Access;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v3, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    if-nez v3, :cond_4

    .line 217
    invoke-static {v1}, Ljavassist/bytecode/analysis/ControlFlow$Node;->access$200([Ljavassist/bytecode/analysis/ControlFlow$Node;)V

    return-object v1
.end method
