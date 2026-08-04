.class final Ljavassist/bytecode/ByteStream;
.super Ljava/io/OutputStream;
.source "ByteStream.java"


# instance fields
.field private buf:[B

.field private count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 26
    invoke-direct {p0, v0}, Ljavassist/bytecode/ByteStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 29
    new-array p1, p1, [B

    iput-object p1, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Ljavassist/bytecode/ByteStream;->count:I

    return-void
.end method

.method private writeUTF2(Ljava/lang/String;II)V
    .locals 7

    move v1, p2

    move v0, p3

    :goto_0
    const/16 v2, 0x7f

    const/16 v3, 0x7ff

    if-ge v0, p2, :cond_3

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-le v4, v3, :cond_0

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    if-le v4, v2, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const v0, 0xffff

    if-gt v1, v0, :cond_7

    add-int/lit8 v0, v1, 0x2

    .line 133
    invoke-virtual {p0, v0}, Ljavassist/bytecode/ByteStream;->enlarge(I)V

    .line 134
    iget v0, p0, Ljavassist/bytecode/ByteStream;->count:I

    .line 135
    iget-object v4, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    ushr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    .line 136
    aput-byte v5, v4, v0

    add-int/lit8 v5, v0, 0x1

    int-to-byte v1, v1

    .line 137
    aput-byte v1, v4, v5

    add-int/lit8 v1, p3, 0x2

    add-int/2addr v0, v1

    :goto_2
    if-ge p3, p2, :cond_6

    .line 140
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v5, 0x1

    if-gt v5, v1, :cond_4

    if-gt v1, v2, :cond_4

    add-int/lit8 v5, v0, 0x1

    int-to-byte v1, v1

    .line 142
    aput-byte v1, v4, v0

    move v0, v5

    goto :goto_3

    :cond_4
    if-le v1, v3, :cond_5

    shr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0xf

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    .line 144
    aput-byte v5, v4, v0

    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, v1, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    .line 145
    aput-byte v6, v4, v5

    add-int/lit8 v5, v0, 0x2

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    .line 146
    aput-byte v1, v4, v5

    add-int/lit8 v0, v0, 0x3

    goto :goto_3

    :cond_5
    shr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x1f

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    .line 150
    aput-byte v5, v4, v0

    add-int/lit8 v5, v0, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    .line 151
    aput-byte v1, v4, v5

    add-int/lit8 v0, v0, 0x2

    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 156
    :cond_6
    iput v0, p0, Ljavassist/bytecode/ByteStream;->count:I

    return-void

    .line 130
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "encoded string too long: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " bytes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public enlarge(I)V
    .locals 3

    .line 186
    iget v0, p0, Ljavassist/bytecode/ByteStream;->count:I

    add-int/2addr p1, v0

    .line 187
    iget-object v1, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    array-length v2, v1

    if-le p1, v2, :cond_1

    .line 188
    array-length v2, v1

    shl-int/lit8 v2, v2, 0x1

    if-le v2, p1, :cond_0

    move p1, v2

    .line 189
    :cond_0
    new-array p1, p1, [B

    const/4 v2, 0x0

    .line 190
    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    iput-object p1, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    :cond_1
    return-void
.end method

.method public getPos()I
    .locals 1

    .line 33
    iget v0, p0, Ljavassist/bytecode/ByteStream;->count:I

    return v0
.end method

.method public size()I
    .locals 1

    .line 34
    iget v0, p0, Ljavassist/bytecode/ByteStream;->count:I

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .line 176
    iget v0, p0, Ljavassist/bytecode/ByteStream;->count:I

    new-array v1, v0, [B

    .line 177
    iget-object v2, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public write(I)V
    .locals 3

    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, v0}, Ljavassist/bytecode/ByteStream;->enlarge(I)V

    .line 53
    iget v1, p0, Ljavassist/bytecode/ByteStream;->count:I

    .line 54
    iget-object v2, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    int-to-byte p1, p1

    aput-byte p1, v2, v1

    add-int/2addr v1, v0

    .line 55
    iput v1, p0, Ljavassist/bytecode/ByteStream;->count:I

    return-void
.end method

.method public write(II)V
    .locals 1

    .line 160
    iget-object v0, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 42
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljavassist/bytecode/ByteStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2

    .line 46
    invoke-virtual {p0, p3}, Ljavassist/bytecode/ByteStream;->enlarge(I)V

    .line 47
    iget-object v0, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    iget v1, p0, Ljavassist/bytecode/ByteStream;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    iget p1, p0, Ljavassist/bytecode/ByteStream;->count:I

    add-int/2addr p1, p3

    iput p1, p0, Ljavassist/bytecode/ByteStream;->count:I

    return-void
.end method

.method public writeBlank(I)V
    .locals 1

    .line 37
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ByteStream;->enlarge(I)V

    .line 38
    iget v0, p0, Ljavassist/bytecode/ByteStream;->count:I

    add-int/2addr v0, p1

    iput v0, p0, Ljavassist/bytecode/ByteStream;->count:I

    return-void
.end method

.method public writeDouble(D)V
    .locals 0

    .line 95
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/ByteStream;->writeLong(J)V

    return-void
.end method

.method public writeFloat(F)V
    .locals 0

    .line 91
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/ByteStream;->writeInt(I)V

    return-void
.end method

.method public writeInt(I)V
    .locals 5

    const/4 v0, 0x4

    .line 67
    invoke-virtual {p0, v0}, Ljavassist/bytecode/ByteStream;->enlarge(I)V

    .line 68
    iget v1, p0, Ljavassist/bytecode/ByteStream;->count:I

    .line 69
    iget-object v2, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    .line 70
    aput-byte v4, v2, v3

    add-int/lit8 v3, v1, 0x2

    ushr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    .line 71
    aput-byte v4, v2, v3

    add-int/lit8 v3, v1, 0x3

    int-to-byte p1, p1

    .line 72
    aput-byte p1, v2, v3

    add-int/2addr v1, v0

    .line 73
    iput v1, p0, Ljavassist/bytecode/ByteStream;->count:I

    return-void
.end method

.method public writeInt(II)V
    .locals 3

    .line 169
    iget-object v0, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    ushr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    .line 170
    aput-byte v2, v0, v1

    add-int/lit8 v1, p1, 0x2

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    .line 171
    aput-byte v2, v0, v1

    add-int/lit8 p1, p1, 0x3

    int-to-byte p2, p2

    .line 172
    aput-byte p2, v0, p1

    return-void
.end method

.method public writeLong(J)V
    .locals 6

    const/16 v0, 0x8

    .line 77
    invoke-virtual {p0, v0}, Ljavassist/bytecode/ByteStream;->enlarge(I)V

    .line 78
    iget v1, p0, Ljavassist/bytecode/ByteStream;->count:I

    .line 79
    iget-object v2, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    const/16 v3, 0x38

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v2, v1

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x30

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 80
    aput-byte v4, v2, v3

    add-int/lit8 v3, v1, 0x2

    const/16 v4, 0x28

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 81
    aput-byte v4, v2, v3

    add-int/lit8 v3, v1, 0x3

    const/16 v4, 0x20

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 82
    aput-byte v4, v2, v3

    add-int/lit8 v3, v1, 0x4

    const/16 v4, 0x18

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 83
    aput-byte v4, v2, v3

    add-int/lit8 v3, v1, 0x5

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 84
    aput-byte v4, v2, v3

    add-int/lit8 v3, v1, 0x6

    ushr-long v4, p1, v0

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 85
    aput-byte v4, v2, v3

    add-int/lit8 v3, v1, 0x7

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 86
    aput-byte p1, v2, v3

    add-int/2addr v1, v0

    .line 87
    iput v1, p0, Ljavassist/bytecode/ByteStream;->count:I

    return-void
.end method

.method public writeShort(I)V
    .locals 4

    const/4 v0, 0x2

    .line 59
    invoke-virtual {p0, v0}, Ljavassist/bytecode/ByteStream;->enlarge(I)V

    .line 60
    iget v1, p0, Ljavassist/bytecode/ByteStream;->count:I

    .line 61
    iget-object v2, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v3, v1, 0x1

    int-to-byte p1, p1

    .line 62
    aput-byte p1, v2, v3

    add-int/2addr v1, v0

    .line 63
    iput v1, p0, Ljavassist/bytecode/ByteStream;->count:I

    return-void
.end method

.method public writeShort(II)V
    .locals 2

    .line 164
    iget-object v0, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    int-to-byte p2, p2

    .line 165
    aput-byte p2, v0, p1

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    iget v1, p0, Ljavassist/bytecode/ByteStream;->count:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 6

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 100
    iget v1, p0, Ljavassist/bytecode/ByteStream;->count:I

    add-int/lit8 v2, v0, 0x2

    .line 101
    invoke-virtual {p0, v2}, Ljavassist/bytecode/ByteStream;->enlarge(I)V

    .line 103
    iget-object v2, p0, Ljavassist/bytecode/ByteStream;->buf:[B

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    .line 104
    aput-byte v4, v2, v1

    add-int/lit8 v1, v3, 0x1

    int-to-byte v4, v0

    .line 105
    aput-byte v4, v2, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 107
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    if-gt v5, v4, :cond_0

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_0

    add-int/lit8 v5, v1, 0x1

    int-to-byte v4, v4

    .line 109
    aput-byte v4, v2, v1

    add-int/lit8 v3, v3, 0x1

    move v1, v5

    goto :goto_0

    .line 111
    :cond_0
    invoke-direct {p0, p1, v0, v3}, Ljavassist/bytecode/ByteStream;->writeUTF2(Ljava/lang/String;II)V

    return-void

    .line 116
    :cond_1
    iput v1, p0, Ljavassist/bytecode/ByteStream;->count:I

    return-void
.end method
