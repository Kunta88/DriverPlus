.class public Lorg/msgpack/io/LinkedBufferInput;
.super Lorg/msgpack/io/AbstractInput;
.source "LinkedBufferInput.java"


# instance fields
.field private final bufferSize:I

.field link:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private nextAdvance:I

.field private tmpBuffer:[B

.field private tmpByteBuffer:Ljava/nio/ByteBuffer;

.field writable:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lorg/msgpack/io/AbstractInput;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 43
    iput-object v0, p0, Lorg/msgpack/io/LinkedBufferInput;->tmpBuffer:[B

    .line 44
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/msgpack/io/LinkedBufferInput;->tmpByteBuffer:Ljava/nio/ByteBuffer;

    .line 45
    iput p1, p0, Lorg/msgpack/io/LinkedBufferInput;->bufferSize:I

    return-void
.end method

.method private removeFirstLink(Ljava/nio/ByteBuffer;)Z
    .locals 2

    .line 143
    iget-object v0, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 144
    iget v0, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 145
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 146
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 147
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    iput p1, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    return v1

    .line 150
    :cond_0
    iget-object p1, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    return v1

    .line 154
    :cond_1
    iget-object p1, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    return v1
.end method

.method private require(I)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 181
    :try_start_0
    iget-object v0, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 187
    iput p1, p0, Lorg/msgpack/io/LinkedBufferInput;->nextAdvance:I

    return-object v0

    .line 190
    :cond_0
    invoke-direct {p0, p1}, Lorg/msgpack/io/LinkedBufferInput;->requireMore(I)V

    .line 191
    iput p1, p0, Lorg/msgpack/io/LinkedBufferInput;->nextAdvance:I

    .line 192
    iget-object p1, p0, Lorg/msgpack/io/LinkedBufferInput;->tmpByteBuffer:Ljava/nio/ByteBuffer;

    return-object p1

    .line 184
    :cond_1
    new-instance p1, Lorg/msgpack/io/EndOfBufferException;

    invoke-direct {p1}, Lorg/msgpack/io/EndOfBufferException;-><init>()V

    throw p1
.end method

.method private requireMore(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 162
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 163
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 164
    iget-object v3, p0, Lorg/msgpack/io/LinkedBufferInput;->tmpBuffer:[B

    invoke-virtual {v2, v3, v1, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 165
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 168
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 169
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 170
    iget-object v5, p0, Lorg/msgpack/io/LinkedBufferInput;->tmpBuffer:[B

    invoke-virtual {v2, v5, v1, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 171
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int/2addr p1, v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 175
    :cond_1
    new-instance p1, Lorg/msgpack/io/EndOfBufferException;

    invoke-direct {p1}, Lorg/msgpack/io/EndOfBufferException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public advance()V
    .locals 4

    .line 121
    iget-object v0, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget v0, p0, Lorg/msgpack/io/LinkedBufferInput;->nextAdvance:I

    .line 127
    :cond_1
    iget-object v1, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 128
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 129
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int/2addr v0, v2

    .line 133
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    invoke-direct {p0, v1}, Lorg/msgpack/io/LinkedBufferInput;->removeFirstLink(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    :goto_0
    iget v0, p0, Lorg/msgpack/io/LinkedBufferInput;->nextAdvance:I

    invoke-virtual {p0, v0}, Lorg/msgpack/io/LinkedBufferInput;->incrReadByteCount(I)V

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lorg/msgpack/io/LinkedBufferInput;->nextAdvance:I

    return-void
.end method

.method public clear()V
    .locals 2

    .line 336
    iget v0, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    if-ltz v0, :cond_0

    .line 337
    iget-object v0, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 338
    iget-object v1, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    const/4 v1, 0x0

    .line 339
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 340
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 341
    iget-object v1, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 342
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iput v0, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    goto :goto_0

    .line 344
    :cond_0
    iget-object v0, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, -0x1

    .line 345
    iput v0, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    :goto_0
    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public copyReferencedBuffer()V
    .locals 6

    .line 350
    iget-object v0, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 356
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    return-void

    .line 362
    :cond_2
    iget v0, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    if-ltz v0, :cond_4

    .line 363
    iget-object v0, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 364
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    .line 366
    iget-object v3, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 367
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 368
    invoke-virtual {v4, v2, v1, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v1, v5

    goto :goto_1

    .line 371
    :cond_3
    iget-object v1, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 372
    iget-object v1, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v1, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 376
    :cond_4
    new-array v0, v2, [B

    .line 378
    iget-object v2, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 379
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 380
    invoke-virtual {v4, v0, v3, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v3, v5

    goto :goto_2

    .line 383
    :cond_5
    iget-object v2, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 384
    iget-object v2, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 385
    iput v1, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    :goto_3
    return-void
.end method

.method public feed(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x0

    .line 284
    invoke-virtual {p0, p1, v0}, Lorg/msgpack/io/LinkedBufferInput;->feed(Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public feed(Ljava/nio/ByteBuffer;Z)V
    .locals 5

    if-eqz p2, :cond_1

    .line 289
    iget p2, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    if-lez p2, :cond_0

    iget-object p2, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    if-nez p2, :cond_0

    .line 290
    iget-object p2, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    return-void

    .line 293
    :cond_0
    iget-object p2, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 294
    iput p1, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    return-void

    .line 298
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    const/4 v0, 0x0

    .line 302
    :try_start_0
    iget-object v1, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    nop

    .line 304
    :goto_0
    iget v1, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    if-gt p2, v1, :cond_2

    .line 305
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 306
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 307
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 308
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 309
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 310
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    return-void

    :cond_2
    const/4 v2, 0x0

    if-lez v1, :cond_3

    .line 315
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 316
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 317
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    iget v4, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 318
    iget v3, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 319
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 320
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 321
    iget v0, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    sub-int/2addr p2, v0

    .line 322
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 323
    iput v2, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    .line 326
    :cond_3
    iget v0, p0, Lorg/msgpack/io/LinkedBufferInput;->bufferSize:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 327
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 328
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 329
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 330
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 331
    iget-object p1, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    sub-int/2addr v0, p2

    .line 332
    iput v0, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    return-void
.end method

.method public feed([B)V
    .locals 2

    .line 227
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Lorg/msgpack/io/LinkedBufferInput;->feed([BIIZ)V

    return-void
.end method

.method public feed([BII)V
    .locals 1

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/msgpack/io/LinkedBufferInput;->feed([BIIZ)V

    return-void
.end method

.method public feed([BIIZ)V
    .locals 4

    if-eqz p4, :cond_1

    .line 240
    iget p4, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    if-lez p4, :cond_0

    iget-object p4, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {p4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    if-nez p4, :cond_0

    .line 241
    iget-object p4, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {p4}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p4, v0, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    return-void

    .line 244
    :cond_0
    iget-object p4, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 245
    iput p1, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    return-void

    :cond_1
    const/4 p4, 0x0

    .line 251
    :try_start_0
    iget-object v0, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p4, v0

    goto :goto_0

    :catch_0
    nop

    .line 253
    :goto_0
    iget v0, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    if-gt p3, v0, :cond_2

    .line 254
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 255
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 256
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 257
    invoke-virtual {p4, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 258
    invoke-virtual {p4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 259
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    return-void

    :cond_2
    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 264
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 265
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 266
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    iget v3, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    add-int/2addr v2, v3

    invoke-virtual {p4, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 267
    iget v2, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    invoke-virtual {p4, p1, p2, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 268
    invoke-virtual {p4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 269
    iget p4, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    .line 271
    iput v1, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    .line 274
    :cond_3
    iget p4, p0, Lorg/msgpack/io/LinkedBufferInput;->bufferSize:I

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 275
    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 276
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 277
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 278
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 279
    iget-object p1, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    sub-int/2addr p4, p3

    .line 280
    iput p4, p0, Lorg/msgpack/io/LinkedBufferInput;->writable:I

    return-void
.end method

.method public feed([BZ)V
    .locals 2

    .line 231
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lorg/msgpack/io/LinkedBufferInput;->feed([BIIZ)V

    return-void
.end method

.method public getByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 197
    invoke-direct {p0, v0}, Lorg/msgpack/io/LinkedBufferInput;->require(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public getDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 222
    invoke-direct {p0, v0}, Lorg/msgpack/io/LinkedBufferInput;->require(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 217
    invoke-direct {p0, v0}, Lorg/msgpack/io/LinkedBufferInput;->require(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 207
    invoke-direct {p0, v0}, Lorg/msgpack/io/LinkedBufferInput;->require(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 212
    invoke-direct {p0, v0}, Lorg/msgpack/io/LinkedBufferInput;->require(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getReadByteCount()I
    .locals 1

    .line 27
    invoke-super {p0}, Lorg/msgpack/io/AbstractInput;->getReadByteCount()I

    move-result v0

    return v0
.end method

.method public getShort()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 202
    invoke-direct {p0, v0}, Lorg/msgpack/io/LinkedBufferInput;->require(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 3

    .line 391
    iget-object v0, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 392
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move v0, p3

    .line 54
    :cond_1
    iget-object v1, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 55
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 56
    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {p0, v0}, Lorg/msgpack/io/LinkedBufferInput;->incrReadByteCount(I)V

    return p3

    .line 60
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 61
    invoke-virtual {v1, p1, p2, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 62
    invoke-virtual {p0, v2}, Lorg/msgpack/io/LinkedBufferInput;->incrReadByteCount(I)V

    sub-int/2addr v0, v2

    add-int/2addr p2, v2

    .line 65
    invoke-direct {p0, v1}, Lorg/msgpack/io/LinkedBufferInput;->removeFirstLink(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_1

    sub-int/2addr p3, v0

    return p3
.end method

.method public readByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 107
    :try_start_0
    iget-object v0, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 113
    invoke-virtual {p0}, Lorg/msgpack/io/LinkedBufferInput;->incrReadOneByteCount()V

    .line 114
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_0

    .line 115
    invoke-direct {p0, v0}, Lorg/msgpack/io/LinkedBufferInput;->removeFirstLink(Ljava/nio/ByteBuffer;)Z

    :cond_0
    return v1

    .line 110
    :cond_1
    new-instance v0, Lorg/msgpack/io/EndOfBufferException;

    invoke-direct {v0}, Lorg/msgpack/io/EndOfBufferException;-><init>()V

    throw v0
.end method

.method public bridge synthetic resetReadByteCount()V
    .locals 0

    .line 27
    invoke-super {p0}, Lorg/msgpack/io/AbstractInput;->resetReadByteCount()V

    return-void
.end method

.method public tryRefer(Lorg/msgpack/io/BufferReferer;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    :try_start_0
    iget-object v0, p0, Lorg/msgpack/io/LinkedBufferInput;->link:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 79
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 83
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 84
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int v3, v1, p2

    .line 86
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v4, 0x1

    .line 87
    invoke-interface {p1, v0, v4}, Lorg/msgpack/io/BufferReferer;->refer(Ljava/nio/ByteBuffer;Z)V

    .line 88
    invoke-virtual {p0, p2}, Lorg/msgpack/io/LinkedBufferInput;->incrReadByteCount(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 93
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 97
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    if-nez p1, :cond_1

    .line 98
    invoke-direct {p0, v0}, Lorg/msgpack/io/LinkedBufferInput;->removeFirstLink(Ljava/nio/ByteBuffer;)Z

    :cond_1
    return v4

    :catchall_0
    move-exception p1

    .line 91
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 95
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 97
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    if-nez p2, :cond_2

    .line 98
    invoke-direct {p0, v0}, Lorg/msgpack/io/LinkedBufferInput;->removeFirstLink(Ljava/nio/ByteBuffer;)Z

    :cond_2
    throw p1

    .line 78
    :cond_3
    new-instance p1, Lorg/msgpack/io/EndOfBufferException;

    invoke-direct {p1}, Lorg/msgpack/io/EndOfBufferException;-><init>()V

    throw p1
.end method
