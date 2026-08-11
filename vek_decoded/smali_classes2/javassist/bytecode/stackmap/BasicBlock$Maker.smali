.class public Ljavassist/bytecode/stackmap/BasicBlock$Maker;
.super Ljava/lang/Object;
.source "BasicBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/stackmap/BasicBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Maker"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addCatchers([Ljavassist/bytecode/stackmap/BasicBlock;Ljavassist/bytecode/ExceptionTable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 381
    :cond_0
    invoke-virtual {p2}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    .line 383
    invoke-virtual {p2, v0}, Ljavassist/bytecode/ExceptionTable;->handlerPc(I)I

    move-result v1

    invoke-static {p1, v1}, Ljavassist/bytecode/stackmap/BasicBlock;->find([Ljavassist/bytecode/stackmap/BasicBlock;I)Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v1

    .line 384
    invoke-virtual {p2, v0}, Ljavassist/bytecode/ExceptionTable;->startPc(I)I

    move-result v2

    .line 385
    invoke-virtual {p2, v0}, Ljavassist/bytecode/ExceptionTable;->endPc(I)I

    move-result v3

    .line 386
    invoke-virtual {p2, v0}, Ljavassist/bytecode/ExceptionTable;->catchType(I)I

    move-result v4

    .line 387
    iget v5, v1, Ljavassist/bytecode/stackmap/BasicBlock;->incoming:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v1, Ljavassist/bytecode/stackmap/BasicBlock;->incoming:I

    const/4 v5, 0x0

    .line 388
    :goto_0
    array-length v6, p1

    if-ge v5, v6, :cond_1

    .line 389
    aget-object v6, p1, v5

    .line 390
    iget v7, v6, Ljavassist/bytecode/stackmap/BasicBlock;->position:I

    if-gt v2, v7, :cond_2

    if-ge v7, v3, :cond_2

    .line 392
    new-instance v7, Ljavassist/bytecode/stackmap/BasicBlock$Catch;

    iget-object v8, v6, Ljavassist/bytecode/stackmap/BasicBlock;->toCatch:Ljavassist/bytecode/stackmap/BasicBlock$Catch;

    invoke-direct {v7, v1, v4, v8}, Ljavassist/bytecode/stackmap/BasicBlock$Catch;-><init>(Ljavassist/bytecode/stackmap/BasicBlock;ILjavassist/bytecode/stackmap/BasicBlock$Catch;)V

    iput-object v7, v6, Ljavassist/bytecode/stackmap/BasicBlock;->toCatch:Ljavassist/bytecode/stackmap/BasicBlock$Catch;

    .line 393
    iget v6, v1, Ljavassist/bytecode/stackmap/BasicBlock;->incoming:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Ljavassist/bytecode/stackmap/BasicBlock;->incoming:I

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static getBBlock(Ljavassist/bytecode/stackmap/BasicBlock$Mark;)Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 2

    .line 365
    iget-object v0, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    if-eqz v0, :cond_0

    .line 366
    iget v1, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->size:I

    if-lez v1, :cond_0

    .line 367
    iget-object v1, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->jump:[Ljavassist/bytecode/stackmap/BasicBlock;

    iput-object v1, v0, Ljavassist/bytecode/stackmap/BasicBlock;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    .line 368
    iget v1, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->size:I

    iput v1, v0, Ljavassist/bytecode/stackmap/BasicBlock;->length:I

    .line 369
    iget-boolean p0, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->alwaysJmp:Z

    iput-boolean p0, v0, Ljavassist/bytecode/stackmap/BasicBlock;->stop:Z

    :cond_0
    return-object v0
.end method

.method private makeArray(Ljavassist/bytecode/stackmap/BasicBlock;)[Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 2

    const/4 v0, 0x1

    .line 142
    invoke-virtual {p0, v0}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeArray(I)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v0

    const/4 v1, 0x0

    .line 143
    aput-object p1, v0, v1

    return-object v0
.end method

.method private makeArray(Ljavassist/bytecode/stackmap/BasicBlock;Ljavassist/bytecode/stackmap/BasicBlock;)[Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 2

    const/4 v0, 0x2

    .line 148
    invoke-virtual {p0, v0}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeArray(I)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v0

    const/4 v1, 0x0

    .line 149
    aput-object p1, v0, v1

    const/4 p1, 0x1

    .line 150
    aput-object p2, v0, p1

    return-object v0
.end method

.method private makeBlocks(Ljava/util/HashMap;)[Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 9

    .line 310
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    new-array p1, p1, [Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    check-cast p1, [Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    .line 312
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 316
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    aget-object v1, p1, v3

    iget v1, v1, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->position:I

    if-nez v1, :cond_0

    aget-object v1, p1, v3

    iget-object v1, v1, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    if-eqz v1, :cond_0

    .line 317
    aget-object v1, p1, v3

    invoke-static {v1}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->getBBlock(Ljavassist/bytecode/stackmap/BasicBlock$Mark;)Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v1

    const/4 v3, 0x1

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {p0, v3}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeBlock(I)Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v1

    .line 321
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_5

    add-int/lit8 v4, v3, 0x1

    .line 323
    aget-object v3, p1, v3

    .line 324
    invoke-static {v3}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->getBBlock(Ljavassist/bytecode/stackmap/BasicBlock$Mark;)Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v5

    if-nez v5, :cond_2

    .line 327
    iget v5, v1, Ljavassist/bytecode/stackmap/BasicBlock;->length:I

    if-lez v5, :cond_1

    .line 329
    iget v5, v1, Ljavassist/bytecode/stackmap/BasicBlock;->position:I

    iget v1, v1, Ljavassist/bytecode/stackmap/BasicBlock;->length:I

    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeBlock(I)Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v1

    .line 330
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_1
    iget v5, v3, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->position:I

    iget v6, v3, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->size:I

    add-int/2addr v5, v6

    iget v6, v1, Ljavassist/bytecode/stackmap/BasicBlock;->position:I

    sub-int/2addr v5, v6

    iput v5, v1, Ljavassist/bytecode/stackmap/BasicBlock;->length:I

    .line 334
    iget-object v5, v3, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->jump:[Ljavassist/bytecode/stackmap/BasicBlock;

    iput-object v5, v1, Ljavassist/bytecode/stackmap/BasicBlock;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    .line 335
    iget-boolean v3, v3, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->alwaysJmp:Z

    iput-boolean v3, v1, Ljavassist/bytecode/stackmap/BasicBlock;->stop:Z

    goto :goto_3

    .line 339
    :cond_2
    iget v6, v1, Ljavassist/bytecode/stackmap/BasicBlock;->length:I

    if-nez v6, :cond_3

    .line 340
    iget v3, v3, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->position:I

    iget v6, v1, Ljavassist/bytecode/stackmap/BasicBlock;->position:I

    sub-int/2addr v3, v6

    iput v3, v1, Ljavassist/bytecode/stackmap/BasicBlock;->length:I

    .line 341
    iget v3, v5, Ljavassist/bytecode/stackmap/BasicBlock;->incoming:I

    add-int/2addr v3, v2

    iput v3, v5, Ljavassist/bytecode/stackmap/BasicBlock;->incoming:I

    .line 342
    invoke-direct {p0, v5}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeArray(Ljavassist/bytecode/stackmap/BasicBlock;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v3

    iput-object v3, v1, Ljavassist/bytecode/stackmap/BasicBlock;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    goto :goto_2

    .line 346
    :cond_3
    iget v6, v1, Ljavassist/bytecode/stackmap/BasicBlock;->position:I

    .line 347
    iget v7, v1, Ljavassist/bytecode/stackmap/BasicBlock;->length:I

    add-int/2addr v7, v6

    iget v8, v3, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->position:I

    if-ge v7, v8, :cond_4

    .line 348
    iget v1, v1, Ljavassist/bytecode/stackmap/BasicBlock;->length:I

    add-int/2addr v1, v6

    invoke-virtual {p0, v1}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeBlock(I)Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v1

    .line 349
    iget v3, v3, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->position:I

    sub-int/2addr v3, v6

    iput v3, v1, Ljavassist/bytecode/stackmap/BasicBlock;->length:I

    .line 352
    invoke-direct {p0, v5}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeArray(Ljavassist/bytecode/stackmap/BasicBlock;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v3

    iput-object v3, v1, Ljavassist/bytecode/stackmap/BasicBlock;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    .line 356
    :cond_4
    :goto_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v5

    :goto_3
    move v3, v4

    goto :goto_1

    .line 361
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeArray(I)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljavassist/bytecode/stackmap/BasicBlock;

    check-cast p1, [Ljavassist/bytecode/stackmap/BasicBlock;

    return-object p1
.end method

.method private makeGoto(Ljava/util/HashMap;III)V
    .locals 6

    .line 292
    invoke-direct {p0, p1, p3}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/HashMap;I)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    move-result-object p3

    .line 293
    iget-object p3, p3, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    invoke-direct {p0, p3}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeArray(Ljavassist/bytecode/stackmap/BasicBlock;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    .line 294
    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/HashMap;I[Ljavassist/bytecode/stackmap/BasicBlock;IZ)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    return-void
.end method

.method private makeMark(Ljava/util/HashMap;I)Ljavassist/bytecode/stackmap/BasicBlock$Mark;
    .locals 1

    const/4 v0, 0x1

    .line 176
    invoke-direct {p0, p1, p2, v0, v0}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark0(Ljava/util/HashMap;IZZ)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    move-result-object p1

    return-object p1
.end method

.method private makeMark(Ljava/util/HashMap;I[Ljavassist/bytecode/stackmap/BasicBlock;IZ)Ljavassist/bytecode/stackmap/BasicBlock$Mark;
    .locals 1

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, p1, p2, v0, v0}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark0(Ljava/util/HashMap;IZZ)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    move-result-object p1

    .line 185
    invoke-virtual {p1, p3, p4, p5}, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->setJump([Ljavassist/bytecode/stackmap/BasicBlock;IZ)V

    return-object p1
.end method

.method private makeMark0(Ljava/util/HashMap;IZZ)Ljavassist/bytecode/stackmap/BasicBlock$Mark;
    .locals 2

    .line 191
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 192
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    if-nez v1, :cond_0

    .line 194
    new-instance v1, Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    invoke-direct {v1, p2}, Ljavassist/bytecode/stackmap/BasicBlock$Mark;-><init>(I)V

    .line 195
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_2

    .line 199
    iget-object p1, v1, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    if-nez p1, :cond_1

    .line 200
    invoke-virtual {p0, p2}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeBlock(I)Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object p1

    iput-object p1, v1, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    :cond_1
    if-eqz p4, :cond_2

    .line 203
    iget-object p1, v1, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    iget p2, p1, Ljavassist/bytecode/stackmap/BasicBlock;->incoming:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Ljavassist/bytecode/stackmap/BasicBlock;->incoming:I

    :cond_2
    return-object v1
.end method

.method private makeMarks(Ljavassist/bytecode/CodeIterator;IILjavassist/bytecode/ExceptionTable;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 213
    invoke-virtual {p1}, Ljavassist/bytecode/CodeIterator;->begin()V

    .line 214
    invoke-virtual {p1, p2}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 215
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 216
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    .line 217
    invoke-virtual {p1}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v3

    if-lt v3, p3, :cond_1

    goto/16 :goto_4

    .line 221
    :cond_1
    invoke-virtual {p1, v3}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    const/16 v4, 0x99

    if-gt v4, v0, :cond_2

    const/16 v4, 0xa6

    if-le v0, v4, :cond_c

    :cond_2
    const/16 v4, 0xc6

    if-eq v0, v4, :cond_c

    const/16 v4, 0xc7

    if-ne v0, v4, :cond_3

    goto/16 :goto_3

    :cond_3
    const/16 v4, 0xa7

    if-gt v4, v0, :cond_6

    const/16 v4, 0xab

    if-gt v0, v4, :cond_6

    const/4 v4, 0x3

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    and-int/lit8 v0, v3, -0x4

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v4, v0, 0x4

    .line 257
    invoke-virtual {p1, v4}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    .line 258
    invoke-virtual {p0, v5}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeArray(I)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v5

    .line 259
    invoke-virtual {p1, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v6

    add-int/2addr v6, v3

    invoke-direct {p0, p2, v6}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/HashMap;I)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    move-result-object v6

    iget-object v6, v6, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    aput-object v6, v5, v1

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x4

    :goto_1
    if-ge v0, v4, :cond_4

    add-int/lit8 v1, v2, 0x1

    .line 264
    invoke-virtual {p1, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v6

    add-int/2addr v6, v3

    invoke-direct {p0, p2, v6}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/HashMap;I)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    move-result-object v6

    iget-object v6, v6, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    aput-object v6, v5, v2

    add-int/lit8 v0, v0, 0x8

    move v2, v1

    goto :goto_1

    :cond_4
    sub-int/2addr v4, v3

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p2

    move v2, v3

    move-object v3, v5

    move v5, v6

    .line 267
    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/HashMap;I[Ljavassist/bytecode/stackmap/BasicBlock;IZ)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    goto :goto_0

    :pswitch_1
    and-int/lit8 v0, v3, -0x4

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v4, v0, 0x4

    .line 241
    invoke-virtual {p1, v4}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v4

    add-int/lit8 v5, v0, 0x8

    .line 242
    invoke-virtual {p1, v5}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v5

    sub-int/2addr v5, v4

    add-int/2addr v5, v2

    add-int/lit8 v4, v5, 0x1

    .line 244
    invoke-virtual {p0, v4}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeArray(I)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v4

    .line 245
    invoke-virtual {p1, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v6

    add-int/2addr v6, v3

    invoke-direct {p0, p2, v6}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/HashMap;I)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    move-result-object v6

    iget-object v6, v6, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    aput-object v6, v4, v1

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v0

    :goto_2
    if-ge v0, v5, :cond_5

    add-int/lit8 v1, v2, 0x1

    .line 250
    invoke-virtual {p1, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v6

    add-int/2addr v6, v3

    invoke-direct {p0, p2, v6}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/HashMap;I)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    move-result-object v6

    iget-object v6, v6, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    aput-object v6, v4, v2

    add-int/lit8 v0, v0, 0x4

    move v2, v1

    goto :goto_2

    :cond_5
    sub-int/2addr v5, v3

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p2

    move v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    .line 253
    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/HashMap;I[Ljavassist/bytecode/stackmap/BasicBlock;IZ)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    goto/16 :goto_0

    :pswitch_2
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p2

    move v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    .line 237
    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/HashMap;I[Ljavassist/bytecode/stackmap/BasicBlock;IZ)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    goto/16 :goto_0

    :pswitch_3
    add-int/lit8 v0, v3, 0x1

    .line 234
    invoke-virtual {p1, v0}, Ljavassist/bytecode/CodeIterator;->s16bitAt(I)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p0, p2, v3, v0, v4}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeJsr(Ljava/util/HashMap;III)V

    goto/16 :goto_0

    :pswitch_4
    add-int/lit8 v0, v3, 0x1

    .line 231
    invoke-virtual {p1, v0}, Ljavassist/bytecode/CodeIterator;->s16bitAt(I)I

    move-result v0

    add-int/2addr v0, v3

    invoke-direct {p0, p2, v3, v0, v4}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeGoto(Ljava/util/HashMap;III)V

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xac

    if-gt v1, v0, :cond_7

    const/16 v1, 0xb1

    if-le v0, v1, :cond_8

    :cond_7
    const/16 v1, 0xbf

    if-ne v0, v1, :cond_9

    :cond_8
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p2

    move v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    .line 271
    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/HashMap;I[Ljavassist/bytecode/stackmap/BasicBlock;IZ)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xc8

    const/4 v2, 0x5

    if-ne v0, v1, :cond_a

    add-int/lit8 v0, v3, 0x1

    .line 273
    invoke-virtual {p1, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v0

    add-int/2addr v0, v3

    invoke-direct {p0, p2, v3, v0, v2}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeGoto(Ljava/util/HashMap;III)V

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xc9

    if-ne v0, v1, :cond_b

    add-int/lit8 v0, v3, 0x1

    .line 275
    invoke-virtual {p1, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p0, p2, v3, v0, v2}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeJsr(Ljava/util/HashMap;III)V

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xc4

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v3, 0x1

    .line 276
    invoke-virtual {p1, v0}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p2

    move v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    .line 277
    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/HashMap;I[Ljavassist/bytecode/stackmap/BasicBlock;IZ)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    goto/16 :goto_0

    :cond_c
    :goto_3
    add-int/lit8 v0, v3, 0x1

    .line 224
    invoke-virtual {p1, v0}, Ljavassist/bytecode/CodeIterator;->s16bitAt(I)I

    move-result v0

    add-int/2addr v0, v3

    invoke-direct {p0, p2, v0}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/HashMap;I)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    move-result-object v0

    add-int/lit8 v1, v3, 0x3

    .line 225
    invoke-direct {p0, p2, v1}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/HashMap;I)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    move-result-object v1

    .line 226
    iget-object v0, v0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    iget-object v1, v1, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    invoke-direct {p0, v0, v1}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeArray(Ljavassist/bytecode/stackmap/BasicBlock;Ljavassist/bytecode/stackmap/BasicBlock;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/HashMap;I[Ljavassist/bytecode/stackmap/BasicBlock;IZ)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    goto/16 :goto_0

    :cond_d
    :goto_4
    if-eqz p4, :cond_e

    .line 281
    invoke-virtual {p4}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result p1

    :goto_5
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_e

    .line 283
    invoke-virtual {p4, p1}, Ljavassist/bytecode/ExceptionTable;->startPc(I)I

    move-result p3

    invoke-direct {p0, p2, p3, v2, v1}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark0(Ljava/util/HashMap;IZZ)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    .line 284
    invoke-virtual {p4, p1}, Ljavassist/bytecode/ExceptionTable;->handlerPc(I)I

    move-result p3

    invoke-direct {p0, p2, p3}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/HashMap;I)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    goto :goto_5

    :cond_e
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0xa7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public make(Ljavassist/bytecode/CodeIterator;IILjavassist/bytecode/ExceptionTable;)[Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 167
    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMarks(Ljavassist/bytecode/CodeIterator;IILjavassist/bytecode/ExceptionTable;)Ljava/util/HashMap;

    move-result-object p1

    .line 168
    invoke-direct {p0, p1}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeBlocks(Ljava/util/HashMap;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object p1

    .line 169
    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->addCatchers([Ljavassist/bytecode/stackmap/BasicBlock;Ljavassist/bytecode/ExceptionTable;)V

    return-object p1
.end method

.method public make(Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 155
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 159
    :cond_0
    invoke-virtual {p1}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 160
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v2

    invoke-virtual {p1}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->make(Ljavassist/bytecode/CodeIterator;IILjavassist/bytecode/ExceptionTable;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object p1

    return-object p1
.end method

.method protected makeArray(I)[Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 0

    .line 138
    new-array p1, p1, [Ljavassist/bytecode/stackmap/BasicBlock;

    return-object p1
.end method

.method protected makeBlock(I)Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 1

    .line 134
    new-instance v0, Ljavassist/bytecode/stackmap/BasicBlock;

    invoke-direct {v0, p1}, Ljavassist/bytecode/stackmap/BasicBlock;-><init>(I)V

    return-object v0
.end method

.method protected makeJsr(Ljava/util/HashMap;III)V
    .locals 0

    return-void
.end method
