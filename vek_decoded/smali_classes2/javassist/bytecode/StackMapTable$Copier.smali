.class Ljavassist/bytecode/StackMapTable$Copier;
.super Ljavassist/bytecode/StackMapTable$SimpleCopy;
.source "StackMapTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMapTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Copier"
.end annotation


# instance fields
.field private destPool:Ljavassist/bytecode/ConstPool;

.field private srcPool:Ljavassist/bytecode/ConstPool;


# direct methods
.method public constructor <init>(Ljavassist/bytecode/ConstPool;[BLjavassist/bytecode/ConstPool;)V
    .locals 0

    .line 405
    invoke-direct {p0, p2}, Ljavassist/bytecode/StackMapTable$SimpleCopy;-><init>([B)V

    .line 406
    iput-object p1, p0, Ljavassist/bytecode/StackMapTable$Copier;->srcPool:Ljavassist/bytecode/ConstPool;

    .line 407
    iput-object p3, p0, Ljavassist/bytecode/StackMapTable$Copier;->destPool:Ljavassist/bytecode/ConstPool;

    return-void
.end method


# virtual methods
.method protected copyData(II)I
    .locals 2

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 412
    iget-object p1, p0, Ljavassist/bytecode/StackMapTable$Copier;->srcPool:Ljavassist/bytecode/ConstPool;

    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Copier;->destPool:Ljavassist/bytecode/ConstPool;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method protected copyData([I[I)[I
    .locals 6

    .line 418
    array-length v0, p2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 419
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 420
    aget v2, p1, v1

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 421
    iget-object v2, p0, Ljavassist/bytecode/StackMapTable$Copier;->srcPool:Ljavassist/bytecode/ConstPool;

    aget v3, p2, v1

    iget-object v4, p0, Ljavassist/bytecode/StackMapTable$Copier;->destPool:Ljavassist/bytecode/ConstPool;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v2

    aput v2, v0, v1

    goto :goto_1

    .line 423
    :cond_0
    aget v2, p2, v1

    aput v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
