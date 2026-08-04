.class public Ljavassist/convert/TransformAfter;
.super Ljavassist/convert/TransformBefore;
.source "TransformAfter.java"


# direct methods
.method public constructor <init>(Ljavassist/convert/Transformer;Ljavassist/CtMethod;Ljavassist/CtMethod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2, p3}, Ljavassist/convert/TransformBefore;-><init>(Ljavassist/convert/Transformer;Ljavassist/CtMethod;Ljavassist/CtMethod;)V

    return-void
.end method


# virtual methods
.method protected match2(ILjavassist/bytecode/CodeIterator;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 32
    invoke-virtual {p2, p1}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 33
    iget-object p1, p0, Ljavassist/convert/TransformAfter;->saveCode:[B

    invoke-virtual {p2, p1}, Ljavassist/bytecode/CodeIterator;->insert([B)I

    .line 34
    iget-object p1, p0, Ljavassist/convert/TransformAfter;->loadCode:[B

    invoke-virtual {p2, p1}, Ljavassist/bytecode/CodeIterator;->insert([B)I

    const/4 p1, 0x3

    .line 35
    invoke-virtual {p2, p1}, Ljavassist/bytecode/CodeIterator;->insertGap(I)I

    move-result p1

    .line 36
    invoke-virtual {p2, p1}, Ljavassist/bytecode/CodeIterator;->setMark(I)V

    .line 37
    iget-object p1, p0, Ljavassist/convert/TransformAfter;->loadCode:[B

    invoke-virtual {p2, p1}, Ljavassist/bytecode/CodeIterator;->insert([B)I

    .line 38
    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result p1

    .line 39
    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->getMark()I

    move-result v0

    .line 40
    invoke-virtual {p2, p1}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v1

    invoke-virtual {p2, v1, v0}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    add-int/lit8 v1, p1, 0x1

    .line 41
    invoke-virtual {p2, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p2, v2, v3}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    const/16 v2, 0xb8

    .line 42
    invoke-virtual {p2, v2, p1}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 43
    iget p1, p0, Ljavassist/convert/TransformAfter;->newIndex:I

    invoke-virtual {p2, p1, v1}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    .line 44
    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 45
    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result p1

    return p1
.end method
