.class public Ljavassist/bytecode/StackMapTable$Walker;
.super Ljava/lang/Object;
.source "StackMapTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMapTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Walker"
.end annotation


# instance fields
.field info:[B

.field numOfEntries:I


# direct methods
.method public constructor <init>(Ljavassist/bytecode/StackMapTable;)V
    .locals 0

    .line 153
    invoke-virtual {p1}, Ljavassist/bytecode/StackMapTable;->get()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$Walker;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Ljavassist/bytecode/StackMapTable$Walker;->info:[B

    const/4 v0, 0x0

    .line 166
    invoke-static {p1, v0}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/StackMapTable$Walker;->numOfEntries:I

    return-void
.end method

.method private appendFrame(II)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    add-int/lit16 p2, p2, -0xfb

    .line 280
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Walker;->info:[B

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 281
    new-array v1, p2, [I

    .line 282
    new-array v2, p2, [I

    add-int/lit8 v3, p1, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p2, :cond_2

    .line 285
    iget-object v6, p0, Ljavassist/bytecode/StackMapTable$Walker;->info:[B

    aget-byte v7, v6, v3

    and-int/lit16 v7, v7, 0xff

    .line 286
    aput v7, v1, v5

    const/4 v8, 0x7

    if-eq v7, v8, :cond_1

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    goto :goto_1

    .line 292
    :cond_0
    aput v4, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v7, v3, 0x1

    .line 288
    invoke-static {v6, v7}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v6

    aput v6, v2, v5

    add-int/lit8 v3, v3, 0x3

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 297
    :cond_2
    invoke-virtual {p0, p1, v0, v1, v2}, Ljavassist/bytecode/StackMapTable$Walker;->appendFrame(II[I[I)V

    return v3
.end method

.method private fullFrame(I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Walker;->info:[B

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v4

    .line 315
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Walker;->info:[B

    add-int/lit8 v1, p1, 0x3

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 316
    new-array v5, v0, [I

    .line 317
    new-array v6, v0, [I

    add-int/lit8 v1, p1, 0x5

    .line 318
    invoke-direct {p0, v1, v0, v5, v6}, Ljavassist/bytecode/StackMapTable$Walker;->verifyTypeInfo(II[I[I)I

    move-result v0

    .line 319
    iget-object v1, p0, Ljavassist/bytecode/StackMapTable$Walker;->info:[B

    invoke-static {v1, v0}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v1

    .line 320
    new-array v7, v1, [I

    .line 321
    new-array v8, v1, [I

    add-int/lit8 v0, v0, 0x2

    .line 322
    invoke-direct {p0, v0, v1, v7, v8}, Ljavassist/bytecode/StackMapTable$Walker;->verifyTypeInfo(II[I[I)I

    move-result v0

    move-object v2, p0

    move v3, p1

    .line 323
    invoke-virtual/range {v2 .. v8}, Ljavassist/bytecode/StackMapTable$Walker;->fullFrame(II[I[I[I[I)V

    return v0
.end method

.method private sameLocals(II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const/16 v0, 0x80

    if-ge p2, v0, :cond_0

    add-int/lit8 p2, p2, -0x40

    move v0, p1

    goto :goto_0

    .line 239
    :cond_0
    iget-object p2, p0, Ljavassist/bytecode/StackMapTable$Walker;->info:[B

    add-int/lit8 v0, p1, 0x1

    invoke-static {p2, v0}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p2

    add-int/lit8 v0, p1, 0x2

    .line 243
    :goto_0
    iget-object v1, p0, Ljavassist/bytecode/StackMapTable$Walker;->info:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x7

    if-eq v2, v4, :cond_1

    const/16 v4, 0x8

    if-ne v2, v4, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 246
    invoke-static {v1, v0}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v3

    .line 250
    :cond_2
    invoke-virtual {p0, p1, p2, v2, v3}, Ljavassist/bytecode/StackMapTable$Walker;->sameLocals(IIII)V

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private verifyTypeInfo(II[I[I)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 345
    iget-object v1, p0, Ljavassist/bytecode/StackMapTable$Walker;->info:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    .line 346
    aput p1, p3, v0

    const/4 v3, 0x7

    if-eq p1, v3, :cond_0

    const/16 v3, 0x8

    if-ne p1, v3, :cond_1

    .line 348
    :cond_0
    invoke-static {v1, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    aput p1, p4, v0

    add-int/lit8 v2, v2, 0x2

    :cond_1
    move p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method


# virtual methods
.method public appendFrame(II[I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    return-void
.end method

.method public chopFrame(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    return-void
.end method

.method public fullFrame(II[I[I[I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    return-void
.end method

.method public parse()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 178
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Walker;->numOfEntries:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 181
    invoke-virtual {p0, v1, v2}, Ljavassist/bytecode/StackMapTable$Walker;->stackMapFrames(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sameFrame(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    return-void
.end method

.method public sameLocals(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    return-void
.end method

.method public final size()I
    .locals 1

    .line 172
    iget v0, p0, Ljavassist/bytecode/StackMapTable$Walker;->numOfEntries:I

    return v0
.end method

.method stackMapFrames(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 194
    iget-object p2, p0, Ljavassist/bytecode/StackMapTable$Walker;->info:[B

    aget-byte v0, p2, p1

    const/16 v1, 0xff

    and-int/2addr v0, v1

    const/16 v2, 0x40

    if-ge v0, v2, :cond_0

    .line 196
    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/StackMapTable$Walker;->sameFrame(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_0
    const/16 v2, 0x80

    if-ge v0, v2, :cond_1

    .line 200
    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/StackMapTable$Walker;->sameLocals(II)I

    move-result p1

    goto :goto_1

    :cond_1
    const/16 v2, 0xf7

    if-lt v0, v2, :cond_6

    if-ne v0, v2, :cond_2

    .line 204
    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/StackMapTable$Walker;->sameLocals(II)I

    move-result p1

    goto :goto_1

    :cond_2
    const/16 v2, 0xfb

    if-ge v0, v2, :cond_3

    add-int/lit8 v1, p1, 0x1

    .line 206
    invoke-static {p2, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p2

    sub-int/2addr v2, v0

    .line 207
    invoke-virtual {p0, p1, p2, v2}, Ljavassist/bytecode/StackMapTable$Walker;->chopFrame(III)V

    :goto_0
    add-int/lit8 p1, p1, 0x3

    goto :goto_1

    :cond_3
    if-ne v0, v2, :cond_4

    add-int/lit8 v0, p1, 0x1

    .line 211
    invoke-static {p2, v0}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p2

    .line 212
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/StackMapTable$Walker;->sameFrame(II)V

    goto :goto_0

    :cond_4
    if-ge v0, v1, :cond_5

    .line 216
    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/StackMapTable$Walker;->appendFrame(II)I

    move-result p1

    goto :goto_1

    .line 218
    :cond_5
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$Walker;->fullFrame(I)I

    move-result p1

    :goto_1
    return p1

    .line 202
    :cond_6
    new-instance p1, Ljavassist/bytecode/BadBytecode;

    const-string p2, "bad frame_type in StackMapTable"

    invoke-direct {p1, p2}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
