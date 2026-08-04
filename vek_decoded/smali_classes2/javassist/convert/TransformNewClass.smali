.class public final Ljavassist/convert/TransformNewClass;
.super Ljavassist/convert/Transformer;
.source "TransformNewClass.java"


# instance fields
.field private classname:Ljava/lang/String;

.field private nested:I

.field private newClassIndex:I

.field private newClassName:Ljava/lang/String;

.field private newMethodIndex:I

.field private newMethodNTIndex:I


# direct methods
.method public constructor <init>(Ljavassist/convert/Transformer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Ljavassist/convert/Transformer;-><init>(Ljavassist/convert/Transformer;)V

    .line 31
    iput-object p2, p0, Ljavassist/convert/TransformNewClass;->classname:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Ljavassist/convert/TransformNewClass;->newClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public initialize(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeAttribute;)V
    .locals 0

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Ljavassist/convert/TransformNewClass;->nested:I

    .line 37
    iput p1, p0, Ljavassist/convert/TransformNewClass;->newMethodIndex:I

    iput p1, p0, Ljavassist/convert/TransformNewClass;->newMethodNTIndex:I

    iput p1, p0, Ljavassist/convert/TransformNewClass;->newClassIndex:I

    return-void
.end method

.method public transform(Ljavassist/CtClass;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/ConstPool;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 51
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result p1

    const/16 v0, 0xbb

    if-ne p1, v0, :cond_2

    add-int/lit8 p1, p2, 0x1

    .line 53
    invoke-virtual {p3, p1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v0

    .line 54
    invoke-virtual {p4, v0}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljavassist/convert/TransformNewClass;->classname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v0, p2, 0x3

    .line 55
    invoke-virtual {p3, v0}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    const/16 v1, 0x59

    if-ne v0, v1, :cond_1

    .line 59
    iget v0, p0, Ljavassist/convert/TransformNewClass;->newClassIndex:I

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Ljavassist/convert/TransformNewClass;->newClassName:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p4

    iput p4, p0, Ljavassist/convert/TransformNewClass;->newClassIndex:I

    .line 62
    :cond_0
    iget p4, p0, Ljavassist/convert/TransformNewClass;->newClassIndex:I

    invoke-virtual {p3, p4, p1}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    .line 63
    iget p1, p0, Ljavassist/convert/TransformNewClass;->nested:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljavassist/convert/TransformNewClass;->nested:I

    goto :goto_0

    .line 56
    :cond_1
    new-instance p1, Ljavassist/CannotCompileException;

    const-string p2, "NEW followed by no DUP was found"

    invoke-direct {p1, p2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/16 v0, 0xb7

    if-ne p1, v0, :cond_4

    add-int/lit8 p1, p2, 0x1

    .line 67
    invoke-virtual {p3, p1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v0

    .line 68
    iget-object v1, p0, Ljavassist/convert/TransformNewClass;->classname:Ljava/lang/String;

    invoke-virtual {p4, v1, v0}, Ljavassist/bytecode/ConstPool;->isConstructor(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 69
    iget v1, p0, Ljavassist/convert/TransformNewClass;->nested:I

    if-lez v1, :cond_4

    .line 70
    invoke-virtual {p4, v0}, Ljavassist/bytecode/ConstPool;->getMethodrefNameAndType(I)I

    move-result v0

    .line 71
    iget v1, p0, Ljavassist/convert/TransformNewClass;->newMethodNTIndex:I

    if-eq v1, v0, :cond_3

    .line 72
    iput v0, p0, Ljavassist/convert/TransformNewClass;->newMethodNTIndex:I

    .line 73
    iget v1, p0, Ljavassist/convert/TransformNewClass;->newClassIndex:I

    invoke-virtual {p4, v1, v0}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(II)I

    move-result p4

    iput p4, p0, Ljavassist/convert/TransformNewClass;->newMethodIndex:I

    .line 76
    :cond_3
    iget p4, p0, Ljavassist/convert/TransformNewClass;->newMethodIndex:I

    invoke-virtual {p3, p4, p1}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    .line 77
    iget p1, p0, Ljavassist/convert/TransformNewClass;->nested:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ljavassist/convert/TransformNewClass;->nested:I

    :cond_4
    :goto_0
    return p2
.end method
