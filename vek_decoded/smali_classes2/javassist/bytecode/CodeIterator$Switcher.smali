.class abstract Ljavassist/bytecode/CodeIterator$Switcher;
.super Ljavassist/bytecode/CodeIterator$Branch;
.source "CodeIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/CodeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Switcher"
.end annotation


# instance fields
.field defaultByte:I

.field gap:I

.field offsets:[I


# direct methods
.method constructor <init>(II[I)V
    .locals 0

    .line 1453
    invoke-direct {p0, p1}, Ljavassist/bytecode/CodeIterator$Branch;-><init>(I)V

    and-int/lit8 p1, p1, 0x3

    rsub-int/lit8 p1, p1, 0x3

    .line 1454
    iput p1, p0, Ljavassist/bytecode/CodeIterator$Switcher;->gap:I

    .line 1455
    iput p2, p0, Ljavassist/bytecode/CodeIterator$Switcher;->defaultByte:I

    .line 1456
    iput-object p3, p0, Ljavassist/bytecode/CodeIterator$Switcher;->offsets:[I

    return-void
.end method


# virtual methods
.method adjustOffsets(II)V
    .locals 3

    .line 1515
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Switcher;->defaultByte:I

    if-ne v0, p1, :cond_0

    sub-int/2addr v0, p2

    .line 1516
    iput v0, p0, Ljavassist/bytecode/CodeIterator$Switcher;->defaultByte:I

    :cond_0
    const/4 v0, 0x0

    .line 1518
    :goto_0
    iget-object v1, p0, Ljavassist/bytecode/CodeIterator$Switcher;->offsets:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1519
    aget v2, v1, v0

    if-ne v2, p1, :cond_1

    .line 1520
    aget v2, v1, v0

    sub-int/2addr v2, p2

    aput v2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method deltaSize()I
    .locals 2

    .line 1481
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Switcher;->gap:I

    iget v1, p0, Ljavassist/bytecode/CodeIterator$Switcher;->orgPos:I

    and-int/lit8 v1, v1, 0x3

    rsub-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    return v0
.end method

.method gapChanged()I
    .locals 2

    .line 1470
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Switcher;->pos:I

    and-int/lit8 v0, v0, 0x3

    rsub-int/lit8 v0, v0, 0x3

    .line 1471
    iget v1, p0, Ljavassist/bytecode/CodeIterator$Switcher;->gap:I

    if-le v0, v1, :cond_0

    sub-int v1, v0, v1

    .line 1473
    iput v0, p0, Ljavassist/bytecode/CodeIterator$Switcher;->gap:I

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method shift(IIZ)V
    .locals 5

    .line 1460
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Switcher;->pos:I

    .line 1461
    iget v1, p0, Ljavassist/bytecode/CodeIterator$Switcher;->defaultByte:I

    invoke-static {v0, v1, p1, p2, p3}, Ljavassist/bytecode/CodeIterator$Switcher;->shiftOffset(IIIIZ)I

    move-result v1

    iput v1, p0, Ljavassist/bytecode/CodeIterator$Switcher;->defaultByte:I

    .line 1462
    iget-object v1, p0, Ljavassist/bytecode/CodeIterator$Switcher;->offsets:[I

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1464
    iget-object v3, p0, Ljavassist/bytecode/CodeIterator$Switcher;->offsets:[I

    aget v4, v3, v2

    invoke-static {v0, v4, p1, p2, p3}, Ljavassist/bytecode/CodeIterator$Switcher;->shiftOffset(IIIIZ)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1466
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljavassist/bytecode/CodeIterator$Branch;->shift(IIZ)V

    return-void
.end method

.method abstract tableSize()I
.end method

.method write(I[BI[B)I
    .locals 4

    .line 1485
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Switcher;->pos:I

    and-int/lit8 v0, v0, 0x3

    rsub-int/lit8 v0, v0, 0x3

    .line 1486
    iget v1, p0, Ljavassist/bytecode/CodeIterator$Switcher;->gap:I

    sub-int/2addr v1, v0

    .line 1487
    iget v2, p0, Ljavassist/bytecode/CodeIterator$Switcher;->orgPos:I

    and-int/lit8 v2, v2, 0x3

    rsub-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {p0}, Ljavassist/bytecode/CodeIterator$Switcher;->tableSize()I

    move-result v3

    add-int/2addr v2, v3

    .line 1488
    invoke-virtual {p0, v2, v1}, Ljavassist/bytecode/CodeIterator$Switcher;->adjustOffsets(II)V

    add-int/lit8 v2, p3, 0x1

    .line 1489
    aget-byte p1, p2, p1

    aput-byte p1, p4, p3

    :goto_0
    add-int/lit8 p1, v0, -0x1

    const/4 p2, 0x0

    if-lez v0, :cond_0

    add-int/lit8 p3, v2, 0x1

    .line 1491
    aput-byte p2, p4, v2

    move v0, p1

    move v2, p3

    goto :goto_0

    .line 1493
    :cond_0
    iget p1, p0, Ljavassist/bytecode/CodeIterator$Switcher;->defaultByte:I

    invoke-static {p1, p4, v2}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    add-int/lit8 p1, v2, 0x4

    .line 1494
    invoke-virtual {p0, p1, p4}, Ljavassist/bytecode/CodeIterator$Switcher;->write2(I[B)I

    move-result p1

    add-int/lit8 p3, p1, 0x4

    add-int/2addr v2, p3

    :goto_1
    add-int/lit8 p3, v1, -0x1

    if-lez v1, :cond_1

    add-int/lit8 v0, v2, 0x1

    .line 1497
    aput-byte p2, p4, v2

    move v1, p3

    move v2, v0

    goto :goto_1

    .line 1499
    :cond_1
    iget p2, p0, Ljavassist/bytecode/CodeIterator$Switcher;->orgPos:I

    and-int/lit8 p2, p2, 0x3

    rsub-int/lit8 p2, p2, 0x3

    add-int/lit8 p2, p2, 0x5

    add-int/2addr p2, p1

    return p2
.end method

.method abstract write2(I[B)I
.end method
