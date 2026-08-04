.class public Ljavassist/bytecode/CodeAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "CodeAttribute.java"

# interfaces
.implements Ljavassist/bytecode/Opcode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/CodeAttribute$LdcEntry;,
        Ljavassist/bytecode/CodeAttribute$RuntimeCopyException;
    }
.end annotation


# static fields
.field public static final tag:Ljava/lang/String; = "Code"


# instance fields
.field private attributes:Ljava/util/ArrayList;

.field private exceptions:Ljavassist/bytecode/ExceptionTable;

.field private maxLocals:I

.field private maxStack:I


# direct methods
.method public constructor <init>(Ljavassist/bytecode/ConstPool;II[BLjavassist/bytecode/ExceptionTable;)V
    .locals 1

    const-string v0, "Code"

    .line 61
    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    .line 62
    iput p2, p0, Ljavassist/bytecode/CodeAttribute;->maxStack:I

    .line 63
    iput p3, p0, Ljavassist/bytecode/CodeAttribute;->maxLocals:I

    .line 64
    iput-object p4, p0, Ljavassist/bytecode/CodeAttribute;->info:[B

    .line 65
    iput-object p5, p0, Ljavassist/bytecode/CodeAttribute;->exceptions:Ljavassist/bytecode/ExceptionTable;

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 100
    check-cast v0, [B

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;I[B)V

    .line 101
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    .line 103
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p2

    iput p2, p0, Ljavassist/bytecode/CodeAttribute;->maxStack:I

    .line 104
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p2

    iput p2, p0, Ljavassist/bytecode/CodeAttribute;->maxLocals:I

    .line 106
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    .line 107
    new-array p2, p2, [B

    iput-object p2, p0, Ljavassist/bytecode/CodeAttribute;->info:[B

    .line 108
    iget-object p2, p0, Ljavassist/bytecode/CodeAttribute;->info:[B

    invoke-virtual {p3, p2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 110
    new-instance p2, Ljavassist/bytecode/ExceptionTable;

    invoke-direct {p2, p1, p3}, Ljavassist/bytecode/ExceptionTable;-><init>(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)V

    iput-object p2, p0, Ljavassist/bytecode/CodeAttribute;->exceptions:Ljavassist/bytecode/ExceptionTable;

    .line 112
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 115
    iget-object v1, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/ArrayList;

    invoke-static {p1, p3}, Ljavassist/bytecode/AttributeInfo;->read(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeAttribute;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const-string v0, "Code"

    .line 81
    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/CodeAttribute;->maxStack:I

    .line 84
    invoke-virtual {p2}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/CodeAttribute;->maxLocals:I

    .line 85
    invoke-virtual {p2}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Ljavassist/bytecode/ExceptionTable;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/ExceptionTable;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/CodeAttribute;->exceptions:Ljavassist/bytecode/ExceptionTable;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {p2}, Ljavassist/bytecode/CodeAttribute;->getAttributes()Ljava/util/List;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 90
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/AttributeInfo;

    .line 91
    iget-object v4, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, p3}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->exceptions:Ljavassist/bytecode/ExceptionTable;

    invoke-direct {p2, p1, p3, v0, p0}, Ljavassist/bytecode/CodeAttribute;->copyCode(Ljavassist/bytecode/ConstPool;Ljava/util/Map;Ljavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)[B

    move-result-object p1

    iput-object p1, p0, Ljavassist/bytecode/CodeAttribute;->info:[B

    return-void
.end method

.method private static copyCode([BIILjavassist/bytecode/ConstPool;[BLjavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/CodeAttribute$LdcEntry;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    move-object v6, p0

    const/4 v0, 0x0

    move v7, p1

    move/from16 v9, p2

    move-object v8, v0

    :goto_0
    if-ge v7, v9, :cond_4

    .line 362
    invoke-static {p0, v7}, Ljavassist/bytecode/CodeIterator;->nextOpcode([BI)I

    move-result v10

    .line 363
    aget-byte v0, v6, v7

    .line 364
    aput-byte v0, p4, v7

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xbb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc5

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    :goto_1
    add-int/lit8 v7, v7, 0x1

    if-ge v7, v10, :cond_0

    .line 410
    aget-byte v0, v6, v7

    aput-byte v0, p4, v7

    goto :goto_1

    :cond_0
    :goto_2
    move-object/from16 v11, p3

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    goto/16 :goto_4

    :pswitch_0
    add-int/lit8 v0, v7, 0x1

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 398
    invoke-static/range {v0 .. v5}, Ljavassist/bytecode/CodeAttribute;->copyConstPoolInfo(I[BLjavassist/bytecode/ConstPool;[BLjavassist/bytecode/ConstPool;Ljava/util/Map;)V

    add-int/lit8 v0, v7, 0x3

    .line 400
    aget-byte v1, v6, v0

    aput-byte v1, p4, v0

    add-int/lit8 v7, v7, 0x4

    .line 401
    aget-byte v0, v6, v7

    aput-byte v0, p4, v7

    goto :goto_2

    :cond_1
    :pswitch_1
    move-object/from16 v11, p3

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    goto :goto_3

    :pswitch_2
    add-int/lit8 v0, v7, 0x1

    .line 383
    aget-byte v1, v6, v0

    and-int/lit16 v1, v1, 0xff

    move-object/from16 v11, p3

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    .line 384
    invoke-virtual {v11, v1, v12, v13}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v1

    const/16 v2, 0x100

    if-ge v1, v2, :cond_2

    int-to-byte v1, v1

    .line 386
    aput-byte v1, p4, v0

    goto :goto_4

    :cond_2
    const/4 v2, 0x0

    .line 388
    aput-byte v2, p4, v7

    .line 389
    aput-byte v2, p4, v0

    .line 390
    new-instance v0, Ljavassist/bytecode/CodeAttribute$LdcEntry;

    invoke-direct {v0}, Ljavassist/bytecode/CodeAttribute$LdcEntry;-><init>()V

    .line 391
    iput v7, v0, Ljavassist/bytecode/CodeAttribute$LdcEntry;->where:I

    .line 392
    iput v1, v0, Ljavassist/bytecode/CodeAttribute$LdcEntry;->index:I

    .line 393
    iput-object v8, v0, Ljavassist/bytecode/CodeAttribute$LdcEntry;->next:Ljavassist/bytecode/CodeAttribute$LdcEntry;

    move-object v8, v0

    goto :goto_4

    :cond_3
    move-object/from16 v11, p3

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    add-int/lit8 v0, v7, 0x1

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 404
    invoke-static/range {v0 .. v5}, Ljavassist/bytecode/CodeAttribute;->copyConstPoolInfo(I[BLjavassist/bytecode/ConstPool;[BLjavassist/bytecode/ConstPool;Ljava/util/Map;)V

    add-int/lit8 v7, v7, 0x3

    .line 406
    aget-byte v0, v6, v7

    aput-byte v0, p4, v7

    goto :goto_4

    :goto_3
    add-int/lit8 v0, v7, 0x1

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 379
    invoke-static/range {v0 .. v5}, Ljavassist/bytecode/CodeAttribute;->copyConstPoolInfo(I[BLjavassist/bytecode/ConstPool;[BLjavassist/bytecode/ConstPool;Ljava/util/Map;)V

    :goto_4
    move v7, v10

    goto/16 :goto_0

    :cond_4
    return-object v8

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private copyCode(Ljavassist/bytecode/ConstPool;Ljava/util/Map;Ljavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Ljavassist/bytecode/CodeAttribute;->getCodeLength()I

    move-result v2

    .line 346
    new-array v7, v2, [B

    .line 347
    iput-object v7, p4, Ljavassist/bytecode/CodeAttribute;->info:[B

    .line 348
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->info:[B

    invoke-virtual {p0}, Ljavassist/bytecode/CodeAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    const/4 v1, 0x0

    move-object v4, v7

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Ljavassist/bytecode/CodeAttribute;->copyCode([BIILjavassist/bytecode/ConstPool;[BLjavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/CodeAttribute$LdcEntry;

    move-result-object p1

    .line 350
    invoke-static {v7, p1, p3, p4}, Ljavassist/bytecode/CodeAttribute$LdcEntry;->doit([BLjavassist/bytecode/CodeAttribute$LdcEntry;Ljavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)[B

    move-result-object p1

    return-object p1
.end method

.method private static copyConstPoolInfo(I[BLjavassist/bytecode/ConstPool;[BLjavassist/bytecode/ConstPool;Ljava/util/Map;)V
    .locals 2

    .line 422
    aget-byte v0, p1, p0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p0, 0x1

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    .line 423
    invoke-virtual {p2, p1, p4, p5}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result p1

    shr-int/lit8 p2, p1, 0x8

    int-to-byte p2, p2

    .line 424
    aput-byte p2, p3, p0

    int-to-byte p0, p1

    .line 425
    aput-byte p0, p3, v1

    return-void
.end method

.method private static shiftIndex(Ljavassist/bytecode/CodeIterator;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 487
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v1

    .line 488
    invoke-virtual {p0, v1}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v2

    const/16 v0, 0x15

    if-ge v2, v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x4f

    if-ge v2, v0, :cond_5

    const/16 v0, 0x1a

    if-ge v2, v0, :cond_1

    .line 494
    invoke-static {p0, v1, v2, p1, p2}, Ljavassist/bytecode/CodeAttribute;->shiftIndex8(Ljavassist/bytecode/CodeIterator;IIII)V

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x2e

    if-ge v2, v0, :cond_2

    const/16 v5, 0x1a

    const/16 v6, 0x15

    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 498
    invoke-static/range {v0 .. v6}, Ljavassist/bytecode/CodeAttribute;->shiftIndex0(Ljavassist/bytecode/CodeIterator;IIIIII)V

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x36

    if-ge v2, v0, :cond_3

    return-void

    :cond_3
    const/16 v0, 0x3b

    if-ge v2, v0, :cond_4

    .line 504
    invoke-static {p0, v1, v2, p1, p2}, Ljavassist/bytecode/CodeAttribute;->shiftIndex8(Ljavassist/bytecode/CodeIterator;IIII)V

    goto :goto_0

    :cond_4
    const/16 v5, 0x3b

    const/16 v6, 0x36

    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 508
    invoke-static/range {v0 .. v6}, Ljavassist/bytecode/CodeAttribute;->shiftIndex0(Ljavassist/bytecode/CodeIterator;IIIIII)V

    goto :goto_0

    :cond_5
    const/16 v0, 0xc4

    const/16 v3, 0x84

    if-ne v2, v3, :cond_8

    add-int/lit8 v2, v1, 0x1

    .line 512
    invoke-virtual {p0, v2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v4

    if-ge v4, p1, :cond_6

    return-void

    :cond_6
    add-int/2addr v4, p2

    const/16 p1, 0x100

    if-ge v4, p1, :cond_7

    .line 518
    invoke-virtual {p0, v4, v2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    goto :goto_0

    :cond_7
    add-int/lit8 v1, v1, 0x2

    .line 520
    invoke-virtual {p0, v1}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result p1

    int-to-byte p1, p1

    const/4 p2, 0x3

    .line 521
    invoke-virtual {p0, p2}, Ljavassist/bytecode/CodeIterator;->insertExGap(I)I

    move-result p2

    add-int/lit8 v1, p2, -0x3

    .line 522
    invoke-virtual {p0, v0, v1}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    add-int/lit8 v0, p2, -0x2

    .line 523
    invoke-virtual {p0, v3, v0}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    add-int/lit8 v0, p2, -0x1

    .line 524
    invoke-virtual {p0, v4, v0}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    add-int/lit8 p2, p2, 0x1

    .line 525
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    goto :goto_0

    :cond_8
    const/16 v3, 0xa9

    if-ne v2, v3, :cond_9

    .line 529
    invoke-static {p0, v1, v2, p1, p2}, Ljavassist/bytecode/CodeAttribute;->shiftIndex8(Ljavassist/bytecode/CodeIterator;IIII)V

    goto :goto_0

    :cond_9
    if-ne v2, v0, :cond_b

    add-int/lit8 v1, v1, 0x2

    .line 531
    invoke-virtual {p0, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v0

    if-ge v0, p1, :cond_a

    return-void

    :cond_a
    add-int/2addr v0, p2

    .line 536
    invoke-virtual {p0, v0, v1}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    :cond_b
    :goto_0
    return-void
.end method

.method private static shiftIndex0(Ljavassist/bytecode/CodeIterator;IIIIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    sub-int p5, p2, p5

    .line 564
    rem-int/lit8 v0, p5, 0x4

    if-ge v0, p3, :cond_0

    return-void

    :cond_0
    add-int/2addr v0, p4

    const/4 p3, 0x4

    if-ge v0, p3, :cond_1

    add-int/2addr p2, p4

    .line 570
    invoke-virtual {p0, p2, p1}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    goto :goto_0

    .line 572
    :cond_1
    div-int/2addr p5, p3

    add-int/2addr p5, p6

    const/16 p1, 0x100

    const/4 p2, 0x1

    if-ge v0, p1, :cond_2

    .line 574
    invoke-virtual {p0, p2}, Ljavassist/bytecode/CodeIterator;->insertExGap(I)I

    move-result p1

    add-int/lit8 p2, p1, -0x1

    .line 575
    invoke-virtual {p0, p5, p2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 576
    invoke-virtual {p0, v0, p1}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    .line 579
    invoke-virtual {p0, p1}, Ljavassist/bytecode/CodeIterator;->insertExGap(I)I

    move-result p1

    const/16 p3, 0xc4

    add-int/lit8 p4, p1, -0x1

    .line 580
    invoke-virtual {p0, p3, p4}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 581
    invoke-virtual {p0, p5, p1}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    add-int/2addr p1, p2

    .line 582
    invoke-virtual {p0, v0, p1}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    :goto_0
    return-void
.end method

.method private static shiftIndex8(Ljavassist/bytecode/CodeIterator;IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x1

    .line 544
    invoke-virtual {p0, p1}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    if-ge v0, p3, :cond_0

    return-void

    :cond_0
    add-int/2addr v0, p4

    const/16 p3, 0x100

    if-ge v0, p3, :cond_1

    .line 550
    invoke-virtual {p0, v0, p1}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 552
    invoke-virtual {p0, p1}, Ljavassist/bytecode/CodeIterator;->insertExGap(I)I

    move-result p1

    const/16 p3, 0xc4

    add-int/lit8 p4, p1, -0x2

    .line 553
    invoke-virtual {p0, p3, p4}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    add-int/lit8 p3, p1, -0x1

    .line 554
    invoke-virtual {p0, p2, p3}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 555
    invoke-virtual {p0, v0, p1}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public computeMaxStack()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 239
    new-instance v0, Ljavassist/bytecode/CodeAnalyzer;

    invoke-direct {v0, p0}, Ljavassist/bytecode/CodeAnalyzer;-><init>(Ljavassist/bytecode/CodeAttribute;)V

    invoke-virtual {v0}, Ljavassist/bytecode/CodeAnalyzer;->computeMaxStack()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/CodeAttribute;->maxStack:I

    return v0
.end method

.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/CodeAttribute$RuntimeCopyException;
        }
    .end annotation

    .line 136
    :try_start_0
    new-instance v0, Ljavassist/bytecode/CodeAttribute;

    invoke-direct {v0, p1, p0, p2}, Ljavassist/bytecode/CodeAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeAttribute;Ljava/util/Map;)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 139
    :catch_0
    new-instance p1, Ljavassist/bytecode/CodeAttribute$RuntimeCopyException;

    const-string p2, "bad bytecode. fatal?"

    invoke-direct {p1, p2}, Ljavassist/bytecode/CodeAttribute$RuntimeCopyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get()[B
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CodeAttribute.get()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;
    .locals 1

    .line 306
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->lookup(Ljava/util/ArrayList;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p1

    return-object p1
.end method

.method public getAttributes()Ljava/util/List;
    .locals 1

    .line 296
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCode()[B
    .locals 1

    .line 268
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->info:[B

    return-object v0
.end method

.method public getCodeLength()I
    .locals 1

    .line 261
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->info:[B

    array-length v0, v0

    return v0
.end method

.method public getDeclaringClass()Ljava/lang/String;
    .locals 1

    .line 213
    invoke-virtual {p0}, Ljavassist/bytecode/CodeAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljavassist/bytecode/ConstPool;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExceptionTable()Ljavassist/bytecode/ExceptionTable;
    .locals 1

    .line 286
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->exceptions:Ljavassist/bytecode/ExceptionTable;

    return-object v0
.end method

.method public getMaxLocals()I
    .locals 1

    .line 247
    iget v0, p0, Ljavassist/bytecode/CodeAttribute;->maxLocals:I

    return v0
.end method

.method public getMaxStack()I
    .locals 1

    .line 221
    iget v0, p0, Ljavassist/bytecode/CodeAttribute;->maxStack:I

    return v0
.end method

.method getRefClasses(Ljava/util/Map;)V
    .locals 1

    .line 205
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->getRefClasses(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public insertLocalVar(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 472
    invoke-virtual {p0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v0

    .line 473
    :goto_0
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    invoke-static {v0, p1, p2}, Ljavassist/bytecode/CodeAttribute;->shiftIndex(Ljavassist/bytecode/CodeIterator;II)V

    goto :goto_0

    .line 476
    :cond_0
    invoke-virtual {p0}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V

    return-void
.end method

.method public iterator()Ljavassist/bytecode/CodeIterator;
    .locals 1

    .line 280
    new-instance v0, Ljavassist/bytecode/CodeIterator;

    invoke-direct {v0, p0}, Ljavassist/bytecode/CodeIterator;-><init>(Ljavassist/bytecode/CodeAttribute;)V

    return-object v0
.end method

.method public length()I
    .locals 2

    .line 162
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->info:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x12

    iget-object v1, p0, Ljavassist/bytecode/CodeAttribute;->exceptions:Ljavassist/bytecode/ExceptionTable;

    invoke-virtual {v1}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljavassist/bytecode/AttributeInfo;->getLength(Ljava/util/ArrayList;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method renameClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 197
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method renameClass(Ljava/util/Map;)V
    .locals 1

    .line 201
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public set([B)V
    .locals 1

    .line 193
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "CodeAttribute.set()"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAttribute(Ljavassist/bytecode/StackMap;)V
    .locals 2

    .line 333
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/ArrayList;

    const-string v1, "StackMap"

    invoke-static {v0, v1}, Ljavassist/bytecode/AttributeInfo;->remove(Ljava/util/ArrayList;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 335
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setAttribute(Ljavassist/bytecode/StackMapTable;)V
    .locals 2

    .line 318
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/ArrayList;

    const-string v1, "StackMapTable"

    invoke-static {v0, v1}, Ljavassist/bytecode/AttributeInfo;->remove(Ljava/util/ArrayList;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 320
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method setCode([B)V
    .locals 0

    .line 274
    invoke-super {p0, p1}, Ljavassist/bytecode/AttributeInfo;->set([B)V

    return-void
.end method

.method public setMaxLocals(I)V
    .locals 0

    .line 254
    iput p1, p0, Ljavassist/bytecode/CodeAttribute;->maxLocals:I

    return-void
.end method

.method public setMaxStack(I)V
    .locals 0

    .line 228
    iput p1, p0, Ljavassist/bytecode/CodeAttribute;->maxStack:I

    return-void
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget v0, p0, Ljavassist/bytecode/CodeAttribute;->name:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 168
    invoke-virtual {p0}, Ljavassist/bytecode/CodeAttribute;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 169
    iget v0, p0, Ljavassist/bytecode/CodeAttribute;->maxStack:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 170
    iget v0, p0, Ljavassist/bytecode/CodeAttribute;->maxLocals:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 171
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->info:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 172
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->info:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 173
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->exceptions:Ljavassist/bytecode/ExceptionTable;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ExceptionTable;->write(Ljava/io/DataOutputStream;)V

    .line 174
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 175
    iget-object v0, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->writeAll(Ljava/util/ArrayList;Ljava/io/DataOutputStream;)V

    return-void
.end method
