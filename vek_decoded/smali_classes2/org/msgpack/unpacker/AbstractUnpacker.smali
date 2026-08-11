.class public abstract Lorg/msgpack/unpacker/AbstractUnpacker;
.super Ljava/lang/Object;
.source "AbstractUnpacker.java"

# interfaces
.implements Lorg/msgpack/unpacker/Unpacker;


# instance fields
.field protected arraySizeLimit:I

.field protected mapSizeLimit:I

.field protected msgpack:Lorg/msgpack/MessagePack;

.field protected rawSizeLimit:I


# direct methods
.method protected constructor <init>(Lorg/msgpack/MessagePack;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x8000000

    .line 30
    iput v0, p0, Lorg/msgpack/unpacker/AbstractUnpacker;->rawSizeLimit:I

    const/high16 v0, 0x400000

    .line 32
    iput v0, p0, Lorg/msgpack/unpacker/AbstractUnpacker;->arraySizeLimit:I

    const/high16 v0, 0x200000

    .line 34
    iput v0, p0, Lorg/msgpack/unpacker/AbstractUnpacker;->mapSizeLimit:I

    .line 37
    iput-object p1, p0, Lorg/msgpack/unpacker/AbstractUnpacker;->msgpack:Lorg/msgpack/MessagePack;

    return-void
.end method


# virtual methods
.method public getReadByteCount()I
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/msgpack/unpacker/AbstractUnpacker;->iterator()Lorg/msgpack/unpacker/UnpackerIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/msgpack/unpacker/UnpackerIterator;
    .locals 1

    .line 57
    new-instance v0, Lorg/msgpack/unpacker/UnpackerIterator;

    invoke-direct {v0, p0}, Lorg/msgpack/unpacker/UnpackerIterator;-><init>(Lorg/msgpack/unpacker/AbstractUnpacker;)V

    return-object v0
.end method

.method public read(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lorg/msgpack/unpacker/AbstractUnpacker;->tryReadNil()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/msgpack/unpacker/AbstractUnpacker;->msgpack:Lorg/msgpack/MessagePack;

    invoke-virtual {v0, p1}, Lorg/msgpack/MessagePack;->lookup(Ljava/lang/Class;)Lorg/msgpack/template/Template;

    move-result-object p1

    .line 77
    invoke-interface {p1, p0, v1}, Lorg/msgpack/template/Template;->read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lorg/msgpack/unpacker/AbstractUnpacker;->tryReadNil()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/msgpack/unpacker/AbstractUnpacker;->msgpack:Lorg/msgpack/MessagePack;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/msgpack/MessagePack;->lookup(Ljava/lang/Class;)Lorg/msgpack/template/Template;

    move-result-object v0

    .line 87
    invoke-interface {v0, p0, p1}, Lorg/msgpack/template/Template;->read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/lang/Object;Lorg/msgpack/template/Template;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/msgpack/template/Template<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lorg/msgpack/unpacker/AbstractUnpacker;->tryReadNil()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 103
    :cond_0
    invoke-interface {p2, p0, p1}, Lorg/msgpack/template/Template;->read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Lorg/msgpack/template/Template;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/msgpack/template/Template<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lorg/msgpack/unpacker/AbstractUnpacker;->tryReadNil()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 95
    :cond_0
    invoke-interface {p1, p0, v1}, Lorg/msgpack/template/Template;->read(Lorg/msgpack/unpacker/Unpacker;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readArrayEnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lorg/msgpack/unpacker/AbstractUnpacker;->readArrayEnd(Z)V

    return-void
.end method

.method public readByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lorg/msgpack/unpacker/AbstractUnpacker;->readByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public readMapEnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, v0}, Lorg/msgpack/unpacker/AbstractUnpacker;->readMapEnd(Z)V

    return-void
.end method

.method public readValue()Lorg/msgpack/type/Value;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance v0, Lorg/msgpack/packer/Unconverter;

    iget-object v1, p0, Lorg/msgpack/unpacker/AbstractUnpacker;->msgpack:Lorg/msgpack/MessagePack;

    invoke-direct {v0, v1}, Lorg/msgpack/packer/Unconverter;-><init>(Lorg/msgpack/MessagePack;)V

    .line 65
    invoke-virtual {p0, v0}, Lorg/msgpack/unpacker/AbstractUnpacker;->readValue(Lorg/msgpack/packer/Unconverter;)V

    .line 66
    invoke-virtual {v0}, Lorg/msgpack/packer/Unconverter;->getResult()Lorg/msgpack/type/Value;

    move-result-object v0

    return-object v0
.end method

.method protected abstract readValue(Lorg/msgpack/packer/Unconverter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public resetReadByteCount()V
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setArraySizeLimit(I)V
    .locals 1

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 124
    iput v0, p0, Lorg/msgpack/unpacker/AbstractUnpacker;->arraySizeLimit:I

    goto :goto_0

    .line 126
    :cond_0
    iput p1, p0, Lorg/msgpack/unpacker/AbstractUnpacker;->arraySizeLimit:I

    :goto_0
    return-void
.end method

.method public setMapSizeLimit(I)V
    .locals 1

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 132
    iput v0, p0, Lorg/msgpack/unpacker/AbstractUnpacker;->mapSizeLimit:I

    goto :goto_0

    .line 134
    :cond_0
    iput p1, p0, Lorg/msgpack/unpacker/AbstractUnpacker;->mapSizeLimit:I

    :goto_0
    return-void
.end method

.method public setRawSizeLimit(I)V
    .locals 1

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 116
    iput v0, p0, Lorg/msgpack/unpacker/AbstractUnpacker;->rawSizeLimit:I

    goto :goto_0

    .line 118
    :cond_0
    iput p1, p0, Lorg/msgpack/unpacker/AbstractUnpacker;->rawSizeLimit:I

    :goto_0
    return-void
.end method

.method protected abstract tryReadNil()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
