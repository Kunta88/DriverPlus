.class public Lorg/msgpack/unpacker/MessagePackBufferUnpacker;
.super Lorg/msgpack/unpacker/MessagePackUnpacker;
.source "MessagePackBufferUnpacker.java"

# interfaces
.implements Lorg/msgpack/unpacker/BufferUnpacker;


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x200


# direct methods
.method public constructor <init>(Lorg/msgpack/MessagePack;)V
    .locals 1

    const/16 v0, 0x200

    .line 30
    invoke-direct {p0, p1, v0}, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;-><init>(Lorg/msgpack/MessagePack;I)V

    return-void
.end method

.method public constructor <init>(Lorg/msgpack/MessagePack;I)V
    .locals 1

    .line 34
    new-instance v0, Lorg/msgpack/io/LinkedBufferInput;

    invoke-direct {v0, p2}, Lorg/msgpack/io/LinkedBufferInput;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/msgpack/unpacker/MessagePackUnpacker;-><init>(Lorg/msgpack/MessagePack;Lorg/msgpack/io/Input;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->in:Lorg/msgpack/io/Input;

    check-cast v0, Lorg/msgpack/io/LinkedBufferInput;

    invoke-virtual {v0}, Lorg/msgpack/io/LinkedBufferInput;->clear()V

    .line 105
    invoke-virtual {p0}, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->reset()V

    return-void
.end method

.method public copyReferencedBuffer()V
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->in:Lorg/msgpack/io/Input;

    check-cast v0, Lorg/msgpack/io/LinkedBufferInput;

    invoke-virtual {v0}, Lorg/msgpack/io/LinkedBufferInput;->copyReferencedBuffer()V

    return-void
.end method

.method public bridge synthetic feed(Ljava/nio/ByteBuffer;)Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->feed(Ljava/nio/ByteBuffer;)Lorg/msgpack/unpacker/MessagePackBufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic feed(Ljava/nio/ByteBuffer;Z)Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->feed(Ljava/nio/ByteBuffer;Z)Lorg/msgpack/unpacker/MessagePackBufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic feed([B)Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->feed([B)Lorg/msgpack/unpacker/MessagePackBufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic feed([BII)Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->feed([BII)Lorg/msgpack/unpacker/MessagePackBufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic feed([BIIZ)Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->feed([BIIZ)Lorg/msgpack/unpacker/MessagePackBufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic feed([BZ)Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->feed([BZ)Lorg/msgpack/unpacker/MessagePackBufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public feed(Ljava/nio/ByteBuffer;)Lorg/msgpack/unpacker/MessagePackBufferUnpacker;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->in:Lorg/msgpack/io/Input;

    check-cast v0, Lorg/msgpack/io/LinkedBufferInput;

    invoke-virtual {v0, p1}, Lorg/msgpack/io/LinkedBufferInput;->feed(Ljava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public feed(Ljava/nio/ByteBuffer;Z)Lorg/msgpack/unpacker/MessagePackBufferUnpacker;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->in:Lorg/msgpack/io/Input;

    check-cast v0, Lorg/msgpack/io/LinkedBufferInput;

    invoke-virtual {v0, p1, p2}, Lorg/msgpack/io/LinkedBufferInput;->feed(Ljava/nio/ByteBuffer;Z)V

    return-object p0
.end method

.method public feed([B)Lorg/msgpack/unpacker/MessagePackBufferUnpacker;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->in:Lorg/msgpack/io/Input;

    check-cast v0, Lorg/msgpack/io/LinkedBufferInput;

    invoke-virtual {v0, p1}, Lorg/msgpack/io/LinkedBufferInput;->feed([B)V

    return-object p0
.end method

.method public feed([BII)Lorg/msgpack/unpacker/MessagePackBufferUnpacker;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->in:Lorg/msgpack/io/Input;

    check-cast v0, Lorg/msgpack/io/LinkedBufferInput;

    invoke-virtual {v0, p1, p2, p3}, Lorg/msgpack/io/LinkedBufferInput;->feed([BII)V

    return-object p0
.end method

.method public feed([BIIZ)Lorg/msgpack/unpacker/MessagePackBufferUnpacker;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->in:Lorg/msgpack/io/Input;

    check-cast v0, Lorg/msgpack/io/LinkedBufferInput;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/msgpack/io/LinkedBufferInput;->feed([BIIZ)V

    return-object p0
.end method

.method public feed([BZ)Lorg/msgpack/unpacker/MessagePackBufferUnpacker;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->in:Lorg/msgpack/io/Input;

    check-cast v0, Lorg/msgpack/io/LinkedBufferInput;

    invoke-virtual {v0, p1, p2}, Lorg/msgpack/io/LinkedBufferInput;->feed([BZ)V

    return-object p0
.end method

.method public getBufferSize()I
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->in:Lorg/msgpack/io/Input;

    check-cast v0, Lorg/msgpack/io/LinkedBufferInput;

    invoke-virtual {v0}, Lorg/msgpack/io/LinkedBufferInput;->getSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic wrap(Ljava/nio/ByteBuffer;)Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->wrap(Ljava/nio/ByteBuffer;)Lorg/msgpack/unpacker/MessagePackBufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic wrap([B)Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->wrap([B)Lorg/msgpack/unpacker/MessagePackBufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic wrap([BII)Lorg/msgpack/unpacker/BufferUnpacker;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->wrap([BII)Lorg/msgpack/unpacker/MessagePackBufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public wrap(Ljava/nio/ByteBuffer;)Lorg/msgpack/unpacker/MessagePackBufferUnpacker;
    .locals 2

    .line 51
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->in:Lorg/msgpack/io/Input;

    check-cast v0, Lorg/msgpack/io/LinkedBufferInput;

    invoke-virtual {v0}, Lorg/msgpack/io/LinkedBufferInput;->clear()V

    .line 52
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->in:Lorg/msgpack/io/Input;

    check-cast v0, Lorg/msgpack/io/LinkedBufferInput;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/msgpack/io/LinkedBufferInput;->feed(Ljava/nio/ByteBuffer;Z)V

    return-object p0
.end method

.method public wrap([B)Lorg/msgpack/unpacker/MessagePackBufferUnpacker;
    .locals 2

    .line 39
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->wrap([BII)Lorg/msgpack/unpacker/MessagePackBufferUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public wrap([BII)Lorg/msgpack/unpacker/MessagePackBufferUnpacker;
    .locals 2

    .line 44
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->in:Lorg/msgpack/io/Input;

    check-cast v0, Lorg/msgpack/io/LinkedBufferInput;

    invoke-virtual {v0}, Lorg/msgpack/io/LinkedBufferInput;->clear()V

    .line 45
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackBufferUnpacker;->in:Lorg/msgpack/io/Input;

    check-cast v0, Lorg/msgpack/io/LinkedBufferInput;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/msgpack/io/LinkedBufferInput;->feed([BIIZ)V

    return-object p0
.end method
