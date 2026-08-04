.class public Lorg/msgpack/packer/MessagePackPacker;
.super Lorg/msgpack/packer/AbstractPacker;
.source "MessagePackPacker.java"


# instance fields
.field protected final out:Lorg/msgpack/io/Output;

.field private stack:Lorg/msgpack/packer/PackerStack;


# direct methods
.method public constructor <init>(Lorg/msgpack/MessagePack;Ljava/io/OutputStream;)V
    .locals 1

    .line 36
    new-instance v0, Lorg/msgpack/io/StreamOutput;

    invoke-direct {v0, p2}, Lorg/msgpack/io/StreamOutput;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1, v0}, Lorg/msgpack/packer/MessagePackPacker;-><init>(Lorg/msgpack/MessagePack;Lorg/msgpack/io/Output;)V

    return-void
.end method

.method protected constructor <init>(Lorg/msgpack/MessagePack;Lorg/msgpack/io/Output;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lorg/msgpack/packer/AbstractPacker;-><init>(Lorg/msgpack/MessagePack;)V

    .line 33
    new-instance p1, Lorg/msgpack/packer/PackerStack;

    invoke-direct {p1}, Lorg/msgpack/packer/PackerStack;-><init>()V

    iput-object p1, p0, Lorg/msgpack/packer/MessagePackPacker;->stack:Lorg/msgpack/packer/PackerStack;

    .line 41
    iput-object p2, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    invoke-interface {v0}, Lorg/msgpack/io/Output;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    invoke-interface {v0}, Lorg/msgpack/io/Output;->flush()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 322
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {v0}, Lorg/msgpack/packer/PackerStack;->clear()V

    return-void
.end method

.method public writeArrayBegin(I)Lorg/msgpack/packer/Packer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 252
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    or-int/lit16 v1, p1, 0x90

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lorg/msgpack/io/Output;->writeByte(B)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_1

    .line 254
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x24

    int-to-short v2, p1

    invoke-interface {v0, v1, v2}, Lorg/msgpack/io/Output;->writeByteAndShort(BS)V

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x23

    invoke-interface {v0, v1, p1}, Lorg/msgpack/io/Output;->writeByteAndInt(BI)V

    .line 258
    :goto_0
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {v0}, Lorg/msgpack/packer/PackerStack;->reduceCount()V

    .line 259
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {v0, p1}, Lorg/msgpack/packer/PackerStack;->pushArray(I)V

    return-object p0
.end method

.method public writeArrayEnd(Z)Lorg/msgpack/packer/Packer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {v0}, Lorg/msgpack/packer/PackerStack;->topIsArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {v0}, Lorg/msgpack/packer/PackerStack;->getTopCount()I

    move-result v0

    if-lez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 277
    invoke-virtual {p0}, Lorg/msgpack/packer/MessagePackPacker;->writeNil()Lorg/msgpack/packer/Packer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 273
    :cond_0
    new-instance p1, Lorg/msgpack/MessageTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeArrayEnd(check=true) is called but the array is not end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 280
    :cond_1
    iget-object p1, p0, Lorg/msgpack/packer/MessagePackPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {p1}, Lorg/msgpack/packer/PackerStack;->pop()V

    return-object p0

    .line 266
    :cond_2
    new-instance p1, Lorg/msgpack/MessageTypeException;

    const-string v0, "writeArrayEnd() is called but writeArrayBegin() is not called"

    invoke-direct {p1, v0}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method protected writeBigInteger(Ljava/math/BigInteger;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_0

    .line 158
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/packer/MessagePackPacker;->writeLong(J)V

    .line 159
    iget-object p1, p0, Lorg/msgpack/packer/MessagePackPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {p1}, Lorg/msgpack/packer/PackerStack;->reduceCount()V

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 162
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x31

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lorg/msgpack/io/Output;->writeByteAndLong(BJ)V

    .line 163
    iget-object p1, p0, Lorg/msgpack/packer/MessagePackPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {p1}, Lorg/msgpack/packer/PackerStack;->reduceCount()V

    :goto_0
    return-void

    .line 165
    :cond_1
    new-instance p1, Lorg/msgpack/MessageTypeException;

    const-string v0, "MessagePack can\'t serialize BigInteger larger than (2^64)-1"

    invoke-direct {p1, v0}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected writeBoolean(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v0, -0x3d

    invoke-interface {p1, v0}, Lorg/msgpack/io/Output;->writeByte(B)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object p1, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v0, -0x3e

    invoke-interface {p1, v0}, Lorg/msgpack/io/Output;->writeByte(B)V

    .line 191
    :goto_0
    iget-object p1, p0, Lorg/msgpack/packer/MessagePackPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {p1}, Lorg/msgpack/packer/PackerStack;->reduceCount()V

    return-void
.end method

.method protected writeByte(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, -0x20

    if-ge p1, v0, :cond_0

    .line 47
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x30

    invoke-interface {v0, v1, p1}, Lorg/msgpack/io/Output;->writeByteAndByte(BB)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    invoke-interface {v0, p1}, Lorg/msgpack/io/Output;->writeByte(B)V

    .line 51
    :goto_0
    iget-object p1, p0, Lorg/msgpack/packer/MessagePackPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {p1}, Lorg/msgpack/packer/PackerStack;->reduceCount()V

    return-void
.end method

.method protected writeByteArray([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    if-ge p3, v0, :cond_0

    .line 198
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    or-int/lit16 v1, p3, 0xa0

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lorg/msgpack/io/Output;->writeByte(B)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000

    if-ge p3, v0, :cond_1

    .line 200
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x26

    int-to-short v2, p3

    invoke-interface {v0, v1, v2}, Lorg/msgpack/io/Output;->writeByteAndShort(BS)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x25

    invoke-interface {v0, v1, p3}, Lorg/msgpack/io/Output;->writeByteAndInt(BI)V

    .line 204
    :goto_0
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    invoke-interface {v0, p1, p2, p3}, Lorg/msgpack/io/Output;->write([BII)V

    .line 205
    iget-object p1, p0, Lorg/msgpack/packer/MessagePackPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {p1}, Lorg/msgpack/packer/PackerStack;->reduceCount()V

    return-void
.end method

.method protected writeByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 212
    iget-object v1, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    or-int/lit16 v0, v0, 0xa0

    int-to-byte v0, v0

    invoke-interface {v1, v0}, Lorg/msgpack/io/Output;->writeByte(B)V

    goto :goto_0

    :cond_0
    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_1

    .line 214
    iget-object v1, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v2, -0x26

    int-to-short v0, v0

    invoke-interface {v1, v2, v0}, Lorg/msgpack/io/Output;->writeByteAndShort(BS)V

    goto :goto_0

    .line 216
    :cond_1
    iget-object v1, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v2, -0x25

    invoke-interface {v1, v2, v0}, Lorg/msgpack/io/Output;->writeByteAndInt(BI)V

    .line 218
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 220
    :try_start_0
    iget-object v1, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    invoke-interface {v1, p1}, Lorg/msgpack/io/Output;->write(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 224
    iget-object p1, p0, Lorg/msgpack/packer/MessagePackPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {p1}, Lorg/msgpack/packer/PackerStack;->reduceCount()V

    return-void

    :catchall_0
    move-exception v1

    .line 222
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v1
.end method

.method protected writeDouble(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x35

    invoke-interface {v0, v1, p1, p2}, Lorg/msgpack/io/Output;->writeByteAndDouble(BD)V

    .line 179
    iget-object p1, p0, Lorg/msgpack/packer/MessagePackPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {p1}, Lorg/msgpack/packer/PackerStack;->reduceCount()V

    return-void
.end method

.method protected writeFloat(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x36

    invoke-interface {v0, v1, p1}, Lorg/msgpack/io/Output;->writeByteAndFloat(BF)V

    .line 173
    iget-object p1, p0, Lorg/msgpack/packer/MessagePackPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {p1}, Lorg/msgpack/packer/PackerStack;->reduceCount()V

    return-void
.end method

.method protected writeInt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, -0x20

    if-ge p1, v0, :cond_2

    const/16 v0, -0x8000

    if-ge p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x2e

    invoke-interface {v0, v1, p1}, Lorg/msgpack/io/Output;->writeByteAndInt(BI)V

    goto :goto_0

    :cond_0
    const/16 v0, -0x80

    if-ge p1, v0, :cond_1

    .line 87
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x2f

    int-to-short p1, p1

    invoke-interface {v0, v1, p1}, Lorg/msgpack/io/Output;->writeByteAndShort(BS)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x30

    int-to-byte p1, p1

    invoke-interface {v0, v1, p1}, Lorg/msgpack/io/Output;->writeByteAndByte(BB)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x80

    if-ge p1, v0, :cond_3

    .line 94
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, Lorg/msgpack/io/Output;->writeByte(B)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x100

    if-ge p1, v0, :cond_4

    .line 98
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x34

    int-to-byte p1, p1

    invoke-interface {v0, v1, p1}, Lorg/msgpack/io/Output;->writeByteAndByte(BB)V

    goto :goto_0

    :cond_4
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_5

    .line 101
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x33

    int-to-short p1, p1

    invoke-interface {v0, v1, p1}, Lorg/msgpack/io/Output;->writeByteAndShort(BS)V

    goto :goto_0

    .line 104
    :cond_5
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x32

    invoke-interface {v0, v1, p1}, Lorg/msgpack/io/Output;->writeByteAndInt(BI)V

    .line 107
    :goto_0
    iget-object p1, p0, Lorg/msgpack/packer/MessagePackPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {p1}, Lorg/msgpack/packer/PackerStack;->reduceCount()V

    return-void
.end method

.method protected writeLong(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x20

    cmp-long v2, p1, v0

    if-gez v2, :cond_3

    const-wide/16 v0, -0x8000

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const-wide/32 v0, -0x80000000

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 116
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x2d

    invoke-interface {v0, v1, p1, p2}, Lorg/msgpack/io/Output;->writeByteAndLong(BJ)V

    goto/16 :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x2e

    long-to-int p2, p1

    invoke-interface {v0, v1, p2}, Lorg/msgpack/io/Output;->writeByteAndInt(BI)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x80

    cmp-long v2, p1, v0

    if-gez v2, :cond_2

    .line 124
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x2f

    long-to-int p2, p1

    int-to-short p1, p2

    invoke-interface {v0, v1, p1}, Lorg/msgpack/io/Output;->writeByteAndShort(BS)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x30

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-interface {v0, v1, p1}, Lorg/msgpack/io/Output;->writeByteAndByte(BB)V

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x80

    cmp-long v2, p1, v0

    if-gez v2, :cond_4

    .line 132
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-interface {v0, p1}, Lorg/msgpack/io/Output;->writeByte(B)V

    goto :goto_0

    :cond_4
    const-wide/32 v0, 0x10000

    cmp-long v2, p1, v0

    if-gez v2, :cond_6

    const-wide/16 v0, 0x100

    cmp-long v2, p1, v0

    if-gez v2, :cond_5

    .line 137
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x34

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-interface {v0, v1, p1}, Lorg/msgpack/io/Output;->writeByteAndByte(BB)V

    goto :goto_0

    .line 140
    :cond_5
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x33

    long-to-int p2, p1

    int-to-short p1, p2

    invoke-interface {v0, v1, p1}, Lorg/msgpack/io/Output;->writeByteAndShort(BS)V

    goto :goto_0

    :cond_6
    const-wide v0, 0x100000000L

    cmp-long v2, p1, v0

    if-gez v2, :cond_7

    .line 145
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x32

    long-to-int p2, p1

    invoke-interface {v0, v1, p2}, Lorg/msgpack/io/Output;->writeByteAndInt(BI)V

    goto :goto_0

    .line 148
    :cond_7
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x31

    invoke-interface {v0, v1, p1, p2}, Lorg/msgpack/io/Output;->writeByteAndLong(BJ)V

    .line 152
    :goto_0
    iget-object p1, p0, Lorg/msgpack/packer/MessagePackPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {p1}, Lorg/msgpack/packer/PackerStack;->reduceCount()V

    return-void
.end method

.method public writeMapBegin(I)Lorg/msgpack/packer/Packer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 289
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    or-int/lit16 v1, p1, 0x80

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lorg/msgpack/io/Output;->writeByte(B)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_1

    .line 291
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x22

    int-to-short v2, p1

    invoke-interface {v0, v1, v2}, Lorg/msgpack/io/Output;->writeByteAndShort(BS)V

    goto :goto_0

    .line 293
    :cond_1
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x21

    invoke-interface {v0, v1, p1}, Lorg/msgpack/io/Output;->writeByteAndInt(BI)V

    .line 295
    :goto_0
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {v0}, Lorg/msgpack/packer/PackerStack;->reduceCount()V

    .line 296
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {v0, p1}, Lorg/msgpack/packer/PackerStack;->pushMap(I)V

    return-object p0
.end method

.method public writeMapEnd(Z)Lorg/msgpack/packer/Packer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {v0}, Lorg/msgpack/packer/PackerStack;->topIsMap()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {v0}, Lorg/msgpack/packer/PackerStack;->getTopCount()I

    move-result v0

    if-lez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 314
    invoke-virtual {p0}, Lorg/msgpack/packer/MessagePackPacker;->writeNil()Lorg/msgpack/packer/Packer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 310
    :cond_0
    new-instance p1, Lorg/msgpack/MessageTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeMapEnd(check=true) is called but the map is not end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 317
    :cond_1
    iget-object p1, p0, Lorg/msgpack/packer/MessagePackPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {p1}, Lorg/msgpack/packer/PackerStack;->pop()V

    return-object p0

    .line 303
    :cond_2
    new-instance p1, Lorg/msgpack/MessageTypeException;

    const-string v0, "writeMapEnd() is called but writeMapBegin() is not called"

    invoke-direct {p1, v0}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public writeNil()Lorg/msgpack/packer/Packer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x40

    invoke-interface {v0, v1}, Lorg/msgpack/io/Output;->writeByte(B)V

    .line 243
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {v0}, Lorg/msgpack/packer/PackerStack;->reduceCount()V

    return-object p0
.end method

.method protected writeShort(S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, -0x20

    if-ge p1, v0, :cond_1

    const/16 v0, -0x80

    if-ge p1, v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x2f

    invoke-interface {v0, v1, p1}, Lorg/msgpack/io/Output;->writeByteAndShort(BS)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x30

    int-to-byte p1, p1

    invoke-interface {v0, v1, p1}, Lorg/msgpack/io/Output;->writeByteAndByte(BB)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x80

    if-ge p1, v0, :cond_2

    .line 66
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, Lorg/msgpack/io/Output;->writeByte(B)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x100

    if-ge p1, v0, :cond_3

    .line 70
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x34

    int-to-byte p1, p1

    invoke-interface {v0, v1, p1}, Lorg/msgpack/io/Output;->writeByteAndByte(BB)V

    goto :goto_0

    .line 73
    :cond_3
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, -0x33

    invoke-interface {v0, v1, p1}, Lorg/msgpack/io/Output;->writeByteAndShort(BS)V

    .line 76
    :goto_0
    iget-object p1, p0, Lorg/msgpack/packer/MessagePackPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {p1}, Lorg/msgpack/packer/PackerStack;->reduceCount()V

    return-void
.end method

.method protected writeString(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    .line 232
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 236
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/msgpack/packer/MessagePackPacker;->writeByteArray([BII)V

    .line 237
    iget-object p1, p0, Lorg/msgpack/packer/MessagePackPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {p1}, Lorg/msgpack/packer/PackerStack;->reduceCount()V

    return-void

    :catch_0
    move-exception p1

    .line 234
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0, p1}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
