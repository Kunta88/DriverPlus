.class Ljavassist/bytecode/CodeIterator$Table;
.super Ljavassist/bytecode/CodeIterator$Switcher;
.source "CodeIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/CodeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Table"
.end annotation


# instance fields
.field high:I

.field low:I


# direct methods
.method constructor <init>(IIII[I)V
    .locals 0

    .line 1528
    invoke-direct {p0, p1, p2, p5}, Ljavassist/bytecode/CodeIterator$Switcher;-><init>(II[I)V

    .line 1529
    iput p3, p0, Ljavassist/bytecode/CodeIterator$Table;->low:I

    .line 1530
    iput p4, p0, Ljavassist/bytecode/CodeIterator$Table;->high:I

    return-void
.end method


# virtual methods
.method tableSize()I
    .locals 1

    .line 1546
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator$Table;->offsets:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method write2(I[B)I
    .locals 3

    .line 1534
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Table;->low:I

    invoke-static {v0, p2, p1}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 1535
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Table;->high:I

    add-int/lit8 v1, p1, 0x4

    invoke-static {v0, p2, v1}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 1536
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator$Table;->offsets:[I

    array-length v0, v0

    add-int/lit8 p1, p1, 0x8

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1539
    iget-object v2, p0, Ljavassist/bytecode/CodeIterator$Table;->offsets:[I

    aget v2, v2, v1

    invoke-static {v2, p2, p1}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    return v0
.end method
