.class Ljavassist/bytecode/CodeAnalyzer;
.super Ljava/lang/Object;
.source "CodeAnalyzer.java"

# interfaces
.implements Ljavassist/bytecode/Opcode;


# instance fields
.field private codeAttr:Ljavassist/bytecode/CodeAttribute;

.field private constPool:Ljavassist/bytecode/ConstPool;


# direct methods
.method public constructor <init>(Ljavassist/bytecode/CodeAttribute;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Ljavassist/bytecode/CodeAnalyzer;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    .line 28
    invoke-virtual {p1}, Ljavassist/bytecode/CodeAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object p1

    iput-object p1, p0, Ljavassist/bytecode/CodeAnalyzer;->constPool:Ljavassist/bytecode/ConstPool;

    return-void
.end method

.method private checkTarget(III[II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    if-ltz p2, :cond_3

    if-le p3, p2, :cond_3

    .line 197
    aget p3, p4, p2

    if-nez p3, :cond_0

    neg-int p1, p5

    .line 199
    aput p1, p4, p2

    goto :goto_0

    :cond_0
    if-eq p3, p5, :cond_2

    neg-int p2, p5

    if-ne p3, p2, :cond_1

    goto :goto_0

    .line 201
    :cond_1
    new-instance p2, Ljavassist/bytecode/BadBytecode;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "verification error ("

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, ","

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ") at "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    return-void

    .line 195
    :cond_3
    new-instance p2, Ljavassist/bytecode/BadBytecode;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "bad branch offset at "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private getFieldSize(Ljavassist/bytecode/CodeIterator;I)I
    .locals 1

    .line 260
    iget-object v0, p0, Ljavassist/bytecode/CodeAnalyzer;->constPool:Ljavassist/bytecode/ConstPool;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->getFieldrefType(I)Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private initStack([ILjavassist/bytecode/CodeAttribute;)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 63
    aput v0, p1, v1

    .line 64
    invoke-virtual {p2}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p2}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 68
    invoke-virtual {p2, v1}, Ljavassist/bytecode/ExceptionTable;->handlerPc(I)I

    move-result v2

    const/4 v3, -0x2

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static isEnd(I)Z
    .locals 1

    const/16 v0, 0xac

    if-gt v0, p0, :cond_0

    const/16 v0, 0xb1

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0xbf

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private processBranch(ILjavassist/bytecode/CodeIterator;II[II[I)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    move v0, p1

    move-object v1, p2

    move/from16 v8, p6

    const/4 v9, 0x0

    const/16 v2, 0x99

    if-gt v2, v0, :cond_0

    const/16 v2, 0xa6

    if-le v0, v2, :cond_b

    :cond_0
    const/16 v2, 0xc6

    if-eq v0, v2, :cond_b

    const/16 v2, 0xc7

    if-ne v0, v2, :cond_1

    goto/16 :goto_3

    :cond_1
    const/16 v2, 0xc8

    const/4 v10, 0x1

    if-eq v0, v2, :cond_a

    const/16 v2, 0xc9

    const-string v6, ","

    if-eq v0, v2, :cond_6

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    and-int/lit8 v2, p3, -0x4

    add-int/lit8 v11, v2, 0x4

    .line 158
    invoke-virtual {p2, v11}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v2

    add-int v4, p3, v2

    move-object v2, p0

    move v3, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    .line 159
    invoke-direct/range {v2 .. v7}, Ljavassist/bytecode/CodeAnalyzer;->checkTarget(III[II)V

    const/16 v2, 0xab

    if-ne v0, v2, :cond_2

    add-int/lit8 v0, v11, 0x4

    .line 161
    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v0

    add-int/lit8 v11, v11, 0xc

    :goto_0
    if-ge v9, v0, :cond_3

    .line 164
    invoke-virtual {p2, v11}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v2

    add-int v4, p3, v2

    move-object v2, p0

    move v3, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    .line 165
    invoke-direct/range {v2 .. v7}, Ljavassist/bytecode/CodeAnalyzer;->checkTarget(III[II)V

    add-int/lit8 v11, v11, 0x8

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v11, 0x4

    .line 171
    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v0

    add-int/lit8 v2, v11, 0x8

    .line 172
    invoke-virtual {p2, v2}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v11, v11, 0xc

    :goto_1
    if-ge v9, v0, :cond_3

    .line 176
    invoke-virtual {p2, v11}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v2

    add-int v4, p3, v2

    move-object v2, p0

    move v3, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    .line 177
    invoke-direct/range {v2 .. v7}, Ljavassist/bytecode/CodeAnalyzer;->checkTarget(III[II)V

    add-int/lit8 v11, v11, 0x4

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    return v10

    .line 145
    :pswitch_1
    aget v0, p7, v9

    if-gez v0, :cond_4

    add-int/lit8 v0, v8, 0x1

    .line 146
    aput v0, p7, v9

    return v9

    :cond_4
    add-int/lit8 v0, v8, 0x1

    .line 149
    aget v1, p7, v9

    if-ne v0, v1, :cond_5

    return v10

    .line 152
    :cond_5
    new-instance v0, Ljavassist/bytecode/BadBytecode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sorry, cannot compute this data flow due to RET: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p7, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    add-int/lit8 v0, p3, 0x1

    .line 112
    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->s16bitAt(I)I

    move-result v0

    add-int v2, p3, v0

    move-object v0, p0

    move v1, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    .line 113
    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/CodeAnalyzer;->checkTarget(III[II)V

    return v10

    :cond_6
    :pswitch_3
    const/16 v2, 0xa8

    if-ne v0, v2, :cond_7

    add-int/lit8 v0, p3, 0x1

    .line 122
    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->s16bitAt(I)I

    move-result v0

    goto :goto_2

    :cond_7
    add-int/lit8 v0, p3, 0x1

    .line 124
    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v0

    :goto_2
    add-int/2addr v0, p3

    move v2, v0

    move-object v0, p0

    move v1, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    .line 126
    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/CodeAnalyzer;->checkTarget(III[II)V

    .line 134
    aget v0, p7, v9

    if-gez v0, :cond_8

    .line 135
    aput v8, p7, v9

    return v9

    .line 138
    :cond_8
    aget v0, p7, v9

    if-ne v8, v0, :cond_9

    return v9

    .line 141
    :cond_9
    new-instance v0, Ljavassist/bytecode/BadBytecode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sorry, cannot compute this data flow due to JSR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p7, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    add-int/lit8 v0, p3, 0x1

    .line 116
    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v0

    add-int v2, p3, v0

    move-object v0, p0

    move v1, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    .line 117
    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/CodeAnalyzer;->checkTarget(III[II)V

    return v10

    :cond_b
    :goto_3
    add-int/lit8 v0, p3, 0x1

    .line 105
    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->s16bitAt(I)I

    move-result v0

    add-int v2, p3, v0

    move-object v0, p0

    move v1, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    .line 106
    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/CodeAnalyzer;->checkTarget(III[II)V

    :goto_4
    return v9

    :pswitch_data_0
    .packed-switch 0xa7
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private visitBytecode(Ljavassist/bytecode/CodeIterator;[II)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 75
    array-length v8, p2

    .line 76
    invoke-virtual {p1, p3}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 77
    aget p3, p2, p3

    neg-int p3, p3

    const/4 v9, 0x1

    new-array v10, v9, [I

    const/4 v0, 0x0

    const/4 v1, -0x1

    aput v1, v10, v0

    .line 80
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 81
    invoke-virtual {p1}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v3

    .line 82
    aput p3, p2, v3

    .line 83
    invoke-virtual {p1, v3}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v11

    .line 84
    invoke-direct {p0, v11, p1, v3, p3}, Ljavassist/bytecode/CodeAnalyzer;->visitInst(ILjavassist/bytecode/CodeIterator;II)I

    move-result p3

    if-lt p3, v9, :cond_4

    move-object v0, p0

    move v1, v11

    move-object v2, p1

    move v4, v8

    move-object v5, p2

    move v6, p3

    move-object v7, v10

    .line 88
    invoke-direct/range {v0 .. v7}, Ljavassist/bytecode/CodeAnalyzer;->processBranch(ILjavassist/bytecode/CodeIterator;II[II[I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 91
    :cond_1
    invoke-static {v11}, Ljavassist/bytecode/CodeAnalyzer;->isEnd(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0xa8

    if-eq v11, v0, :cond_3

    const/16 v0, 0xc9

    if-ne v11, v0, :cond_0

    :cond_3
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 86
    :cond_4
    new-instance p1, Ljavassist/bytecode/BadBytecode;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "stack underflow at "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-void
.end method

.method private visitInst(ILjavassist/bytecode/CodeIterator;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const/16 v0, 0xbf

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc4

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 239
    :pswitch_0
    iget-object p1, p0, Ljavassist/bytecode/CodeAnalyzer;->constPool:Ljavassist/bytecode/ConstPool;

    add-int/2addr p3, v1

    invoke-virtual {p2, p3}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->getInterfaceMethodrefType(I)Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 235
    :pswitch_1
    iget-object p1, p0, Ljavassist/bytecode/CodeAnalyzer;->constPool:Ljavassist/bytecode/ConstPool;

    add-int/2addr p3, v1

    invoke-virtual {p2, p3}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->getMethodrefType(I)Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result p1

    goto :goto_3

    .line 231
    :pswitch_2
    iget-object p1, p0, Ljavassist/bytecode/CodeAnalyzer;->constPool:Ljavassist/bytecode/ConstPool;

    add-int/2addr p3, v1

    invoke-virtual {p2, p3}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->getMethodrefType(I)Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 221
    :pswitch_3
    invoke-direct {p0, p2, p3}, Ljavassist/bytecode/CodeAnalyzer;->getFieldSize(Ljavassist/bytecode/CodeIterator;I)I

    move-result p1

    add-int/2addr p1, v1

    goto :goto_1

    .line 218
    :pswitch_4
    invoke-direct {p0, p2, p3}, Ljavassist/bytecode/CodeAnalyzer;->getFieldSize(Ljavassist/bytecode/CodeIterator;I)I

    move-result p1

    :goto_0
    sub-int/2addr p1, v1

    goto :goto_3

    .line 227
    :pswitch_5
    invoke-direct {p0, p2, p3}, Ljavassist/bytecode/CodeAnalyzer;->getFieldSize(Ljavassist/bytecode/CodeIterator;I)I

    move-result p1

    :goto_1
    sub-int v1, p4, p1

    goto :goto_4

    .line 224
    :pswitch_6
    invoke-direct {p0, p2, p3}, Ljavassist/bytecode/CodeAnalyzer;->getFieldSize(Ljavassist/bytecode/CodeIterator;I)I

    move-result p1

    goto :goto_3

    :cond_0
    add-int/lit8 p3, p3, 0x3

    .line 247
    invoke-virtual {p2, p3}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result p1

    sub-int/2addr v1, p1

    add-int/2addr v1, p4

    goto :goto_4

    :cond_1
    add-int/2addr p3, v1

    .line 250
    invoke-virtual {p2, p3}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result p1

    .line 253
    :goto_2
    sget-object p2, Ljavassist/bytecode/CodeAnalyzer;->STACK_GROW:[I

    aget p1, p2, p1

    :goto_3
    add-int v1, p4, p1

    :cond_2
    :goto_4
    return v1

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public computeMaxStack()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Ljavassist/bytecode/CodeAnalyzer;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v1

    .line 41
    new-array v2, v1, [I

    .line 42
    iget-object v3, p0, Ljavassist/bytecode/CodeAnalyzer;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    invoke-virtual {v3}, Ljavassist/bytecode/CodeAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    iput-object v3, p0, Ljavassist/bytecode/CodeAnalyzer;->constPool:Ljavassist/bytecode/ConstPool;

    .line 43
    iget-object v3, p0, Ljavassist/bytecode/CodeAnalyzer;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    invoke-direct {p0, v2, v3}, Ljavassist/bytecode/CodeAnalyzer;->initStack([ILjavassist/bytecode/CodeAttribute;)V

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v4, v1, :cond_2

    .line 48
    aget v7, v2, v4

    if-gez v7, :cond_1

    .line 50
    invoke-direct {p0, v0, v2, v4}, Ljavassist/bytecode/CodeAnalyzer;->visitBytecode(Ljavassist/bytecode/CodeIterator;[II)V

    const/4 v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez v5, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-ge v3, v1, :cond_4

    .line 56
    aget v4, v2, v3

    if-le v4, v0, :cond_3

    .line 57
    aget v0, v2, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    sub-int/2addr v0, v6

    return v0
.end method
