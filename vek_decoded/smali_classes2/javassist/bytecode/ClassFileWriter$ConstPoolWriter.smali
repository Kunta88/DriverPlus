.class public final Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;
.super Ljava/lang/Object;
.source "ClassFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/ClassFileWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConstPoolWriter"
.end annotation


# instance fields
.field protected num:I

.field output:Ljavassist/bytecode/ByteStream;

.field protected startPos:I


# direct methods
.method constructor <init>(Ljavassist/bytecode/ByteStream;)V
    .locals 1

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iput-object p1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    .line 528
    invoke-virtual {p1}, Ljavassist/bytecode/ByteStream;->getPos()I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->startPos:I

    const/4 p1, 0x1

    .line 529
    iput p1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    .line 530
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    return-void
.end method


# virtual methods
.method public addClassInfo(I)I
    .locals 2

    .line 571
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 572
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 573
    iget p1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return p1
.end method

.method public addClassInfo(Ljava/lang/String;)I
    .locals 2

    .line 558
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addUtf8Info(Ljava/lang/String;)I

    move-result p1

    .line 559
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 560
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 561
    iget p1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return p1
.end method

.method public addClassInfo([Ljava/lang/String;)[I
    .locals 4

    .line 539
    array-length v0, p1

    .line 540
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 542
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addClassInfo(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public addDoubleInfo(D)I
    .locals 2

    .line 706
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 707
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/ByteStream;->writeDouble(D)V

    .line 708
    iget p1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 p2, p1, 0x2

    .line 709
    iput p2, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return p1
.end method

.method public addFieldrefInfo(II)I
    .locals 2

    .line 609
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 610
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 611
    iget-object p1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {p1, p2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 612
    iget p1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return p1
.end method

.method public addFloatInfo(F)I
    .locals 2

    .line 680
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 681
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeFloat(F)V

    .line 682
    iget p1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return p1
.end method

.method public addIntegerInfo(I)I
    .locals 2

    .line 668
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 669
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeInt(I)V

    .line 670
    iget p1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return p1
.end method

.method public addInterfaceMethodrefInfo(II)I
    .locals 2

    .line 639
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 640
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 641
    iget-object p1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {p1, p2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 642
    iget p1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return p1
.end method

.method public addLongInfo(J)I
    .locals 2

    .line 692
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 693
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/ByteStream;->writeLong(J)V

    .line 694
    iget p1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 p2, p1, 0x2

    .line 695
    iput p2, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return p1
.end method

.method public addMethodrefInfo(II)I
    .locals 2

    .line 623
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 624
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 625
    iget-object p1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {p1, p2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 626
    iget p1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return p1
.end method

.method public addNameAndTypeInfo(II)I
    .locals 2

    .line 595
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 596
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 597
    iget-object p1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {p1, p2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 598
    iget p1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return p1
.end method

.method public addNameAndTypeInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 584
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addUtf8Info(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addUtf8Info(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addNameAndTypeInfo(II)I

    move-result p1

    return p1
.end method

.method public addStringInfo(Ljava/lang/String;)I
    .locals 2

    .line 655
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addUtf8Info(Ljava/lang/String;)I

    move-result p1

    .line 656
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 657
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 658
    iget p1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return p1
.end method

.method public addUtf8Info(Ljava/lang/String;)I
    .locals 2

    .line 720
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 721
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeUTF(Ljava/lang/String;)V

    .line 722
    iget p1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    return p1
.end method

.method end()V
    .locals 3

    .line 729
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->output:Ljavassist/bytecode/ByteStream;

    iget v1, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->startPos:I

    iget v2, p0, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->num:I

    invoke-virtual {v0, v1, v2}, Ljavassist/bytecode/ByteStream;->writeShort(II)V

    return-void
.end method
