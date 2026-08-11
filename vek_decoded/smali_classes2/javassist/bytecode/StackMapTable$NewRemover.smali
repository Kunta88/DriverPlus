.class Ljavassist/bytecode/StackMapTable$NewRemover;
.super Ljavassist/bytecode/StackMapTable$SimpleCopy;
.source "StackMapTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMapTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NewRemover"
.end annotation


# instance fields
.field posOfNew:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 913
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$SimpleCopy;-><init>([B)V

    .line 914
    iput p2, p0, Ljavassist/bytecode/StackMapTable$NewRemover;->posOfNew:I

    return-void
.end method


# virtual methods
.method public fullFrame(II[I[I[I[I)V
    .locals 14

    move-object/from16 v0, p5

    .line 926
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 928
    aget v4, v0, v3

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    aget v4, p6, v3

    move-object v13, p0

    iget v6, v13, Ljavassist/bytecode/StackMapTable$NewRemover;->posOfNew:I

    if-ne v4, v6, :cond_3

    add-int/lit8 v4, v3, 0x1

    aget v7, v0, v4

    if-ne v7, v5, :cond_3

    aget v4, p6, v4

    if-ne v4, v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v1, -0x2

    .line 931
    new-array v5, v4, [I

    .line 932
    new-array v4, v4, [I

    const/4 v6, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 938
    :cond_0
    aget v7, v0, v2

    aput v7, v5, v6

    add-int/lit8 v7, v6, 0x1

    .line 939
    aget v8, p6, v2

    aput v8, v4, v6

    move v6, v7

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v12, v4

    move-object v11, v5

    goto :goto_3

    :cond_2
    move-object v13, p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    move-object v13, p0

    move-object/from16 v12, p6

    move-object v11, v0

    :goto_3
    move-object v6, p0

    move v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 947
    invoke-super/range {v6 .. v12}, Ljavassist/bytecode/StackMapTable$SimpleCopy;->fullFrame(II[I[I[I[I)V

    return-void
.end method

.method public sameLocals(IIII)V
    .locals 1

    const/16 v0, 0x8

    if-ne p3, v0, :cond_0

    .line 918
    iget v0, p0, Ljavassist/bytecode/StackMapTable$NewRemover;->posOfNew:I

    if-ne p4, v0, :cond_0

    .line 919
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/StackMapTable$SimpleCopy;->sameFrame(II)V

    goto :goto_0

    .line 921
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Ljavassist/bytecode/StackMapTable$SimpleCopy;->sameLocals(IIII)V

    :goto_0
    return-void
.end method
