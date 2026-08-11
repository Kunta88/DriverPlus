.class abstract Ljavassist/bytecode/CodeIterator$Branch16;
.super Ljavassist/bytecode/CodeIterator$Branch;
.source "CodeIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/CodeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Branch16"
.end annotation


# static fields
.field static final BIT16:I = 0x0

.field static final BIT32:I = 0x2

.field static final EXPAND:I = 0x1


# instance fields
.field offset:I

.field state:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1343
    invoke-direct {p0, p1}, Ljavassist/bytecode/CodeIterator$Branch;-><init>(I)V

    .line 1344
    iput p2, p0, Ljavassist/bytecode/CodeIterator$Branch16;->offset:I

    const/4 p1, 0x0

    .line 1345
    iput p1, p0, Ljavassist/bytecode/CodeIterator$Branch16;->state:I

    return-void
.end method


# virtual methods
.method abstract deltaSize()I
.end method

.method expanded()Z
    .locals 2

    .line 1357
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Branch16;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 1358
    iput v0, p0, Ljavassist/bytecode/CodeIterator$Branch16;->state:I

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method shift(IIZ)V
    .locals 2

    .line 1349
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Branch16;->pos:I

    iget v1, p0, Ljavassist/bytecode/CodeIterator$Branch16;->offset:I

    invoke-static {v0, v1, p1, p2, p3}, Ljavassist/bytecode/CodeIterator$Branch16;->shiftOffset(IIIIZ)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/CodeIterator$Branch16;->offset:I

    .line 1350
    invoke-super {p0, p1, p2, p3}, Ljavassist/bytecode/CodeIterator$Branch;->shift(IIZ)V

    .line 1351
    iget p1, p0, Ljavassist/bytecode/CodeIterator$Branch16;->state:I

    if-nez p1, :cond_1

    .line 1352
    iget p1, p0, Ljavassist/bytecode/CodeIterator$Branch16;->offset:I

    const/16 p2, -0x8000

    if-lt p1, p2, :cond_0

    const/16 p2, 0x7fff

    if-ge p2, p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 1353
    iput p1, p0, Ljavassist/bytecode/CodeIterator$Branch16;->state:I

    :cond_1
    return-void
.end method

.method write(I[BI[B)I
    .locals 2

    .line 1369
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Branch16;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1370
    invoke-virtual {p0, p1, p2, p3, p4}, Ljavassist/bytecode/CodeIterator$Branch16;->write32(I[BI[B)V

    goto :goto_0

    .line 1372
    :cond_0
    aget-byte p1, p2, p1

    aput-byte p1, p4, p3

    .line 1373
    iget p1, p0, Ljavassist/bytecode/CodeIterator$Branch16;->offset:I

    add-int/lit8 p3, p3, 0x1

    invoke-static {p1, p4, p3}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    :goto_0
    const/4 p1, 0x3

    return p1
.end method

.method abstract write32(I[BI[B)V
.end method
