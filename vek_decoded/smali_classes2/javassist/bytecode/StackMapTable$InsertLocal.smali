.class Ljavassist/bytecode/StackMapTable$InsertLocal;
.super Ljavassist/bytecode/StackMapTable$SimpleCopy;
.source "StackMapTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMapTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InsertLocal"
.end annotation


# instance fields
.field private varData:I

.field private varIndex:I

.field private varTag:I


# direct methods
.method public constructor <init>([BIII)V
    .locals 0

    .line 486
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$SimpleCopy;-><init>([B)V

    .line 487
    iput p2, p0, Ljavassist/bytecode/StackMapTable$InsertLocal;->varIndex:I

    .line 488
    iput p3, p0, Ljavassist/bytecode/StackMapTable$InsertLocal;->varTag:I

    .line 489
    iput p4, p0, Ljavassist/bytecode/StackMapTable$InsertLocal;->varData:I

    return-void
.end method


# virtual methods
.method public fullFrame(II[I[I[I[I)V
    .locals 13

    move-object v7, p0

    move-object/from16 v0, p3

    .line 494
    array-length v1, v0

    .line 495
    iget v2, v7, Ljavassist/bytecode/StackMapTable$InsertLocal;->varIndex:I

    if-ge v1, v2, :cond_0

    .line 496
    invoke-super/range {p0 .. p6}, Ljavassist/bytecode/StackMapTable$SimpleCopy;->fullFrame(II[I[I[I[I)V

    return-void

    .line 500
    :cond_0
    iget v3, v7, Ljavassist/bytecode/StackMapTable$InsertLocal;->varTag:I

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x2

    :goto_1
    add-int v4, v1, v3

    .line 501
    new-array v6, v4, [I

    .line 502
    new-array v4, v4, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    if-ge v9, v1, :cond_4

    if-ne v10, v2, :cond_3

    add-int/2addr v10, v3

    .line 509
    :cond_3
    aget v11, v0, v9

    aput v11, v6, v10

    add-int/lit8 v11, v10, 0x1

    .line 510
    aget v12, p4, v9

    aput v12, v4, v10

    add-int/lit8 v9, v9, 0x1

    move v10, v11

    goto :goto_2

    .line 513
    :cond_4
    iget v0, v7, Ljavassist/bytecode/StackMapTable$InsertLocal;->varTag:I

    aput v0, v6, v2

    .line 514
    iget v0, v7, Ljavassist/bytecode/StackMapTable$InsertLocal;->varData:I

    aput v0, v4, v2

    if-le v3, v5, :cond_5

    add-int/2addr v2, v5

    .line 516
    aput v8, v6, v2

    .line 517
    aput v8, v4, v2

    :cond_5
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v6

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 520
    invoke-super/range {v0 .. v6}, Ljavassist/bytecode/StackMapTable$SimpleCopy;->fullFrame(II[I[I[I[I)V

    return-void
.end method
