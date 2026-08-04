.class Ljavassist/bytecode/ByteVector;
.super Ljava/lang/Object;
.source "Bytecode.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private buffer:[B

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 27
    iput-object v0, p0, Ljavassist/bytecode/ByteVector;->buffer:[B

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Ljavassist/bytecode/ByteVector;->size:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p0, v0}, Ljavassist/bytecode/ByteVector;->addGap(I)V

    .line 61
    iget-object v1, p0, Ljavassist/bytecode/ByteVector;->buffer:[B

    iget v2, p0, Ljavassist/bytecode/ByteVector;->size:I

    sub-int/2addr v2, v0

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    return-void
.end method

.method public add(II)V
    .locals 3

    const/4 v0, 0x2

    .line 65
    invoke-virtual {p0, v0}, Ljavassist/bytecode/ByteVector;->addGap(I)V

    .line 66
    iget-object v0, p0, Ljavassist/bytecode/ByteVector;->buffer:[B

    iget v1, p0, Ljavassist/bytecode/ByteVector;->size:I

    add-int/lit8 v2, v1, -0x2

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    add-int/lit8 v1, v1, -0x1

    int-to-byte p1, p2

    .line 67
    aput-byte p1, v0, v1

    return-void
.end method

.method public add(IIII)V
    .locals 3

    const/4 v0, 0x4

    .line 71
    invoke-virtual {p0, v0}, Ljavassist/bytecode/ByteVector;->addGap(I)V

    .line 72
    iget-object v0, p0, Ljavassist/bytecode/ByteVector;->buffer:[B

    iget v1, p0, Ljavassist/bytecode/ByteVector;->size:I

    add-int/lit8 v2, v1, -0x4

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    add-int/lit8 p1, v1, -0x3

    int-to-byte p2, p2

    .line 73
    aput-byte p2, v0, p1

    add-int/lit8 p1, v1, -0x2

    int-to-byte p2, p3

    .line 74
    aput-byte p2, v0, p1

    add-int/lit8 v1, v1, -0x1

    int-to-byte p1, p4

    .line 75
    aput-byte p1, v0, v1

    return-void
.end method

.method public addGap(I)V
    .locals 4

    .line 79
    iget v0, p0, Ljavassist/bytecode/ByteVector;->size:I

    add-int v1, v0, p1

    iget-object v2, p0, Ljavassist/bytecode/ByteVector;->buffer:[B

    array-length v3, v2

    if-le v1, v3, :cond_1

    shl-int/lit8 v1, v0, 0x1

    add-int v3, v0, p1

    if-ge v1, v3, :cond_0

    add-int v1, v0, p1

    .line 84
    :cond_0
    new-array v1, v1, [B

    const/4 v3, 0x0

    .line 85
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iput-object v1, p0, Ljavassist/bytecode/ByteVector;->buffer:[B

    .line 89
    :cond_1
    iget v0, p0, Ljavassist/bytecode/ByteVector;->size:I

    add-int/2addr v0, p1

    iput v0, p0, Ljavassist/bytecode/ByteVector;->size:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 32
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/ByteVector;

    .line 33
    iget-object v1, p0, Ljavassist/bytecode/ByteVector;->buffer:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    iput-object v1, v0, Ljavassist/bytecode/ByteVector;->buffer:[B

    return-object v0
.end method

.method public final copy()[B
    .locals 4

    .line 40
    iget v0, p0, Ljavassist/bytecode/ByteVector;->size:I

    new-array v1, v0, [B

    .line 41
    iget-object v2, p0, Ljavassist/bytecode/ByteVector;->buffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public final getSize()I
    .locals 1

    .line 37
    iget v0, p0, Ljavassist/bytecode/ByteVector;->size:I

    return v0
.end method

.method public read(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 46
    iget v0, p0, Ljavassist/bytecode/ByteVector;->size:I

    if-le v0, p1, :cond_0

    .line 49
    iget-object v0, p0, Ljavassist/bytecode/ByteVector;->buffer:[B

    aget-byte p1, v0, p1

    return p1

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public write(II)V
    .locals 1

    if-ltz p1, :cond_0

    .line 53
    iget v0, p0, Ljavassist/bytecode/ByteVector;->size:I

    if-le v0, p1, :cond_0

    .line 56
    iget-object v0, p0, Ljavassist/bytecode/ByteVector;->buffer:[B

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    return-void

    .line 54
    :cond_0
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method
