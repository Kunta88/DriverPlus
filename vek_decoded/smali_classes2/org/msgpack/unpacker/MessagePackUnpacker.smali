.class public Lorg/msgpack/unpacker/MessagePackUnpacker;
.super Lorg/msgpack/unpacker/AbstractUnpacker;
.source "MessagePackUnpacker.java"


# static fields
.field private static final REQUIRE_TO_READ_HEAD:B = -0x3at


# instance fields
.field private final arrayAccept:Lorg/msgpack/unpacker/ArrayAccept;

.field private final bigIntegerAccept:Lorg/msgpack/unpacker/BigIntegerAccept;

.field private final byteArrayAccept:Lorg/msgpack/unpacker/ByteArrayAccept;

.field private final doubleAccept:Lorg/msgpack/unpacker/DoubleAccept;

.field private headByte:B

.field protected final in:Lorg/msgpack/io/Input;

.field private final intAccept:Lorg/msgpack/unpacker/IntAccept;

.field private final longAccept:Lorg/msgpack/unpacker/LongAccept;

.field private final mapAccept:Lorg/msgpack/unpacker/MapAccept;

.field private raw:[B

.field private rawFilled:I

.field private final skipAccept:Lorg/msgpack/unpacker/SkipAccept;

.field private final stack:Lorg/msgpack/unpacker/UnpackerStack;

.field private final stringAccept:Lorg/msgpack/unpacker/StringAccept;

.field private final valueAccept:Lorg/msgpack/unpacker/ValueAccept;


# direct methods
.method public constructor <init>(Lorg/msgpack/MessagePack;Ljava/io/InputStream;)V
    .locals 1

    .line 55
    new-instance v0, Lorg/msgpack/io/StreamInput;

    invoke-direct {v0, p2}, Lorg/msgpack/io/StreamInput;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, p1, v0}, Lorg/msgpack/unpacker/MessagePackUnpacker;-><init>(Lorg/msgpack/MessagePack;Lorg/msgpack/io/Input;)V

    return-void
.end method

