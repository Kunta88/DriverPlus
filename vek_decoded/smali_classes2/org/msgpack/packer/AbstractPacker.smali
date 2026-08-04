.class public abstract Lorg/msgpack/packer/AbstractPacker;
.super Ljava/lang/Object;
.source "AbstractPacker.java"

# interfaces
.implements Lorg/msgpack/packer/Packer;


# instance fields
.field protected msgpack:Lorg/msgpack/MessagePack;


# direct methods
.method protected constructor <init>(Lorg/msgpack/MessagePack;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/msgpack/packer/AbstractPacker;->msgpack:Lorg/msgpack/MessagePack;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public write(B)Lorg/msgpack/packer/Packer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Lorg/msgpack/packer/AbstractPacker;->writeByte(B)V

    return-object p0
.end method

.method public write(D)Lorg/msgpack/packer/Packer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1, p2}, Lorg/msgpack/packer/AbstractPacker;->writeDouble(D)V

    return-object p0
.end method

.method public write(F)Lorg/msgpack/packer/Packer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1}, Lorg/msgpack/packer/AbstractPacker;->writeFloat(F)V

    return-object p0
.end method

.method public write(I)Lorg/msgpack/packer/Packer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lorg/msgpack/packer/AbstractPacker;->writeInt(I)V

    return-object p0
.end method

.method public write(J)Lorg/msgpack/packer/Packer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1, p2}, Lorg/msgpack/packer/AbstractPacker;->writeLong(J)V

    return-object p0
.end method

.method public write(Ljava/lang/Boolean;)Lorg/msgpack/packer/Packer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 79
    invoke-virtual {p0}, Lorg/msgpack/packer/AbstractPacker;->writeNil()Lorg/msgpack/packer/Packer;

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/msgpack/packer/AbstractPacker;->writeBoolean(Z)V

    :goto_0
    return-object p0
.end method

.method public write(Ljava/lang/Byte;)Lorg/msgpack/packer/Packer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 89
    invoke-virtual {p0}, Lorg/msgpack/packer/AbstractPacker;->writeNil()Lorg/msgpack/packer/Packer;

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lorg/msgpack/packer/AbstractPacker;->writeByte(B)V

    :goto_0
    return-object p0
.end method

.method public write(Ljava/lang/Double;)Lorg/msgpack/packer/Packer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 149
    invoke-virtual {p0}, Lorg/msgpack/packer/AbstractPacker;->writeNil()Lorg/msgpack/packer/Packer;

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/packer/AbstractPacker;->writeDouble(D)V

    :goto_0
    return-object p0
.end method

.method public write(Ljava/lang/Float;)Lorg/msgpack/packer/Packer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 139
    invoke-virtual {p0}, Lorg/msgpack/packer/AbstractPacker;->writeNil()Lorg/msgpack/packer/Packer;

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/msgpack/packer/AbstractPacker;->writeFloat(F)V

    :goto_0
    return-object p0
.end method

.method public write(Ljava/lang/Integer;)Lorg/msgpack/packer/Packer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 109
    invoke-virtual {p0}, Lorg/msgpack/packer/AbstractPacker;->writeNil()Lorg/msgpack/packer/Packer;

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/msgpack/packer/AbstractPacker;->writeInt(I)V

    :goto_0
    return-object p0
.end method

.method public write(Ljava/lang/Long;)Lorg/msgpack/packer/Packer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lorg/msgpack/packer/AbstractPacker;->writeNil()Lorg/msgpack/packer/Packer;

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/msgpack/packer/AbstractPacker;->writeLong(J)V

    :goto_0
    return-object p0
.end method

