.class Ljavassist/bytecode/StackMap$NewRemover;
.super Ljavassist/bytecode/StackMap$SimpleCopy;
.source "StackMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NewRemover"
.end annotation


# instance fields
.field posOfNew:I


# direct methods
.method constructor <init>(Ljavassist/bytecode/StackMap;I)V
    .locals 0

    .line 419
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMap$SimpleCopy;-><init>(Ljavassist/bytecode/StackMap;)V

    .line 420
    iput p2, p0, Ljavassist/bytecode/StackMap$NewRemover;->posOfNew:I

    return-void
.end method

.method private stackTypeInfoArray(III)I
    .locals 6

    const/4 p2, 0x0

    move v2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x7

    if-ge v0, p3, :cond_3

    .line 431
    iget-object v5, p0, Ljavassist/bytecode/StackMap$NewRemover;->info:[B

    aget-byte v5, v5, v2

    if-ne v5, v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x3

    goto :goto_2

    :cond_1
    if-ne v5, v3, :cond_2

    .line 435
    iget-object v3, p0, Ljavassist/bytecode/StackMap$NewRemover;->info:[B

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3, v4}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v3

    .line 436
    iget v4, p0, Ljavassist/bytecode/StackMap$NewRemover;->posOfNew:I

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    :cond_3
    iget-object v0, p0, Ljavassist/bytecode/StackMap$NewRemover;->writer:Ljavassist/bytecode/StackMap$Writer;

    sub-int v1, p3, v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/StackMap$Writer;->write16bit(I)V

    :goto_3
    if-ge p2, p3, :cond_7

    .line 447
    iget-object v0, p0, Ljavassist/bytecode/StackMap$NewRemover;->info:[B

    aget-byte v0, v0, p1

    if-ne v0, v4, :cond_5

    .line 449
    iget-object v0, p0, Ljavassist/bytecode/StackMap$NewRemover;->info:[B

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 450
    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/StackMap$NewRemover;->objectVariable(II)V

    :cond_4
    :goto_4
    add-int/lit8 p1, p1, 0x3

    goto :goto_5

    :cond_5
    if-ne v0, v3, :cond_6

    .line 454
    iget-object v0, p0, Ljavassist/bytecode/StackMap$NewRemover;->info:[B

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 455
    iget v1, p0, Ljavassist/bytecode/StackMap$NewRemover;->posOfNew:I

    if-eq v0, v1, :cond_4

    .line 456
    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/StackMap$NewRemover;->uninitialized(II)V

    goto :goto_4

    .line 461
    :cond_6
    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/StackMap$NewRemover;->typeInfo(IB)V

    add-int/lit8 p1, p1, 0x1

    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_7
    return p1
.end method


# virtual methods
.method public stack(III)I
    .locals 0

    .line 424
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/StackMap$NewRemover;->stackTypeInfoArray(III)I

    move-result p1

    return p1
.end method
