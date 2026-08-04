.class public Lorg/msgpack/io/ByteBufferOutput;
.super Ljava/lang/Object;
.source "ByteBufferOutput.java"

# interfaces
.implements Lorg/msgpack/io/Output;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/msgpack/io/ByteBufferOutput$ExpandBufferCallback;
    }
.end annotation


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private callback:Lorg/msgpack/io/ByteBufferOutput$ExpandBufferCallback;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lorg/msgpack/io/ByteBufferOutput;-><init>(Ljava/nio/ByteBuffer;Lorg/msgpack/io/ByteBufferOutput$ExpandBufferCallback;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Lorg/msgpack/io/ByteBufferOutput$ExpandBufferCallback;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/msgpack/io/ByteBufferOutput;->buffer:Ljava/nio/ByteBuffer;

    .line 38
    iput-object p2, p0, Lorg/msgpack/io/ByteBufferOutput;->callback:Lorg/msgpack/io/ByteBufferOutput$ExpandBufferCallback;

    return-void
.end method

.method private reserve(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/msgpack/io/ByteBufferOutput;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lorg/msgpack/io/ByteBufferOutput;->callback:Lorg/msgpack/io/ByteBufferOutput$ExpandBufferCallback;

    if-eqz v0, :cond_1

    .line 48
    iget-object v1, p0, Lorg/msgpack/io/ByteBufferOutput;->buffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1, p1}, Lorg/msgpack/io/ByteBufferOutput$ExpandBufferCallback;->call(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/io/ByteBufferOutput;->buffer:Ljava/nio/ByteBuffer;

    return-void

    .line 46
    :cond_1
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/msgpack/io/ByteBufferOutput;->reserve(I)V

    .line 60
    iget-object v0, p0, Lorg/msgpack/io/ByteBufferOutput;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0, p3}, Lorg/msgpack/io/ByteBufferOutput;->reserve(I)V

    .line 54
    iget-object v0, p0, Lorg/msgpack/io/ByteBufferOutput;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeByte(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 65
    invoke-direct {p0, v0}, Lorg/msgpack/io/ByteBufferOutput;->reserve(I)V

    .line 66
    iget-object v0, p0, Lorg/msgpack/io/ByteBufferOutput;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeByteAndByte(BB)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 101
    invoke-direct {p0, v0}, Lorg/msgpack/io/ByteBufferOutput;->reserve(I)V

    .line 102
    iget-object v0, p0, Lorg/msgpack/io/ByteBufferOutput;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 103
    iget-object p1, p0, Lorg/msgpack/io/ByteBufferOutput;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeByteAndDouble(BD)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    .line 136
    invoke-direct {p0, v0}, Lorg/msgpack/io/ByteBufferOutput;->reserve(I)V

    .line 137
    iget-object v0, p0, Lorg/msgpack/io/ByteBufferOutput;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 138
    iget-object p1, p0, Lorg/msgpack/io/ByteBufferOutput;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, p3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeByteAndFloat(BF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 129
    invoke-direct {p0, v0}, Lorg/msgpack/io/ByteBufferOutput;->reserve(I)V

    .line 130
    iget-object v0, p0, Lorg/msgpack/io/ByteBufferOutput;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 131
    iget-object p1, p0, Lorg/msgpack/io/ByteBufferOutput;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeByteAndInt(BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 115
    invoke-direct {p0, v0}, Lorg/msgpack/io/ByteBufferOutput;->reserve(I)V

    .line 116
    iget-object v0, p0, Lorg/msgpack/io/ByteBufferOutput;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 117
    iget-object p1, p0, Lorg/msgpack/io/ByteBufferOutput;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeByteAndLong(BJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    .line 122
    invoke-direct {p0, v0}, Lorg/msgpack/io/ByteBufferOutput;->reserve(I)V

    .line 123
    iget-object v0, p0, Lorg/msgpack/io/ByteBufferOutput;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 124
    iget-object p1, p0, Lorg/msgpack/io/ByteBufferOutput;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeByteAndShort(BS)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 108
    invoke-direct {p0, v0}, Lorg/msgpack/io/ByteBufferOutput;->reserve(I)V

    .line 109
    iget-object v0, p0, Lorg/msgpack/io/ByteBufferOutput;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 110
    iget-object p1, p0, Lorg/msgpack/io/ByteBufferOutput;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeDouble(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 95
    invoke-direct {p0, v0}, Lorg/msgpack/io/ByteBufferOutput;->reserve(I)V

    .line 96
    iget-object v0, p0, Lorg/msgpack/io/ByteBufferOutput;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeFloat(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 89
    invoke-direct {p0, v0}, Lorg/msgpack/io/ByteBufferOutput;->reserve(I)V

    .line 90
    iget-object v0, p0, Lorg/msgpack/io/ByteBufferOutput;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeInt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 77
    invoke-direct {p0, v0}, Lorg/msgpack/io/ByteBufferOutput;->reserve(I)V

    .line 78
    iget-object v0, p0, Lorg/msgpack/io/ByteBufferOutput;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeLong(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 83
    invoke-direct {p0, v0}, Lorg/msgpack/io/ByteBufferOutput;->reserve(I)V

    .line 84
    iget-object v0, p0, Lorg/msgpack/io/ByteBufferOutput;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeShort(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 71
    invoke-direct {p0, v0}, Lorg/msgpack/io/ByteBufferOutput;->reserve(I)V

    .line 72
    iget-object v0, p0, Lorg/msgpack/io/ByteBufferOutput;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method
