.class public Ljavassist/bytecode/StackMapTable$Writer;
.super Ljava/lang/Object;
.source "StackMapTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMapTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Writer"
.end annotation


# instance fields
.field numOfEntries:I

.field output:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    const/4 p1, 0x0

    .line 537
    iput p1, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    .line 538
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 539
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method private write16(I)V
    .locals 2

    .line 673
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 674
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method private writeTypeInfo(II)V
    .locals 1

    .line 667
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 669
    :cond_0
    invoke-direct {p0, p2}, Ljavassist/bytecode/StackMapTable$Writer;->write16(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public appendFrame(I[I[I)V
    .locals 3

    .line 623
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    .line 624
    array-length v0, p2

    .line 625
    iget-object v1, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    add-int/lit16 v2, v0, 0xfb

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 626
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$Writer;->write16(I)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 628
    aget v1, p2, p1

    aget v2, p3, p1

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/StackMapTable$Writer;->writeTypeInfo(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public chopFrame(II)V
    .locals 1

    .line 604
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    .line 605
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    rsub-int p2, p2, 0xfb

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 606
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$Writer;->write16(I)V

    return-void
.end method

.method public fullFrame(I[I[I[I[I)V
    .locals 4

    .line 652
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    .line 653
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 654
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$Writer;->write16(I)V

    .line 655
    array-length p1, p2

    .line 656
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$Writer;->write16(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 658
    aget v2, p2, v1

    aget v3, p3, v1

    invoke-direct {p0, v2, v3}, Ljavassist/bytecode/StackMapTable$Writer;->writeTypeInfo(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 660
    :cond_0
    array-length p1, p4

    .line 661
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$Writer;->write16(I)V

    :goto_1
    if-ge v0, p1, :cond_1

    .line 663
    aget p2, p4, v0

    aget p3, p5, v0

    invoke-direct {p0, p2, p3}, Ljavassist/bytecode/StackMapTable$Writer;->writeTypeInfo(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public sameFrame(I)V
    .locals 2

    .line 566
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    const/16 v0, 0x40

    if-ge p1, v0, :cond_0

    .line 568
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 570
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xfb

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 571
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$Writer;->write16(I)V

    :goto_0
    return-void
.end method

.method public sameLocals(III)V
    .locals 2

    .line 587
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    const/16 v0, 0x40

    if-ge p1, v0, :cond_0

    .line 589
    iget-object v1, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    add-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 591
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xf7

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 592
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$Writer;->write16(I)V

    .line 595
    :goto_0
    invoke-direct {p0, p2, p3}, Ljavassist/bytecode/StackMapTable$Writer;->writeTypeInfo(II)V

    return-void
.end method

.method public toByteArray()[B
    .locals 3

    .line 546
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Writer;->output:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 547
    iget v1, p0, Ljavassist/bytecode/StackMapTable$Writer;->numOfEntries:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    return-object v0
.end method

.method public toStackMapTable(Ljavassist/bytecode/ConstPool;)Ljavassist/bytecode/StackMapTable;
    .locals 2

    .line 559
    new-instance v0, Ljavassist/bytecode/StackMapTable;

    invoke-virtual {p0}, Ljavassist/bytecode/StackMapTable$Writer;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavassist/bytecode/StackMapTable;-><init>(Ljavassist/bytecode/ConstPool;[B)V

    return-object v0
.end method
