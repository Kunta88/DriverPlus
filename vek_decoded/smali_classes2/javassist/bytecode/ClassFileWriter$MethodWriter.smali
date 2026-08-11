.class public final Ljavassist/bytecode/ClassFileWriter$MethodWriter;
.super Ljava/lang/Object;
.source "ClassFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/ClassFileWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodWriter"
.end annotation


# instance fields
.field private catchCount:I

.field private catchPos:I

.field protected codeIndex:I

.field protected constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

.field private isAbstract:Z

.field private methodCount:I

.field protected output:Ljavassist/bytecode/ByteStream;

.field protected stackIndex:I

.field private startPos:I

.field protected throwsIndex:I


# direct methods
.method constructor <init>(Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;)V
    .locals 2

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    new-instance v0, Ljavassist/bytecode/ByteStream;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljavassist/bytecode/ByteStream;-><init>(I)V

    iput-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    .line 327
    iput-object p1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    const/4 p1, 0x0

    .line 328
    iput p1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->methodCount:I

    .line 329
    iput p1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->codeIndex:I

    .line 330
    iput p1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->throwsIndex:I

    .line 331
    iput p1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->stackIndex:I

    return-void
.end method

.method private writeThrows([I)V
    .locals 3

    .line 398
    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->throwsIndex:I

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    const-string v1, "Exceptions"

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->throwsIndex:I

    .line 401
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    iget v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->throwsIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 402
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->writeInt(I)V

    .line 403
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    const/4 v0, 0x0

    .line 404
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 405
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 1

    .line 414
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->write(I)V

    return-void
.end method

.method public add16(I)V
    .locals 1

    .line 421
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    return-void
.end method

.method public add32(I)V
    .locals 1

    .line 428
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeInt(I)V

    return-void
.end method

.method public addCatch(IIII)V
    .locals 1

    .line 467
    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->catchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->catchCount:I

    .line 468
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 469
    iget-object p1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {p1, p2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 470
    iget-object p1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {p1, p3}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 471
    iget-object p1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {p1, p4}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    return-void
.end method

.method public addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 438
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addClassInfo(Ljava/lang/String;)I

    move-result p2

    .line 439
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    invoke-virtual {v0, p3, p4}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addNameAndTypeInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 440
    iget-object p4, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    invoke-virtual {p4, p2, p3}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addMethodrefInfo(II)I

    move-result p2

    .line 441
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->add(I)V

    .line 442
    invoke-virtual {p0, p2}, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->add16(I)V

    return-void
.end method

.method public begin(III[ILjavassist/bytecode/ClassFileWriter$AttributeWriter;)V
    .locals 2

    .line 369
    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->methodCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->methodCount:I

    .line 370
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 371
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 372
    iget-object p2, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {p2, p3}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    and-int/lit16 p1, p1, 0x400

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 373
    :goto_0
    iput-boolean p1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->isAbstract:Z

    xor-int/2addr p1, v1

    if-eqz p4, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 379
    :cond_1
    iget-object p3, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-static {p3, p5, p1}, Ljavassist/bytecode/ClassFileWriter;->writeAttribute(Ljavassist/bytecode/ByteStream;Ljavassist/bytecode/ClassFileWriter$AttributeWriter;I)V

    if-eqz p4, :cond_2

    .line 382
    invoke-direct {p0, p4}, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->writeThrows([I)V

    .line 384
    :cond_2
    iget-boolean p1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->isAbstract:Z

    if-nez p1, :cond_4

    .line 385
    iget p1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->codeIndex:I

    if-nez p1, :cond_3

    .line 386
    iget-object p1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    const-string p3, "Code"

    invoke-virtual {p1, p3}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addUtf8Info(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->codeIndex:I

    .line 388
    :cond_3
    iget-object p1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {p1}, Ljavassist/bytecode/ByteStream;->getPos()I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->startPos:I

    .line 389
    iget-object p1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    iget p3, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->codeIndex:I

    invoke-virtual {p1, p3}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 390
    iget-object p1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    const/16 p3, 0xc

    invoke-virtual {p1, p3}, Ljavassist/bytecode/ByteStream;->writeBlank(I)V

    :cond_4
    const/4 p1, -0x1

    .line 393
    iput p1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->catchPos:I

    .line 394
    iput p2, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->catchCount:I

    return-void
.end method

.method public begin(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljavassist/bytecode/ClassFileWriter$AttributeWriter;)V
    .locals 7

    .line 347
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addUtf8Info(Ljava/lang/String;)I

    move-result v3

    .line 348
    iget-object p2, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    invoke-virtual {p2, p3}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addUtf8Info(Ljava/lang/String;)I

    move-result v4

    if-nez p4, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 353
    :cond_0
    iget-object p2, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    invoke-virtual {p2, p4}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addClassInfo([Ljava/lang/String;)[I

    move-result-object p2

    :goto_0
    move-object v5, p2

    move-object v1, p0

    move v2, p1

    move-object v6, p5

    .line 355
    invoke-virtual/range {v1 .. v6}, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->begin(III[ILjavassist/bytecode/ClassFileWriter$AttributeWriter;)V

    return-void
.end method

.method public codeEnd(II)V
    .locals 2

    .line 449
    iget-boolean v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->isAbstract:Z

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    iget v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->startPos:I

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v0, v1, p1}, Ljavassist/bytecode/ByteStream;->writeShort(II)V

    .line 451
    iget-object p1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->startPos:I

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0, p2}, Ljavassist/bytecode/ByteStream;->writeShort(II)V

    .line 452
    iget-object p1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    iget p2, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->startPos:I

    add-int/lit8 p2, p2, 0xa

    invoke-virtual {p1}, Ljavassist/bytecode/ByteStream;->getPos()I

    move-result v0

    iget v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->startPos:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0xe

    invoke-virtual {p1, p2, v0}, Ljavassist/bytecode/ByteStream;->writeInt(II)V

    .line 453
    iget-object p1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {p1}, Ljavassist/bytecode/ByteStream;->getPos()I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->catchPos:I

    const/4 p1, 0x0

    .line 454
    iput p1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->catchCount:I

    .line 455
    iget-object p2, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {p2, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    :cond_0
    return-void
.end method

.method dataSize()I
    .locals 1

    .line 508
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0}, Ljavassist/bytecode/ByteStream;->size()I

    move-result v0

    return v0
.end method

.method public end(Ljavassist/bytecode/StackMapTable$Writer;Ljavassist/bytecode/ClassFileWriter$AttributeWriter;)V
    .locals 3

    .line 483
    iget-boolean v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->isAbstract:Z

    if-eqz v0, :cond_0

    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    iget v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->catchPos:I

    iget v2, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->catchCount:I

    invoke-virtual {v0, v1, v2}, Ljavassist/bytecode/ByteStream;->writeShort(II)V

    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 490
    :goto_0
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-static {v1, p2, v0}, Ljavassist/bytecode/ClassFileWriter;->writeAttribute(Ljavassist/bytecode/ByteStream;Ljavassist/bytecode/ClassFileWriter$AttributeWriter;I)V

    if-eqz p1, :cond_3

    .line 493
    iget p2, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->stackIndex:I

    if-nez p2, :cond_2

    .line 494
    iget-object p2, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    const-string v0, "StackMapTable"

    invoke-virtual {p2, v0}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addUtf8Info(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->stackIndex:I

    .line 496
    :cond_2
    iget-object p2, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->stackIndex:I

    invoke-virtual {p2, v0}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 497
    invoke-virtual {p1}, Ljavassist/bytecode/StackMapTable$Writer;->toByteArray()[B

    move-result-object p1

    .line 498
    iget-object p2, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljavassist/bytecode/ByteStream;->writeInt(I)V

    .line 499
    iget-object p2, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {p2, p1}, Ljavassist/bytecode/ByteStream;->write([B)V

    .line 503
    :cond_3
    iget-object p1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    iget p2, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->startPos:I

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p1}, Ljavassist/bytecode/ByteStream;->getPos()I

    move-result v0

    iget v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->startPos:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p1, p2, v0}, Ljavassist/bytecode/ByteStream;->writeInt(II)V

    return-void
.end method

.method size()I
    .locals 1

    .line 506
    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->methodCount:I

    return v0
.end method

.method write(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
