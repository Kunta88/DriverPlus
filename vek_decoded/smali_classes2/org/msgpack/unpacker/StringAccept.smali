.class final Lorg/msgpack/unpacker/StringAccept;
.super Lorg/msgpack/unpacker/Accept;
.source "StringAccept.java"


# instance fields
.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "raw value"

    .line 33
    invoke-direct {p0, v0}, Lorg/msgpack/unpacker/Accept;-><init>(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    .line 34
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lorg/msgpack/unpacker/StringAccept;->decoder:Ljava/nio/charset/CharsetDecoder;

    return-void
.end method


# virtual methods
.method acceptEmptyRaw()V
    .locals 1

    const-string v0, ""

    .line 50
    iput-object v0, p0, Lorg/msgpack/unpacker/StringAccept;->value:Ljava/lang/String;

    return-void
.end method

.method acceptRaw([B)V
    .locals 1

    .line 42
    :try_start_0
    iget-object v0, p0, Lorg/msgpack/unpacker/StringAccept;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/unpacker/StringAccept;->value:Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 44
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0, p1}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public refer(Ljava/nio/ByteBuffer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    :try_start_0
    iget-object p2, p0, Lorg/msgpack/unpacker/StringAccept;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p2, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/unpacker/StringAccept;->value:Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 58
    new-instance p2, Lorg/msgpack/MessageTypeException;

    invoke-direct {p2, p1}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