.method public write(Ljava/lang/Object;)Lorg/msgpack/packer/Packer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 200
    invoke-virtual {p0}, Lorg/msgpack/packer/AbstractPacker;->writeNil()Lorg/msgpack/packer/Packer;

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/msgpack/packer/AbstractPacker;->msgpack:Lorg/msgpack/MessagePack;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/msgpack/MessagePack;->lookup(Ljava/lang/Class;)Lorg/msgpack/template/Template;

    move-result-object v0

    .line 203
    invoke-interface {v0, p0, p1}, Lorg/msgpack/template/Template;->write(Lorg/msgpack/packer/Packer;Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public write(Ljava/lang/Short;)Lorg/msgpack/packer/Packer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lorg/msgpack/packer/AbstractPacker;->writeNil()Lorg/msgpack/packer/Packer;

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/msgpack/packer/AbstractPacker;->writeShort(S)V

    :goto_0
    return-object p0
.end method

.method public write(Ljava/lang/String;)Lorg/msgpack/packer/Packer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 189
    invoke-virtual {p0}, Lorg/msgpack/packer/AbstractPacker;->writeNil()Lorg/msgpack/packer/Packer;

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {p0, p1}, Lorg/msgpack/packer/AbstractPacker;->writeString(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public write(Ljava/math/BigInteger;)Lorg/msgpack/packer/Packer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 129
    invoke-virtual {p0}, Lorg/msgpack/packer/AbstractPacker;->writeNil()Lorg/msgpack/packer/Packer;

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0, p1}, Lorg/msgpack/packer/AbstractPacker;->writeBigInteger(Ljava/math/BigInteger;)V

    :goto_0
    return-object p0
.end method

.method public write(Ljava/nio/ByteBuffer;)Lorg/msgpack/packer/Packer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 179
    invoke-virtual {p0}, Lorg/msgpack/packer/AbstractPacker;->writeNil()Lorg/msgpack/packer/Packer;

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p0, p1}, Lorg/msgpack/packer/AbstractPacker;->writeByteBuffer(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-object p0
.end method

.method public write(Lorg/msgpack/type/Value;)Lorg/msgpack/packer/Packer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 211
    invoke-virtual {p0}, Lorg/msgpack/packer/AbstractPacker;->writeNil()Lorg/msgpack/packer/Packer;

    goto :goto_0

    .line 213
    :cond_0
    invoke-interface {p1, p0}, Lorg/msgpack/type/Value;->writeTo(Lorg/msgpack/packer/Packer;)V

    :goto_0
    return-object p0
.end method

.method public write(S)Lorg/msgpack/packer/Packer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1}, Lorg/msgpack/packer/AbstractPacker;->writeShort(S)V

    return-object p0
.end method

.method public write(Z)Lorg/msgpack/packer/Packer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lorg/msgpack/packer/AbstractPacker;->writeBoolean(Z)V

    return-object p0
.end method

.method public write([B)Lorg/msgpack/packer/Packer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 159
    invoke-virtual {p0}, Lorg/msgpack/packer/AbstractPacker;->writeNil()Lorg/msgpack/packer/Packer;

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0, p1}, Lorg/msgpack/packer/AbstractPacker;->writeByteArray([B)V

    :goto_0
    return-object p0
.end method

.method public write([BII)Lorg/msgpack/packer/Packer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 169
    invoke-virtual {p0}, Lorg/msgpack/packer/AbstractPacker;->writeNil()Lorg/msgpack/packer/Packer;

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/packer/AbstractPacker;->writeByteArray([BII)V

    :goto_0
    return-object p0
.end method

.method public writeArrayEnd()Lorg/msgpack/packer/Packer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 220
    invoke-virtual {p0, v0}, Lorg/msgpack/packer/AbstractPacker;->writeArrayEnd(Z)Lorg/msgpack/packer/Packer;

    return-object p0
.end method

.method protected abstract writeBigInteger(Ljava/math/BigInteger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract writeBoolean(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract writeByte(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected writeByteArray([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/msgpack/packer/AbstractPacker;->writeByteArray([BII)V

    return-void
.end method

.method protected abstract writeByteArray([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract writeByteBuffer(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract writeDouble(D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract writeFloat(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract writeInt(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract writeLong(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeMapEnd()Lorg/msgpack/packer/Packer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 226
    invoke-virtual {p0, v0}, Lorg/msgpack/packer/AbstractPacker;->writeMapEnd(Z)Lorg/msgpack/packer/Packer;

    return-object p0
.end method

.method protected abstract writeShort(S)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract writeString(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
