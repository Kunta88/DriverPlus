.class public Ljavassist/convert/TransformReadField;
.super Ljavassist/convert/Transformer;
.source "TransformReadField.java"


# instance fields
.field protected fieldClass:Ljavassist/CtClass;

.field protected fieldname:Ljava/lang/String;

.field protected isPrivate:Z

.field protected methodClassname:Ljava/lang/String;

.field protected methodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavassist/convert/Transformer;Ljavassist/CtField;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Ljavassist/convert/Transformer;-><init>(Ljavassist/convert/Transformer;)V

    .line 36
    invoke-virtual {p2}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object p1

    iput-object p1, p0, Ljavassist/convert/TransformReadField;->fieldClass:Ljavassist/CtClass;

    .line 37
    invoke-virtual {p2}, Ljavassist/CtField;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/convert/TransformReadField;->fieldname:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Ljavassist/convert/TransformReadField;->methodClassname:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Ljavassist/convert/TransformReadField;->methodName:Ljava/lang/String;

    .line 40
    invoke-virtual {p2}, Ljavassist/CtField;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result p1

    iput-boolean p1, p0, Ljavassist/convert/TransformReadField;->isPrivate:Z

    return-void
.end method

.method static isField(Ljavassist/ClassPool;Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 2

    .line 45
    invoke-virtual {p1, p5}, Ljavassist/bytecode/ConstPool;->getFieldrefName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 49
    :cond_0
    :try_start_0
    invoke-virtual {p1, p5}, Ljavassist/bytecode/ConstPool;->getFieldrefClassName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p0

    if-eq p0, p2, :cond_1

    if-nez p4, :cond_2

    .line 50
    invoke-static {p0, p2, p3}, Ljavassist/convert/TransformReadField;->isFieldInSuper(Ljavassist/CtClass;Ljavassist/CtClass;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 51
    :cond_1
    invoke-virtual {p1, p5}, Ljavassist/bytecode/ConstPool;->getFieldrefType(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    return-object v1
.end method

.method static isFieldInSuper(Ljavassist/CtClass;Ljavassist/CtClass;Ljava/lang/String;)Z
    .locals 2

    .line 58
    invoke-virtual {p0, p1}, Ljavassist/CtClass;->subclassOf(Ljavassist/CtClass;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 62
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Ljavassist/CtClass;->getField(Ljava/lang/String;)Ljavassist/CtField;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object p0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :catch_0
    :cond_1
    return v1
.end method


# virtual methods
.method public transform(Ljavassist/CtClass;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/ConstPool;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 72
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    const/16 v1, 0xb2

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_2

    :cond_0
    add-int/lit8 v2, p2, 0x1

    .line 74
    invoke-virtual {p3, v2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v8

    .line 75
    invoke-virtual {p1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v3

    iget-object v5, p0, Ljavassist/convert/TransformReadField;->fieldClass:Ljavassist/CtClass;

    iget-object v6, p0, Ljavassist/convert/TransformReadField;->fieldname:Ljava/lang/String;

    iget-boolean v7, p0, Ljavassist/convert/TransformReadField;->isPrivate:Z

    move-object v4, p4

    invoke-static/range {v3 .. v8}, Ljavassist/convert/TransformReadField;->isField(Ljavassist/ClassPool;Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    if-ne v0, v1, :cond_1

    .line 79
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->move(I)V

    const/4 p2, 0x1

    .line 80
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->insertGap(I)I

    move-result v0

    .line 81
    invoke-virtual {p3, p2, v0}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 82
    invoke-virtual {p3}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result p2

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Ljava/lang/Object;)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    iget-object v0, p0, Ljavassist/convert/TransformReadField;->methodClassname:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    .line 87
    iget-object v1, p0, Ljavassist/convert/TransformReadField;->methodName:Ljava/lang/String;

    invoke-virtual {p4, v0, v1, p1}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/16 p4, 0xb8

    .line 88
    invoke-virtual {p3, p4, p2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    add-int/lit8 p4, p2, 0x1

    .line 89
    invoke-virtual {p3, p1, p4}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    :cond_2
    return p2
.end method
