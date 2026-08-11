.class abstract Lorg/msgpack/io/BufferedOutput;
.super Ljava/lang/Object;
.source "BufferedOutput.java"

# interfaces
.implements Lorg/msgpack/io/Output;


# instance fields
.field protected buffer:[B

.field protected final bufferSize:I

.field protected castByteBuffer:Ljava/nio/ByteBuffer;

.field protected filled:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    if-ge p1, v0, :cond_0

    const/16 p1, 0x9

    .line 33
    :cond_0
    iput p1, p0, Lorg/msgpack/io/BufferedOutput;->bufferSize:I

    return-void
.end method

.method private allocateNewBuffer()V
    .locals 1

    .line 37
    iget v0, p0, Lorg/msgpack/io/BufferedOutput;->bufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/msgpack/io/BufferedOutput;->buffer:[B

    .line 38
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/msgpack/io/BufferedOutput;->castByteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private reserve(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/msgpack/io/BufferedOutput;->buffer:[B

    if-nez v0, :cond_0

    .line 43
    invoke-direct {p0}, Lorg/msgpack/io/BufferedOutput;->allocateNewBuffer()V

    return-void

    .line 46
    :cond_0
    iget v1, p0, Lorg/msgpack/io/BufferedOutput;->bufferSize:I

    iget v2, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    sub-int/2addr v1, v2

    if-ge v1, p1, :cond_2

    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, v0, p1, v2}, Lorg/msgpack/io/BufferedOutput;->flushBuffer([BII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    iget v0, p0, Lorg/msgpack/io/BufferedOutput;->bufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/msgpack/io/BufferedOutput;->buffer:[B

    .line 49
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/msgpack/io/BufferedOutput;->castByteBuffer:Ljava/nio/ByteBuffer;

    .line 51
    :cond_1
    iput p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    :cond_2
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget v0, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    if-lez v0, :cond_1

    .line 197
    iget-object v1, p0, Lorg/msgpack/io/BufferedOutput;->buffer:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/msgpack/io/BufferedOutput;->flushBuffer([BII)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lorg/msgpack/io/BufferedOutput;->buffer:[B

    .line 200
    :cond_0
    iput v2, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    :cond_1
    return-void
.end method

.method protected abstract flushBuffer([BII)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected flushByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 207
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    .line 208
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/msgpack/io/BufferedOutput;->flushBuffer([BII)Z

    .line 209
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v1, v0, [B

    .line 212
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 213
    invoke-virtual {p0, v1, p1, v0}, Lorg/msgpack/io/BufferedOutput;->flushBuffer([BII)Z

    :goto_0
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 83
    iget-object v1, p0, Lorg/msgpack/io/BufferedOutput;->buffer:[B

    if-nez v1, :cond_1

    .line 84
    iget v1, p0, Lorg/msgpack/io/BufferedOutput;->bufferSize:I

    if-ge v1, v0, :cond_0

    .line 85
    invoke-virtual {p0, p1}, Lorg/msgpack/io/BufferedOutput;->flushByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void

    .line 88
    :cond_0
    invoke-direct {p0}, Lorg/msgpack/io/BufferedOutput;->allocateNewBuffer()V

    .line 90
    :cond_1
    iget v1, p0, Lorg/msgpack/io/BufferedOutput;->bufferSize:I

    iget v2, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    sub-int v3, v1, v2

    if-gt v0, v3, :cond_2

    .line 91
    iget-object v1, p0, Lorg/msgpack/io/BufferedOutput;->buffer:[B

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 92
    iget p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    goto :goto_0

    :cond_2
    if-gt v0, v1, :cond_4

    .line 94
    iget-object v1, p0, Lorg/msgpack/io/BufferedOutput;->buffer:[B

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lorg/msgpack/io/BufferedOutput;->flushBuffer([BII)Z

    move-result v1

    if-nez v1, :cond_3

    .line 95
    invoke-direct {p0}, Lorg/msgpack/io/BufferedOutput;->allocateNewBuffer()V

    .line 97
    :cond_3
    iput v3, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    .line 98
    iget-object v1, p0, Lorg/msgpack/io/BufferedOutput;->buffer:[B

    invoke-virtual {p1, v1, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 99
    iput v0, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    goto :goto_0

    .line 101
    :cond_4
    invoke-virtual {p0}, Lorg/msgpack/io/BufferedOutput;->flush()V

    .line 102
    invoke-virtual {p0, p1}, Lorg/msgpack/io/BufferedOutput;->flushByteBuffer(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/msgpack/io/BufferedOutput;->buffer:[B

    if-nez v0, :cond_1

    .line 58
    iget v0, p0, Lorg/msgpack/io/BufferedOutput;->bufferSize:I

    if-ge v0, p3, :cond_0

    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/io/BufferedOutput;->flushBuffer([BII)Z

    return-void

    .line 62
    :cond_0
    invoke-direct {p0}, Lorg/msgpack/io/BufferedOutput;->allocateNewBuffer()V

    .line 64
    :cond_1
    iget v0, p0, Lorg/msgpack/io/BufferedOutput;->bufferSize:I

    iget v1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    sub-int v2, v0, v1

    if-gt p3, v2, :cond_2

    .line 65
    iget-object v0, p0, Lorg/msgpack/io/BufferedOutput;->buffer:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iget p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    goto :goto_0

    :cond_2
    if-gt p3, v0, :cond_4

    .line 68
    iget-object v0, p0, Lorg/msgpack/io/BufferedOutput;->buffer:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/msgpack/io/BufferedOutput;->flushBuffer([BII)Z

    move-result v0

    if-nez v0, :cond_3

    .line 69
    invoke-direct {p0}, Lorg/msgpack/io/BufferedOutput;->allocateNewBuffer()V

    .line 71
    :cond_3
    iput v2, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    .line 72
    iget-object v0, p0, Lorg/msgpack/io/BufferedOutput;->buffer:[B

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iput p3, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    goto :goto_0

    .line 75
    :cond_4
    invoke-virtual {p0}, Lorg/msgpack/io/BufferedOutput;->flush()V

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/io/BufferedOutput;->flushBuffer([BII)Z

    :goto_0
    return-void
.end method

.method public writeByte(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 108
    invoke-direct {p0, v0}, Lorg/msgpack/io/BufferedOutput;->reserve(I)V

    .line 109
    iget-object v0, p0, Lorg/msgpack/io/BufferedOutput;->buffer:[B

    iget v1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public writeByteAndByte(BB)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 149
    invoke-direct {p0, v0}, Lorg/msgpack/io/BufferedOutput;->reserve(I)V

    .line 150
    iget-object v0, p0, Lorg/msgpack/io/BufferedOutput;->buffer:[B

    iget v1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    aput-byte p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    .line 151
    iput p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    aput-byte p2, v0, v2

    return-void
.end method

.method public writeByteAndDouble(BD)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    .line 188
    invoke-direct {p0, v0}, Lorg/msgpack/io/BufferedOutput;->reserve(I)V

    .line 189
    iget-object v0, p0, Lorg/msgpack/io/BufferedOutput;->buffer:[B

    iget v1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    aput-byte p1, v0, v1

    .line 190
    iget-object p1, p0, Lorg/msgpack/io/BufferedOutput;->castByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2, p2, p3}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    .line 191
    iget p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    return-void
.end method

.method public writeByteAndFloat(BF)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 180
    invoke-direct {p0, v0}, Lorg/msgpack/io/BufferedOutput;->reserve(I)V

    .line 181
    iget-object v0, p0, Lorg/msgpack/io/BufferedOutput;->buffer:[B

    iget v1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    aput-byte p1, v0, v1

    .line 182
    iget-object p1, p0, Lorg/msgpack/io/BufferedOutput;->castByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2, p2}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    .line 183
    iget p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    return-void
.end method

.method public writeByteAndInt(BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 164
    invoke-direct {p0, v0}, Lorg/msgpack/io/BufferedOutput;->reserve(I)V

    .line 165
    iget-object v0, p0, Lorg/msgpack/io/BufferedOutput;->buffer:[B

    iget v1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    aput-byte p1, v0, v1

    .line 166
    iget-object p1, p0, Lorg/msgpack/io/BufferedOutput;->castByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 167
    iget p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    return-void
.end method

.method public writeByteAndLong(BJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    .line 172
    invoke-direct {p0, v0}, Lorg/msgpack/io/BufferedOutput;->reserve(I)V

    .line 173
    iget-object v0, p0, Lorg/msgpack/io/BufferedOutput;->buffer:[B

    iget v1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    aput-byte p1, v0, v1

    .line 174
    iget-object p1, p0, Lorg/msgpack/io/BufferedOutput;->castByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 175
    iget p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    return-void
.end method

.method public writeByteAndShort(BS)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 156
    invoke-direct {p0, v0}, Lorg/msgpack/io/BufferedOutput;->reserve(I)V

    .line 157
    iget-object v0, p0, Lorg/msgpack/io/BufferedOutput;->buffer:[B

    iget v1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    aput-byte p1, v0, v1

    .line 158
    iget-object p1, p0, Lorg/msgpack/io/BufferedOutput;->castByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 159
    iget p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    return-void
.end method

.method public writeDouble(D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 142
    invoke-direct {p0, v0}, Lorg/msgpack/io/BufferedOutput;->reserve(I)V

    .line 143
    iget-object v1, p0, Lorg/msgpack/io/BufferedOutput;->castByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    invoke-virtual {v1, v2, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    .line 144
    iget p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    return-void
.end method

.method public writeFloat(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 135
    invoke-direct {p0, v0}, Lorg/msgpack/io/BufferedOutput;->reserve(I)V

    .line 136
    iget-object v1, p0, Lorg/msgpack/io/BufferedOutput;->castByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    invoke-virtual {v1, v2, p1}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    .line 137
    iget p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    return-void
.end method

.method public writeInt(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 121
    invoke-direct {p0, v0}, Lorg/msgpack/io/BufferedOutput;->reserve(I)V

    .line 122
    iget-object v1, p0, Lorg/msgpack/io/BufferedOutput;->castByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    invoke-virtual {v1, v2, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 123
    iget p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    return-void
.end method

.method public writeLong(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 128
    invoke-direct {p0, v0}, Lorg/msgpack/io/BufferedOutput;->reserve(I)V

    .line 129
    iget-object v1, p0, Lorg/msgpack/io/BufferedOutput;->castByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    invoke-virtual {v1, v2, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 130
    iget p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    return-void
.end method

.method public writeShort(S)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 114
    invoke-direct {p0, v0}, Lorg/msgpack/io/BufferedOutput;->reserve(I)V

    .line 115
    iget-object v1, p0, Lorg/msgpack/io/BufferedOutput;->castByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    invoke-virtual {v1, v2, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 116
    iget p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/msgpack/io/BufferedOutput;->filled:I

    return-void
.end method
