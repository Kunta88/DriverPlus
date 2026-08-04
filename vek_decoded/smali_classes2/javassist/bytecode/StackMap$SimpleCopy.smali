.class Ljavassist/bytecode/StackMap$SimpleCopy;
.super Ljavassist/bytecode/StackMap$Walker;
.source "StackMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleCopy"
.end annotation


# instance fields
.field writer:Ljavassist/bytecode/StackMap$Writer;


# direct methods
.method constructor <init>(Ljavassist/bytecode/StackMap;)V
    .locals 0

    .line 299
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMap$Walker;-><init>(Ljavassist/bytecode/StackMap;)V

    .line 300
    new-instance p1, Ljavassist/bytecode/StackMap$Writer;

    invoke-direct {p1}, Ljavassist/bytecode/StackMap$Writer;-><init>()V

    iput-object p1, p0, Ljavassist/bytecode/StackMap$SimpleCopy;->writer:Ljavassist/bytecode/StackMap$Writer;

    return-void
.end method


# virtual methods
.method doit()[B
    .locals 1

    .line 304
    invoke-virtual {p0}, Ljavassist/bytecode/StackMap$SimpleCopy;->visit()V

    .line 305
    iget-object v0, p0, Ljavassist/bytecode/StackMap$SimpleCopy;->writer:Ljavassist/bytecode/StackMap$Writer;

    invoke-virtual {v0}, Ljavassist/bytecode/StackMap$Writer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public locals(III)I
    .locals 1

    .line 315
    iget-object v0, p0, Ljavassist/bytecode/StackMap$SimpleCopy;->writer:Ljavassist/bytecode/StackMap$Writer;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/StackMap$Writer;->write16bit(I)V

    .line 316
    invoke-super {p0, p1, p2, p3}, Ljavassist/bytecode/StackMap$Walker;->locals(III)I

    move-result p1

    return p1
.end method

.method public objectVariable(II)V
    .locals 1

    .line 329
    iget-object p1, p0, Ljavassist/bytecode/StackMap$SimpleCopy;->writer:Ljavassist/bytecode/StackMap$Writer;

    const/4 v0, 0x7

    invoke-virtual {p1, v0, p2}, Ljavassist/bytecode/StackMap$Writer;->writeVerifyTypeInfo(II)V

    return-void
.end method

.method public typeInfo(IB)V
    .locals 1

    .line 325
    iget-object p1, p0, Ljavassist/bytecode/StackMap$SimpleCopy;->writer:Ljavassist/bytecode/StackMap$Writer;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljavassist/bytecode/StackMap$Writer;->writeVerifyTypeInfo(II)V

    return-void
.end method

.method public typeInfoArray(IIIZ)I
    .locals 1

    .line 320
    iget-object v0, p0, Ljavassist/bytecode/StackMap$SimpleCopy;->writer:Ljavassist/bytecode/StackMap$Writer;

    invoke-virtual {v0, p3}, Ljavassist/bytecode/StackMap$Writer;->write16bit(I)V

    .line 321
    invoke-super {p0, p1, p2, p3, p4}, Ljavassist/bytecode/StackMap$Walker;->typeInfoArray(IIIZ)I

    move-result p1

    return p1
.end method

.method public uninitialized(II)V
    .locals 1

    .line 333
    iget-object p1, p0, Ljavassist/bytecode/StackMap$SimpleCopy;->writer:Ljavassist/bytecode/StackMap$Writer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0, p2}, Ljavassist/bytecode/StackMap$Writer;->writeVerifyTypeInfo(II)V

    return-void
.end method

.method public visit()V
    .locals 2

    .line 309
    iget-object v0, p0, Ljavassist/bytecode/StackMap$SimpleCopy;->info:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 310
    iget-object v1, p0, Ljavassist/bytecode/StackMap$SimpleCopy;->writer:Ljavassist/bytecode/StackMap$Writer;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/StackMap$Writer;->write16bit(I)V

    .line 311
    invoke-super {p0}, Ljavassist/bytecode/StackMap$Walker;->visit()V

    return-void
.end method
