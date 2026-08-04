.class public Lorg/msgpack/util/json/JSONPacker;
.super Lorg/msgpack/packer/AbstractPacker;
.source "JSONPacker.java"


# static fields
.field private static final BACKSLASH:B = 0x5ct

.field private static final COLON:B = 0x3at

.field private static final COMMA:B = 0x2ct

.field private static final ESCAPE_TABLE:[I

.field private static final FALSE:[B

.field private static final FLAG_FIRST_ELEMENT:I = 0x1

.field private static final FLAG_MAP_KEY:I = 0x2

.field private static final FLAG_MAP_VALUE:I = 0x4

.field private static final HEX_TABLE:[B

.field private static final LEFT_BR:B = 0x5bt

.field private static final LEFT_WN:B = 0x7bt

.field private static final NULL:[B

.field private static final QUOTE:B = 0x22t

.field private static final RIGHT_BR:B = 0x5dt

.field private static final RIGHT_WN:B = 0x7dt

.field private static final TRUE:[B

.field private static final ZERO:B = 0x30t


# instance fields
.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field private flags:[I

.field protected final out:Lorg/msgpack/io/Output;

.field private stack:Lorg/msgpack/packer/PackerStack;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 36
    fill-array-data v1, :array_0

    sput-object v1, Lorg/msgpack/util/json/JSONPacker;->NULL:[B

    new-array v0, v0, [B

    .line 37
    fill-array-data v0, :array_1

    sput-object v0, Lorg/msgpack/util/json/JSONPacker;->TRUE:[B

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 38
    fill-array-data v0, :array_2

    sput-object v0, Lorg/msgpack/util/json/JSONPacker;->FALSE:[B

    const/16 v0, 0x80

    new-array v0, v0, [I

    .line 321
    sput-object v0, Lorg/msgpack/util/json/JSONPacker;->ESCAPE_TABLE:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 324
    sget-object v2, Lorg/msgpack/util/json/JSONPacker;->ESCAPE_TABLE:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    :cond_0
    sget-object v1, Lorg/msgpack/util/json/JSONPacker;->ESCAPE_TABLE:[I

    const/16 v2, 0x22

    aput v2, v1, v2

    const/16 v2, 0x5c

    .line 327
    aput v2, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0x62

    .line 328
    aput v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0x74

    .line 329
    aput v3, v1, v2

    const/16 v2, 0xc

    const/16 v3, 0x66

    .line 330
    aput v3, v1, v2

    const/16 v2, 0xa

    const/16 v3, 0x6e

    .line 331
    aput v3, v1, v2

    const/16 v2, 0xd

    const/16 v3, 0x72

    .line 332
    aput v3, v1, v2

    const-string v1, "0123456789ABCDEF"

    .line 334
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 335
    array-length v2, v1

    new-array v2, v2, [B

    sput-object v2, Lorg/msgpack/util/json/JSONPacker;->HEX_TABLE:[B

    .line 336
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 337
    sget-object v2, Lorg/msgpack/util/json/JSONPacker;->HEX_TABLE:[B

    aget-char v3, v1, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :array_0
    .array-data 1
        0x6et
        0x75t
        0x6ct
        0x6ct
    .end array-data

    :array_1
    .array-data 1
        0x74t
        0x72t
        0x75t
        0x65t
    .end array-data

    :array_2
    .array-data 1
        0x66t
        0x61t
        0x6ct
        0x73t
        0x65t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 62
    new-instance v0, Lorg/msgpack/MessagePack;

    invoke-direct {v0}, Lorg/msgpack/MessagePack;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/msgpack/util/json/JSONPacker;-><init>(Lorg/msgpack/MessagePack;Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/msgpack/MessagePack;Ljava/io/OutputStream;)V
    .locals 1

    .line 66
    new-instance v0, Lorg/msgpack/io/StreamOutput;

    invoke-direct {v0, p2}, Lorg/msgpack/io/StreamOutput;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1, v0}, Lorg/msgpack/util/json/JSONPacker;-><init>(Lorg/msgpack/MessagePack;Lorg/msgpack/io/Output;)V

    return-void
.end method

.method protected constructor <init>(Lorg/msgpack/MessagePack;Lorg/msgpack/io/Output;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lorg/msgpack/packer/AbstractPacker;-><init>(Lorg/msgpack/MessagePack;)V

    .line 58
    new-instance p1, Lorg/msgpack/packer/PackerStack;

    invoke-direct {p1}, Lorg/msgpack/packer/PackerStack;-><init>()V

    iput-object p1, p0, Lorg/msgpack/util/json/JSONPacker;->stack:Lorg/msgpack/packer/PackerStack;

    .line 71
    iput-object p2, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    .line 72
    new-instance p1, Lorg/msgpack/packer/PackerStack;

    invoke-direct {p1}, Lorg/msgpack/packer/PackerStack;-><init>()V

    iput-object p1, p0, Lorg/msgpack/util/json/JSONPacker;->stack:Lorg/msgpack/packer/PackerStack;

    const/16 p1, 0x80

    new-array p1, p1, [I

    .line 73
    iput-object p1, p0, Lorg/msgpack/util/json/JSONPacker;->flags:[I

    const-string p1, "UTF-8"

    .line 74
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/util/json/JSONPacker;->decoder:Ljava/nio/charset/CharsetDecoder;

    return-void
.end method

.method private beginElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->flags:[I

    iget-object v1, p0, Lorg/msgpack/util/json/JSONPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {v1}, Lorg/msgpack/packer/PackerStack;->getDepth()I

    move-result v1

    aget v0, v0, v1

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 281
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->beginStringElement()V

    return-void

    .line 279
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Key of a map must be a string in JSON"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private beginStringElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->flags:[I

    iget-object v1, p0, Lorg/msgpack/util/json/JSONPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {v1}, Lorg/msgpack/packer/PackerStack;->getDepth()I

    move-result v1

    aget v0, v0, v1

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 287
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, 0x3a

    invoke-interface {v0, v1}, Lorg/msgpack/io/Output;->writeByte(B)V

    goto :goto_0

    .line 288
    :cond_0
    iget-object v1, p0, Lorg/msgpack/util/json/JSONPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {v1}, Lorg/msgpack/packer/PackerStack;->getDepth()I

    move-result v1

    if-lez v1, :cond_1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Lorg/msgpack/io/Output;->writeByte(B)V

    :cond_1
    :goto_0
    return-void
.end method

.method private endElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->flags:[I

    iget-object v1, p0, Lorg/msgpack/util/json/JSONPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {v1}, Lorg/msgpack/packer/PackerStack;->getDepth()I

    move-result v1

    aget v0, v0, v1

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    and-int/lit8 v0, v0, -0x3

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, -0x5

    or-int/lit8 v0, v0, 0x2

    :cond_1
    :goto_0
    and-int/lit8 v0, v0, -0x2

    .line 303
    iget-object v1, p0, Lorg/msgpack/util/json/JSONPacker;->flags:[I

    iget-object v2, p0, Lorg/msgpack/util/json/JSONPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {v2}, Lorg/msgpack/packer/PackerStack;->getDepth()I

    move-result v2

    aput v0, v1, v2

    .line 304
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {v0}, Lorg/msgpack/packer/PackerStack;->reduceCount()V

    return-void
.end method

.method private static escape(Lorg/msgpack/io/Output;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x6

    new-array v1, v0, [B

    .line 342
    fill-array-data v1, :array_0

    .line 343
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 344
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_5

    .line 345
    aget-char v4, p1, v3

    const/16 v5, 0x7f

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-gt v4, v5, :cond_2

    .line 347
    sget-object v5, Lorg/msgpack/util/json/JSONPacker;->ESCAPE_TABLE:[I

    aget v5, v5, v4

    if-nez v5, :cond_0

    int-to-byte v4, v4

    aput-byte v4, v1, v9

    const/4 v4, 0x1

    .line 351
    invoke-interface {p0, v1, v9, v4}, Lorg/msgpack/io/Output;->write([BII)V

    goto/16 :goto_1

    :cond_0
    if-lez v5, :cond_1

    const/16 v4, 0x5c

    aput-byte v4, v1, v9

    int-to-byte v4, v5

    aput-byte v4, v1, v8

    .line 356
    invoke-interface {p0, v1, v9, v9}, Lorg/msgpack/io/Output;->write([BII)V

    goto/16 :goto_1

    :cond_1
    const/16 v5, 0x30

    aput-byte v5, v1, v9

    aput-byte v5, v1, v8

    .line 361
    sget-object v5, Lorg/msgpack/util/json/JSONPacker;->HEX_TABLE:[B

    shr-int/lit8 v8, v4, 0x4

    aget-byte v8, v5, v8

    aput-byte v8, v1, v7

    and-int/lit8 v4, v4, 0xf

    .line 362
    aget-byte v4, v5, v4

    aput-byte v4, v1, v6

    .line 363
    invoke-interface {p0, v1, v2, v0}, Lorg/msgpack/io/Output;->write([BII)V

    goto :goto_1

    :cond_2
    const/16 v5, 0x7ff

    if-gt v4, v5, :cond_3

    shr-int/lit8 v5, v4, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v1, v9

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v1, v8

    .line 369
    invoke-interface {p0, v1, v9, v9}, Lorg/msgpack/io/Output;->write([BII)V

    goto :goto_1

    :cond_3
    const v5, 0xd800

    if-lt v4, v5, :cond_4

    const v5, 0xdfff

    if-gt v4, v5, :cond_4

    .line 372
    sget-object v5, Lorg/msgpack/util/json/JSONPacker;->HEX_TABLE:[B

    shr-int/lit8 v10, v4, 0xc

    and-int/lit8 v10, v10, 0xf

    aget-byte v10, v5, v10

    aput-byte v10, v1, v9

    shr-int/lit8 v9, v4, 0x8

    and-int/lit8 v9, v9, 0xf

    .line 373
    aget-byte v9, v5, v9

    aput-byte v9, v1, v8

    shr-int/lit8 v8, v4, 0x4

    and-int/lit8 v8, v8, 0xf

    .line 374
    aget-byte v8, v5, v8

    aput-byte v8, v1, v7

    and-int/lit8 v4, v4, 0xf

    .line 375
    aget-byte v4, v5, v4

    aput-byte v4, v1, v6

    .line 376
    invoke-interface {p0, v1, v2, v0}, Lorg/msgpack/io/Output;->write([BII)V

    goto :goto_1

    :cond_4
    shr-int/lit8 v5, v4, 0xc

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    aput-byte v5, v1, v9

    shr-int/lit8 v5, v4, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v1, v8

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v1, v7

    .line 382
    invoke-interface {p0, v1, v9, v8}, Lorg/msgpack/io/Output;->write([BII)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    return-void

    nop

    :array_0
    .array-data 1
        0x5ct
        0x75t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private escape(Lorg/msgpack/io/Output;Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0, p2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 314
    invoke-static {p1, p2}, Lorg/msgpack/util/json/JSONPacker;->escape(Lorg/msgpack/io/Output;Ljava/lang/String;)V

    return-void
.end method

.method private escape(Lorg/msgpack/io/Output;[BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    invoke-static {p2, p3, p4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/msgpack/util/json/JSONPacker;->escape(Lorg/msgpack/io/Output;Ljava/nio/ByteBuffer;)V

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

    .line 269
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

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

    .line 264
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    invoke-interface {v0}, Lorg/msgpack/io/Output;->flush()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {v0}, Lorg/msgpack/packer/PackerStack;->clear()V

    return-void
.end method

.method public writeArrayBegin(I)Lorg/msgpack/packer/Packer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->beginElement()V

    .line 199
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, 0x5b

    invoke-interface {v0, v1}, Lorg/msgpack/io/Output;->writeByte(B)V

    .line 200
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->endElement()V

    .line 201
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {v0, p1}, Lorg/msgpack/packer/PackerStack;->pushArray(I)V

    .line 202
    iget-object p1, p0, Lorg/msgpack/util/json/JSONPacker;->flags:[I

    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {v0}, Lorg/msgpack/packer/PackerStack;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    aput v1, p1, v0

    return-object p0
.end method

.method public writeArrayEnd(Z)Lorg/msgpack/packer/Packer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {v0}, Lorg/msgpack/packer/PackerStack;->topIsArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {v0}, Lorg/msgpack/packer/PackerStack;->getTopCount()I

    move-result v0

    if-lez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 220
    invoke-virtual {p0}, Lorg/msgpack/util/json/JSONPacker;->writeNil()Lorg/msgpack/packer/Packer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 216
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

    .line 223
    :cond_1
    iget-object p1, p0, Lorg/msgpack/util/json/JSONPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {p1}, Lorg/msgpack/packer/PackerStack;->pop()V

    .line 225
    iget-object p1, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    const/16 v0, 0x5d

    invoke-interface {p1, v0}, Lorg/msgpack/io/Output;->writeByte(B)V

    return-object p0

    .line 209
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->beginElement()V

    .line 125
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 126
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/msgpack/io/Output;->write([BII)V

    .line 127
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->endElement()V

    return-void
.end method

.method protected writeBoolean(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->beginElement()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    sget-object v1, Lorg/msgpack/util/json/JSONPacker;->TRUE:[B

    array-length v2, v1

    invoke-interface {p1, v1, v0, v2}, Lorg/msgpack/io/Output;->write([BII)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    sget-object v1, Lorg/msgpack/util/json/JSONPacker;->FALSE:[B

    array-length v2, v1

    invoke-interface {p1, v1, v0, v2}, Lorg/msgpack/io/Output;->write([BII)V

    .line 87
    :goto_0
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->endElement()V

    return-void
.end method

.method protected writeByte(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->beginElement()V

    .line 93
    invoke-static {p1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 94
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/msgpack/io/Output;->write([BII)V

    .line 95
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->endElement()V

    return-void
.end method

.method protected writeByteArray([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->beginStringElement()V

    .line 159
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, 0x22

    invoke-interface {v0, v1}, Lorg/msgpack/io/Output;->writeByte(B)V

    .line 160
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/msgpack/util/json/JSONPacker;->escape(Lorg/msgpack/io/Output;[BII)V

    .line 161
    iget-object p1, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    invoke-interface {p1, v1}, Lorg/msgpack/io/Output;->writeByte(B)V

    .line 162
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->endElement()V

    return-void
.end method

.method protected writeByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->beginStringElement()V

    .line 168
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, 0x22

    invoke-interface {v0, v1}, Lorg/msgpack/io/Output;->writeByte(B)V

    .line 169
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 171
    :try_start_0
    iget-object v2, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    invoke-direct {p0, v2, p1}, Lorg/msgpack/util/json/JSONPacker;->escape(Lorg/msgpack/io/Output;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 175
    iget-object p1, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    invoke-interface {p1, v1}, Lorg/msgpack/io/Output;->writeByte(B)V

    .line 176
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->endElement()V

    return-void

    :catchall_0
    move-exception v1

    .line 173
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

    .line 145
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->beginElement()V

    .line 146
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 152
    iget-object p2, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    const/4 v0, 0x0

    array-length v1, p1

    invoke-interface {p2, p1, v0, v1}, Lorg/msgpack/io/Output;->write([BII)V

    .line 153
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->endElement()V

    return-void

    .line 148
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "JSONPacker doesn\'t support NaN and infinite float value"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected writeFloat(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->beginElement()V

    .line 133
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 139
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lorg/msgpack/io/Output;->write([BII)V

    .line 140
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->endElement()V

    return-void

    .line 135
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "JSONPacker doesn\'t support NaN and infinite float value"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected writeInt(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->beginElement()V

    .line 109
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 110
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/msgpack/io/Output;->write([BII)V

    .line 111
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->endElement()V

    return-void
.end method

.method protected writeLong(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->beginElement()V

    .line 117
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 118
    iget-object p2, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Lorg/msgpack/io/Output;->write([BII)V

    .line 119
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->endElement()V

    return-void
.end method

.method public writeMapBegin(I)Lorg/msgpack/packer/Packer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->beginElement()V

    .line 232
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, 0x7b

    invoke-interface {v0, v1}, Lorg/msgpack/io/Output;->writeByte(B)V

    .line 233
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->endElement()V

    .line 234
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {v0, p1}, Lorg/msgpack/packer/PackerStack;->pushMap(I)V

    .line 235
    iget-object p1, p0, Lorg/msgpack/util/json/JSONPacker;->flags:[I

    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {v0}, Lorg/msgpack/packer/PackerStack;->getDepth()I

    move-result v0

    const/4 v1, 0x3

    aput v1, p1, v0

    return-object p0
.end method

.method public writeMapEnd(Z)Lorg/msgpack/packer/Packer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {v0}, Lorg/msgpack/packer/PackerStack;->topIsMap()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {v0}, Lorg/msgpack/packer/PackerStack;->getTopCount()I

    move-result v0

    if-lez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 253
    invoke-virtual {p0}, Lorg/msgpack/util/json/JSONPacker;->writeNil()Lorg/msgpack/packer/Packer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 249
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

    .line 256
    :cond_1
    iget-object p1, p0, Lorg/msgpack/util/json/JSONPacker;->stack:Lorg/msgpack/packer/PackerStack;

    invoke-virtual {p1}, Lorg/msgpack/packer/PackerStack;->pop()V

    .line 258
    iget-object p1, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    const/16 v0, 0x7d

    invoke-interface {p1, v0}, Lorg/msgpack/io/Output;->writeByte(B)V

    return-object p0

    .line 242
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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->beginElement()V

    .line 191
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    sget-object v1, Lorg/msgpack/util/json/JSONPacker;->NULL:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/msgpack/io/Output;->write([BII)V

    .line 192
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->endElement()V

    return-object p0
.end method

.method protected writeShort(S)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->beginElement()V

    .line 101
    invoke-static {p1}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 102
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/msgpack/io/Output;->write([BII)V

    .line 103
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->endElement()V

    return-void
.end method

.method protected writeString(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->beginStringElement()V

    .line 182
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    const/16 v1, 0x22

    invoke-interface {v0, v1}, Lorg/msgpack/io/Output;->writeByte(B)V

    .line 183
    iget-object v0, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    invoke-static {v0, p1}, Lorg/msgpack/util/json/JSONPacker;->escape(Lorg/msgpack/io/Output;Ljava/lang/String;)V

    .line 184
    iget-object p1, p0, Lorg/msgpack/util/json/JSONPacker;->out:Lorg/msgpack/io/Output;

    invoke-interface {p1, v1}, Lorg/msgpack/io/Output;->writeByte(B)V

    .line 185
    invoke-direct {p0}, Lorg/msgpack/util/json/JSONPacker;->endElement()V

    return-void
.end method
