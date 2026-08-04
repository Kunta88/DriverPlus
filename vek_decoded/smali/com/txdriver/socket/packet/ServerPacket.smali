.class public Lcom/txdriver/socket/packet/ServerPacket;
.super Ljava/lang/Object;
.source "ServerPacket.java"

# interfaces
.implements Lcom/txdriver/socket/Packet;


# instance fields
.field private body:[B

.field private code:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(B[B)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-byte p1, p0, Lcom/txdriver/socket/packet/ServerPacket;->code:B

    .line 20
    iput-object p2, p0, Lcom/txdriver/socket/packet/ServerPacket;->body:[B

    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/txdriver/socket/packet/ServerPacket;->body:[B

    return-object v0
.end method

.method public getCode()B
    .locals 1

    .line 39
    iget-byte v0, p0, Lcom/txdriver/socket/packet/ServerPacket;->code:B

    return v0
.end method

.method public toByteArray()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/txdriver/socket/packet/ServerPacket;->getBody()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3

    int-to-short v0, v0

    .line 26
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {p0}, Lcom/txdriver/socket/packet/ServerPacket;->getCode()B

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 29
    invoke-virtual {p0}, Lcom/txdriver/socket/packet/ServerPacket;->getBody()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 30
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 31
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerPacket{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/txdriver/socket/packet/ServerPacket;->code:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/socket/packet/ServerPacket;->body:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
