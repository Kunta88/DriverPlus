.class public Ljavassist/bytecode/stackmap/MapMaker;
.super Ljavassist/bytecode/stackmap/Tracer;
.source "MapMaker.java"


# direct methods
.method public constructor <init>(Ljavassist/ClassPool;Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/CodeAttribute;)V
    .locals 6

    .line 123
    invoke-virtual {p2}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    invoke-virtual {p3}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v3

    invoke-virtual {p3}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v4

    invoke-virtual {p2}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljavassist/bytecode/stackmap/TypedBlock;->getRetType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/stackmap/Tracer;-><init>(Ljavassist/ClassPool;Ljavassist/bytecode/ConstPool;IILjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljavassist/bytecode/stackmap/MapMaker;Z)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;-><init>(Ljavassist/bytecode/stackmap/Tracer;Z)V

    return-void
.end method

.method private static diffSize([Ljavassist/bytecode/stackmap/TypeData;II)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_1

    add-int/lit8 v1, p1, 0x1

    .line 458
    aget-object p1, p0, p1

    add-int/lit8 v0, v0, 0x1

    .line 460
    sget-object v2, Ljavassist/bytecode/stackmap/MapMaker;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    if-eq p1, v2, :cond_0

    invoke-virtual {p1}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static evalExpected(Ljavassist/ClassPool;I[Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 299
    aget-object v1, p2, v0

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {v1, p0}, Ljavassist/bytecode/stackmap/TypeData;->evalExpectedType(Ljavassist/ClassPool;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fillStackMap(II[I[Ljavassist/bytecode/stackmap/TypeData;)[I
    .locals 7

    add-int v0, p2, p1

    .line 398
    invoke-static {p4, p2, v0}, Ljavassist/bytecode/stackmap/MapMaker;->diffSize([Ljavassist/bytecode/stackmap/TypeData;II)I

    move-result v0

    .line 399
    iget-object v1, p0, Ljavassist/bytecode/stackmap/MapMaker;->cpool:Ljavassist/bytecode/ConstPool;

    .line 400
    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, p1, :cond_2

    add-int v5, p2, v3

    .line 403
    aget-object v5, p4, v5

    .line 404
    sget-object v6, Ljavassist/bytecode/stackmap/MapMaker;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    if-ne v5, v6, :cond_0

    .line 405
    aput v2, v0, v4

    .line 406
    aput v2, p3, v4

    goto :goto_1

    .line 409
    :cond_0
    invoke-virtual {v5}, Ljavassist/bytecode/stackmap/TypeData;->getTypeTag()I

    move-result v6

    aput v6, v0, v4

    .line 410
    invoke-virtual {v5, v1}, Ljavassist/bytecode/stackmap/TypeData;->getTypeData(Ljavassist/bytecode/ConstPool;)I

    move-result v6

    aput v6, p3, v4

    .line 411
    invoke-virtual {v5}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private fixParamTypes(Ljavassist/bytecode/stackmap/TypedBlock;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 156
    iget-object p1, p1, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 157
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 159
    aget-object v2, p1, v1

    .line 160
    instance-of v3, v2, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    if-eqz v3, :cond_0

    .line 164
    invoke-virtual {v2}, Ljavassist/bytecode/stackmap/TypeData;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljavassist/bytecode/stackmap/MapMaker;->classPool:Ljavassist/ClassPool;

    invoke-static {v2, v3, v4}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljavassist/bytecode/stackmap/TypeData;Ljava/lang/String;Ljavassist/ClassPool;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isTarget(Ljavassist/bytecode/stackmap/TypedBlock;Ljavassist/bytecode/stackmap/TypedBlock;)Z
    .locals 1

    .line 338
    iget p1, p1, Ljavassist/bytecode/stackmap/TypedBlock;->incoming:I

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    return v0

    :cond_0
    if-ge p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 344
    :cond_1
    iget-boolean p1, p2, Ljavassist/bytecode/stackmap/TypedBlock;->stop:Z

    return p1
.end method

.method public static make(Ljavassist/ClassPool;Ljavassist/bytecode/MethodInfo;)Ljavassist/bytecode/StackMapTable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 88
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x1

    .line 92
    invoke-static {p1, v0, v2}, Ljavassist/bytecode/stackmap/TypedBlock;->makeBlocks(Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/CodeAttribute;Z)[Ljavassist/bytecode/stackmap/TypedBlock;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    .line 96
    :cond_1
    new-instance v1, Ljavassist/bytecode/stackmap/MapMaker;

    invoke-direct {v1, p0, p1, v0}, Ljavassist/bytecode/stackmap/MapMaker;-><init>(Ljavassist/ClassPool;Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/CodeAttribute;)V

    .line 97
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getCode()[B

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljavassist/bytecode/stackmap/MapMaker;->make([Ljavassist/bytecode/stackmap/TypedBlock;[B)V

    .line 98
    invoke-virtual {v1, v2}, Ljavassist/bytecode/stackmap/MapMaker;->toStackMap([Ljavassist/bytecode/stackmap/TypedBlock;)Ljavassist/bytecode/StackMapTable;

    move-result-object p0

    return-object p0
.end method

.method private make([BLjavassist/bytecode/stackmap/TypedBlock;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 174
    iget-object v0, p2, Ljavassist/bytecode/stackmap/TypedBlock;->toCatch:Ljavassist/bytecode/stackmap/BasicBlock$Catch;

    :goto_0
    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/stackmap/MapMaker;->traceException([BLjavassist/bytecode/stackmap/BasicBlock$Catch;)V

    .line 177
    iget-object v0, v0, Ljavassist/bytecode/stackmap/BasicBlock$Catch;->next:Ljavassist/bytecode/stackmap/BasicBlock$Catch;

    goto :goto_0

    .line 180
    :cond_0
    iget v0, p2, Ljavassist/bytecode/stackmap/TypedBlock;->position:I

    .line 181
    iget v1, p2, Ljavassist/bytecode/stackmap/TypedBlock;->length:I

    add-int/2addr v1, v0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 183
    invoke-virtual {p0, v0, p1}, Ljavassist/bytecode/stackmap/MapMaker;->doOpcode(I[B)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 185
    :cond_1
    iget-object v0, p2, Ljavassist/bytecode/stackmap/TypedBlock;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 186
    :goto_2
    iget-object v1, p2, Ljavassist/bytecode/stackmap/TypedBlock;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 187
    iget-object v1, p2, Ljavassist/bytecode/stackmap/TypedBlock;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    aget-object v1, v1, v0

    check-cast v1, Ljavassist/bytecode/stackmap/TypedBlock;

    .line 188
    invoke-virtual {v1}, Ljavassist/bytecode/stackmap/TypedBlock;->alreadySet()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 189
    invoke-direct {p0, v1, v3}, Ljavassist/bytecode/stackmap/MapMaker;->mergeMap(Ljavassist/bytecode/stackmap/TypedBlock;Z)V

    goto :goto_3

    .line 191
    :cond_2
    invoke-direct {p0, v1}, Ljavassist/bytecode/stackmap/MapMaker;->recordStackMap(Ljavassist/bytecode/stackmap/TypedBlock;)V

    .line 192
    new-instance v2, Ljavassist/bytecode/stackmap/MapMaker;

    invoke-direct {v2, p0, v3}, Ljavassist/bytecode/stackmap/MapMaker;-><init>(Ljavassist/bytecode/stackmap/MapMaker;Z)V

    .line 193
    invoke-direct {v2, p1, v1}, Ljavassist/bytecode/stackmap/MapMaker;->make([BLjavassist/bytecode/stackmap/TypedBlock;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static make2(Ljavassist/ClassPool;Ljavassist/bytecode/MethodInfo;)Ljavassist/bytecode/StackMap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x1

    .line 113
    invoke-static {p1, v0, v2}, Ljavassist/bytecode/stackmap/TypedBlock;->makeBlocks(Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/CodeAttribute;Z)[Ljavassist/bytecode/stackmap/TypedBlock;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    .line 117
    :cond_1
    new-instance v1, Ljavassist/bytecode/stackmap/MapMaker;

    invoke-direct {v1, p0, p1, v0}, Ljavassist/bytecode/stackmap/MapMaker;-><init>(Ljavassist/ClassPool;Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/CodeAttribute;)V

    .line 118
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getCode()[B

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljavassist/bytecode/stackmap/MapMaker;->make([Ljavassist/bytecode/stackmap/TypedBlock;[B)V

    .line 119
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Ljavassist/bytecode/stackmap/MapMaker;->toStackMap2(Ljavassist/bytecode/ConstPool;[Ljavassist/bytecode/stackmap/TypedBlock;)Ljavassist/bytecode/StackMap;

    move-result-object p0

    return-object p0
.end method

.method private merge(Ljavassist/bytecode/stackmap/TypeData;Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 4

    .line 236
    sget-object v0, Ljavassist/bytecode/stackmap/MapMaker;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    invoke-virtual {p1}, Ljavassist/bytecode/stackmap/TypeData;->isObjectType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 239
    :goto_0
    sget-object v3, Ljavassist/bytecode/stackmap/MapMaker;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    if-eq p2, v3, :cond_1

    invoke-virtual {p2}, Ljavassist/bytecode/stackmap/TypeData;->isObjectType()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 243
    invoke-virtual {p2, p1}, Ljavassist/bytecode/stackmap/TypeData;->merge(Ljavassist/bytecode/stackmap/TypeData;)V

    :cond_2
    return-void
.end method

.method private mergeMap(Ljavassist/bytecode/stackmap/TypedBlock;Z)V
    .locals 6

    .line 219
    iget-object v0, p1, Ljavassist/bytecode/stackmap/TypedBlock;->inputs:[Z

    .line 220
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 222
    aget-boolean v4, v0, v3

    if-eqz v4, :cond_0

    .line 223
    iget-object v4, p0, Ljavassist/bytecode/stackmap/MapMaker;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v4, v4, v3

    iget-object v5, p1, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v5, v5, v3

    invoke-direct {p0, v4, v5}, Ljavassist/bytecode/stackmap/MapMaker;->merge(Ljavassist/bytecode/stackmap/TypeData;Ljavassist/bytecode/stackmap/TypeData;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 226
    iget p2, p0, Ljavassist/bytecode/stackmap/MapMaker;->stackTop:I

    :goto_1
    if-ge v2, p2, :cond_2

    .line 228
    iget-object v0, p0, Ljavassist/bytecode/stackmap/MapMaker;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v0, v0, v2

    iget-object v1, p1, Ljavassist/bytecode/stackmap/TypedBlock;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v1, v1, v2

    invoke-direct {p0, v0, v1}, Ljavassist/bytecode/stackmap/MapMaker;->merge(Ljavassist/bytecode/stackmap/TypeData;Ljavassist/bytecode/stackmap/TypeData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private recordStackMap(Ljavassist/bytecode/stackmap/TypedBlock;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Ljavassist/bytecode/stackmap/MapMaker;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    array-length v0, v0

    new-array v0, v0, [Ljavassist/bytecode/stackmap/TypeData;

    .line 250
    iget v1, p0, Ljavassist/bytecode/stackmap/MapMaker;->stackTop:I

    .line 251
    iget-object v2, p0, Ljavassist/bytecode/stackmap/MapMaker;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    invoke-static {v1, v2, v0}, Ljavassist/bytecode/stackmap/MapMaker;->copyFrom(I[Ljavassist/bytecode/stackmap/TypeData;[Ljavassist/bytecode/stackmap/TypeData;)I

    .line 252
    invoke-direct {p0, p1, v1, v0}, Ljavassist/bytecode/stackmap/MapMaker;->recordStackMap0(Ljavassist/bytecode/stackmap/TypedBlock;I[Ljavassist/bytecode/stackmap/TypeData;)V

    return-void
.end method

.method private recordStackMap(Ljavassist/bytecode/stackmap/TypedBlock;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p2, "java.lang.Throwable"

    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/stackmap/MapMaker;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object p2

    .line 264
    :goto_0
    iget-object v0, p0, Ljavassist/bytecode/stackmap/MapMaker;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    array-length v0, v0

    new-array v0, v0, [Ljavassist/bytecode/stackmap/TypeData;

    const/4 v1, 0x0

    .line 265
    new-instance v2, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-direct {v2, p2}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 p2, 0x1

    .line 267
    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/MapMaker;->recordStackMap0(Ljavassist/bytecode/stackmap/TypedBlock;I[Ljavassist/bytecode/stackmap/TypeData;)V

    return-void
.end method

.method private recordStackMap0(Ljavassist/bytecode/stackmap/TypedBlock;I[Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Ljavassist/bytecode/stackmap/MapMaker;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    array-length v0, v0

    .line 274
    new-array v1, v0, [Ljavassist/bytecode/stackmap/TypeData;

    .line 275
    iget-object v2, p0, Ljavassist/bytecode/stackmap/MapMaker;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    invoke-static {v0, v2, v1}, Ljavassist/bytecode/stackmap/MapMaker;->copyFrom(I[Ljavassist/bytecode/stackmap/TypeData;[Ljavassist/bytecode/stackmap/TypeData;)I

    move-result v2

    .line 277
    iget-object v3, p1, Ljavassist/bytecode/stackmap/TypedBlock;->inputs:[Z

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 279
    aget-boolean v5, v3, v4

    if-nez v5, :cond_0

    .line 280
    sget-object v5, Ljavassist/bytecode/stackmap/MapMaker;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v5, v1, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 282
    :cond_1
    invoke-virtual {p1, p2, p3, v2, v1}, Ljavassist/bytecode/stackmap/TypedBlock;->setStackMap(I[Ljavassist/bytecode/stackmap/TypeData;I[Ljavassist/bytecode/stackmap/TypeData;)V

    return-void
.end method

.method private static stackMapDiff(I[Ljavassist/bytecode/stackmap/TypeData;I[Ljavassist/bytecode/stackmap/TypeData;)I
    .locals 3

    sub-int v0, p2, p0

    if-lez v0, :cond_0

    move v1, p0

    goto :goto_0

    :cond_0
    move v1, p2

    .line 431
    :goto_0
    invoke-static {p1, p3, v1}, Ljavassist/bytecode/stackmap/MapMaker;->stackMapEq([Ljavassist/bytecode/stackmap/TypeData;[Ljavassist/bytecode/stackmap/TypeData;I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-lez v0, :cond_1

    .line 433
    invoke-static {p3, v1, p2}, Ljavassist/bytecode/stackmap/MapMaker;->diffSize([Ljavassist/bytecode/stackmap/TypeData;II)I

    move-result p0

    return p0

    .line 435
    :cond_1
    invoke-static {p1, v1, p0}, Ljavassist/bytecode/stackmap/MapMaker;->diffSize([Ljavassist/bytecode/stackmap/TypeData;II)I

    move-result p0

    neg-int p0, p0

    return p0

    :cond_2
    const/16 p0, -0x64

    return p0
.end method

.method private static stackMapEq([Ljavassist/bytecode/stackmap/TypeData;[Ljavassist/bytecode/stackmap/TypeData;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 442
    aget-object v2, p0, v1

    .line 443
    sget-object v3, Ljavassist/bytecode/stackmap/MapMaker;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    if-ne v2, v3, :cond_0

    .line 444
    aget-object v2, p1, v1

    sget-object v3, Ljavassist/bytecode/stackmap/MapMaker;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    if-eq v2, v3, :cond_1

    return v0

    .line 448
    :cond_0
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljavassist/bytecode/stackmap/TypeData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private toStackMapBody(Ljavassist/bytecode/StackMapTable$Writer;Ljavassist/bytecode/stackmap/TypedBlock;IILjavassist/bytecode/stackmap/TypedBlock;)V
    .locals 6

    .line 352
    iget v0, p2, Ljavassist/bytecode/stackmap/TypedBlock;->stackTop:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-nez p3, :cond_0

    .line 355
    invoke-virtual {p1, p4}, Ljavassist/bytecode/StackMapTable$Writer;->sameFrame(I)V

    return-void

    :cond_0
    if-gez p3, :cond_1

    const/4 v2, -0x3

    if-lt p3, v2, :cond_1

    neg-int p2, p3

    .line 359
    invoke-virtual {p1, p4, p2}, Ljavassist/bytecode/StackMapTable$Writer;->chopFrame(II)V

    return-void

    :cond_1
    if-lez p3, :cond_5

    const/4 v2, 0x3

    if-gt p3, v2, :cond_5

    .line 363
    new-array p3, p3, [I

    .line 364
    iget v0, p2, Ljavassist/bytecode/stackmap/TypedBlock;->numLocals:I

    iget v1, p5, Ljavassist/bytecode/stackmap/TypedBlock;->numLocals:I

    sub-int/2addr v0, v1

    iget p5, p5, Ljavassist/bytecode/stackmap/TypedBlock;->numLocals:I

    iget-object p2, p2, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, v0, p5, p3, p2}, Ljavassist/bytecode/stackmap/MapMaker;->fillStackMap(II[I[Ljavassist/bytecode/stackmap/TypeData;)[I

    move-result-object p2

    .line 367
    invoke-virtual {p1, p4, p2, p3}, Ljavassist/bytecode/StackMapTable$Writer;->appendFrame(I[I[I)V

    return-void

    :cond_2
    const/4 p5, 0x1

    if-ne v0, p5, :cond_4

    if-nez p3, :cond_4

    .line 372
    iget-object p2, p2, Ljavassist/bytecode/stackmap/TypedBlock;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object p2, p2, v1

    .line 373
    sget-object p3, Ljavassist/bytecode/stackmap/MapMaker;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    if-ne p2, p3, :cond_3

    .line 374
    invoke-virtual {p1, p4, v1, v1}, Ljavassist/bytecode/StackMapTable$Writer;->sameLocals(III)V

    goto :goto_0

    .line 376
    :cond_3
    invoke-virtual {p2}, Ljavassist/bytecode/stackmap/TypeData;->getTypeTag()I

    move-result p3

    iget-object p5, p0, Ljavassist/bytecode/stackmap/MapMaker;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {p2, p5}, Ljavassist/bytecode/stackmap/TypeData;->getTypeData(Ljavassist/bytecode/ConstPool;)I

    move-result p2

    invoke-virtual {p1, p4, p3, p2}, Ljavassist/bytecode/StackMapTable$Writer;->sameLocals(III)V

    :goto_0
    return-void

    :cond_4
    const/4 p5, 0x2

    if-ne v0, p5, :cond_5

    if-nez p3, :cond_5

    .line 381
    iget-object p3, p2, Ljavassist/bytecode/stackmap/TypedBlock;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object p3, p3, v1

    .line 382
    sget-object p5, Ljavassist/bytecode/stackmap/MapMaker;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    if-eq p3, p5, :cond_5

    invoke-virtual {p3}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result p5

    if-eqz p5, :cond_5

    .line 384
    invoke-virtual {p3}, Ljavassist/bytecode/stackmap/TypeData;->getTypeTag()I

    move-result p2

    iget-object p5, p0, Ljavassist/bytecode/stackmap/MapMaker;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {p3, p5}, Ljavassist/bytecode/stackmap/TypeData;->getTypeData(Ljavassist/bytecode/ConstPool;)I

    move-result p3

    invoke-virtual {p1, p4, p2, p3}, Ljavassist/bytecode/StackMapTable$Writer;->sameLocals(III)V

    return-void

    .line 390
    :cond_5
    new-array v5, v0, [I

    .line 391
    iget-object p3, p2, Ljavassist/bytecode/stackmap/TypedBlock;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, v0, v1, v5, p3}, Ljavassist/bytecode/stackmap/MapMaker;->fillStackMap(II[I[Ljavassist/bytecode/stackmap/TypeData;)[I

    move-result-object v4

    .line 392
    iget p3, p2, Ljavassist/bytecode/stackmap/TypedBlock;->numLocals:I

    new-array v3, p3, [I

    .line 393
    iget p3, p2, Ljavassist/bytecode/stackmap/TypedBlock;->numLocals:I

    iget-object p2, p2, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p3, v1, v3, p2}, Ljavassist/bytecode/stackmap/MapMaker;->fillStackMap(II[I[Ljavassist/bytecode/stackmap/TypeData;)[I

    move-result-object v2

    move-object v0, p1

    move v1, p4

    .line 394
    invoke-virtual/range {v0 .. v5}, Ljavassist/bytecode/StackMapTable$Writer;->fullFrame(I[I[I[I[I)V

    return-void
.end method

.method private traceException([BLjavassist/bytecode/stackmap/BasicBlock$Catch;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 202
    iget-object v0, p2, Ljavassist/bytecode/stackmap/BasicBlock$Catch;->body:Ljavassist/bytecode/stackmap/BasicBlock;

    check-cast v0, Ljavassist/bytecode/stackmap/TypedBlock;

    .line 203
    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypedBlock;->alreadySet()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 204
    invoke-direct {p0, v0, v2}, Ljavassist/bytecode/stackmap/MapMaker;->mergeMap(Ljavassist/bytecode/stackmap/TypedBlock;Z)V

    goto :goto_0

    .line 206
    :cond_0
    iget p2, p2, Ljavassist/bytecode/stackmap/BasicBlock$Catch;->typeIndex:I

    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/stackmap/MapMaker;->recordStackMap(Ljavassist/bytecode/stackmap/TypedBlock;I)V

    .line 207
    new-instance p2, Ljavassist/bytecode/stackmap/MapMaker;

    invoke-direct {p2, p0, v2}, Ljavassist/bytecode/stackmap/MapMaker;-><init>(Ljavassist/bytecode/stackmap/MapMaker;Z)V

    .line 212
    iget-object v1, p2, Ljavassist/bytecode/stackmap/MapMaker;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget-object v3, v0, Ljavassist/bytecode/stackmap/TypedBlock;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljavassist/bytecode/stackmap/TypeData;->getSelf()Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v1, 0x1

    .line 213
    iput v1, p2, Ljavassist/bytecode/stackmap/MapMaker;->stackTop:I

    .line 214
    invoke-direct {p2, p1, v0}, Ljavassist/bytecode/stackmap/MapMaker;->make([BLjavassist/bytecode/stackmap/TypedBlock;)V

    :goto_0
    return-void
.end method

.method private writeStackFrame(Ljavassist/bytecode/StackMap$Writer;Ljavassist/bytecode/ConstPool;ILjavassist/bytecode/stackmap/TypedBlock;)V
    .locals 1

    .line 500
    invoke-virtual {p1, p3}, Ljavassist/bytecode/StackMap$Writer;->write16bit(I)V

    .line 501
    iget-object p3, p4, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v0, p4, Ljavassist/bytecode/stackmap/TypedBlock;->numLocals:I

    invoke-direct {p0, p1, p2, p3, v0}, Ljavassist/bytecode/stackmap/MapMaker;->writeVerifyTypeInfo(Ljavassist/bytecode/StackMap$Writer;Ljavassist/bytecode/ConstPool;[Ljavassist/bytecode/stackmap/TypeData;I)V

    .line 502
    iget-object p3, p4, Ljavassist/bytecode/stackmap/TypedBlock;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p4, p4, Ljavassist/bytecode/stackmap/TypedBlock;->stackTop:I

    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/bytecode/stackmap/MapMaker;->writeVerifyTypeInfo(Ljavassist/bytecode/StackMap$Writer;Ljavassist/bytecode/ConstPool;[Ljavassist/bytecode/stackmap/TypeData;I)V

    return-void
.end method

.method private writeVerifyTypeInfo(Ljavassist/bytecode/StackMap$Writer;Ljavassist/bytecode/ConstPool;[Ljavassist/bytecode/stackmap/TypeData;I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p4, :cond_1

    .line 508
    aget-object v3, p3, v1

    if-eqz v3, :cond_0

    .line 509
    invoke-virtual {v3}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sub-int v1, p4, v2

    .line 515
    invoke-virtual {p1, v1}, Ljavassist/bytecode/StackMap$Writer;->write16bit(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p4, :cond_4

    .line 517
    aget-object v2, p3, v1

    .line 518
    sget-object v3, Ljavassist/bytecode/stackmap/MapMaker;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    if-ne v2, v3, :cond_2

    .line 519
    invoke-virtual {p1, v0, v0}, Ljavassist/bytecode/StackMap$Writer;->writeVerifyTypeInfo(II)V

    goto :goto_2

    .line 521
    :cond_2
    invoke-virtual {v2}, Ljavassist/bytecode/stackmap/TypeData;->getTypeTag()I

    move-result v3

    invoke-virtual {v2, p2}, Ljavassist/bytecode/stackmap/TypeData;->getTypeData(Ljavassist/bytecode/ConstPool;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljavassist/bytecode/StackMap$Writer;->writeVerifyTypeInfo(II)V

    .line 522
    invoke-virtual {v2}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method evalExpected(Ljavassist/bytecode/stackmap/TypedBlock;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Ljavassist/bytecode/stackmap/MapMaker;->classPool:Ljavassist/ClassPool;

    .line 289
    iget v1, p1, Ljavassist/bytecode/stackmap/TypedBlock;->stackTop:I

    iget-object v2, p1, Ljavassist/bytecode/stackmap/TypedBlock;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    invoke-static {v0, v1, v2}, Ljavassist/bytecode/stackmap/MapMaker;->evalExpected(Ljavassist/ClassPool;I[Ljavassist/bytecode/stackmap/TypeData;)V

    .line 290
    iget-object p1, p1, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    if-eqz p1, :cond_0

    .line 292
    array-length v1, p1

    invoke-static {v0, v1, p1}, Ljavassist/bytecode/stackmap/MapMaker;->evalExpected(Ljavassist/ClassPool;I[Ljavassist/bytecode/stackmap/TypeData;)V

    :cond_0
    return-void
.end method

.method make([Ljavassist/bytecode/stackmap/TypedBlock;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const/4 v0, 0x0

    .line 138
    aget-object v1, p1, v0

    .line 139
    invoke-direct {p0, v1}, Ljavassist/bytecode/stackmap/MapMaker;->fixParamTypes(Ljavassist/bytecode/stackmap/TypedBlock;)V

    .line 140
    iget-object v2, v1, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 141
    array-length v3, v2

    iget-object v4, p0, Ljavassist/bytecode/stackmap/MapMaker;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    invoke-static {v3, v2, v4}, Ljavassist/bytecode/stackmap/MapMaker;->copyFrom(I[Ljavassist/bytecode/stackmap/TypeData;[Ljavassist/bytecode/stackmap/TypeData;)I

    .line 142
    invoke-direct {p0, p2, v1}, Ljavassist/bytecode/stackmap/MapMaker;->make([BLjavassist/bytecode/stackmap/TypedBlock;)V

    .line 144
    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_0

    .line 146
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljavassist/bytecode/stackmap/MapMaker;->evalExpected(Ljavassist/bytecode/stackmap/TypedBlock;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toStackMap([Ljavassist/bytecode/stackmap/TypedBlock;)Ljavassist/bytecode/StackMapTable;
    .locals 11

    .line 308
    new-instance v6, Ljavassist/bytecode/StackMapTable$Writer;

    const/16 v0, 0x20

    invoke-direct {v6, v0}, Ljavassist/bytecode/StackMapTable$Writer;-><init>(I)V

    .line 309
    array-length v7, p1

    const/4 v0, 0x0

    .line 310
    aget-object v1, p1, v0

    .line 311
    iget v2, v1, Ljavassist/bytecode/stackmap/TypedBlock;->length:I

    .line 312
    iget v3, v1, Ljavassist/bytecode/stackmap/TypedBlock;->incoming:I

    if-lez v3, :cond_0

    .line 313
    invoke-virtual {v6, v0}, Ljavassist/bytecode/StackMapTable$Writer;->sameFrame(I)V

    add-int/lit8 v2, v2, -0x1

    :cond_0
    const/4 v8, 0x1

    move-object v5, v1

    move v4, v2

    const/4 v9, 0x1

    :goto_0
    if-ge v9, v7, :cond_2

    .line 318
    aget-object v10, p1, v9

    add-int/lit8 v0, v9, -0x1

    .line 319
    aget-object v0, p1, v0

    invoke-direct {p0, v10, v0}, Ljavassist/bytecode/stackmap/MapMaker;->isTarget(Ljavassist/bytecode/stackmap/TypedBlock;Ljavassist/bytecode/stackmap/TypedBlock;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {v10}, Ljavassist/bytecode/stackmap/TypedBlock;->resetNumLocals()V

    .line 321
    iget v0, v5, Ljavassist/bytecode/stackmap/TypedBlock;->numLocals:I

    iget-object v1, v5, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, v10, Ljavassist/bytecode/stackmap/TypedBlock;->numLocals:I

    iget-object v3, v10, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    invoke-static {v0, v1, v2, v3}, Ljavassist/bytecode/stackmap/MapMaker;->stackMapDiff(I[Ljavassist/bytecode/stackmap/TypeData;I[Ljavassist/bytecode/stackmap/TypeData;)I

    move-result v3

    move-object v0, p0

    move-object v1, v6

    move-object v2, v10

    .line 323
    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/stackmap/MapMaker;->toStackMapBody(Ljavassist/bytecode/StackMapTable$Writer;Ljavassist/bytecode/stackmap/TypedBlock;IILjavassist/bytecode/stackmap/TypedBlock;)V

    .line 324
    iget v0, v10, Ljavassist/bytecode/stackmap/TypedBlock;->length:I

    sub-int/2addr v0, v8

    move v4, v0

    move-object v5, v10

    goto :goto_1

    .line 328
    :cond_1
    iget v0, v10, Ljavassist/bytecode/stackmap/TypedBlock;->length:I

    add-int/2addr v4, v0

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 331
    :cond_2
    iget-object p1, p0, Ljavassist/bytecode/stackmap/MapMaker;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v6, p1}, Ljavassist/bytecode/StackMapTable$Writer;->toStackMapTable(Ljavassist/bytecode/ConstPool;)Ljavassist/bytecode/StackMapTable;

    move-result-object p1

    return-object p1
.end method

.method public toStackMap2(Ljavassist/bytecode/ConstPool;[Ljavassist/bytecode/stackmap/TypedBlock;)Ljavassist/bytecode/StackMap;
    .locals 8

    .line 470
    new-instance v0, Ljavassist/bytecode/StackMap$Writer;

    invoke-direct {v0}, Ljavassist/bytecode/StackMap$Writer;-><init>()V

    .line 471
    array-length v1, p2

    .line 472
    new-array v2, v1, [Z

    const/4 v3, 0x0

    .line 473
    aget-object v4, p2, v3

    .line 476
    iget v4, v4, Ljavassist/bytecode/stackmap/TypedBlock;->incoming:I

    const/4 v5, 0x1

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    aput-boolean v4, v2, v3

    .line 478
    aget-boolean v4, v2, v3

    :goto_1
    if-ge v5, v1, :cond_2

    .line 480
    aget-object v6, p2, v5

    add-int/lit8 v7, v5, -0x1

    .line 481
    aget-object v7, p2, v7

    invoke-direct {p0, v6, v7}, Ljavassist/bytecode/stackmap/MapMaker;->isTarget(Ljavassist/bytecode/stackmap/TypedBlock;Ljavassist/bytecode/stackmap/TypedBlock;)Z

    move-result v7

    aput-boolean v7, v2, v5

    if-eqz v7, :cond_1

    .line 482
    invoke-virtual {v6}, Ljavassist/bytecode/stackmap/TypedBlock;->resetNumLocals()V

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 491
    :cond_3
    invoke-virtual {v0, v4}, Ljavassist/bytecode/StackMap$Writer;->write16bit(I)V

    :goto_2
    if-ge v3, v1, :cond_5

    .line 493
    aget-boolean v4, v2, v3

    if-eqz v4, :cond_4

    .line 494
    aget-object v4, p2, v3

    iget v4, v4, Ljavassist/bytecode/stackmap/TypedBlock;->position:I

    aget-object v5, p2, v3

    invoke-direct {p0, v0, p1, v4, v5}, Ljavassist/bytecode/stackmap/MapMaker;->writeStackFrame(Ljavassist/bytecode/StackMap$Writer;Ljavassist/bytecode/ConstPool;ILjavassist/bytecode/stackmap/TypedBlock;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 496
    :cond_5
    invoke-virtual {v0, p1}, Ljavassist/bytecode/StackMap$Writer;->toStackMap(Ljavassist/bytecode/ConstPool;)Ljavassist/bytecode/StackMap;

    move-result-object p1

    return-object p1
.end method
