.class public Ljavassist/bytecode/CodeIterator;
.super Ljava/lang/Object;
.source "CodeIterator.java"

# interfaces
.implements Ljavassist/bytecode/Opcode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/CodeIterator$Lookup;,
        Ljavassist/bytecode/CodeIterator$Table;,
        Ljavassist/bytecode/CodeIterator$Switcher;,
        Ljavassist/bytecode/CodeIterator$Jump32;,
        Ljavassist/bytecode/CodeIterator$If16;,
        Ljavassist/bytecode/CodeIterator$Jump16;,
        Ljavassist/bytecode/CodeIterator$Branch16;,
        Ljavassist/bytecode/CodeIterator$LdcW;,
        Ljavassist/bytecode/CodeIterator$Branch;,
        Ljavassist/bytecode/CodeIterator$Pointers;,
        Ljavassist/bytecode/CodeIterator$AlignmentException;,
        Ljavassist/bytecode/CodeIterator$Gap;
    }
.end annotation


# static fields
.field private static final opcodeLength:[I


# instance fields
.field protected bytecode:[B

.field protected codeAttr:Ljavassist/bytecode/CodeAttribute;

.field protected currentPos:I

.field protected endPos:I

.field protected mark:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xca

    new-array v0, v0, [I

    .line 718
    fill-array-data v0, :array_0

    sput-object v0, Ljavassist/bytecode/CodeIterator;->opcodeLength:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x3
        0x2
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x2
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x5
        0x0
        0x3
        0x2
        0x3
        0x1
        0x1
        0x3
        0x3
        0x1
        0x1
        0x0
        0x4
        0x3
        0x3
        0x5
        0x5
    .end array-data
.end method

.method protected constructor <init>(Ljavassist/bytecode/CodeAttribute;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    .line 44
    invoke-virtual {p1}, Ljavassist/bytecode/CodeAttribute;->getCode()[B

    move-result-object p1

    iput-object p1, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    .line 45
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->begin()V

    return-void
.end method

.method private static addLdcW(Ljavassist/bytecode/CodeAttribute$LdcEntry;Ljava/util/ArrayList;)V
    .locals 4

    .line 1062
    iget v0, p0, Ljavassist/bytecode/CodeAttribute$LdcEntry;->where:I

    .line 1063
    new-instance v1, Ljavassist/bytecode/CodeIterator$LdcW;

    iget p0, p0, Ljavassist/bytecode/CodeAttribute$LdcEntry;->index:I

    invoke-direct {v1, v0, p0}, Ljavassist/bytecode/CodeIterator$LdcW;-><init>(II)V

    .line 1064
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    .line 1066
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/CodeIterator$Branch;

    iget v3, v3, Ljavassist/bytecode/CodeIterator$Branch;->orgPos:I

    if-ge v0, v3, :cond_0

    .line 1067
    invoke-virtual {p1, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1071
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static changeLdcToLdcW([BLjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;Ljavassist/bytecode/CodeAttribute$LdcEntry;)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1050
    array-length v0, p0

    invoke-static {p0, v0}, Ljavassist/bytecode/CodeIterator;->makeJumpList([BI)Ljava/util/ArrayList;

    move-result-object v5

    :goto_0
    if-eqz p3, :cond_0

    .line 1052
    invoke-static {p3, v5}, Ljavassist/bytecode/CodeIterator;->addLdcW(Ljavassist/bytecode/CodeAttribute$LdcEntry;Ljava/util/ArrayList;)V

    .line 1053
    iget-object p3, p3, Ljavassist/bytecode/CodeAttribute$LdcEntry;->next:Ljavassist/bytecode/CodeAttribute$LdcEntry;

    goto :goto_0

    .line 1056
    :cond_0
    new-instance p3, Ljavassist/bytecode/CodeIterator$Pointers;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, p3

    move-object v10, p1

    move-object v11, p2

    invoke-direct/range {v6 .. v11}, Ljavassist/bytecode/CodeIterator$Pointers;-><init>(IIILjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .line 1057
    invoke-static/range {v1 .. v6}, Ljavassist/bytecode/CodeIterator;->insertGap2w([BIIZLjava/util/ArrayList;Ljavassist/bytecode/CodeIterator$Pointers;)[B

    move-result-object p0

    return-object p0
.end method

.method private static copyGapBytes([BI[BII)I
    .locals 1

    sub-int/2addr p4, p3

    const/4 v0, 0x1

    if-eq p4, v0, :cond_3

    const/4 v0, 0x2

    if-eq p4, v0, :cond_2

    const/4 v0, 0x3

    if-eq p4, v0, :cond_1

    const/4 v0, 0x4

    if-eq p4, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p4, p1, 0x1

    add-int/lit8 v0, p3, 0x1

    .line 961
    aget-byte p3, p2, p3

    aput-byte p3, p0, p1

    move p1, p4

    move p3, v0

    :cond_1
    add-int/lit8 p4, p1, 0x1

    add-int/lit8 v0, p3, 0x1

    .line 963
    aget-byte p3, p2, p3

    aput-byte p3, p0, p1

    move p1, p4

    move p3, v0

    :cond_2
    add-int/lit8 p4, p1, 0x1

    add-int/lit8 v0, p3, 0x1

    .line 965
    aget-byte p3, p2, p3

    aput-byte p3, p0, p1

    move p1, p4

    move p3, v0

    :cond_3
    add-int/lit8 p4, p1, 0x1

    .line 967
    aget-byte p2, p2, p3

    aput-byte p2, p0, p1

    move p1, p4

    :goto_0
    return p1
.end method

.method private insert0(I[BZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 452
    array-length v0, p2

    if-gtz v0, :cond_0

    return p1

    .line 457
    :cond_0
    invoke-virtual {p0, p1, v0, p3}, Ljavassist/bytecode/CodeIterator;->insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;

    move-result-object p1

    iget p1, p1, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    const/4 p3, 0x0

    move v1, p1

    :goto_0
    if-ge p3, v0, :cond_1

    .line 461
    iget-object v2, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p2, p3

    aput-byte v4, v2, v1

    add-int/lit8 p3, p3, 0x1

    move v1, v3

    goto :goto_0

    :cond_1
    return p1
.end method

.method private static insertGap2([BIII[BZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;,
            Ljavassist/bytecode/CodeIterator$AlignmentException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p3, :cond_d

    if-ne v1, p1, :cond_0

    add-int v3, v2, p2

    :goto_1
    if-ge v2, v3, :cond_0

    add-int/lit8 v4, v2, 0x1

    .line 865
    aput-byte v0, p4, v2

    move v2, v4

    goto :goto_1

    .line 868
    :cond_0
    invoke-static {p0, v1}, Ljavassist/bytecode/CodeIterator;->nextOpcode([BI)I

    move-result v3

    .line 869
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x99

    if-gt v5, v4, :cond_1

    const/16 v5, 0xa8

    if-le v4, v5, :cond_b

    :cond_1
    const/16 v5, 0xc6

    if-eq v4, v5, :cond_b

    const/16 v5, 0xc7

    if-ne v4, v5, :cond_2

    goto/16 :goto_8

    :cond_2
    const/16 v5, 0xc8

    if-eq v4, v5, :cond_a

    const/16 v5, 0xc9

    if-ne v4, v5, :cond_3

    goto/16 :goto_7

    :cond_3
    const/16 v5, 0xaa

    if-ne v4, v5, :cond_6

    if-eq v1, v2, :cond_5

    and-int/lit8 v4, p2, 0x3

    if-nez v4, :cond_4

    goto :goto_2

    .line 890
    :cond_4
    new-instance p0, Ljavassist/bytecode/CodeIterator$AlignmentException;

    invoke-direct {p0}, Ljavassist/bytecode/CodeIterator$AlignmentException;-><init>()V

    throw p0

    :cond_5
    :goto_2
    and-int/lit8 v4, v1, -0x4

    add-int/lit8 v4, v4, 0x4

    .line 899
    invoke-static {p4, v2, p0, v1, v4}, Ljavassist/bytecode/CodeIterator;->copyGapBytes([BI[BII)I

    move-result v2

    .line 901
    invoke-static {p0, v4}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v5

    invoke-static {v1, v5, p1, p2, p5}, Ljavassist/bytecode/CodeIterator;->newOffset(IIIIZ)I

    move-result v5

    .line 903
    invoke-static {v5, p4, v2}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    add-int/lit8 v5, v4, 0x4

    .line 904
    invoke-static {p0, v5}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v5

    add-int/lit8 v6, v2, 0x4

    .line 905
    invoke-static {v5, p4, v6}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    add-int/lit8 v6, v4, 0x8

    .line 906
    invoke-static {p0, v6}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v6

    add-int/lit8 v7, v2, 0x8

    .line 907
    invoke-static {v6, p4, v7}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    add-int/lit8 v2, v2, 0xc

    add-int/lit8 v4, v4, 0xc

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v4

    :goto_3
    if-ge v4, v6, :cond_c

    .line 912
    invoke-static {p0, v4}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v5

    invoke-static {v1, v5, p1, p2, p5}, Ljavassist/bytecode/CodeIterator;->newOffset(IIIIZ)I

    move-result v5

    .line 914
    invoke-static {v5, p4, v2}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v4, v4, 0x4

    goto :goto_3

    :cond_6
    const/16 v5, 0xab

    if-ne v4, v5, :cond_9

    if-eq v1, v2, :cond_8

    and-int/lit8 v4, p2, 0x3

    if-nez v4, :cond_7

    goto :goto_4

    .line 921
    :cond_7
    new-instance p0, Ljavassist/bytecode/CodeIterator$AlignmentException;

    invoke-direct {p0}, Ljavassist/bytecode/CodeIterator$AlignmentException;-><init>()V

    throw p0

    :cond_8
    :goto_4
    and-int/lit8 v4, v1, -0x4

    add-int/lit8 v4, v4, 0x4

    .line 931
    invoke-static {p4, v2, p0, v1, v4}, Ljavassist/bytecode/CodeIterator;->copyGapBytes([BI[BII)I

    move-result v2

    .line 933
    invoke-static {p0, v4}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v5

    invoke-static {v1, v5, p1, p2, p5}, Ljavassist/bytecode/CodeIterator;->newOffset(IIIIZ)I

    move-result v5

    .line 935
    invoke-static {v5, p4, v2}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    add-int/lit8 v5, v4, 0x4

    .line 936
    invoke-static {p0, v5}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v5

    add-int/lit8 v6, v2, 0x4

    .line 937
    invoke-static {v5, p4, v6}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v4, 0x8

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v4

    :goto_5
    if-ge v4, v5, :cond_c

    .line 942
    invoke-static {p0, v4, p4, v2}, Ljavassist/bytecode/ByteArray;->copy32bit([BI[BI)V

    add-int/lit8 v6, v4, 0x4

    .line 943
    invoke-static {p0, v6}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v6

    invoke-static {v1, v6, p1, p2, p5}, Ljavassist/bytecode/CodeIterator;->newOffset(IIIIZ)I

    move-result v6

    add-int/lit8 v7, v2, 0x4

    .line 946
    invoke-static {v6, p4, v7}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v4, 0x8

    goto :goto_5

    :cond_9
    :goto_6
    if-ge v1, v3, :cond_c

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v1, 0x1

    .line 953
    aget-byte v1, p0, v1

    aput-byte v1, p4, v2

    move v2, v4

    move v1, v5

    goto :goto_6

    :cond_a
    :goto_7
    add-int/lit8 v4, v1, 0x1

    .line 882
    invoke-static {p0, v4}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v4

    .line 883
    invoke-static {v1, v4, p1, p2, p5}, Ljavassist/bytecode/CodeIterator;->newOffset(IIIIZ)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    .line 884
    aget-byte v1, p0, v1

    aput-byte v1, p4, v2

    .line 885
    invoke-static {v4, p4, v5}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    add-int/lit8 v5, v5, 0x4

    move v2, v5

    goto :goto_9

    :cond_b
    :goto_8
    add-int/lit8 v4, v1, 0x1

    .line 874
    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v1, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 875
    invoke-static {v1, v4, p1, p2, p5}, Ljavassist/bytecode/CodeIterator;->newOffset(IIIIZ)I

    move-result v4

    .line 876
    aget-byte v1, p0, v1

    aput-byte v1, p4, v2

    add-int/lit8 v1, v2, 0x1

    .line 877
    invoke-static {v4, p4, v1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    add-int/lit8 v2, v2, 0x3

    :cond_c
    :goto_9
    move v1, v3

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method private static insertGap2w([BIIZLjava/util/ArrayList;Ljavassist/bytecode/CodeIterator$Pointers;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1115
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez p2, :cond_0

    .line 1117
    invoke-virtual {p5, p1, p2, p3}, Ljavassist/bytecode/CodeIterator$Pointers;->shiftPc(IIZ)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1119
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/CodeIterator$Branch;

    invoke-virtual {v3, p1, p2, p3}, Ljavassist/bytecode/CodeIterator$Branch;->shift(IIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 1127
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavassist/bytecode/CodeIterator$Branch;

    .line 1128
    invoke-virtual {v4}, Ljavassist/bytecode/CodeIterator$Branch;->expanded()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1130
    iget v2, v4, Ljavassist/bytecode/CodeIterator$Branch;->pos:I

    .line 1131
    invoke-virtual {v4}, Ljavassist/bytecode/CodeIterator$Branch;->deltaSize()I

    move-result v4

    .line 1132
    invoke-virtual {p5, v2, v4, v1}, Ljavassist/bytecode/CodeIterator$Pointers;->shiftPc(IIZ)V

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_2

    .line 1134
    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavassist/bytecode/CodeIterator$Branch;

    invoke-virtual {v6, v2, v4, v1}, Ljavassist/bytecode/CodeIterator$Branch;->shift(IIZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_7

    .line 1140
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavassist/bytecode/CodeIterator$Branch;

    .line 1141
    invoke-virtual {v4}, Ljavassist/bytecode/CodeIterator$Branch;->gapChanged()I

    move-result v5

    if-lez v5, :cond_6

    .line 1144
    iget v2, v4, Ljavassist/bytecode/CodeIterator$Branch;->pos:I

    .line 1145
    invoke-virtual {p5, v2, v5, v1}, Ljavassist/bytecode/CodeIterator$Pointers;->shiftPc(IIZ)V

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v0, :cond_5

    .line 1147
    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavassist/bytecode/CodeIterator$Branch;

    invoke-virtual {v6, v2, v5, v1}, Ljavassist/bytecode/CodeIterator$Branch;->shift(IIZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    if-nez v2, :cond_1

    .line 1152
    invoke-static {p0, p4, p1, p2}, Ljavassist/bytecode/CodeIterator;->makeExapndedCode([BLjava/util/ArrayList;II)[B

    move-result-object p0

    return-object p0
.end method

.method static insertGapCore0([BIIZLjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    if-gtz p2, :cond_0

    return-object p0

    .line 805
    :cond_0
    :try_start_0
    invoke-static/range {p0 .. p5}, Ljavassist/bytecode/CodeIterator;->insertGapCore1([BIIZLjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)[B

    move-result-object p0
    :try_end_0
    .catch Ljavassist/bytecode/CodeIterator$AlignmentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    add-int/lit8 p2, p2, 0x3

    and-int/lit8 v2, p2, -0x4

    move-object v0, p0

    move v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 809
    :try_start_1
    invoke-static/range {v0 .. v5}, Ljavassist/bytecode/CodeIterator;->insertGapCore1([BIIZLjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)[B

    move-result-object p0
    :try_end_1
    .catch Ljavassist/bytecode/CodeIterator$AlignmentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 813
    :catch_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "fatal error?"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private insertGapCore0w([BIIZLjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;Ljavassist/bytecode/CodeIterator$Gap;)[B
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, p3

    move-object/from16 v8, p7

    if-gtz v7, :cond_0

    return-object v1

    .line 1094
    :cond_0
    array-length v2, v1

    invoke-static {v1, v2}, Ljavassist/bytecode/CodeIterator;->makeJumpList([BI)Ljava/util/ArrayList;

    move-result-object v5

    .line 1095
    new-instance v15, Ljavassist/bytecode/CodeIterator$Pointers;

    iget v10, v0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    iget v11, v0, Ljavassist/bytecode/CodeIterator;->mark:I

    move-object v9, v15

    move/from16 v12, p2

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-direct/range {v9 .. v14}, Ljavassist/bytecode/CodeIterator$Pointers;-><init>(IIILjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)V

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v6, v15

    .line 1096
    invoke-static/range {v1 .. v6}, Ljavassist/bytecode/CodeIterator;->insertGap2w([BIIZLjava/util/ArrayList;Ljavassist/bytecode/CodeIterator$Pointers;)[B

    move-result-object v1

    .line 1097
    iget v2, v15, Ljavassist/bytecode/CodeIterator$Pointers;->cursor:I

    iput v2, v0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    .line 1098
    iget v2, v15, Ljavassist/bytecode/CodeIterator$Pointers;->mark:I

    iput v2, v0, Ljavassist/bytecode/CodeIterator;->mark:I

    .line 1099
    iget v2, v15, Ljavassist/bytecode/CodeIterator$Pointers;->mark0:I

    .line 1100
    iget v3, v0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    if-ne v2, v3, :cond_1

    if-nez p4, :cond_1

    add-int/2addr v3, v7

    .line 1101
    iput v3, v0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    :cond_1
    if-eqz p4, :cond_2

    sub-int/2addr v2, v7

    .line 1106
    :cond_2
    iput v2, v8, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    .line 1107
    iput v7, v8, Ljavassist/bytecode/CodeIterator$Gap;->length:I

    return-object v1
.end method

.method private static insertGapCore1([BIIZLjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;,
            Ljavassist/bytecode/CodeIterator$AlignmentException;
        }
    .end annotation

    .line 823
    array-length v3, p0

    add-int v0, v3, p2

    .line 824
    new-array v6, v0, [B

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v6

    move v5, p3

    .line 825
    invoke-static/range {v0 .. v5}, Ljavassist/bytecode/CodeIterator;->insertGap2([BIII[BZ)V

    .line 826
    invoke-virtual {p4, p1, p2, p3}, Ljavassist/bytecode/ExceptionTable;->shiftPc(IIZ)V

    const-string p0, "LineNumberTable"

    .line 827
    invoke-virtual {p5, p0}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p0

    check-cast p0, Ljavassist/bytecode/LineNumberAttribute;

    if-eqz p0, :cond_0

    .line 830
    invoke-virtual {p0, p1, p2, p3}, Ljavassist/bytecode/LineNumberAttribute;->shiftPc(IIZ)V

    :cond_0
    const-string p0, "LocalVariableTable"

    .line 832
    invoke-virtual {p5, p0}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p0

    check-cast p0, Ljavassist/bytecode/LocalVariableAttribute;

    if-eqz p0, :cond_1

    .line 835
    invoke-virtual {p0, p1, p2, p3}, Ljavassist/bytecode/LocalVariableAttribute;->shiftPc(IIZ)V

    :cond_1
    const-string p0, "LocalVariableTypeTable"

    .line 837
    invoke-virtual {p5, p0}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p0

    check-cast p0, Ljavassist/bytecode/LocalVariableAttribute;

    if-eqz p0, :cond_2

    .line 841
    invoke-virtual {p0, p1, p2, p3}, Ljavassist/bytecode/LocalVariableAttribute;->shiftPc(IIZ)V

    :cond_2
    const-string p0, "StackMapTable"

    .line 843
    invoke-virtual {p5, p0}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p0

    check-cast p0, Ljavassist/bytecode/StackMapTable;

    if-eqz p0, :cond_3

    .line 845
    invoke-virtual {p0, p1, p2, p3}, Ljavassist/bytecode/StackMapTable;->shiftPc(IIZ)V

    :cond_3
    const-string p0, "StackMap"

    .line 847
    invoke-virtual {p5, p0}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p0

    check-cast p0, Ljavassist/bytecode/StackMap;

    if-eqz p0, :cond_4

    .line 849
    invoke-virtual {p0, p1, p2, p3}, Ljavassist/bytecode/StackMap;->shiftPc(IIZ)V

    :cond_4
    return-object v6
.end method

.method private static makeExapndedCode([BLjava/util/ArrayList;II)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1220
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1221
    array-length v1, p0

    add-int/2addr v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 1223
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavassist/bytecode/CodeIterator$Branch;

    .line 1224
    invoke-virtual {v4}, Ljavassist/bytecode/CodeIterator$Branch;->deltaSize()I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1227
    :cond_0
    new-array v1, v1, [B

    .line 1229
    array-length v3, p0

    const/4 v4, 0x0

    if-lez v0, :cond_1

    .line 1233
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavassist/bytecode/CodeIterator$Branch;

    .line 1234
    iget v6, v5, Ljavassist/bytecode/CodeIterator$Branch;->orgPos:I

    goto :goto_1

    :cond_1
    move v6, v3

    move-object v5, v4

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    if-ge v7, v3, :cond_5

    if-ne v7, p2, :cond_2

    add-int v10, v8, p3

    :goto_3
    if-ge v8, v10, :cond_2

    add-int/lit8 v11, v8, 0x1

    .line 1245
    aput-byte v2, v1, v8

    move v8, v11

    goto :goto_3

    :cond_2
    if-eq v7, v6, :cond_3

    add-int/lit8 v10, v8, 0x1

    add-int/lit8 v11, v7, 0x1

    .line 1249
    aget-byte v7, p0, v7

    aput-byte v7, v1, v8

    move v8, v10

    move v7, v11

    goto :goto_2

    .line 1251
    :cond_3
    invoke-virtual {v5, v7, p0, v8, v1}, Ljavassist/bytecode/CodeIterator$Branch;->write(I[BI[B)I

    move-result v6

    add-int/2addr v7, v6

    .line 1253
    invoke-virtual {v5}, Ljavassist/bytecode/CodeIterator$Branch;->deltaSize()I

    move-result v5

    add-int/2addr v6, v5

    add-int/2addr v8, v6

    add-int/lit8 v9, v9, 0x1

    if-ge v9, v0, :cond_4

    .line 1255
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavassist/bytecode/CodeIterator$Branch;

    .line 1256
    iget v6, v5, Ljavassist/bytecode/CodeIterator$Branch;->orgPos:I

    goto :goto_2

    :cond_4
    move v6, v3

    move-object v5, v4

    goto :goto_2

    :cond_5
    return-object v1
.end method

.method private static makeJumpList([BI)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_b

    .line 1161
    invoke-static {p0, v3}, Ljavassist/bytecode/CodeIterator;->nextOpcode([BI)I

    move-result v8

    .line 1162
    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0x99

    const/16 v5, 0xa8

    if-gt v4, v2, :cond_0

    if-le v2, v5, :cond_7

    :cond_0
    const/16 v4, 0xc6

    if-eq v2, v4, :cond_7

    const/16 v4, 0xc7

    if-ne v2, v4, :cond_1

    goto/16 :goto_4

    :cond_1
    const/16 v4, 0xc8

    if-eq v2, v4, :cond_6

    const/16 v4, 0xc9

    if-ne v2, v4, :cond_2

    goto/16 :goto_3

    :cond_2
    const/16 v4, 0xaa

    if-ne v2, v4, :cond_4

    and-int/lit8 v2, v3, -0x4

    add-int/lit8 v2, v2, 0x4

    .line 1183
    invoke-static {p0, v2}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v4

    add-int/lit8 v5, v2, 0x4

    .line 1184
    invoke-static {p0, v5}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v5

    add-int/lit8 v6, v2, 0x8

    .line 1185
    invoke-static {p0, v6}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v6

    add-int/lit8 v2, v2, 0xc

    sub-int v7, v6, v5

    add-int/lit8 v7, v7, 0x1

    .line 1188
    new-array v9, v7, [I

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v7, :cond_3

    .line 1190
    invoke-static {p0, v2}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v11

    aput v11, v9, v10

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1194
    :cond_3
    new-instance v10, Ljavassist/bytecode/CodeIterator$Table;

    move-object v2, v10

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Ljavassist/bytecode/CodeIterator$Table;-><init>(IIII[I)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_4
    const/16 v4, 0xab

    if-ne v2, v4, :cond_a

    and-int/lit8 v2, v3, -0x4

    add-int/lit8 v2, v2, 0x4

    .line 1198
    invoke-static {p0, v2}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v4

    add-int/lit8 v5, v2, 0x4

    .line 1199
    invoke-static {p0, v5}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v5

    add-int/lit8 v2, v2, 0x8

    .line 1201
    new-array v6, v5, [I

    .line 1202
    new-array v7, v5, [I

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v5, :cond_5

    .line 1204
    invoke-static {p0, v2}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v10

    aput v10, v6, v9

    add-int/lit8 v10, v2, 0x4

    .line 1205
    invoke-static {p0, v10}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v10

    aput v10, v7, v9

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1209
    :cond_5
    new-instance v2, Ljavassist/bytecode/CodeIterator$Lookup;

    invoke-direct {v2, v3, v4, v6, v7}, Ljavassist/bytecode/CodeIterator$Lookup;-><init>(II[I[I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_6
    :goto_3
    add-int/lit8 v2, v3, 0x1

    .line 1178
    invoke-static {p0, v2}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v2

    .line 1179
    new-instance v4, Ljavassist/bytecode/CodeIterator$Jump32;

    invoke-direct {v4, v3, v2}, Ljavassist/bytecode/CodeIterator$Jump32;-><init>(II)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_7
    :goto_4
    add-int/lit8 v4, v3, 0x1

    .line 1167
    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    const/16 v6, 0xa7

    if-eq v2, v6, :cond_9

    if-ne v2, v5, :cond_8

    goto :goto_5

    .line 1172
    :cond_8
    new-instance v2, Ljavassist/bytecode/CodeIterator$If16;

    invoke-direct {v2, v3, v4}, Ljavassist/bytecode/CodeIterator$If16;-><init>(II)V

    goto :goto_6

    .line 1170
    :cond_9
    :goto_5
    new-instance v2, Ljavassist/bytecode/CodeIterator$Jump16;

    invoke-direct {v2, v3, v4}, Ljavassist/bytecode/CodeIterator$Jump16;-><init>(II)V

    .line 1174
    :goto_6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_7
    move v3, v8

    goto/16 :goto_0

    :cond_b
    return-object v0
.end method

.method private static newOffset(IIIIZ)I
    .locals 1

    add-int v0, p0, p1

    if-ge p0, p2, :cond_1

    if-lt p2, v0, :cond_0

    if-eqz p4, :cond_4

    if-ne p2, v0, :cond_4

    :cond_0
    add-int/2addr p1, p3

    goto :goto_1

    :cond_1
    if-ne p0, p2, :cond_2

    if-ge v0, p2, :cond_4

    goto :goto_0

    :cond_2
    if-lt v0, p2, :cond_3

    if-nez p4, :cond_4

    if-ne p2, v0, :cond_4

    :cond_3
    :goto_0
    sub-int/2addr p1, p3

    :cond_4
    :goto_1
    return p1
.end method

.method static nextOpcode([BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 741
    :try_start_0
    aget-byte v0, p0, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    and-int/lit16 v0, v0, 0xff

    .line 748
    :try_start_1
    sget-object v1, Ljavassist/bytecode/CodeIterator;->opcodeLength:[I

    aget v1, v1, v0

    if-lez v1, :cond_0

    add-int/2addr p1, v1

    return p1

    :cond_0
    const/16 v1, 0xc4

    if-ne v0, v1, :cond_2

    add-int/lit8 v1, p1, 0x1

    .line 752
    aget-byte p0, p0, v1

    const/16 v0, -0x7c

    if-ne p0, v0, :cond_1

    add-int/lit8 p1, p1, 0x6

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x4

    return p1

    :cond_2
    and-int/lit8 p1, p1, -0x4

    add-int/lit8 p1, p1, 0x8

    const/16 v1, 0xab

    if-ne v0, v1, :cond_3

    .line 759
    invoke-static {p0, p1}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    add-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x4

    return p1

    :cond_3
    const/16 v1, 0xaa

    if-ne v0, v1, :cond_4

    .line 763
    invoke-static {p0, p1}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v1

    add-int/lit8 v2, p1, 0x4

    .line 764
    invoke-static {p0, v2}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x4

    add-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x8

    return p1

    .line 775
    :catch_0
    :cond_4
    new-instance p0, Ljavassist/bytecode/BadBytecode;

    invoke-direct {p0, v0}, Ljavassist/bytecode/BadBytecode;-><init>(I)V

    throw p0

    .line 744
    :catch_1
    new-instance p0, Ljavassist/bytecode/BadBytecode;

    const-string p1, "invalid opcode address"

    invoke-direct {p0, p1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private skipSuperConstructor0(I)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->begin()V

    .line 271
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 272
    iget-object v1, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getDeclaringClass()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 274
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 275
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v4

    .line 276
    invoke-virtual {p0, v4}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v5

    const/16 v6, 0xbb

    if-ne v5, v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v6, 0xb7

    if-ne v5, v6, :cond_0

    .line 280
    iget-object v5, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    add-int/lit8 v6, v4, 0x1

    invoke-static {v5, v6}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v5

    .line 281
    invoke-virtual {v0, v5}, Ljavassist/bytecode/ConstPool;->getMethodrefName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "<init>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_0

    if-gez p1, :cond_2

    return v4

    .line 286
    :cond_2
    invoke-virtual {v0, v5}, Ljavassist/bytecode/ConstPool;->getMethodrefClassName(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-lez p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-ne v0, v2, :cond_4

    return v4

    .line 295
    :cond_4
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->begin()V

    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public append([B)I
    .locals 6

    .line 668
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v0

    .line 669
    array-length v1, p1

    if-gtz v1, :cond_0

    return v0

    .line 673
    :cond_0
    invoke-virtual {p0, v1}, Ljavassist/bytecode/CodeIterator;->appendGap(I)V

    .line 674
    iget-object v2, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    add-int v4, v3, v0

    .line 676
    aget-byte v5, p1, v3

    aput-byte v5, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public append(Ljavassist/bytecode/ExceptionTable;I)V
    .locals 2

    .line 712
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v0

    .line 713
    invoke-virtual {v0}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Ljavassist/bytecode/ExceptionTable;->add(ILjavassist/bytecode/ExceptionTable;I)V

    return-void
.end method

.method public appendGap(I)V
    .locals 6

    .line 687
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    .line 688
    array-length v1, v0

    add-int/2addr p1, v1

    .line 689
    new-array v2, p1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 693
    aget-byte v5, v0, v4

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p1, :cond_1

    .line 696
    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 698
    :cond_1
    iget-object p1, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    invoke-virtual {p1, v2}, Ljavassist/bytecode/CodeAttribute;->setCode([B)V

    .line 699
    iput-object v2, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    .line 700
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/CodeIterator;->endPos:I

    return-void
.end method

.method public begin()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Ljavassist/bytecode/CodeIterator;->mark:I

    iput v0, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    .line 53
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/CodeIterator;->endPos:I

    return-void
.end method

.method public byteAt(I)I
    .locals 1

    .line 113
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public get()Ljavassist/bytecode/CodeAttribute;
    .locals 1

    .line 100
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    return-object v0
.end method

.method public getCodeLength()I
    .locals 1

    .line 107
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    array-length v0, v0

    return v0
.end method

.method public getMark()I
    .locals 1

    .line 94
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->mark:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 171
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    iget v1, p0, Ljavassist/bytecode/CodeIterator;->endPos:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public insert([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 320
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljavassist/bytecode/CodeIterator;->insert0(I[BZ)I

    move-result p1

    return p1
.end method

.method public insert(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const/4 v0, 0x0

    .line 345
    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/CodeIterator;->insert0(I[BZ)I

    return-void
.end method

.method public insert(Ljavassist/bytecode/ExceptionTable;I)V
    .locals 2

    .line 658
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Ljavassist/bytecode/ExceptionTable;->add(ILjavassist/bytecode/ExceptionTable;I)V

    return-void
.end method

.method public insertAt(I[B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const/4 v0, 0x0

    .line 369
    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/CodeIterator;->insert0(I[BZ)I

    move-result p1

    return p1
.end method

.method public insertEx([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 393
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Ljavassist/bytecode/CodeIterator;->insert0(I[BZ)I

    move-result p1

    return p1
.end method

.method public insertEx(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const/4 v0, 0x1

    .line 418
    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/CodeIterator;->insert0(I[BZ)I

    return-void
.end method

.method public insertExAt(I[B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const/4 v0, 0x1

    .line 442
    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/CodeIterator;->insert0(I[BZ)I

    move-result p1

    return p1
.end method

.method public insertExGap(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 521
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Ljavassist/bytecode/CodeIterator;->insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;

    move-result-object p1

    iget p1, p1, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    return p1
.end method

.method public insertExGap(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const/4 v0, 0x1

    .line 541
    invoke-virtual {p0, p1, p2, v0}, Ljavassist/bytecode/CodeIterator;->insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;

    move-result-object p1

    iget p1, p1, Ljavassist/bytecode/CodeIterator$Gap;->length:I

    return p1
.end method

.method public insertGap(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 482
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Ljavassist/bytecode/CodeIterator;->insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;

    move-result-object p1

    iget p1, p1, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    return p1
.end method

.method public insertGap(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const/4 v0, 0x0

    .line 502
    invoke-virtual {p0, p1, p2, v0}, Ljavassist/bytecode/CodeIterator;->insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;

    move-result-object p1

    iget p1, p1, Ljavassist/bytecode/CodeIterator$Gap;->length:I

    return p1
.end method

.method public insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 600
    new-instance v8, Ljavassist/bytecode/CodeIterator$Gap;

    invoke-direct {v8}, Ljavassist/bytecode/CodeIterator$Gap;-><init>()V

    if-gtz p2, :cond_0

    .line 602
    iput p1, v8, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    const/4 p1, 0x0

    .line 603
    iput p1, v8, Ljavassist/bytecode/CodeIterator$Gap;->length:I

    return-object v8

    .line 609
    :cond_0
    iget-object v1, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    array-length v0, v1

    add-int/2addr v0, p2

    const/16 v2, 0x7fff

    if-le v0, v2, :cond_1

    .line 611
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v5

    iget-object v6, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Ljavassist/bytecode/CodeIterator;->insertGapCore0w([BIIZLjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;Ljavassist/bytecode/CodeIterator$Gap;)[B

    move-result-object p1

    .line 613
    iget p3, v8, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    goto :goto_0

    .line 617
    :cond_1
    iget v6, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    .line 618
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v4

    iget-object v5, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    move-object v0, v1

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Ljavassist/bytecode/CodeIterator;->insertGapCore0([BIIZLjavassist/bytecode/ExceptionTable;Ljavassist/bytecode/CodeAttribute;)[B

    move-result-object p2

    .line 621
    array-length v0, p2

    iget-object v1, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 622
    iput p1, v8, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    .line 623
    iput v0, v8, Ljavassist/bytecode/CodeIterator$Gap;->length:I

    if-lt v6, p1, :cond_2

    add-int/2addr v6, v0

    .line 625
    iput v6, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    .line 627
    :cond_2
    iget v1, p0, Ljavassist/bytecode/CodeIterator;->mark:I

    if-gt v1, p1, :cond_3

    if-ne v1, p1, :cond_4

    if-eqz p3, :cond_4

    :cond_3
    add-int/2addr v1, v0

    .line 628
    iput v1, p0, Ljavassist/bytecode/CodeIterator;->mark:I

    :cond_4
    move p3, p1

    move-object p1, p2

    move p2, v0

    .line 631
    :goto_0
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->codeAttr:Ljavassist/bytecode/CodeAttribute;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/CodeAttribute;->setCode([B)V

    .line 632
    iput-object p1, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    .line 633
    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/CodeIterator;->endPos:I

    .line 634
    invoke-virtual {p0, p3, p2}, Ljavassist/bytecode/CodeIterator;->updateCursors(II)V

    return-object v8
.end method

.method public lookAhead()I
    .locals 1

    .line 198
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    return v0
.end method

.method public move(I)V
    .locals 0

    .line 69
    iput p1, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    return-void
.end method

.method public next()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 184
    iget v0, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    .line 185
    iget-object v1, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    invoke-static {v1, v0}, Ljavassist/bytecode/CodeIterator;->nextOpcode([BI)I

    move-result v1

    iput v1, p0, Ljavassist/bytecode/CodeIterator;->currentPos:I

    return v0
.end method

.method public s16bitAt(I)I
    .locals 1

    .line 133
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readS16bit([BI)I

    move-result p1

    return p1
.end method

.method public s32bitAt(I)I
    .locals 1

    .line 147
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result p1

    return p1
.end method

.method public setMark(I)V
    .locals 0

    .line 83
    iput p1, p0, Ljavassist/bytecode/CodeIterator;->mark:I

    return-void
.end method

.method public skipConstructor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const/4 v0, -0x1

    .line 220
    invoke-direct {p0, v0}, Ljavassist/bytecode/CodeIterator;->skipSuperConstructor0(I)I

    move-result v0

    return v0
.end method

.method public skipSuperConstructor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const/4 v0, 0x0

    .line 242
    invoke-direct {p0, v0}, Ljavassist/bytecode/CodeIterator;->skipSuperConstructor0(I)I

    move-result v0

    return v0
.end method

.method public skipThisConstructor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const/4 v0, 0x1

    .line 264
    invoke-direct {p0, v0}, Ljavassist/bytecode/CodeIterator;->skipSuperConstructor0(I)I

    move-result v0

    return v0
.end method

.method public u16bitAt(I)I
    .locals 1

    .line 126
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    return p1
.end method

.method protected updateCursors(II)V
    .locals 0

    return-void
.end method

.method public write([BI)V
    .locals 5

    .line 163
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 165
    iget-object v2, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    add-int/lit8 v3, p2, 0x1

    aget-byte v4, p1, v1

    aput-byte v4, v2, p2

    add-int/lit8 v1, v1, 0x1

    move p2, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write16bit(II)V
    .locals 1

    .line 140
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    invoke-static {p1, v0, p2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    return-void
.end method

.method public write32bit(II)V
    .locals 1

    .line 154
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    invoke-static {p1, v0, p2}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    return-void
.end method

.method public writeByte(II)V
    .locals 1

    .line 119
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator;->bytecode:[B

    int-to-byte p1, p1

    aput-byte p1, v0, p2

    return-void
.end method
