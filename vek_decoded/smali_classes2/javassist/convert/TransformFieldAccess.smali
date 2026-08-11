.class public final Ljavassist/convert/TransformFieldAccess;
.super Ljavassist/convert/Transformer;
.source "TransformFieldAccess.java"


# instance fields
.field private constPool:Ljavassist/bytecode/ConstPool;

.field private fieldClass:Ljavassist/CtClass;

.field private fieldname:Ljava/lang/String;

.field private isPrivate:Z

.field private newClassname:Ljava/lang/String;

.field private newFieldname:Ljava/lang/String;

.field private newIndex:I


# direct methods
.method public constructor <init>(Ljavassist/convert/Transformer;Ljavassist/CtField;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Ljavassist/convert/Transformer;-><init>(Ljavassist/convert/Transformer;)V

    .line 38
    invoke-virtual {p2}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object p1

    iput-object p1, p0, Ljavassist/convert/TransformFieldAccess;->fieldClass:Ljavassist/CtClass;

    .line 39
    invoke-virtual {p2}, Ljavassist/CtField;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/convert/TransformFieldAccess;->fieldname:Ljava/lang/String;

    .line 40
    invoke-virtual {p2}, Ljavassist/CtField;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result p1

    iput-boolean p1, p0, Ljavassist/convert/TransformFieldAccess;->isPrivate:Z

    .line 41
    iput-object p3, p0, Ljavassist/convert/TransformFieldAccess;->newClassname:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Ljavassist/convert/TransformFieldAccess;->newFieldname:Ljava/lang/String;

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Ljavassist/convert/TransformFieldAccess;->constPool:Ljavassist/bytecode/ConstPool;

    return-void
.end method


# virtual methods
.method public initialize(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeAttribute;)V
    .locals 0

    .line 47
    iget-object p2, p0, Ljavassist/convert/TransformFieldAccess;->constPool:Ljavassist/bytecode/ConstPool;

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Ljavassist/convert/TransformFieldAccess;->newIndex:I

    :cond_0
    return-void
.end method

.method public transform(Ljavassist/CtClass;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/ConstPool;)I
    .locals 7

    .line 60
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb2

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb5

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb3

    if-ne v0, v1, :cond_2

    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 63
    invoke-virtual {p3, v0}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v6

    .line 64
    invoke-virtual {p1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v1

    iget-object v3, p0, Ljavassist/convert/TransformFieldAccess;->fieldClass:Ljavassist/CtClass;

    iget-object v4, p0, Ljavassist/convert/TransformFieldAccess;->fieldname:Ljava/lang/String;

    iget-boolean v5, p0, Ljavassist/convert/TransformFieldAccess;->isPrivate:Z

    move-object v2, p4

    invoke-static/range {v1 .. v6}, Ljavassist/convert/TransformReadField;->isField(Ljavassist/ClassPool;Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 68
    iget v1, p0, Ljavassist/convert/TransformFieldAccess;->newIndex:I

    if-nez v1, :cond_1

    .line 69
    iget-object v1, p0, Ljavassist/convert/TransformFieldAccess;->newFieldname:Ljava/lang/String;

    invoke-virtual {p4, v1, p1}, Ljavassist/bytecode/ConstPool;->addNameAndTypeInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 71
    iget-object v1, p0, Ljavassist/convert/TransformFieldAccess;->newClassname:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p4, v1, p1}, Ljavassist/bytecode/ConstPool;->addFieldrefInfo(II)I

    move-result p1

    iput p1, p0, Ljavassist/convert/TransformFieldAccess;->newIndex:I

    .line 73
    iput-object p4, p0, Ljavassist/convert/TransformFieldAccess;->constPool:Ljavassist/bytecode/ConstPool;

    .line 76
    :cond_1
    iget p1, p0, Ljavassist/convert/TransformFieldAccess;->newIndex:I

    invoke-virtual {p3, p1, v0}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    :cond_2
    return p2
.end method
