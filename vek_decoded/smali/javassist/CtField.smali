.class public Ljavassist/CtField;
.super Ljavassist/CtMember;
.source "CtField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/CtField$MultiArrayInitializer;,
        Ljavassist/CtField$ArrayInitializer;,
        Ljavassist/CtField$StringInitializer;,
        Ljavassist/CtField$DoubleInitializer;,
        Ljavassist/CtField$FloatInitializer;,
        Ljavassist/CtField$LongInitializer;,
        Ljavassist/CtField$IntInitializer;,
        Ljavassist/CtField$MethodInitializer;,
        Ljavassist/CtField$NewInitializer;,
        Ljavassist/CtField$ParamInitializer;,
        Ljavassist/CtField$PtreeInitializer;,
        Ljavassist/CtField$CodeInitializer;,
        Ljavassist/CtField$CodeInitializer0;,
        Ljavassist/CtField$Initializer;
    }
.end annotation


# static fields
.field static final javaLangString:Ljava/lang/String; = "java.lang.String"


# instance fields
.field protected fieldInfo:Ljavassist/bytecode/FieldInfo;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljavassist/CtClass;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 100
    invoke-direct {p0, p3}, Ljavassist/CtMember;-><init>(Ljavassist/CtClass;)V

    .line 101
    invoke-virtual {p3}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    new-instance p3, Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    invoke-direct {p3, v0, p2, p1}, Ljavassist/bytecode/FieldInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    return-void

    .line 103
    :cond_0
    new-instance p1, Ljavassist/CannotCompileException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bad declaring class: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p3}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 61
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Ljavassist/CtField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavassist/CtClass;)V

    return-void
.end method

.method public constructor <init>(Ljavassist/CtField;Ljavassist/CtClass;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 84
    iget-object v0, p1, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Ljavassist/CtField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavassist/CtClass;)V

    .line 86
    iget-object p2, p1, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {p2}, Ljavassist/bytecode/FieldInfo;->getAttributes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p2

    .line 88
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    .line 89
    iget-object p1, p1, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {p1}, Ljavassist/bytecode/FieldInfo;->getAccessFlags()I

    move-result p1

    invoke-virtual {v0, p1}, Ljavassist/bytecode/FieldInfo;->setAccessFlags(I)V

    .line 90
    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object p1

    .line 91
    :goto_0
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AttributeInfo;

    const/4 v2, 0x0

    .line 93
    invoke-virtual {v1, p1, v2}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/FieldInfo;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/FieldInfo;Ljavassist/CtClass;)V
    .locals 0

    .line 110
    invoke-direct {p0, p2}, Ljavassist/CtMember;-><init>(Ljavassist/CtClass;)V

    .line 111
    iput-object p1, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    return-void
.end method

