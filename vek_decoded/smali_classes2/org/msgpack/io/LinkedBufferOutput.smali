.class public final Lorg/msgpack/io/LinkedBufferOutput;
.super Lorg/msgpack/io/BufferedOutput;
.source "LinkedBufferOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/msgpack/io/LinkedBufferOutput$Link;
    }
.end annotation


# instance fields
.field private link:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/msgpack/io/LinkedBufferOutput$Link;",
            ">;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lorg/msgpack/io/BufferedOutput;-><init>(I)V

    .line 40
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/msgpack/io/LinkedBufferOutput;->link:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/msgpack/io/LinkedBufferOutput;->link:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lorg/msgpack/io/LinkedBufferOutput;->size:I

    .line 70
    iput v0, p0, Lorg/msgpack/io/LinkedBufferOutput;->filled:I

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public bridge synthetic flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-super {p0}, Lorg/msgpack/io/BufferedOutput;->flush()V

    return-void
.end method

.method protected flushBuffer([BII)Z
    .locals 2

    .line 62
    iget-object v0, p0, Lorg/msgpack/io/LinkedBufferOutput;->link:Ljava/util/LinkedList;

    new-instance v1, Lorg/msgpack/io/LinkedBufferOutput$Link;

    invoke-direct {v1, p1, p2, p3}, Lorg/msgpack/io/LinkedBufferOutput$Link;-><init>([BII)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 63
    iget p1, p0, Lorg/msgpack/io/LinkedBufferOutput;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/msgpack/io/LinkedBufferOutput;->size:I

    const/4 p1, 0x0

    return p1
.end method

.method public getSize()I
    .locals 2

    .line 57
    iget v0, p0, Lorg/msgpack/io/LinkedBufferOutput;->size:I

    iget v1, p0, Lorg/msgpack/io/LinkedBufferOutput;->filled:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toByteArray()[B
    .locals 8

    .line 44
    iget v0, p0, Lorg/msgpack/io/LinkedBufferOutput;->size:I

    iget v1, p0, Lorg/msgpack/io/LinkedBufferOutput;->filled:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 46
    iget-object v1, p0, Lorg/msgpack/io/LinkedBufferOutput;->link:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/msgpack/io/LinkedBufferOutput$Link;

    .line 47
    iget-object v5, v4, Lorg/msgpack/io/LinkedBufferOutput$Link;->buffer:[B

    iget v6, v4, Lorg/msgpack/io/LinkedBufferOutput$Link;->offset:I

    iget v7, v4, Lorg/msgpack/io/LinkedBufferOutput$Link;->size:I

    invoke-static {v5, v6, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    iget v4, v4, Lorg/msgpack/io/LinkedBufferOutput$Link;->size:I

    add-int/2addr v3, v4

    goto :goto_0

    .line 50
    :cond_0
    iget v1, p0, Lorg/msgpack/io/LinkedBufferOutput;->filled:I

    if-lez v1, :cond_1

    .line 51
    iget-object v1, p0, Lorg/msgpack/io/LinkedBufferOutput;->buffer:[B

    iget v4, p0, Lorg/msgpack/io/LinkedBufferOutput;->filled:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v0
.end method

.method public bridge synthetic write(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-super {p0, p1}, Lorg/msgpack/io/BufferedOutput;->write(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public bridge synthetic write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-super {p0, p1, p2, p3}, Lorg/msgpack/io/BufferedOutput;->write([BII)V

    return-void
.end method

.method public bridge synthetic writeByte(B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-super {p0, p1}, Lorg/msgpack/io/BufferedOutput;->writeByte(B)V

    return-void
.end method

.method public bridge synthetic writeByteAndByte(BB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-super {p0, p1, p2}, Lorg/msgpack/io/BufferedOutput;->writeByteAndByte(BB)V

    return-void
.end method

.method public bridge synthetic writeByteAndDouble(BD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-super {p0, p1, p2, p3}, Lorg/msgpack/io/BufferedOutput;->writeByteAndDouble(BD)V

    return-void
.end method

.method public bridge synthetic writeByteAndFloat(BF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-super {p0, p1, p2}, Lorg/msgpack/io/BufferedOutput;->writeByteAndFloat(BF)V

    return-void
.end method

.method public bridge synthetic writeByteAndInt(BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-super {p0, p1, p2}, Lorg/msgpack/io/BufferedOutput;->writeByteAndInt(BI)V

    return-void
.end method

.method public bridge synthetic writeByteAndLong(BJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-super {p0, p1, p2, p3}, Lorg/msgpack/io/BufferedOutput;->writeByteAndLong(BJ)V

    return-void
.end method

.method public bridge synthetic writeByteAndShort(BS)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-super {p0, p1, p2}, Lorg/msgpack/io/BufferedOutput;->writeByteAndShort(BS)V

    return-void
.end method

.method public bridge synthetic writeDouble(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-super {p0, p1, p2}, Lorg/msgpack/io/BufferedOutput;->writeDouble(D)V

    return-void
.end method

.method public bridge synthetic writeFloat(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-super {p0, p1}, Lorg/msgpack/io/BufferedOutput;->writeFloat(F)V

    return-void
.end method

.method public bridge synthetic writeInt(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-super {p0, p1}, Lorg/msgpack/io/BufferedOutput;->writeInt(I)V

    return-void
.end method

.method public bridge synthetic writeLong(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-super {p0, p1, p2}, Lorg/msgpack/io/BufferedOutput;->writeLong(J)V

    return-void
.end method

.method public bridge synthetic writeShort(S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-super {p0, p1}, Lorg/msgpack/io/BufferedOutput;->writeShort(S)V

    return-void
.end method
