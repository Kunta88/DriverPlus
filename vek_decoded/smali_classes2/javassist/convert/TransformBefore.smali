.class public Ljavassist/convert/TransformBefore;
.super Ljavassist/convert/TransformCall;
.source "TransformBefore.java"


# instance fields
.field protected loadCode:[B

.field protected locals:I

.field protected maxLocals:I

.field protected parameterTypes:[Ljavassist/CtClass;

.field protected saveCode:[B


# direct methods
.method public constructor <init>(Ljavassist/convert/Transformer;Ljavassist/CtMethod;Ljavassist/CtMethod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2, p3}, Ljavassist/convert/TransformCall;-><init>(Ljavassist/convert/Transformer;Ljavassist/CtMethod;Ljavassist/CtMethod;)V

    .line 37
    invoke-virtual {p2}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object p1

    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/convert/TransformBefore;->methodDescriptor:Ljava/lang/String;

    .line 39
    invoke-virtual {p2}, Ljavassist/CtMethod;->getParameterTypes()[Ljavassist/CtClass;

    move-result-object p1

    iput-object p1, p0, Ljavassist/convert/TransformBefore;->parameterTypes:[Ljavassist/CtClass;

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Ljavassist/convert/TransformBefore;->locals:I

    .line 41
    iput p1, p0, Ljavassist/convert/TransformBefore;->maxLocals:I

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Ljavassist/convert/TransformBefore;->loadCode:[B

    iput-object p1, p0, Ljavassist/convert/TransformBefore;->saveCode:[B

    return-void
.end method

.method private makeCode2(Ljavassist/bytecode/Bytecode;Ljavassist/bytecode/Bytecode;II[Ljavassist/CtClass;I)V
    .locals 8

    if-ge p3, p4, :cond_0

    .line 101
    aget-object v0, p5, p3

    invoke-virtual {p2, p6, v0}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    move-result v0

    add-int/lit8 v4, p3, 0x1

    add-int v7, p6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move-object v6, p5

    .line 102
    invoke-direct/range {v1 .. v7}, Ljavassist/convert/TransformBefore;->makeCode2(Ljavassist/bytecode/Bytecode;Ljavassist/bytecode/Bytecode;II[Ljavassist/CtClass;I)V

    .line 103
    aget-object p2, p5, p3

    invoke-virtual {p1, p6, p2}, Ljavassist/bytecode/Bytecode;->addStore(ILjavassist/CtClass;)I

    goto :goto_0

    .line 106
    :cond_0
    iget p1, p0, Ljavassist/convert/TransformBefore;->maxLocals:I

    sub-int/2addr p6, p1

    iput p6, p0, Ljavassist/convert/TransformBefore;->locals:I

    :goto_0
    return-void
.end method


# virtual methods
.method public extraLocals()I
    .locals 1

    .line 81
    iget v0, p0, Ljavassist/convert/TransformBefore;->locals:I

    return v0
.end method

.method public initialize(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeAttribute;)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2}, Ljavassist/convert/TransformCall;->initialize(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeAttribute;)V

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Ljavassist/convert/TransformBefore;->locals:I

    .line 48
    invoke-virtual {p2}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result p1

    iput p1, p0, Ljavassist/convert/TransformBefore;->maxLocals:I

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Ljavassist/convert/TransformBefore;->loadCode:[B

    iput-object p1, p0, Ljavassist/convert/TransformBefore;->saveCode:[B

    return-void
.end method

.method protected makeCode([Ljavassist/CtClass;Ljavassist/bytecode/ConstPool;)V
    .locals 9

    .line 84
    new-instance v7, Ljavassist/bytecode/Bytecode;

    const/4 v0, 0x0

    invoke-direct {v7, p2, v0, v0}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 85
    new-instance v8, Ljavassist/bytecode/Bytecode;

    invoke-direct {v8, p2, v0, v0}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 87
    iget p2, p0, Ljavassist/convert/TransformBefore;->maxLocals:I

    if-nez p1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .line 88
    :cond_0
    array-length v0, p1

    move v4, v0

    .line 89
    :goto_0
    invoke-virtual {v8, p2}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    const/4 v3, 0x0

    add-int/lit8 v6, p2, 0x1

    move-object v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v5, p1

    .line 90
    invoke-direct/range {v0 .. v6}, Ljavassist/convert/TransformBefore;->makeCode2(Ljavassist/bytecode/Bytecode;Ljavassist/bytecode/Bytecode;II[Ljavassist/CtClass;I)V

    .line 91
    invoke-virtual {v7, p2}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 93
    invoke-virtual {v7}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object p1

    iput-object p1, p0, Ljavassist/convert/TransformBefore;->saveCode:[B

    .line 94
    invoke-virtual {v8}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object p1

    iput-object p1, p0, Ljavassist/convert/TransformBefore;->loadCode:[B

    return-void
.end method

.method protected match(IILjavassist/bytecode/CodeIterator;ILjavassist/bytecode/ConstPool;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 55
    iget p1, p0, Ljavassist/convert/TransformBefore;->newIndex:I

    if-nez p1, :cond_0

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Ljavassist/convert/TransformBefore;->parameterTypes:[Ljavassist/CtClass;

    invoke-static {p4}, Ljavassist/bytecode/Descriptor;->ofParameters([Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p4, 0x56

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 57
    iget-object p4, p0, Ljavassist/convert/TransformBefore;->classname:Ljava/lang/String;

    invoke-static {p4, p1}, Ljavassist/bytecode/Descriptor;->insertParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object p4, p0, Ljavassist/convert/TransformBefore;->newMethodname:Ljava/lang/String;

    invoke-virtual {p5, p4, p1}, Ljavassist/bytecode/ConstPool;->addNameAndTypeInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 59
    iget-object p4, p0, Ljavassist/convert/TransformBefore;->newClassname:Ljava/lang/String;

    invoke-virtual {p5, p4}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p4

    .line 60
    invoke-virtual {p5, p4, p1}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(II)I

    move-result p1

    iput p1, p0, Ljavassist/convert/TransformBefore;->newIndex:I

    .line 61
    iput-object p5, p0, Ljavassist/convert/TransformBefore;->constPool:Ljavassist/bytecode/ConstPool;

    .line 64
    :cond_0
    iget-object p1, p0, Ljavassist/convert/TransformBefore;->saveCode:[B

    if-nez p1, :cond_1

    .line 65
    iget-object p1, p0, Ljavassist/convert/TransformBefore;->parameterTypes:[Ljavassist/CtClass;

    invoke-virtual {p0, p1, p5}, Ljavassist/convert/TransformBefore;->makeCode([Ljavassist/CtClass;Ljavassist/bytecode/ConstPool;)V

    .line 67
    :cond_1
    invoke-virtual {p0, p2, p3}, Ljavassist/convert/TransformBefore;->match2(ILjavassist/bytecode/CodeIterator;)I

    move-result p1

    return p1
.end method

.method protected match2(ILjavassist/bytecode/CodeIterator;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 71
    invoke-virtual {p2, p1}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 72
    iget-object p1, p0, Ljavassist/convert/TransformBefore;->saveCode:[B

    invoke-virtual {p2, p1}, Ljavassist/bytecode/CodeIterator;->insert([B)I

    .line 73
    iget-object p1, p0, Ljavassist/convert/TransformBefore;->loadCode:[B

    invoke-virtual {p2, p1}, Ljavassist/bytecode/CodeIterator;->insert([B)I

    const/4 p1, 0x3

    .line 74
    invoke-virtual {p2, p1}, Ljavassist/bytecode/CodeIterator;->insertGap(I)I

    move-result p1

    const/16 v0, 0xb8

    .line 75
    invoke-virtual {p2, v0, p1}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 76
    iget v0, p0, Ljavassist/convert/TransformBefore;->newIndex:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, v0, p1}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    .line 77
    iget-object p1, p0, Ljavassist/convert/TransformBefore;->loadCode:[B

    invoke-virtual {p2, p1}, Ljavassist/bytecode/CodeIterator;->insert([B)I

    .line 78
    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result p1

    return p1
.end method
