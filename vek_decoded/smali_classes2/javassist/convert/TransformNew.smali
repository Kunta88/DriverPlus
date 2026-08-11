.class public final Ljavassist/convert/TransformNew;
.super Ljavassist/convert/Transformer;
.source "TransformNew.java"


# instance fields
.field private classname:Ljava/lang/String;

.field private nested:I

.field private trapClass:Ljava/lang/String;

.field private trapMethod:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavassist/convert/Transformer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Ljavassist/convert/Transformer;-><init>(Ljavassist/convert/Transformer;)V

    .line 30
    iput-object p2, p0, Ljavassist/convert/TransformNew;->classname:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Ljavassist/convert/TransformNew;->trapClass:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Ljavassist/convert/TransformNew;->trapMethod:Ljava/lang/String;

    return-void
.end method

.method private computeMethodref(ILjavassist/bytecode/ConstPool;)I
    .locals 3

    .line 95
    iget-object v0, p0, Ljavassist/convert/TransformNew;->trapClass:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    .line 96
    iget-object v1, p0, Ljavassist/convert/TransformNew;->trapMethod:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v1

    .line 97
    iget-object v2, p0, Ljavassist/convert/TransformNew;->classname:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Ljavassist/bytecode/Descriptor;->changeReturnType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p1

    .line 100
    invoke-virtual {p2, v1, p1}, Ljavassist/bytecode/ConstPool;->addNameAndTypeInfo(II)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public initialize(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeAttribute;)V
    .locals 0

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Ljavassist/convert/TransformNew;->nested:I

    return-void
.end method

.method public transform(Ljavassist/CtClass;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/ConstPool;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 55
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result p1

    const/16 v0, 0xbb

    if-ne p1, v0, :cond_2

    add-int/lit8 p1, p2, 0x1

    .line 57
    invoke-virtual {p3, p1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v0

    .line 58
    invoke-virtual {p4, v0}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Ljavassist/convert/TransformNew;->classname:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    add-int/lit8 p4, p2, 0x3

    .line 59
    invoke-virtual {p3, p4}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    const/16 v1, 0x59

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p3, v0, p2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 64
    invoke-virtual {p3, v0, p1}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    add-int/lit8 p1, p2, 0x2

    .line 65
    invoke-virtual {p3, v0, p1}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 66
    invoke-virtual {p3, v0, p4}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 67
    iget p1, p0, Ljavassist/convert/TransformNew;->nested:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljavassist/convert/TransformNew;->nested:I

    .line 69
    invoke-virtual {p3}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object p1

    const-string p4, "StackMapTable"

    invoke-virtual {p1, p4}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/StackMapTable;

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1, p2}, Ljavassist/bytecode/StackMapTable;->removeNew(I)V

    .line 74
    :cond_0
    invoke-virtual {p3}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object p1

    const-string p3, "StackMap"

    invoke-virtual {p1, p3}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/StackMap;

    if-eqz p1, :cond_3

    .line 77
    invoke-virtual {p1, p2}, Ljavassist/bytecode/StackMap;->removeNew(I)V

    goto :goto_0

    .line 60
    :cond_1
    new-instance p1, Ljavassist/CannotCompileException;

    const-string p2, "NEW followed by no DUP was found"

    invoke-direct {p1, p2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/16 v0, 0xb7

    if-ne p1, v0, :cond_3

    add-int/lit8 p1, p2, 0x1

    .line 81
    invoke-virtual {p3, p1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v0

    .line 82
    iget-object v1, p0, Ljavassist/convert/TransformNew;->classname:Ljava/lang/String;

    invoke-virtual {p4, v1, v0}, Ljavassist/bytecode/ConstPool;->isConstructor(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    iget v1, p0, Ljavassist/convert/TransformNew;->nested:I

    if-lez v1, :cond_3

    .line 84
    invoke-direct {p0, v0, p4}, Ljavassist/convert/TransformNew;->computeMethodref(ILjavassist/bytecode/ConstPool;)I

    move-result p4

    const/16 v0, 0xb8

    .line 85
    invoke-virtual {p3, v0, p2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 86
    invoke-virtual {p3, p4, p1}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    .line 87
    iget p1, p0, Ljavassist/convert/TransformNew;->nested:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ljavassist/convert/TransformNew;->nested:I

    :cond_3
    :goto_0
    return p2
.end method