.method protected constructor <init>(Lorg/msgpack/MessagePack;Lorg/msgpack/io/Input;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lorg/msgpack/unpacker/AbstractUnpacker;-><init>(Lorg/msgpack/MessagePack;)V

    .line 36
    new-instance p1, Lorg/msgpack/unpacker/UnpackerStack;

    invoke-direct {p1}, Lorg/msgpack/unpacker/UnpackerStack;-><init>()V

    iput-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    const/16 p1, -0x3a

    .line 38
    iput-byte p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    .line 43
    new-instance p1, Lorg/msgpack/unpacker/IntAccept;

    invoke-direct {p1}, Lorg/msgpack/unpacker/IntAccept;-><init>()V

    iput-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->intAccept:Lorg/msgpack/unpacker/IntAccept;

    .line 44
    new-instance p1, Lorg/msgpack/unpacker/LongAccept;

    invoke-direct {p1}, Lorg/msgpack/unpacker/LongAccept;-><init>()V

    iput-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->longAccept:Lorg/msgpack/unpacker/LongAccept;

    .line 45
    new-instance p1, Lorg/msgpack/unpacker/BigIntegerAccept;

    invoke-direct {p1}, Lorg/msgpack/unpacker/BigIntegerAccept;-><init>()V

    iput-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->bigIntegerAccept:Lorg/msgpack/unpacker/BigIntegerAccept;

    .line 46
    new-instance p1, Lorg/msgpack/unpacker/DoubleAccept;

    invoke-direct {p1}, Lorg/msgpack/unpacker/DoubleAccept;-><init>()V

    iput-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->doubleAccept:Lorg/msgpack/unpacker/DoubleAccept;

    .line 47
    new-instance p1, Lorg/msgpack/unpacker/ByteArrayAccept;

    invoke-direct {p1}, Lorg/msgpack/unpacker/ByteArrayAccept;-><init>()V

    iput-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->byteArrayAccept:Lorg/msgpack/unpacker/ByteArrayAccept;

    .line 48
    new-instance p1, Lorg/msgpack/unpacker/StringAccept;

    invoke-direct {p1}, Lorg/msgpack/unpacker/StringAccept;-><init>()V

    iput-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stringAccept:Lorg/msgpack/unpacker/StringAccept;

    .line 49
    new-instance p1, Lorg/msgpack/unpacker/ArrayAccept;

    invoke-direct {p1}, Lorg/msgpack/unpacker/ArrayAccept;-><init>()V

    iput-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->arrayAccept:Lorg/msgpack/unpacker/ArrayAccept;

    .line 50
    new-instance p1, Lorg/msgpack/unpacker/MapAccept;

    invoke-direct {p1}, Lorg/msgpack/unpacker/MapAccept;-><init>()V

    iput-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->mapAccept:Lorg/msgpack/unpacker/MapAccept;

    .line 51
    new-instance p1, Lorg/msgpack/unpacker/ValueAccept;

    invoke-direct {p1}, Lorg/msgpack/unpacker/ValueAccept;-><init>()V

    iput-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->valueAccept:Lorg/msgpack/unpacker/ValueAccept;

    .line 52
    new-instance p1, Lorg/msgpack/unpacker/SkipAccept;

    invoke-direct {p1}, Lorg/msgpack/unpacker/SkipAccept;-><init>()V

    iput-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->skipAccept:Lorg/msgpack/unpacker/SkipAccept;

    .line 60
    iput-object p2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    return-void
.end method

.method private getHeadByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-byte v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    const/16 v1, -0x3a

    if-ne v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {v0}, Lorg/msgpack/io/Input;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    :cond_0
    return v0
.end method

.method private readOneWithoutStackLarge(Lorg/msgpack/unpacker/Accept;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p2, 0xff

    const/16 v1, 0xc0

    const/16 v2, -0x3a

    const/4 v3, 0x1

    if-eq v0, v1, :cond_c

    const/16 v1, 0xc2

    const/4 v4, 0x0

    if-eq v0, v1, :cond_b

    const/16 v1, 0xc3

    if-eq v0, v1, :cond_a

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    const-string v5, "Size of raw (%d) over limit at %d"

    const-string v6, "Size of map (%d) over limit at %d"

    const-string v7, "Size of array (%d) over limit at %d"

    const v8, 0xffff

    const/4 v9, 0x2

    packed-switch v0, :pswitch_data_1

    .line 322
    iput-byte v2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    .line 323
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid byte: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 305
    :pswitch_0
    iget-object p2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p2}, Lorg/msgpack/io/Input;->getInt()I

    move-result p2

    if-ltz p2, :cond_0

    .line 306
    iget v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->mapSizeLimit:I

    if-ge p2, v0, :cond_0

    .line 312
    invoke-virtual {p1, p2}, Lorg/msgpack/unpacker/Accept;->acceptMap(I)V

    .line 313
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {p1}, Lorg/msgpack/unpacker/UnpackerStack;->reduceCount()V

    .line 314
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {p1, p2}, Lorg/msgpack/unpacker/UnpackerStack;->pushMap(I)V

    .line 315
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p1}, Lorg/msgpack/io/Input;->advance()V

    .line 316
    iput-byte v2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v4

    :cond_0
    new-array p1, v9, [Ljava/lang/Object;

    .line 307
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    iget p2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->mapSizeLimit:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-static {v6, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 310
    new-instance p2, Lorg/msgpack/unpacker/SizeLimitException;

    invoke-direct {p2, p1}, Lorg/msgpack/unpacker/SizeLimitException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 289
    :pswitch_1
    iget-object p2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p2}, Lorg/msgpack/io/Input;->getShort()S

    move-result p2

    and-int/2addr p2, v8

    .line 290
    iget v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->mapSizeLimit:I

    if-ge p2, v0, :cond_1

    .line 296
    invoke-virtual {p1, p2}, Lorg/msgpack/unpacker/Accept;->acceptMap(I)V

    .line 297
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {p1}, Lorg/msgpack/unpacker/UnpackerStack;->reduceCount()V

    .line 298
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {p1, p2}, Lorg/msgpack/unpacker/UnpackerStack;->pushMap(I)V

    .line 299
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p1}, Lorg/msgpack/io/Input;->advance()V

    .line 300
    iput-byte v2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v4

    :cond_1
    new-array p1, v9, [Ljava/lang/Object;

    .line 291
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    iget p2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->mapSizeLimit:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-static {v6, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 294
    new-instance p2, Lorg/msgpack/unpacker/SizeLimitException;

    invoke-direct {p2, p1}, Lorg/msgpack/unpacker/SizeLimitException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 273
    :pswitch_2
    iget-object p2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p2}, Lorg/msgpack/io/Input;->getInt()I

    move-result p2

    if-ltz p2, :cond_2

    .line 274
    iget v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->arraySizeLimit:I

    if-ge p2, v0, :cond_2

    .line 280
    invoke-virtual {p1, p2}, Lorg/msgpack/unpacker/Accept;->acceptArray(I)V

    .line 281
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {p1}, Lorg/msgpack/unpacker/UnpackerStack;->reduceCount()V

    .line 282
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {p1, p2}, Lorg/msgpack/unpacker/UnpackerStack;->pushArray(I)V

    .line 283
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p1}, Lorg/msgpack/io/Input;->advance()V

    .line 284
    iput-byte v2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v4

    :cond_2
    new-array p1, v9, [Ljava/lang/Object;

    .line 275
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    iget p2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->arraySizeLimit:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-static {v7, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 278
    new-instance p2, Lorg/msgpack/unpacker/SizeLimitException;

    invoke-direct {p2, p1}, Lorg/msgpack/unpacker/SizeLimitException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 257
    :pswitch_3
    iget-object p2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p2}, Lorg/msgpack/io/Input;->getShort()S

    move-result p2

    and-int/2addr p2, v8

    .line 258
    iget v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->arraySizeLimit:I

    if-ge p2, v0, :cond_3

    .line 264
    invoke-virtual {p1, p2}, Lorg/msgpack/unpacker/Accept;->acceptArray(I)V

    .line 265
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {p1}, Lorg/msgpack/unpacker/UnpackerStack;->reduceCount()V

    .line 266
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {p1, p2}, Lorg/msgpack/unpacker/UnpackerStack;->pushArray(I)V

    .line 267
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p1}, Lorg/msgpack/io/Input;->advance()V

    .line 268
    iput-byte v2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v4

    :cond_3
    new-array p1, v9, [Ljava/lang/Object;

    .line 259
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    iget p2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->arraySizeLimit:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-static {v7, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 262
    new-instance p2, Lorg/msgpack/unpacker/SizeLimitException;

    invoke-direct {p2, p1}, Lorg/msgpack/unpacker/SizeLimitException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 233
    :pswitch_4
    iget-object p2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p2}, Lorg/msgpack/io/Input;->getInt()I

    move-result p2

    if-nez p2, :cond_4

    .line 235
    invoke-virtual {p1}, Lorg/msgpack/unpacker/Accept;->acceptEmptyRaw()V

    .line 236
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p1}, Lorg/msgpack/io/Input;->advance()V

    .line 237
    iput-byte v2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v3

    :cond_4
    if-ltz p2, :cond_6

    .line 240
    iget v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->rawSizeLimit:I

    if-ge p2, v0, :cond_6

    .line 246
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {v0}, Lorg/msgpack/io/Input;->advance()V

    .line 247
    invoke-direct {p0, p1, p2}, Lorg/msgpack/unpacker/MessagePackUnpacker;->tryReferRawBody(Lorg/msgpack/io/BufferReferer;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 248
    invoke-direct {p0, p2}, Lorg/msgpack/unpacker/MessagePackUnpacker;->readRawBody(I)V

    .line 249
    iget-object p2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->raw:[B

    invoke-virtual {p1, p2}, Lorg/msgpack/unpacker/Accept;->acceptRaw([B)V

    .line 250
    iput-object v1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->raw:[B

    .line 252
    :cond_5
    iput-byte v2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v3

    :cond_6
    new-array p1, v9, [Ljava/lang/Object;

    .line 241
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    iget p2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->rawSizeLimit:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 244
    new-instance p2, Lorg/msgpack/unpacker/SizeLimitException;

    invoke-direct {p2, p1}, Lorg/msgpack/unpacker/SizeLimitException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 209
    :pswitch_5
    iget-object p2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p2}, Lorg/msgpack/io/Input;->getShort()S

    move-result p2

    and-int/2addr p2, v8

    if-nez p2, :cond_7

    .line 211
    invoke-virtual {p1}, Lorg/msgpack/unpacker/Accept;->acceptEmptyRaw()V

    .line 212
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p1}, Lorg/msgpack/io/Input;->advance()V

    .line 213
    iput-byte v2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v3

    .line 216
    :cond_7
    iget v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->rawSizeLimit:I

    if-ge p2, v0, :cond_9

    .line 222
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {v0}, Lorg/msgpack/io/Input;->advance()V

    .line 223
    invoke-direct {p0, p1, p2}, Lorg/msgpack/unpacker/MessagePackUnpacker;->tryReferRawBody(Lorg/msgpack/io/BufferReferer;I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 224
    invoke-direct {p0, p2}, Lorg/msgpack/unpacker/MessagePackUnpacker;->readRawBody(I)V

    .line 225
    iget-object p2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->raw:[B

    invoke-virtual {p1, p2}, Lorg/msgpack/unpacker/Accept;->acceptRaw([B)V

    .line 226
    iput-object v1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->raw:[B

    .line 228
    :cond_8
    iput-byte v2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v3

    :cond_9
    new-array p1, v9, [Ljava/lang/Object;

    .line 217
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    iget p2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->rawSizeLimit:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 220
    new-instance p2, Lorg/msgpack/unpacker/SizeLimitException;

    invoke-direct {p2, p1}, Lorg/msgpack/unpacker/SizeLimitException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 203
    :pswitch_6
    iget-object p2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p2}, Lorg/msgpack/io/Input;->getLong()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/unpacker/Accept;->acceptInteger(J)V

    .line 204
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p1}, Lorg/msgpack/io/Input;->advance()V

    .line 205
    iput-byte v2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v3

    .line 198
    :pswitch_7
    iget-object p2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p2}, Lorg/msgpack/io/Input;->getInt()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/msgpack/unpacker/Accept;->acceptInteger(I)V

    .line 199
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p1}, Lorg/msgpack/io/Input;->advance()V

    .line 200
    iput-byte v2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v3

    .line 193
    :pswitch_8
    iget-object p2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p2}, Lorg/msgpack/io/Input;->getShort()S

    move-result p2

    invoke-virtual {p1, p2}, Lorg/msgpack/unpacker/Accept;->acceptInteger(S)V

    .line 194
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p1}, Lorg/msgpack/io/Input;->advance()V

    .line 195
    iput-byte v2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v3

    .line 188
    :pswitch_9
    iget-object p2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p2}, Lorg/msgpack/io/Input;->getByte()B

    move-result p2

    invoke-virtual {p1, p2}, Lorg/msgpack/unpacker/Accept;->acceptInteger(B)V

    .line 189
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p1}, Lorg/msgpack/io/Input;->advance()V

    .line 190
    iput-byte v2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v3

    .line 183
    :pswitch_a
    iget-object p2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p2}, Lorg/msgpack/io/Input;->getLong()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/unpacker/Accept;->acceptUnsignedInteger(J)V

    .line 184
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p1}, Lorg/msgpack/io/Input;->advance()V

    .line 185
    iput-byte v2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v3

    .line 178
    :pswitch_b
    iget-object p2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p2}, Lorg/msgpack/io/Input;->getInt()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/msgpack/unpacker/Accept;->acceptUnsignedInteger(I)V

    .line 179
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p1}, Lorg/msgpack/io/Input;->advance()V

    .line 180
    iput-byte v2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v3

    .line 173
    :pswitch_c
    iget-object p2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p2}, Lorg/msgpack/io/Input;->getShort()S

    move-result p2

    invoke-virtual {p1, p2}, Lorg/msgpack/unpacker/Accept;->acceptUnsignedInteger(S)V

    .line 174
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p1}, Lorg/msgpack/io/Input;->advance()V

    .line 175
    iput-byte v2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v3

    .line 168
    :pswitch_d
    iget-object p2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p2}, Lorg/msgpack/io/Input;->getByte()B

    move-result p2

    invoke-virtual {p1, p2}, Lorg/msgpack/unpacker/Accept;->acceptUnsignedInteger(B)V

    .line 169
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p1}, Lorg/msgpack/io/Input;->advance()V

    .line 170
    iput-byte v2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v3

    .line 163
    :pswitch_e
    iget-object p2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p2}, Lorg/msgpack/io/Input;->getDouble()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/unpacker/Accept;->acceptDouble(D)V

    .line 164
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p1}, Lorg/msgpack/io/Input;->advance()V

    .line 165
    iput-byte v2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v3

    .line 158
    :pswitch_f
    iget-object p2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p2}, Lorg/msgpack/io/Input;->getFloat()F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/msgpack/unpacker/Accept;->acceptFloat(F)V

    .line 159
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {p1}, Lorg/msgpack/io/Input;->advance()V

    .line 160
    iput-byte v2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v3

    .line 154
    :cond_a
    invoke-virtual {p1, v3}, Lorg/msgpack/unpacker/Accept;->acceptBoolean(Z)V

    .line 155
    iput-byte v2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v3

    .line 150
    :cond_b
    invoke-virtual {p1, v4}, Lorg/msgpack/unpacker/Accept;->acceptBoolean(Z)V

    .line 151
    iput-byte v2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v3

    .line 146
    :cond_c
    invoke-virtual {p1}, Lorg/msgpack/unpacker/Accept;->acceptNil()V

    .line 147
    iput-byte v2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xda
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readRawBody(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->raw:[B

    const/4 p1, 0x0

    .line 333
    iput p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->rawFilled:I

    .line 334
    invoke-direct {p0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->readRawBodyCont()V

    return-void
.end method

.method private readRawBodyCont()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    iget-object v1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->raw:[B

    iget v2, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->rawFilled:I

    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-interface {v0, v1, v2, v3}, Lorg/msgpack/io/Input;->read([BII)I

    move-result v0

    .line 339
    iget v1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->rawFilled:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->rawFilled:I

    .line 340
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->raw:[B

    array-length v0, v0

    if-lt v1, v0, :cond_0

    return-void

    .line 341
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method private tryReferRawBody(Lorg/msgpack/io/BufferReferer;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {v0, p1, p2}, Lorg/msgpack/io/Input;->tryRefer(Lorg/msgpack/io/BufferReferer;I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 637
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {v0}, Lorg/msgpack/io/Input;->close()V

    return-void
.end method

.method public getNextType()Lorg/msgpack/type/ValueType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 583
    invoke-direct {p0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->getHeadByte()B

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_0

    .line 585
    sget-object v0, Lorg/msgpack/type/ValueType;->INTEGER:Lorg/msgpack/type/ValueType;

    return-object v0

    :cond_0
    and-int/lit16 v1, v0, 0xe0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_1

    .line 588
    sget-object v0, Lorg/msgpack/type/ValueType;->INTEGER:Lorg/msgpack/type/ValueType;

    return-object v0

    :cond_1
    const/16 v2, 0xa0

    if-ne v1, v2, :cond_2

    .line 591
    sget-object v0, Lorg/msgpack/type/ValueType;->RAW:Lorg/msgpack/type/ValueType;

    return-object v0

    :cond_2
    and-int/lit16 v1, v0, 0xf0

    const/16 v2, 0x90

    if-ne v1, v2, :cond_3

    .line 594
    sget-object v0, Lorg/msgpack/type/ValueType;->ARRAY:Lorg/msgpack/type/ValueType;

    return-object v0

    :cond_3
    const/16 v2, 0x80

    if-ne v1, v2, :cond_4

    .line 597
    sget-object v0, Lorg/msgpack/type/ValueType;->MAP:Lorg/msgpack/type/ValueType;

    return-object v0

    :cond_4
    and-int/lit16 v1, v0, 0xff

    const/16 v2, 0xc0

    if-eq v1, v2, :cond_6

    const/16 v2, 0xc2

    if-eq v1, v2, :cond_5

    const/16 v2, 0xc3

    if-eq v1, v2, :cond_5

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 627
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid byte: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 625
    :pswitch_0
    sget-object v0, Lorg/msgpack/type/ValueType;->MAP:Lorg/msgpack/type/ValueType;

    return-object v0

    .line 622
    :pswitch_1
    sget-object v0, Lorg/msgpack/type/ValueType;->ARRAY:Lorg/msgpack/type/ValueType;

    return-object v0

    .line 619
    :pswitch_2
    sget-object v0, Lorg/msgpack/type/ValueType;->RAW:Lorg/msgpack/type/ValueType;

    return-object v0

    .line 616
    :pswitch_3
    sget-object v0, Lorg/msgpack/type/ValueType;->INTEGER:Lorg/msgpack/type/ValueType;

    return-object v0

    .line 607
    :pswitch_4
    sget-object v0, Lorg/msgpack/type/ValueType;->FLOAT:Lorg/msgpack/type/ValueType;

    return-object v0

    .line 604
    :cond_5
    sget-object v0, Lorg/msgpack/type/ValueType;->BOOLEAN:Lorg/msgpack/type/ValueType;

    return-object v0

    .line 601
    :cond_6
    sget-object v0, Lorg/msgpack/type/ValueType;->NIL:Lorg/msgpack/type/ValueType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xda
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getReadByteCount()I
    .locals 1

    .line 642
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {v0}, Lorg/msgpack/io/Input;->getReadByteCount()I

    move-result v0

    return v0
.end method

.method public readArrayBegin()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->arrayAccept:Lorg/msgpack/unpacker/ArrayAccept;

    invoke-virtual {p0, v0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->readOne(Lorg/msgpack/unpacker/Accept;)V

    .line 479
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->arrayAccept:Lorg/msgpack/unpacker/ArrayAccept;

    iget v0, v0, Lorg/msgpack/unpacker/ArrayAccept;->size:I

    return v0
.end method

.method public readArrayEnd(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->topIsArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->getTopCount()I

    move-result v0

    if-lez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 496
    invoke-virtual {p0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->skip()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 492
    :cond_0
    new-instance p1, Lorg/msgpack/MessageTypeException;

    const-string v0, "readArrayEnd(check=true) is called but the array is not end"

    invoke-direct {p1, v0}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 499
    :cond_1
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {p1}, Lorg/msgpack/unpacker/UnpackerStack;->pop()V

    return-void

    .line 485
    :cond_2
    new-instance p1, Lorg/msgpack/MessageTypeException;

    const-string v0, "readArrayEnd() is called but readArrayBegin() is not called"

    invoke-direct {p1, v0}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public readBigInteger()Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->bigIntegerAccept:Lorg/msgpack/unpacker/BigIntegerAccept;

    invoke-virtual {p0, v0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->readOne(Lorg/msgpack/unpacker/Accept;)V

    .line 449
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->bigIntegerAccept:Lorg/msgpack/unpacker/BigIntegerAccept;

    iget-object v0, v0, Lorg/msgpack/unpacker/BigIntegerAccept;->value:Ljava/math/BigInteger;

    return-object v0
.end method

.method public readBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->checkCount()V

    .line 394
    invoke-direct {p0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->getHeadByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, -0x3a

    const/16 v2, 0xc2

    if-ne v0, v2, :cond_0

    .line 396
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->reduceCount()V

    .line 397
    iput-byte v1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v2, 0xc3

    if-ne v0, v2, :cond_1

    .line 400
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->reduceCount()V

    .line 401
    iput-byte v1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    const/4 v0, 0x1

    return v0

    .line 404
    :cond_1
    new-instance v0, Lorg/msgpack/MessageTypeException;

    const-string v1, "Expected Boolean but got not boolean value"

    invoke-direct {v0, v1}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->checkCount()V

    .line 412
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->intAccept:Lorg/msgpack/unpacker/IntAccept;

    invoke-virtual {p0, v0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->readOneWithoutStack(Lorg/msgpack/unpacker/Accept;)Z

    .line 413
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->intAccept:Lorg/msgpack/unpacker/IntAccept;

    iget v0, v0, Lorg/msgpack/unpacker/IntAccept;->value:I

    const/16 v1, -0x80

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    .line 417
    iget-object v1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v1}, Lorg/msgpack/unpacker/UnpackerStack;->reduceCount()V

    int-to-byte v0, v0

    return v0

    .line 415
    :cond_0
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw v0
.end method

.method public readByteArray()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->byteArrayAccept:Lorg/msgpack/unpacker/ByteArrayAccept;

    invoke-virtual {p0, v0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->readOne(Lorg/msgpack/unpacker/Accept;)V

    .line 467
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->byteArrayAccept:Lorg/msgpack/unpacker/ByteArrayAccept;

    iget-object v0, v0, Lorg/msgpack/unpacker/ByteArrayAccept;->value:[B

    return-object v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->doubleAccept:Lorg/msgpack/unpacker/DoubleAccept;

    invoke-virtual {p0, v0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->readOne(Lorg/msgpack/unpacker/Accept;)V

    .line 461
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->doubleAccept:Lorg/msgpack/unpacker/DoubleAccept;

    iget-wide v0, v0, Lorg/msgpack/unpacker/DoubleAccept;->value:D

    return-wide v0
.end method

.method public readFloat()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->doubleAccept:Lorg/msgpack/unpacker/DoubleAccept;

    invoke-virtual {p0, v0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->readOne(Lorg/msgpack/unpacker/Accept;)V

    .line 455
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->doubleAccept:Lorg/msgpack/unpacker/DoubleAccept;

    iget-wide v0, v0, Lorg/msgpack/unpacker/DoubleAccept;->value:D

    double-to-float v0, v0

    return v0
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->intAccept:Lorg/msgpack/unpacker/IntAccept;

    invoke-virtual {p0, v0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->readOne(Lorg/msgpack/unpacker/Accept;)V

    .line 437
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->intAccept:Lorg/msgpack/unpacker/IntAccept;

    iget v0, v0, Lorg/msgpack/unpacker/IntAccept;->value:I

    return v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->longAccept:Lorg/msgpack/unpacker/LongAccept;

    invoke-virtual {p0, v0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->readOne(Lorg/msgpack/unpacker/Accept;)V

    .line 443
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->longAccept:Lorg/msgpack/unpacker/LongAccept;

    iget-wide v0, v0, Lorg/msgpack/unpacker/LongAccept;->value:J

    return-wide v0
.end method

.method public readMapBegin()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->mapAccept:Lorg/msgpack/unpacker/MapAccept;

    invoke-virtual {p0, v0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->readOne(Lorg/msgpack/unpacker/Accept;)V

    .line 505
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->mapAccept:Lorg/msgpack/unpacker/MapAccept;

    iget v0, v0, Lorg/msgpack/unpacker/MapAccept;->size:I

    return v0
.end method

.method public readMapEnd(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->topIsMap()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 515
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->getTopCount()I

    move-result v0

    if-lez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 522
    invoke-virtual {p0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->skip()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 518
    :cond_0
    new-instance p1, Lorg/msgpack/MessageTypeException;

    const-string v0, "readMapEnd(check=true) is called but the map is not end"

    invoke-direct {p1, v0}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 525
    :cond_1
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {p1}, Lorg/msgpack/unpacker/UnpackerStack;->pop()V

    return-void

    .line 511
    :cond_2
    new-instance p1, Lorg/msgpack/MessageTypeException;

    const-string v0, "readMapEnd() is called but readMapBegin() is not called"

    invoke-direct {p1, v0}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public readNil()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->checkCount()V

    .line 381
    invoke-direct {p0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->getHeadByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_0

    .line 383
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->reduceCount()V

    const/16 v0, -0x3a

    .line 384
    iput-byte v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return-void

    .line 387
    :cond_0
    new-instance v0, Lorg/msgpack/MessageTypeException;

    const-string v1, "Expected nil but got not nil value"

    invoke-direct {v0, v1}, Lorg/msgpack/MessageTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final readOne(Lorg/msgpack/unpacker/Accept;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->checkCount()V

    .line 73
    invoke-virtual {p0, p1}, Lorg/msgpack/unpacker/MessagePackUnpacker;->readOneWithoutStack(Lorg/msgpack/unpacker/Accept;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {p1}, Lorg/msgpack/unpacker/UnpackerStack;->reduceCount()V

    :cond_0
    return-void
.end method

.method final readOneWithoutStack(Lorg/msgpack/unpacker/Accept;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->raw:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, -0x3a

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->readRawBodyCont()V

    .line 81
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->raw:[B

    invoke-virtual {p1, v0}, Lorg/msgpack/unpacker/Accept;->acceptRaw([B)V

    .line 82
    iput-object v1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->raw:[B

    .line 83
    iput-byte v3, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v2

    .line 87
    :cond_0
    invoke-direct {p0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->getHeadByte()B

    move-result v0

    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_1

    .line 91
    invoke-virtual {p1, v0}, Lorg/msgpack/unpacker/Accept;->acceptInteger(I)V

    .line 92
    iput-byte v3, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v2

    :cond_1
    and-int/lit16 v4, v0, 0xe0

    const/16 v5, 0xe0

    if-ne v4, v5, :cond_2

    .line 98
    invoke-virtual {p1, v0}, Lorg/msgpack/unpacker/Accept;->acceptInteger(I)V

    .line 99
    iput-byte v3, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v2

    :cond_2
    const/16 v5, 0xa0

    if-ne v4, v5, :cond_5

    and-int/lit8 v0, v0, 0x1f

    if-nez v0, :cond_3

    .line 106
    invoke-virtual {p1}, Lorg/msgpack/unpacker/Accept;->acceptEmptyRaw()V

    .line 107
    iput-byte v3, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v2

    .line 110
    :cond_3
    invoke-direct {p0, p1, v0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->tryReferRawBody(Lorg/msgpack/io/BufferReferer;I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 111
    invoke-direct {p0, v0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->readRawBody(I)V

    .line 112
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->raw:[B

    invoke-virtual {p1, v0}, Lorg/msgpack/unpacker/Accept;->acceptRaw([B)V

    .line 113
    iput-object v1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->raw:[B

    .line 115
    :cond_4
    iput-byte v3, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v2

    :cond_5
    and-int/lit16 v1, v0, 0xf0

    const/16 v2, 0x90

    const/4 v4, 0x0

    if-ne v1, v2, :cond_6

    and-int/lit8 v0, v0, 0xf

    .line 122
    invoke-virtual {p1, v0}, Lorg/msgpack/unpacker/Accept;->acceptArray(I)V

    .line 123
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {p1}, Lorg/msgpack/unpacker/UnpackerStack;->reduceCount()V

    .line 124
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {p1, v0}, Lorg/msgpack/unpacker/UnpackerStack;->pushArray(I)V

    .line 125
    iput-byte v3, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v4

    :cond_6
    const/16 v2, 0x80

    if-ne v1, v2, :cond_7

    and-int/lit8 v0, v0, 0xf

    .line 132
    invoke-virtual {p1, v0}, Lorg/msgpack/unpacker/Accept;->acceptMap(I)V

    .line 133
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {p1}, Lorg/msgpack/unpacker/UnpackerStack;->reduceCount()V

    .line 134
    iget-object p1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {p1, v0}, Lorg/msgpack/unpacker/UnpackerStack;->pushMap(I)V

    .line 135
    iput-byte v3, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v4

    .line 139
    :cond_7
    invoke-direct {p0, p1, v0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->readOneWithoutStackLarge(Lorg/msgpack/unpacker/Accept;I)Z

    move-result p1

    return p1
.end method

.method public readShort()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->checkCount()V

    .line 425
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->intAccept:Lorg/msgpack/unpacker/IntAccept;

    invoke-virtual {p0, v0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->readOneWithoutStack(Lorg/msgpack/unpacker/Accept;)Z

    .line 426
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->intAccept:Lorg/msgpack/unpacker/IntAccept;

    iget v0, v0, Lorg/msgpack/unpacker/IntAccept;->value:I

    const/16 v1, -0x8000

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_0

    .line 430
    iget-object v1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v1}, Lorg/msgpack/unpacker/UnpackerStack;->reduceCount()V

    int-to-short v0, v0

    return v0

    .line 428
    :cond_0
    new-instance v0, Lorg/msgpack/MessageTypeException;

    invoke-direct {v0}, Lorg/msgpack/MessageTypeException;-><init>()V

    throw v0
.end method

.method public readString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stringAccept:Lorg/msgpack/unpacker/StringAccept;

    invoke-virtual {p0, v0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->readOne(Lorg/msgpack/unpacker/Accept;)V

    .line 473
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stringAccept:Lorg/msgpack/unpacker/StringAccept;

    iget-object v0, v0, Lorg/msgpack/unpacker/StringAccept;->value:Ljava/lang/String;

    return-object v0
.end method

.method protected readValue(Lorg/msgpack/packer/Unconverter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 530
    invoke-virtual {p1}, Lorg/msgpack/packer/Unconverter;->getResult()Lorg/msgpack/type/Value;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {p1}, Lorg/msgpack/packer/Unconverter;->resetResult()V

    .line 533
    :cond_0
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->valueAccept:Lorg/msgpack/unpacker/ValueAccept;

    invoke-virtual {v0, p1}, Lorg/msgpack/unpacker/ValueAccept;->setUnconverter(Lorg/msgpack/packer/Unconverter;)V

    .line 535
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->checkCount()V

    .line 536
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->valueAccept:Lorg/msgpack/unpacker/ValueAccept;

    invoke-virtual {p0, v0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->readOneWithoutStack(Lorg/msgpack/unpacker/Accept;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->reduceCount()V

    .line 538
    invoke-virtual {p1}, Lorg/msgpack/packer/Unconverter;->getResult()Lorg/msgpack/type/Value;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    .line 543
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->getTopCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 544
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->topIsArray()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 545
    invoke-virtual {p1, v1}, Lorg/msgpack/packer/Unconverter;->writeArrayEnd(Z)Lorg/msgpack/packer/Packer;

    .line 546
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->pop()V

    goto :goto_1

    .line 548
    :cond_2
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->topIsMap()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 549
    invoke-virtual {p1, v1}, Lorg/msgpack/packer/Unconverter;->writeMapEnd(Z)Lorg/msgpack/packer/Packer;

    .line 550
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->pop()V

    .line 555
    :goto_1
    invoke-virtual {p1}, Lorg/msgpack/packer/Unconverter;->getResult()Lorg/msgpack/type/Value;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    .line 553
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "invalid stack"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 559
    :cond_4
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->valueAccept:Lorg/msgpack/unpacker/ValueAccept;

    invoke-virtual {p0, v0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->readOne(Lorg/msgpack/unpacker/Accept;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 632
    iput-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->raw:[B

    .line 633
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->clear()V

    return-void
.end method

.method public resetReadByteCount()V
    .locals 1

    .line 647
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->in:Lorg/msgpack/io/Input;

    invoke-interface {v0}, Lorg/msgpack/io/Input;->resetReadByteCount()V

    return-void
.end method

.method public skip()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->checkCount()V

    .line 566
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->skipAccept:Lorg/msgpack/unpacker/SkipAccept;

    invoke-virtual {p0, v0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->readOneWithoutStack(Lorg/msgpack/unpacker/Accept;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->reduceCount()V

    return-void

    .line 570
    :cond_0
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->getDepth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 572
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v1}, Lorg/msgpack/unpacker/UnpackerStack;->getTopCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 573
    iget-object v1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v1}, Lorg/msgpack/unpacker/UnpackerStack;->pop()V

    .line 574
    iget-object v1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v1}, Lorg/msgpack/unpacker/UnpackerStack;->getDepth()I

    move-result v1

    if-gt v1, v0, :cond_1

    return-void

    .line 578
    :cond_2
    iget-object v1, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->skipAccept:Lorg/msgpack/unpacker/SkipAccept;

    invoke-virtual {p0, v1}, Lorg/msgpack/unpacker/MessagePackUnpacker;->readOne(Lorg/msgpack/unpacker/Accept;)V

    goto :goto_0
.end method

.method protected tryReadNil()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->checkCount()V

    .line 348
    invoke-direct {p0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->getHeadByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_0

    .line 351
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->reduceCount()V

    const/16 v0, -0x3a

    .line 352
    iput-byte v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public trySkipNil()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->getTopCount()I

    move-result v0

    if-gtz v0, :cond_0

    return v1

    .line 366
    :cond_0
    invoke-direct {p0}, Lorg/msgpack/unpacker/MessagePackUnpacker;->getHeadByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0xc0

    if-ne v0, v2, :cond_1

    .line 369
    iget-object v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->stack:Lorg/msgpack/unpacker/UnpackerStack;

    invoke-virtual {v0}, Lorg/msgpack/unpacker/UnpackerStack;->reduceCount()V

    const/16 v0, -0x3a

    .line 370
    iput-byte v0, p0, Lorg/msgpack/unpacker/MessagePackUnpacker;->headByte:B

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