.method private getAnnotations(Z)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 312
    invoke-virtual {p0}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v0

    const-string v1, "RuntimeInvisibleAnnotations"

    .line 313
    invoke-virtual {v0, v1}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AnnotationsAttribute;

    const-string v2, "RuntimeVisibleAnnotations"

    .line 315
    invoke-virtual {v0, v2}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AnnotationsAttribute;

    .line 317
    invoke-virtual {p0}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v2

    invoke-virtual {v2}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v2

    invoke-static {p1, v2, v1, v0}, Ljavassist/CtClassType;->toAnnotationType(ZLjavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static make(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 160
    new-instance v0, Ljavassist/compiler/Javac;

    invoke-direct {v0, p1}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    .line 162
    :try_start_0
    invoke-virtual {v0, p0}, Ljavassist/compiler/Javac;->compile(Ljava/lang/String;)Ljavassist/CtMember;

    move-result-object p0

    .line 163
    instance-of p1, p0, Ljavassist/CtField;

    if-eqz p1, :cond_0

    .line 164
    check-cast p0, Ljavassist/CtField;
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 170
    :cond_0
    new-instance p0, Ljavassist/CannotCompileException;

    const-string p1, "not a field"

    invoke-direct {p0, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 167
    new-instance p1, Ljavassist/CannotCompileException;

    invoke-direct {p1, p0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw p1
.end method


# virtual methods
.method protected extendToString(Ljava/lang/StringBuffer;)V
    .locals 2

    const/16 v0, 0x20

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {p0}, Ljavassist/CtField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 126
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 273
    invoke-virtual {p0}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v0

    const-string v1, "RuntimeInvisibleAnnotations"

    .line 274
    invoke-virtual {v0, v1}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AnnotationsAttribute;

    const-string v2, "RuntimeVisibleAnnotations"

    .line 276
    invoke-virtual {v0, v2}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AnnotationsAttribute;

    .line 278
    invoke-virtual {p0}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v2

    invoke-virtual {v2}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v2

    invoke-static {p1, v2, v1, v0}, Ljavassist/CtClassType;->getAnnotationType(Ljava/lang/Class;Ljavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotations()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 290
    invoke-direct {p0, v0}, Ljavassist/CtField;->getAnnotations(Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)[B
    .locals 1

    .line 416
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 420
    :cond_0
    invoke-virtual {p1}, Ljavassist/bytecode/AttributeInfo;->get()[B

    move-result-object p1

    return-object p1
.end method

.method public getAvailableAnnotations()[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    .line 304
    :try_start_0
    invoke-direct {p0, v0}, Ljavassist/CtField;->getAnnotations(Z)[Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 307
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getConstantValue()Ljava/lang/Object;
    .locals 5

    .line 377
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getConstantValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 381
    :cond_0
    iget-object v1, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/FieldInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    .line 382
    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 397
    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getStringInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 399
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getTag(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 388
    :cond_2
    new-instance v2, Ljava/lang/Double;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getDoubleInfo(I)D

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object v2

    .line 384
    :cond_3
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getLongInfo(I)J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object v2

    .line 386
    :cond_4
    new-instance v2, Ljava/lang/Float;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getFloatInfo(I)F

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/Float;-><init>(F)V

    return-object v2

    .line 390
    :cond_5
    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getIntegerInfo(I)I

    move-result v0

    .line 392
    iget-object v1, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Z"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 393
    new-instance v1, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v1

    .line 395
    :cond_7
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object v1
.end method

.method public getDeclaringClass()Ljavassist/CtClass;
    .locals 1

    .line 207
    invoke-super {p0}, Ljavassist/CtMember;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public getFieldInfo()Ljavassist/bytecode/FieldInfo;
    .locals 1

    .line 177
    iget-object v0, p0, Ljavassist/CtField;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 178
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    return-object v0
.end method

.method public getFieldInfo2()Ljavassist/bytecode/FieldInfo;
    .locals 1

    .line 200
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    return-object v0
.end method

.method getInit()Ljavassist/CtField$Initializer;
    .locals 1

    .line 136
    invoke-virtual {p0}, Ljavassist/CtField;->getInitAST()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 140
    :cond_0
    invoke-static {v0}, Ljavassist/CtField$Initializer;->byExpr(Ljavassist/compiler/ast/ASTree;)Ljavassist/CtField$Initializer;

    move-result-object v0

    return-object v0
.end method

.method protected getInitAST()Ljavassist/compiler/ast/ASTree;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 231
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getAccessFlags()I

    move-result v0

    invoke-static {v0}, Ljavassist/bytecode/AccessFlag;->toModifier(I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljavassist/CtField;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v1

    invoke-static {v0, v1}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public hasAnnotation(Ljava/lang/Class;)Z
    .locals 3

    .line 252
    invoke-virtual {p0}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v0

    const-string v1, "RuntimeInvisibleAnnotations"

    .line 253
    invoke-virtual {v0, v1}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AnnotationsAttribute;

    const-string v2, "RuntimeVisibleAnnotations"

    .line 255
    invoke-virtual {v0, v2}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AnnotationsAttribute;

    .line 257
    invoke-virtual {p0}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v2

    invoke-virtual {v2}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v2

    invoke-static {p1, v2, v1, v0}, Ljavassist/CtClassType;->hasAnnotationType(Ljava/lang/Class;Ljavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)Z

    move-result p1

    return p1
.end method

.method public setAttribute(Ljava/lang/String;[B)V
    .locals 3

    .line 434
    iget-object v0, p0, Ljavassist/CtField;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 435
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    new-instance v1, Ljavassist/bytecode/AttributeInfo;

    iget-object v2, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v2}, Ljavassist/bytecode/FieldInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljavassist/bytecode/FieldInfo;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    return-void
.end method

.method public setModifiers(I)V
    .locals 1

    .line 240
    iget-object v0, p0, Ljavassist/CtField;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 241
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-static {p1}, Ljavassist/bytecode/AccessFlag;->of(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljavassist/bytecode/FieldInfo;->setAccessFlags(I)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 221
    iget-object v0, p0, Ljavassist/CtField;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 222
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/FieldInfo;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setType(Ljavassist/CtClass;)V
    .locals 1

    .line 355
    iget-object v0, p0, Ljavassist/CtField;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 356
    iget-object v0, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavassist/bytecode/FieldInfo;->setDescriptor(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/CtField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavassist/CtField;->fieldInfo:Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
