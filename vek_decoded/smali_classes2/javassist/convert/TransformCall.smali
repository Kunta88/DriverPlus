.class public Ljavassist/convert/TransformCall;
.super Ljavassist/convert/Transformer;
.source "TransformCall.java"


# instance fields
.field protected classname:Ljava/lang/String;

.field protected constPool:Ljavassist/bytecode/ConstPool;

.field protected methodDescriptor:Ljava/lang/String;

.field protected methodname:Ljava/lang/String;

.field protected newClassname:Ljava/lang/String;

.field protected newIndex:I

.field protected newMethodIsPrivate:Z

.field protected newMethodname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavassist/convert/Transformer;Ljava/lang/String;Ljavassist/CtMethod;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Ljavassist/convert/Transformer;-><init>(Ljavassist/convert/Transformer;)V

    .line 46
    iput-object p2, p0, Ljavassist/convert/TransformCall;->methodname:Ljava/lang/String;

    .line 47
    invoke-virtual {p3}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object p1

    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/convert/TransformCall;->methodDescriptor:Ljava/lang/String;

    .line 48
    invoke-virtual {p3}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object p1

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/convert/TransformCall;->newClassname:Ljava/lang/String;

    iput-object p1, p0, Ljavassist/convert/TransformCall;->classname:Ljava/lang/String;

    .line 49
    invoke-virtual {p3}, Ljavassist/CtMethod;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/convert/TransformCall;->newMethodname:Ljava/lang/String;

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Ljavassist/convert/TransformCall;->constPool:Ljavassist/bytecode/ConstPool;

    .line 51
    invoke-virtual {p3}, Ljavassist/CtMethod;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result p1

    iput-boolean p1, p0, Ljavassist/convert/TransformCall;->newMethodIsPrivate:Z

    return-void
.end method

.method public constructor <init>(Ljavassist/convert/Transformer;Ljavassist/CtMethod;Ljavassist/CtMethod;)V
    .locals 1

    .line 38
    invoke-virtual {p2}, Ljavassist/CtMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Ljavassist/convert/TransformCall;-><init>(Ljavassist/convert/Transformer;Ljava/lang/String;Ljavassist/CtMethod;)V

    .line 39
    invoke-virtual {p2}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object p1

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/convert/TransformCall;->classname:Ljava/lang/String;

    return-void
.end method

.method private matchClass(Ljava/lang/String;Ljavassist/ClassPool;)Z
    .locals 3

    .line 85
    iget-object v0, p0, Ljavassist/convert/TransformCall;->classname:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 89
    :try_start_0
    invoke-virtual {p2, p1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p1

    .line 90
    iget-object v2, p0, Ljavassist/convert/TransformCall;->classname:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p2

    .line 91
    invoke-virtual {p1, p2}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z

    move-result p2
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_1

    .line 93
    :try_start_1
    iget-object p2, p0, Ljavassist/convert/TransformCall;->methodname:Ljava/lang/String;

    iget-object v0, p0, Ljavassist/convert/TransformCall;->methodDescriptor:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Ljavassist/CtClass;->getMethod(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object p1

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ljavassist/convert/TransformCall;->classname:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    return v1

    :catch_1
    :cond_1
    return v0
.end method


# virtual methods
.method public initialize(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeAttribute;)V
    .locals 0

    .line 55
    iget-object p2, p0, Ljavassist/convert/TransformCall;->constPool:Ljavassist/bytecode/ConstPool;

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    .line 56
    iput p1, p0, Ljavassist/convert/TransformCall;->newIndex:I

    :cond_0
    return-void
.end method

.method protected match(IILjavassist/bytecode/CodeIterator;ILjavassist/bytecode/ConstPool;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 111
    iget v0, p0, Ljavassist/convert/TransformCall;->newIndex:I

    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Ljavassist/convert/TransformCall;->newMethodname:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p5, v0, p4}, Ljavassist/bytecode/ConstPool;->addNameAndTypeInfo(II)I

    move-result p4

    .line 114
    iget-object v0, p0, Ljavassist/convert/TransformCall;->newClassname:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb9

    if-ne p1, v1, :cond_0

    .line 116
    invoke-virtual {p5, v0, p4}, Ljavassist/bytecode/ConstPool;->addInterfaceMethodrefInfo(II)I

    move-result p1

    iput p1, p0, Ljavassist/convert/TransformCall;->newIndex:I

    goto :goto_0

    .line 118
    :cond_0
    iget-boolean v1, p0, Ljavassist/convert/TransformCall;->newMethodIsPrivate:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xb6

    if-ne p1, v1, :cond_1

    const/16 p1, 0xb7

    .line 119
    invoke-virtual {p3, p1, p2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 121
    :cond_1
    invoke-virtual {p5, v0, p4}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(II)I

    move-result p1

    iput p1, p0, Ljavassist/convert/TransformCall;->newIndex:I

    .line 124
    :goto_0
    iput-object p5, p0, Ljavassist/convert/TransformCall;->constPool:Ljavassist/bytecode/ConstPool;

    .line 127
    :cond_2
    iget p1, p0, Ljavassist/convert/TransformCall;->newIndex:I

    add-int/lit8 p4, p2, 0x1

    invoke-virtual {p3, p1, p4}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    return p2
.end method

.method public transform(Ljavassist/CtClass;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/ConstPool;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 69
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v1

    const/16 v0, 0xb9

    if-eq v1, v0, :cond_0

    const/16 v0, 0xb7

    if-eq v1, v0, :cond_0

    const/16 v0, 0xb8

    if-eq v1, v0, :cond_0

    const/16 v0, 0xb6

    if-ne v1, v0, :cond_1

    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 72
    invoke-virtual {p3, v0}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v0

    .line 73
    iget-object v2, p0, Ljavassist/convert/TransformCall;->methodname:Ljava/lang/String;

    iget-object v3, p0, Ljavassist/convert/TransformCall;->methodDescriptor:Ljava/lang/String;

    invoke-virtual {p4, v2, v3, v0}, Ljavassist/bytecode/ConstPool;->eqMember(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 74
    invoke-virtual {p1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Ljavassist/convert/TransformCall;->matchClass(Ljava/lang/String;Ljavassist/ClassPool;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    invoke-virtual {p4, v0}, Ljavassist/bytecode/ConstPool;->getMemberNameAndType(I)I

    move-result p1

    .line 76
    invoke-virtual {p4, p1}, Ljavassist/bytecode/ConstPool;->getNameAndTypeDescriptor(I)I

    move-result v4

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Ljavassist/convert/TransformCall;->match(IILjavassist/bytecode/CodeIterator;ILjavassist/bytecode/ConstPool;)I

    move-result p2

    :cond_1
    return p2
.end method
