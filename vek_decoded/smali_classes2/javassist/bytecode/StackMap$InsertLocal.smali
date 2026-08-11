.class Ljavassist/bytecode/StackMap$InsertLocal;
.super Ljavassist/bytecode/StackMap$SimpleCopy;
.source "StackMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMap;
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
.method constructor <init>(Ljavassist/bytecode/StackMap;III)V
    .locals 0

    .line 342
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMap$SimpleCopy;-><init>(Ljavassist/bytecode/StackMap;)V

    .line 343
    iput p2, p0, Ljavassist/bytecode/StackMap$InsertLocal;->varIndex:I

    .line 344
    iput p3, p0, Ljavassist/bytecode/StackMap$InsertLocal;->varTag:I

    .line 345
    iput p4, p0, Ljavassist/bytecode/StackMap$InsertLocal;->varData:I

    return-void
.end method

.method private writeVarTypeInfo()V
    .locals 3

    .line 367
    iget v0, p0, Ljavassist/bytecode/StackMap$InsertLocal;->varTag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 368
    iget-object v0, p0, Ljavassist/bytecode/StackMap$InsertLocal;->writer:Ljavassist/bytecode/StackMap$Writer;

    iget v2, p0, Ljavassist/bytecode/StackMap$InsertLocal;->varData:I

    invoke-virtual {v0, v1, v2}, Ljavassist/bytecode/StackMap$Writer;->writeVerifyTypeInfo(II)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 370
    iget-object v0, p0, Ljavassist/bytecode/StackMap$InsertLocal;->writer:Ljavassist/bytecode/StackMap$Writer;

    iget v2, p0, Ljavassist/bytecode/StackMap$InsertLocal;->varData:I

    invoke-virtual {v0, v1, v2}, Ljavassist/bytecode/StackMap$Writer;->writeVerifyTypeInfo(II)V

    goto :goto_0

    .line 372
    :cond_1
    iget-object v0, p0, Ljavassist/bytecode/StackMap$InsertLocal;->writer:Ljavassist/bytecode/StackMap$Writer;

    iget v1, p0, Ljavassist/bytecode/StackMap$InsertLocal;->varTag:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavassist/bytecode/StackMap$Writer;->writeVerifyTypeInfo(II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public typeInfoArray(IIIZ)I
    .locals 1

    if-eqz p4, :cond_4

    .line 349
    iget v0, p0, Ljavassist/bytecode/StackMap$InsertLocal;->varIndex:I

    if-ge p3, v0, :cond_0

    goto :goto_1

    .line 352
    :cond_0
    iget-object p2, p0, Ljavassist/bytecode/StackMap$InsertLocal;->writer:Ljavassist/bytecode/StackMap$Writer;

    add-int/lit8 p4, p3, 0x1

    invoke-virtual {p2, p4}, Ljavassist/bytecode/StackMap$Writer;->write16bit(I)V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_2

    .line 354
    iget p4, p0, Ljavassist/bytecode/StackMap$InsertLocal;->varIndex:I

    if-ne p2, p4, :cond_1

    .line 355
    invoke-direct {p0}, Ljavassist/bytecode/StackMap$InsertLocal;->writeVarTypeInfo()V

    .line 357
    :cond_1
    invoke-virtual {p0, p2, p1}, Ljavassist/bytecode/StackMap$InsertLocal;->typeInfoArray2(II)I

    move-result p1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 360
    :cond_2
    iget p2, p0, Ljavassist/bytecode/StackMap$InsertLocal;->varIndex:I

    if-ne p3, p2, :cond_3

    .line 361
    invoke-direct {p0}, Ljavassist/bytecode/StackMap$InsertLocal;->writeVarTypeInfo()V

    :cond_3
    return p1

    .line 350
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Ljavassist/bytecode/StackMap$SimpleCopy;->typeInfoArray(IIIZ)I

    move-result p1

    return p1
.end method
