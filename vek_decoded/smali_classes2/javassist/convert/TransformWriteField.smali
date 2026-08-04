.class public final Ljavassist/convert/TransformWriteField;
.super Ljavassist/convert/TransformReadField;
.source "TransformWriteField.java"


# direct methods
.method public constructor <init>(Ljavassist/convert/Transformer;Ljavassist/CtField;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/convert/TransformReadField;-><init>(Ljavassist/convert/Transformer;Ljavassist/CtField;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public transform(Ljavassist/CtClass;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/ConstPool;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 33
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    const/16 v1, 0xb3

    const/16 v2, 0xb5

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_4

    :cond_0
    add-int/lit8 v2, p2, 0x1

    .line 35
    invoke-virtual {p3, v2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v8

    .line 36
    invoke-virtual {p1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v3

    iget-object v5, p0, Ljavassist/convert/TransformWriteField;->fieldClass:Ljavassist/CtClass;

    iget-object v6, p0, Ljavassist/convert/TransformWriteField;->fieldname:Ljava/lang/String;

    iget-boolean v7, p0, Ljavassist/convert/TransformWriteField;->isPrivate:Z

    move-object v4, p4

    invoke-static/range {v3 .. v8}, Ljavassist/convert/TransformWriteField;->isField(Ljavassist/ClassPool;Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    if-ne v0, v1, :cond_3

    .line 40
    invoke-virtual {p3}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    .line 41
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->move(I)V

    const/4 p2, 0x0

    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v1, 0x4a

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p2, v1, :cond_2

    const/16 v1, 0x44

    if-ne p2, v1, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p3, v2}, Ljavassist/bytecode/CodeIterator;->insertGap(I)I

    move-result p2

    .line 54
    invoke-virtual {p3, v3, p2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    const/16 v1, 0x5f

    add-int/2addr p2, v3

    .line 55
    invoke-virtual {p3, v1, p2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 56
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {v0, p2}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x3

    .line 45
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->insertGap(I)I

    move-result p2

    .line 46
    invoke-virtual {p3, v3, p2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    const/16 v1, 0x5b

    add-int/lit8 v3, p2, 0x1

    .line 47
    invoke-virtual {p3, v1, v3}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    const/16 v1, 0x57

    add-int/2addr p2, v2

    .line 48
    invoke-virtual {p3, v1, p2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 49
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result p2

    add-int/2addr p2, v2

    invoke-virtual {v0, p2}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    .line 59
    :goto_1
    invoke-virtual {p3}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result p2

    .line 62
    :cond_3
    iget-object v0, p0, Ljavassist/convert/TransformWriteField;->methodClassname:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(Ljava/lang/Object;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")V"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 64
    iget-object v1, p0, Ljavassist/convert/TransformWriteField;->methodName:Ljava/lang/String;

    invoke-virtual {p4, v0, v1, p1}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/16 p4, 0xb8

    .line 65
    invoke-virtual {p3, p4, p2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    add-int/lit8 p4, p2, 0x1

    .line 66
    invoke-virtual {p3, p1, p4}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    :cond_4
    return p2
.end method
