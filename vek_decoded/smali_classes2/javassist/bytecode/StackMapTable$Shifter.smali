.class Ljavassist/bytecode/StackMapTable$Shifter;
.super Ljavassist/bytecode/StackMapTable$Walker;
.source "StackMapTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMapTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Shifter"
.end annotation


# instance fields
.field private exclusive:Z

.field private gap:I

.field private position:I

.field private stackMap:Ljavassist/bytecode/StackMapTable;

.field private updatedInfo:[B

.field private where:I


# direct methods
.method public constructor <init>(Ljavassist/bytecode/StackMapTable;IIZ)V
    .locals 0

    .line 803
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$Walker;-><init>(Ljavassist/bytecode/StackMapTable;)V

    .line 804
    iput-object p1, p0, Ljavassist/bytecode/StackMapTable$Shifter;->stackMap:Ljavassist/bytecode/StackMapTable;

    .line 805
    iput p2, p0, Ljavassist/bytecode/StackMapTable$Shifter;->where:I

    .line 806
    iput p3, p0, Ljavassist/bytecode/StackMapTable$Shifter;->gap:I

    const/4 p1, 0x0

    .line 807
    iput p1, p0, Ljavassist/bytecode/StackMapTable$Shifter;->position:I

    const/4 p1, 0x0

    .line 808
    iput-object p1, p0, Ljavassist/bytecode/StackMapTable$Shifter;->updatedInfo:[B

    .line 809
    iput-boolean p4, p0, Ljavassist/bytecode/StackMapTable$Shifter;->exclusive:Z

    return-void
.end method

.method private static insertGap([BII)[B
    .locals 6

    .line 852
    array-length v0, p0

    add-int v1, v0, p2

    .line 853
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    if-ge v3, p1, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    move v4, p2

    :goto_1
    add-int/2addr v4, v3

    .line 855
    aget-byte v5, p0, v3

    aput-byte v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private update(II)V
    .locals 5

    .line 874
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Shifter;->position:I

    add-int v1, v0, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    add-int/2addr v1, v4

    .line 875
    iput v1, p0, Ljavassist/bytecode/StackMapTable$Shifter;->position:I

    .line 877
    iget-boolean v4, p0, Ljavassist/bytecode/StackMapTable$Shifter;->exclusive:Z

    if-eqz v4, :cond_1

    .line 878
    iget v4, p0, Ljavassist/bytecode/StackMapTable$Shifter;->where:I

    if-ge v0, v4, :cond_2

    if-gt v4, v1, :cond_2

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    .line 880
    :cond_1
    iget v4, p0, Ljavassist/bytecode/StackMapTable$Shifter;->where:I

    if-gt v0, v4, :cond_2

    if-ge v4, v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 883
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Shifter;->gap:I

    add-int/2addr p2, v0

    .line 884
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Shifter;->info:[B

    add-int/2addr p1, v3

    invoke-static {p2, v0, p1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 885
    iget p1, p0, Ljavassist/bytecode/StackMapTable$Shifter;->position:I

    iget p2, p0, Ljavassist/bytecode/StackMapTable$Shifter;->gap:I

    add-int/2addr p1, p2

    iput p1, p0, Ljavassist/bytecode/StackMapTable$Shifter;->position:I

    :cond_3
    return-void
.end method

.method private update(IIII)V
    .locals 5

    .line 827
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Shifter;->position:I

    add-int v1, v0, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    add-int/2addr v1, v4

    .line 828
    iput v1, p0, Ljavassist/bytecode/StackMapTable$Shifter;->position:I

    .line 830
    iget-boolean v4, p0, Ljavassist/bytecode/StackMapTable$Shifter;->exclusive:Z

    if-eqz v4, :cond_1

    .line 831
    iget v4, p0, Ljavassist/bytecode/StackMapTable$Shifter;->where:I

    if-ge v0, v4, :cond_2

    if-gt v4, v1, :cond_2

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    .line 833
    :cond_1
    iget v4, p0, Ljavassist/bytecode/StackMapTable$Shifter;->where:I

    if-gt v0, v4, :cond_2

    if-ge v4, v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    .line 836
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Shifter;->gap:I

    add-int v2, p2, v0

    add-int/2addr v1, v0

    .line 837
    iput v1, p0, Ljavassist/bytecode/StackMapTable$Shifter;->position:I

    const/16 v0, 0x40

    if-ge v2, v0, :cond_3

    .line 839
    iget-object p2, p0, Ljavassist/bytecode/StackMapTable$Shifter;->info:[B

    add-int/2addr v2, p3

    int-to-byte p3, v2

    aput-byte p3, p2, p1

    goto :goto_3

    :cond_3
    if-ge p2, v0, :cond_4

    .line 841
    iget-object p2, p0, Ljavassist/bytecode/StackMapTable$Shifter;->info:[B

    const/4 p3, 0x2

    invoke-static {p2, p1, p3}, Ljavassist/bytecode/StackMapTable$Shifter;->insertGap([BII)[B

    move-result-object p2

    int-to-byte p3, p4

    .line 842
    aput-byte p3, p2, p1

    add-int/2addr p1, v3

    .line 843
    invoke-static {v2, p2, p1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 844
    iput-object p2, p0, Ljavassist/bytecode/StackMapTable$Shifter;->updatedInfo:[B

    goto :goto_3

    .line 847
    :cond_4
    iget-object p2, p0, Ljavassist/bytecode/StackMapTable$Shifter;->info:[B

    add-int/2addr p1, v3

    invoke-static {v2, p2, p1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public appendFrame(II[I[I)V
    .locals 0

    .line 865
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/StackMapTable$Shifter;->update(II)V

    return-void
.end method

.method public chopFrame(III)V
    .locals 0

    .line 861
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/StackMapTable$Shifter;->update(II)V

    return-void
.end method

.method public doit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 813
    invoke-virtual {p0}, Ljavassist/bytecode/StackMapTable$Shifter;->parse()V

    .line 814
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Shifter;->updatedInfo:[B

    if-eqz v0, :cond_0

    .line 815
    iget-object v1, p0, Ljavassist/bytecode/StackMapTable$Shifter;->stackMap:Ljavassist/bytecode/StackMapTable;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/StackMapTable;->set([B)V

    :cond_0
    return-void
.end method

.method public fullFrame(II[I[I[I[I)V
    .locals 0

    .line 870
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/StackMapTable$Shifter;->update(II)V

    return-void
.end method

.method public sameFrame(II)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xfb

    .line 819
    invoke-direct {p0, p1, p2, v0, v1}, Ljavassist/bytecode/StackMapTable$Shifter;->update(IIII)V

    return-void
.end method

.method public sameLocals(IIII)V
    .locals 0

    const/16 p3, 0x40

    const/16 p4, 0xf7

    .line 823
    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/bytecode/StackMapTable$Shifter;->update(IIII)V

    return-void
.end method
