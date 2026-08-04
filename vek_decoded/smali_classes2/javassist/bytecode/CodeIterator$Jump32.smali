.class Ljavassist/bytecode/CodeIterator$Jump32;
.super Ljavassist/bytecode/CodeIterator$Branch;
.source "CodeIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/CodeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Jump32"
.end annotation


# instance fields
.field offset:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1432
    invoke-direct {p0, p1}, Ljavassist/bytecode/CodeIterator$Branch;-><init>(I)V

    .line 1433
    iput p2, p0, Ljavassist/bytecode/CodeIterator$Jump32;->offset:I

    return-void
.end method


# virtual methods
.method shift(IIZ)V
    .locals 2

    .line 1437
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Jump32;->pos:I

    iget v1, p0, Ljavassist/bytecode/CodeIterator$Jump32;->offset:I

    invoke-static {v0, v1, p1, p2, p3}, Ljavassist/bytecode/CodeIterator$Jump32;->shiftOffset(IIIIZ)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/CodeIterator$Jump32;->offset:I

    .line 1438
    invoke-super {p0, p1, p2, p3}, Ljavassist/bytecode/CodeIterator$Branch;->shift(IIZ)V

    return-void
.end method

.method write(I[BI[B)I
    .locals 0

    .line 1442
    aget-byte p1, p2, p1

    aput-byte p1, p4, p3

    .line 1443
    iget p1, p0, Ljavassist/bytecode/CodeIterator$Jump32;->offset:I

    add-int/lit8 p3, p3, 0x1

    invoke-static {p1, p4, p3}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    const/4 p1, 0x5

    return p1
.end method
