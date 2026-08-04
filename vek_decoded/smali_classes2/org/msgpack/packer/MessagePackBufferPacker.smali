.class public Lorg/msgpack/packer/MessagePackBufferPacker;
.super Lorg/msgpack/packer/MessagePackPacker;
.source "MessagePackBufferPacker.java"

# interfaces
.implements Lorg/msgpack/packer/BufferPacker;


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x200


# direct methods
.method public constructor <init>(Lorg/msgpack/MessagePack;)V
    .locals 1

    const/16 v0, 0x200

    .line 27
    invoke-direct {p0, p1, v0}, Lorg/msgpack/packer/MessagePackBufferPacker;-><init>(Lorg/msgpack/MessagePack;I)V

    return-void
.end method

.method public constructor <init>(Lorg/msgpack/MessagePack;I)V
    .locals 1

    .line 31
    new-instance v0, Lorg/msgpack/io/LinkedBufferOutput;

    invoke-direct {v0, p2}, Lorg/msgpack/io/LinkedBufferOutput;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/msgpack/packer/MessagePackPacker;-><init>(Lorg/msgpack/MessagePack;Lorg/msgpack/io/Output;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/msgpack/packer/MessagePackBufferPacker;->reset()V

    .line 44
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackBufferPacker;->out:Lorg/msgpack/io/Output;

    check-cast v0, Lorg/msgpack/io/LinkedBufferOutput;

    invoke-virtual {v0}, Lorg/msgpack/io/LinkedBufferOutput;->clear()V

    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackBufferPacker;->out:Lorg/msgpack/io/Output;

    check-cast v0, Lorg/msgpack/io/LinkedBufferOutput;

    invoke-virtual {v0}, Lorg/msgpack/io/LinkedBufferOutput;->getSize()I

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/msgpack/packer/MessagePackBufferPacker;->out:Lorg/msgpack/io/Output;

    check-cast v0, Lorg/msgpack/io/LinkedBufferOutput;

    invoke-virtual {v0}, Lorg/msgpack/io/LinkedBufferOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
