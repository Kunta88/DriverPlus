.class public abstract Ljavassist/CtBehavior;
.super Ljavassist/CtMember;
.source "CtBehavior.java"


# instance fields
.field protected methodInfo:Ljavassist/bytecode/MethodInfo;


# direct methods
.method protected constructor <init>(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Ljavassist/CtMember;-><init>(Ljavassist/CtClass;)V

    .line 35
    iput-object p2, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    return-void
.end method

.method private addParameter2(ILjavassist/CtClass;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 615
    iget-object p3, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p3}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p3

    if-eqz p3, :cond_3

    const/4 v0, 0x1

    const/16 v1, 0x4c

    const/4 v2, 0x0

    .line 620
    invoke-virtual {p2}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 621
    check-cast p2, Ljavassist/CtPrimitiveType;

    .line 622
    invoke-virtual {p2}, Ljavassist/CtPrimitiveType;->getDataSize()I

    move-result v0

    .line 623
    invoke-virtual {p2}, Ljavassist/CtPrimitiveType;->getDescriptor()C

    move-result v1

    goto :goto_0

    .line 626
    :cond_0
    iget-object v2, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v2}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result v2

    .line 628
    :goto_0
    invoke-virtual {p3, p1, v0}, Ljavassist/bytecode/CodeAttribute;->insertLocalVar(II)V

    const-string p2, "LocalVariableTable"

    .line 629
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p2

    check-cast p2, Ljavassist/bytecode/LocalVariableAttribute;

    if-eqz p2, :cond_1

    .line 633
    invoke-virtual {p2, p1, v0}, Ljavassist/bytecode/LocalVariableAttribute;->shiftIndex(II)V

    :cond_1
    const-string p2, "StackMapTable"

    .line 635
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p2

    check-cast p2, Ljavassist/bytecode/StackMapTable;

    if-eqz p2, :cond_2

    .line 637
    invoke-static {v1}, Ljavassist/bytecode/StackMapTable;->typeTagOf(C)I

    move-result v0

    invoke-virtual {p2, p1, v0, v2}, Ljavassist/bytecode/StackMapTable;->insertLocal(III)V

    :cond_2
    const-string p2, "StackMap"

    .line 639
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p2

    check-cast p2, Ljavassist/bytecode/StackMap;

    if-eqz p2, :cond_3

    .line 641
    invoke-static {v1}, Ljavassist/bytecode/StackMapTable;->typeTagOf(C)I

    move-result p3

    invoke-virtual {p2, p1, p3, v2}, Ljavassist/bytecode/StackMap;->insertLocal(III)V

    :cond_3
    return-void
.end method

.method private getAnnotations(Z)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    const-string v1, "RuntimeInvisibleAnnotations"

    .line 230
    invoke-virtual {v0, v1}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AnnotationsAttribute;

    const-string v2, "RuntimeVisibleAnnotations"

    .line 232
    invoke-virtual {v0, v2}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AnnotationsAttribute;

    .line 234
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v2

    invoke-virtual {v2}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v2

    invoke-static {p1, v2, v1, v0}, Ljavassist/CtClassType;->toAnnotationType(ZLjavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private insertAfterAdvice(Ljavassist/bytecode/Bytecode;Ljavassist/compiler/Javac;Ljava/lang/String;Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 846
    sget-object p4, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    if-ne p5, p4, :cond_0

    const/4 p4, 0x1

    .line 847
    invoke-virtual {p1, p4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 848
    invoke-virtual {p1, p6}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 849
    invoke-virtual {p2, p3}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    const/16 p2, 0xb1

    .line 850
    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 851
    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->getMaxLocals()I

    move-result p2

    if-ge p2, p4, :cond_2

    .line 852
    invoke-virtual {p1, p4}, Ljavassist/bytecode/Bytecode;->setMaxLocals(I)V

    goto :goto_0

    .line 855
    :cond_0
    invoke-virtual {p1, p6, p5}, Ljavassist/bytecode/Bytecode;->addStore(ILjavassist/CtClass;)I

    .line 856
    invoke-virtual {p2, p3}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    .line 857
    invoke-virtual {p1, p6, p5}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    .line 858
    invoke-virtual {p5}, Ljavassist/CtClass;->isPrimitive()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 859
    check-cast p5, Ljavassist/CtPrimitiveType;

    invoke-virtual {p5}, Ljavassist/CtPrimitiveType;->getReturnOp()I

    move-result p2

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    :cond_1
    const/16 p2, 0xb0

    .line 861
    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private insertAfterHandler(ZLjavassist/bytecode/Bytecode;Ljavassist/CtClass;ILjavassist/compiler/Javac;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 902
    :cond_0
    invoke-virtual {p2}, Ljavassist/bytecode/Bytecode;->getMaxLocals()I

    move-result p1

    const/4 v1, 0x1

    .line 903
    invoke-virtual {p2, v1}, Ljavassist/bytecode/Bytecode;->incMaxLocals(I)V

    .line 904
    invoke-virtual {p2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v2

    .line 905
    invoke-virtual {p2, p1}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 906
    invoke-virtual {p3}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 907
    check-cast p3, Ljavassist/CtPrimitiveType;

    invoke-virtual {p3}, Ljavassist/CtPrimitiveType;->getDescriptor()C

    move-result p3

    const/16 v3, 0x44

    if-ne p3, v3, :cond_1

    const-wide/16 v0, 0x0

    .line 909
    invoke-virtual {p2, v0, v1}, Ljavassist/bytecode/Bytecode;->addDconst(D)V

    .line 910
    invoke-virtual {p2, p4}, Ljavassist/bytecode/Bytecode;->addDstore(I)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x46

    if-ne p3, v3, :cond_2

    const/4 p3, 0x0

    .line 913
    invoke-virtual {p2, p3}, Ljavassist/bytecode/Bytecode;->addFconst(F)V

    .line 914
    invoke-virtual {p2, p4}, Ljavassist/bytecode/Bytecode;->addFstore(I)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x4a

    if-ne p3, v3, :cond_3

    const-wide/16 v0, 0x0

    .line 917
    invoke-virtual {p2, v0, v1}, Ljavassist/bytecode/Bytecode;->addLconst(J)V

    .line 918
    invoke-virtual {p2, p4}, Ljavassist/bytecode/Bytecode;->addLstore(I)V

    goto :goto_0

    :cond_3
    const/16 v3, 0x56

    if-ne p3, v3, :cond_4

    .line 921
    invoke-virtual {p2, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 922
    invoke-virtual {p2, p4}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    goto :goto_0

    .line 925
    :cond_4
    invoke-virtual {p2, v0}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 926
    invoke-virtual {p2, p4}, Ljavassist/bytecode/Bytecode;->addIstore(I)V

    goto :goto_0

    .line 930
    :cond_5
    invoke-virtual {p2, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 931
    invoke-virtual {p2, p4}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 934
    :goto_0
    invoke-virtual {p5, p6}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    .line 935
    invoke-virtual {p2, p1}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    const/16 p1, 0xbf

    .line 936
    invoke-virtual {p2, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 937
    invoke-virtual {p2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result p1

    sub-int/2addr p1, v2

    return p1
.end method

.method private insertBefore(Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 707
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    .line 708
    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 709
    iget-object v1, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 713
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v2

    .line 714
    new-instance v3, Ljavassist/compiler/Javac;

    invoke-direct {v3, v0}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    .line 716
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getParameterTypes()[Ljavassist/CtClass;

    move-result-object v4

    invoke-virtual {p0}, Ljavassist/CtBehavior;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljavassist/compiler/Javac;->recordParams([Ljavassist/CtClass;Z)I

    move-result v4

    .line 718
    invoke-virtual {v3, v1, v4}, Ljavassist/compiler/Javac;->recordParamNames(Ljavassist/bytecode/CodeAttribute;I)Z

    const/4 v4, 0x0

    .line 719
    invoke-virtual {v3, v1, v4}, Ljavassist/compiler/Javac;->recordLocalVariables(Ljavassist/bytecode/CodeAttribute;I)Z

    .line 720
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getReturnType0()Ljavassist/CtClass;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavassist/compiler/Javac;->recordType(Ljavassist/CtClass;)V

    .line 721
    invoke-virtual {v3, p1}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v3}, Ljavassist/compiler/Javac;->getBytecode()Ljavassist/bytecode/Bytecode;

    move-result-object p1

    .line 723
    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->getMaxStack()I

    move-result v3

    .line 724
    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->getMaxLocals()I

    move-result v4

    .line 726
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v5

    if-le v3, v5, :cond_0

    .line 727
    invoke-virtual {v1, v3}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    .line 729
    :cond_0
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v3

    if-le v4, v3, :cond_1

    .line 730
    invoke-virtual {v1, v4}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V

    .line 732
    :cond_1
    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavassist/bytecode/CodeIterator;->insertEx([B)I

    move-result v1

    .line 733
    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Ljavassist/bytecode/CodeIterator;->insert(Ljavassist/bytecode/ExceptionTable;I)V

    if-eqz p2, :cond_2

    .line 735
    iget-object p1, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object p2

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 744
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 741
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw p2

    :catch_2
    move-exception p1

    .line 738
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw p2

    .line 711
    :cond_3
    new-instance p1, Ljavassist/CannotCompileException;

    const-string p2, "no method body"

    invoke-direct {p1, p2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private insertGoto(Ljavassist/bytecode/CodeIterator;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 871
    invoke-virtual {p1, p2}, Ljavassist/bytecode/CodeIterator;->setMark(I)V

    const/4 v0, 0x0

    .line 873
    invoke-virtual {p1, v0, p3}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    const/4 v1, 0x2

    add-int/2addr p2, v1

    sub-int/2addr p2, p3

    const/16 v2, 0x7fff

    const/4 v3, 0x1

    if-le p2, v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    .line 875
    :goto_1
    invoke-virtual {p1, p3, v4, v0}, Ljavassist/bytecode/CodeIterator;->insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;

    move-result-object p3

    iget p3, p3, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    .line 876
    invoke-virtual {p1}, Ljavassist/bytecode/CodeIterator;->getMark()I

    move-result v4

    sub-int/2addr v4, p3

    const/16 v5, 0xc8

    if-eqz p2, :cond_2

    .line 878
    invoke-virtual {p1, v5, p3}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    add-int/2addr p3, v3

    .line 879
    invoke-virtual {p1, v4, p3}, Ljavassist/bytecode/CodeIterator;->write32bit(II)V

    goto :goto_2

    :cond_2
    if-gt v4, v2, :cond_3

    const/16 p2, 0xa7

    .line 882
    invoke-virtual {p1, p2, p3}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    add-int/2addr p3, v3

    .line 883
    invoke-virtual {p1, v4, p3}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    goto :goto_2

    .line 886
    :cond_3
    invoke-virtual {p1, p3, v1, v0}, Ljavassist/bytecode/CodeIterator;->insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;

    move-result-object p2

    iget p2, p2, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    .line 887
    invoke-virtual {p1, v5, p2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 888
    invoke-virtual {p1}, Ljavassist/bytecode/CodeIterator;->getMark()I

    move-result p3

    sub-int/2addr p3, p2

    add-int/2addr p2, v3

    invoke-virtual {p1, p3, p2}, Ljavassist/bytecode/CodeIterator;->write32bit(II)V

    :goto_2
    return-void
.end method

.method static setBody0(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/ClassMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 428
    invoke-virtual {p2}, Ljavassist/CtClass;->checkModify()V

    .line 430
    new-instance v0, Ljavassist/ClassMap;

    invoke-direct {v0, p4}, Ljavassist/ClassMap;-><init>(Ljavassist/ClassMap;)V

    .line 431
    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p0, p4}, Ljavassist/ClassMap;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :try_start_0
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 435
    invoke-virtual {p3}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object p1

    .line 436
    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/CodeAttribute;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p0

    check-cast p0, Ljavassist/bytecode/CodeAttribute;

    .line 437
    invoke-virtual {p3, p0}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V
    :try_end_0
    .catch Ljavassist/bytecode/CodeAttribute$RuntimeCopyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :cond_0
    invoke-virtual {p3}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result p0

    and-int/lit16 p0, p0, -0x401

    invoke-virtual {p3, p0}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 449
    invoke-virtual {p2}, Ljavassist/CtClass;->rebuildClassFile()V

    return-void

    :catch_0
    move-exception p0

    .line 444
    new-instance p1, Ljavassist/CannotCompileException;

    invoke-direct {p1, p0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public addCatch(Ljava/lang/String;Ljavassist/CtClass;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const-string v0, "$e"

    .line 1003
    invoke-virtual {p0, p1, p2, v0}, Ljavassist/CtBehavior;->addCatch(Ljava/lang/String;Ljavassist/CtClass;Ljava/lang/String;)V

    return-void
.end method

.method public addCatch(Ljava/lang/String;Ljavassist/CtClass;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1022
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    .line 1023
    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 1024
    iget-object v1, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    .line 1025
    iget-object v2, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v2}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v2

    .line 1026
    invoke-virtual {v2}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v3

    .line 1027
    new-instance v4, Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v5

    invoke-virtual {v2}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v6

    invoke-direct {v4, v1, v5, v6}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    const/4 v5, 0x1

    .line 1028
    invoke-virtual {v4, v5}, Ljavassist/bytecode/Bytecode;->setStackDepth(I)V

    .line 1029
    new-instance v5, Ljavassist/compiler/Javac;

    invoke-direct {v5, v4, v0}, Ljavassist/compiler/Javac;-><init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;)V

    .line 1031
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getParameterTypes()[Ljavassist/CtClass;

    move-result-object v6

    invoke-virtual {p0}, Ljavassist/CtBehavior;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljavassist/compiler/Javac;->recordParams([Ljavassist/CtClass;Z)I

    .line 1033
    invoke-virtual {v5, p2, p3}, Ljavassist/compiler/Javac;->recordVariable(Ljavassist/CtClass;Ljava/lang/String;)I

    move-result p3

    .line 1034
    invoke-virtual {v4, p3}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 1035
    invoke-virtual {v5, p1}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v4}, Ljavassist/bytecode/Bytecode;->getMaxStack()I

    move-result p1

    .line 1038
    invoke-virtual {v4}, Ljavassist/bytecode/Bytecode;->getMaxLocals()I

    move-result p3

    .line 1040
    invoke-virtual {v2}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v5

    if-le p1, v5, :cond_0

    .line 1041
    invoke-virtual {v2, p1}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    .line 1043
    :cond_0
    invoke-virtual {v2}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result p1

    if-le p3, p1, :cond_1

    .line 1044
    invoke-virtual {v2, p3}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V

    .line 1046
    :cond_1
    invoke-virtual {v3}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result p1

    .line 1047
    invoke-virtual {v4}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object p3

    invoke-virtual {v3, p3}, Ljavassist/bytecode/CodeIterator;->append([B)I

    move-result p3

    .line 1048
    invoke-virtual {v2}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v5

    invoke-virtual {p0, v2}, Ljavassist/CtBehavior;->getStartPosOfBody(Ljavassist/bytecode/CodeAttribute;)I

    move-result v2

    invoke-virtual {v1, p2}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result p2

    invoke-virtual {v5, v2, p1, p1, p2}, Ljavassist/bytecode/ExceptionTable;->add(IIII)V

    .line 1050
    invoke-virtual {v4}, Ljavassist/bytecode/Bytecode;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object p1

    invoke-virtual {v3, p1, p3}, Ljavassist/bytecode/CodeIterator;->append(Ljavassist/bytecode/ExceptionTable;I)V

    .line 1051
    iget-object p1, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object p2

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1059
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1057
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw p2

    :catch_2
    move-exception p1

    .line 1054
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw p2
.end method

.method public addLocalVariable(Ljava/lang/String;Ljavassist/CtClass;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 553
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 554
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 555
    iget-object v1, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "LocalVariableTable"

    .line 559
    invoke-virtual {v1, v2}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/LocalVariableAttribute;

    if-nez v2, :cond_0

    .line 562
    new-instance v2, Ljavassist/bytecode/LocalVariableAttribute;

    invoke-direct {v2, v0}, Ljavassist/bytecode/LocalVariableAttribute;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 563
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getAttributes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v4, v2

    .line 566
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v2

    .line 567
    invoke-static {p2}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p2

    const/4 v5, 0x0

    .line 568
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getCodeLength()I

    move-result v6

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v8

    move v9, v2

    invoke-virtual/range {v4 .. v9}, Ljavassist/bytecode/LocalVariableAttribute;->addEntry(IIIII)V

    .line 570
    invoke-static {p2}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result p1

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V

    return-void

    .line 557
    :cond_1
    new-instance p1, Ljavassist/CannotCompileException;

    const-string p2, "no method body"

    invoke-direct {p1, p2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addParameter(Ljavassist/CtClass;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 598
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 599
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 600
    invoke-static {p1, v0}, Ljavassist/bytecode/Descriptor;->appendParameter(Ljavassist/CtClass;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 601
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 603
    :try_start_0
    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->paramSize(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0, v2, p1, v0}, Ljavassist/CtBehavior;->addParameter2(ILjavassist/CtClass;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    iget-object p1, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p1, v1}, Ljavassist/bytecode/MethodInfo;->setDescriptor(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 606
    new-instance v0, Ljavassist/CannotCompileException;

    invoke-direct {v0, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method copy(Ljavassist/CtBehavior;ZLjavassist/ClassMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    .line 45
    iget-object v1, p1, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    .line 46
    invoke-virtual {p1}, Ljavassist/CtBehavior;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object p1

    .line 47
    invoke-virtual {v0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v2

    invoke-virtual {v2}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    .line 49
    new-instance v3, Ljavassist/ClassMap;

    invoke-direct {v3, p3}, Ljavassist/ClassMap;-><init>(Ljavassist/ClassMap;)V

    .line 50
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Ljavassist/ClassMap;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 53
    :try_start_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object p1

    .line 54
    invoke-virtual {v0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "java.lang.Object"

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v3, p1, v4}, Ljavassist/ClassMap;->putIfNone(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_1
    :goto_0
    new-instance p1, Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0, v1, v3}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;Ljava/util/Map;)V

    iput-object p1, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 69
    invoke-virtual {p1, v4}, Ljavassist/bytecode/MethodInfo;->setSuperclass(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 75
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 72
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw p2
.end method

.method protected extendToString(Ljava/lang/StringBuffer;)V
    .locals 2

    const/16 v0, 0x20

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

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

    .line 187
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    const-string v1, "RuntimeInvisibleAnnotations"

    .line 188
    invoke-virtual {v0, v1}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AnnotationsAttribute;

    const-string v2, "RuntimeVisibleAnnotations"

    .line 190
    invoke-virtual {v0, v2}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AnnotationsAttribute;

    .line 192
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getDeclaringClass()Ljavassist/CtClass;

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

    .line 205
    invoke-direct {p0, v0}, Ljavassist/CtBehavior;->getAnnotations(Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)[B
    .locals 1

    .line 464
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 468
    :cond_0
    invoke-virtual {p1}, Ljavassist/bytecode/AttributeInfo;->get()[B

    move-result-object p1

    return-object p1
.end method

.method public getAvailableAnnotations()[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    .line 219
    :try_start_0
    invoke-direct {p0, v0}, Ljavassist/CtBehavior;->getAnnotations(Z)[Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 222
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAvailableParameterAnnotations()[[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    .line 269
    :try_start_0
    invoke-virtual {p0, v0}, Ljavassist/CtBehavior;->getParameterAnnotations(Z)[[Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 272
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getExceptionTypes()[Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getExceptionsAttribute()Ljavassist/bytecode/ExceptionsAttribute;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 341
    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/ExceptionsAttribute;->getExceptions()[Ljava/lang/String;

    move-result-object v0

    .line 343
    :goto_0
    iget-object v1, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavassist/ClassPool;->get([Ljava/lang/String;)[Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLongName()Ljava/lang/String;
.end method

.method public getMethodInfo()Ljavassist/bytecode/MethodInfo;
    .locals 1

    .line 106
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 107
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    return-object v0
.end method

.method public getMethodInfo2()Ljavassist/bytecode/MethodInfo;
    .locals 1

    .line 129
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 139
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v0

    invoke-static {v0}, Ljavassist/bytecode/AccessFlag;->toModifier(I)I

    move-result v0

    return v0
.end method

.method public getParameterAnnotations()[[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 251
    invoke-virtual {p0, v0}, Ljavassist/CtBehavior;->getParameterAnnotations(Z)[[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getParameterAnnotations(Z)[[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 279
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    const-string v1, "RuntimeInvisibleParameterAnnotations"

    .line 280
    invoke-virtual {v0, v1}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/ParameterAnnotationsAttribute;

    const-string v2, "RuntimeVisibleParameterAnnotations"

    .line 282
    invoke-virtual {v0, v2}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/ParameterAnnotationsAttribute;

    .line 284
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v3

    invoke-static {p1, v3, v1, v2, v0}, Ljavassist/CtClassType;->toAnnotationType(ZLjavassist/ClassPool;Ljavassist/bytecode/ParameterAnnotationsAttribute;Ljavassist/bytecode/ParameterAnnotationsAttribute;Ljavassist/bytecode/MethodInfo;)[[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getParameterTypes()[Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v1

    invoke-static {v0, v1}, Ljavassist/bytecode/Descriptor;->getParameterTypes(Ljava/lang/String;Ljavassist/ClassPool;)[Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method getReturnType0()Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v1

    invoke-static {v0, v1}, Ljavassist/bytecode/Descriptor;->getReturnType(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 327
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStartPosOfBody(Ljavassist/bytecode/CodeAttribute;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public hasAnnotation(Ljava/lang/Class;)Z
    .locals 3

    .line 165
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    const-string v1, "RuntimeInvisibleAnnotations"

    .line 166
    invoke-virtual {v0, v1}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AnnotationsAttribute;

    const-string v2, "RuntimeVisibleAnnotations"

    .line 168
    invoke-virtual {v0, v2}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AnnotationsAttribute;

    .line 170
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v2

    invoke-virtual {v2}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v2

    invoke-static {p1, v2, v1, v0}, Ljavassist/CtClassType;->hasAnnotationType(Ljava/lang/Class;Ljavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)Z

    move-result p1

    return p1
.end method

.method public insertAfter(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 759
    invoke-virtual {p0, p1, v0}, Ljavassist/CtBehavior;->insertAfter(Ljava/lang/String;Z)V

    return-void
.end method

.method public insertAfter(Ljava/lang/String;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    move-object/from16 v8, p0

    .line 777
    iget-object v0, v8, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    .line 778
    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 779
    iget-object v1, v8, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v9

    .line 780
    iget-object v1, v8, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 784
    invoke-virtual {v10}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v11

    .line 785
    invoke-virtual {v10}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v1

    .line 786
    new-instance v12, Ljavassist/bytecode/Bytecode;

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v13, 0x0

    invoke-direct {v12, v9, v13, v1}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 787
    invoke-virtual {v10}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v12, v1}, Ljavassist/bytecode/Bytecode;->setStackDepth(I)V

    .line 788
    new-instance v14, Ljavassist/compiler/Javac;

    invoke-direct {v14, v12, v0}, Ljavassist/compiler/Javac;-><init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;)V

    .line 790
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljavassist/CtBehavior;->getParameterTypes()[Ljavassist/CtClass;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Ljavassist/CtBehavior;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v3

    invoke-virtual {v14, v1, v3}, Ljavassist/compiler/Javac;->recordParams([Ljavassist/CtClass;Z)I

    move-result v1

    .line 792
    invoke-virtual {v14, v10, v1}, Ljavassist/compiler/Javac;->recordParamNames(Ljavassist/bytecode/CodeAttribute;I)Z

    .line 793
    invoke-virtual/range {p0 .. p0}, Ljavassist/CtBehavior;->getReturnType0()Ljavassist/CtClass;

    move-result-object v15

    .line 794
    invoke-virtual {v14, v15, v2}, Ljavassist/compiler/Javac;->recordReturnType(Ljavassist/CtClass;Z)I

    move-result v16

    .line 795
    invoke-virtual {v14, v10, v13}, Ljavassist/compiler/Javac;->recordLocalVariables(Ljavassist/bytecode/CodeAttribute;I)Z

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object v3, v12

    move-object v4, v15

    move/from16 v5, v16

    move-object v6, v14

    move-object/from16 v7, p1

    .line 798
    invoke-direct/range {v1 .. v7}, Ljavassist/CtBehavior;->insertAfterHandler(ZLjavassist/bytecode/Bytecode;Ljavassist/CtClass;ILjavassist/compiler/Javac;Ljava/lang/String;)I

    move-result v17

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v14

    move-object/from16 v4, p1

    move-object v5, v9

    move-object v6, v15

    move/from16 v7, v16

    .line 801
    invoke-direct/range {v1 .. v7}, Ljavassist/CtBehavior;->insertAfterAdvice(Ljavassist/bytecode/Bytecode;Ljavassist/compiler/Javac;Ljava/lang/String;Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;I)V

    .line 803
    invoke-virtual {v12}, Ljavassist/bytecode/Bytecode;->getMaxStack()I

    move-result v1

    invoke-virtual {v10, v1}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    .line 804
    invoke-virtual {v12}, Ljavassist/bytecode/Bytecode;->getMaxLocals()I

    move-result v1

    invoke-virtual {v10, v1}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V

    .line 806
    invoke-virtual {v12}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object v1

    invoke-virtual {v11, v1}, Ljavassist/bytecode/CodeIterator;->append([B)I

    move-result v1

    .line 807
    invoke-virtual {v12}, Ljavassist/bytecode/Bytecode;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v2

    invoke-virtual {v11, v2, v1}, Ljavassist/bytecode/CodeIterator;->append(Ljavassist/bytecode/ExceptionTable;I)V

    if-eqz p2, :cond_0

    .line 810
    invoke-virtual {v10}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v2

    invoke-virtual {v8, v10}, Ljavassist/CtBehavior;->getStartPosOfBody(Ljavassist/bytecode/CodeAttribute;)I

    move-result v3

    invoke-virtual {v2, v3, v1, v1, v13}, Ljavassist/bytecode/ExceptionTable;->add(IIII)V

    .line 812
    :cond_0
    invoke-virtual {v11}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int v2, v2, v17

    .line 813
    invoke-virtual {v11}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v1

    :goto_0
    sub-int/2addr v1, v2

    .line 815
    :cond_1
    invoke-virtual {v11}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 816
    invoke-virtual {v11}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v3

    if-lt v3, v1, :cond_2

    goto :goto_1

    .line 820
    :cond_2
    invoke-virtual {v11, v3}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v4

    const/16 v5, 0xb0

    if-eq v4, v5, :cond_3

    const/16 v5, 0xac

    if-eq v4, v5, :cond_3

    const/16 v5, 0xae

    if-eq v4, v5, :cond_3

    const/16 v5, 0xad

    if-eq v4, v5, :cond_3

    const/16 v5, 0xaf

    if-eq v4, v5, :cond_3

    const/16 v5, 0xb1

    if-ne v4, v5, :cond_1

    .line 824
    :cond_3
    invoke-direct {v8, v11, v1, v3}, Ljavassist/CtBehavior;->insertGoto(Ljavassist/bytecode/CodeIterator;II)V

    .line 825
    invoke-virtual {v11}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v1

    goto :goto_0

    .line 829
    :cond_4
    :goto_1
    iget-object v1, v8, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v2

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 838
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 835
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v1

    :catch_2
    move-exception v0

    .line 832
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v1

    .line 782
    :cond_5
    new-instance v0, Ljavassist/CannotCompileException;

    const-string v1, "no method body"

    invoke-direct {v0, v1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public insertAt(ILjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1089
    invoke-virtual {p0, p1, v0, p2}, Ljavassist/CtBehavior;->insertAt(IZLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public insertAt(IZLjava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1117
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "LineNumberTable"

    .line 1121
    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/LineNumberAttribute;

    if-eqz v1, :cond_2

    .line 1126
    invoke-virtual {v1, p1}, Ljavassist/bytecode/LineNumberAttribute;->toNearPc(I)Ljavassist/bytecode/LineNumberAttribute$Pc;

    move-result-object p1

    .line 1127
    iget v1, p1, Ljavassist/bytecode/LineNumberAttribute$Pc;->line:I

    .line 1128
    iget p1, p1, Ljavassist/bytecode/LineNumberAttribute$Pc;->index:I

    if-nez p2, :cond_0

    return v1

    .line 1132
    :cond_0
    iget-object p2, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    .line 1133
    invoke-virtual {p2}, Ljavassist/CtClass;->checkModify()V

    .line 1134
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v2

    .line 1135
    new-instance v3, Ljavassist/compiler/Javac;

    invoke-direct {v3, p2}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    .line 1137
    :try_start_0
    invoke-virtual {v3, v0, p1}, Ljavassist/compiler/Javac;->recordLocalVariables(Ljavassist/bytecode/CodeAttribute;I)Z

    .line 1138
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getParameterTypes()[Ljavassist/CtClass;

    move-result-object v4

    invoke-virtual {p0}, Ljavassist/CtBehavior;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljavassist/compiler/Javac;->recordParams([Ljavassist/CtClass;Z)I

    .line 1140
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v4

    invoke-virtual {v3, v4}, Ljavassist/compiler/Javac;->setMaxLocals(I)V

    .line 1141
    invoke-virtual {v3, p3}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {v3}, Ljavassist/compiler/Javac;->getBytecode()Ljavassist/bytecode/Bytecode;

    move-result-object p3

    .line 1143
    invoke-virtual {p3}, Ljavassist/bytecode/Bytecode;->getMaxLocals()I

    move-result v3

    .line 1144
    invoke-virtual {p3}, Ljavassist/bytecode/Bytecode;->getMaxStack()I

    move-result v4

    .line 1145
    invoke-virtual {v0, v3}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V

    .line 1150
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v3

    if-le v4, v3, :cond_1

    .line 1151
    invoke-virtual {v0, v4}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    .line 1153
    :cond_1
    invoke-virtual {p3}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljavassist/bytecode/CodeIterator;->insertAt(I[B)I

    move-result p1

    .line 1154
    invoke-virtual {p3}, Ljavassist/bytecode/Bytecode;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object p3

    invoke-virtual {v2, p3, p1}, Ljavassist/bytecode/CodeIterator;->insert(Ljavassist/bytecode/ExceptionTable;I)V

    .line 1155
    iget-object p1, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p2}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object p3

    invoke-virtual {p2}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 1165
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1162
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw p2

    :catch_2
    move-exception p1

    .line 1159
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw p2

    .line 1124
    :cond_2
    new-instance p1, Ljavassist/CannotCompileException;

    const-string p2, "no line number info"

    invoke-direct {p1, p2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1119
    :cond_3
    new-instance p1, Ljavassist/CannotCompileException;

    const-string p2, "no method body"

    invoke-direct {p1, p2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insertBefore(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 701
    invoke-direct {p0, p1, v0}, Ljavassist/CtBehavior;->insertBefore(Ljava/lang/String;Z)V

    return-void
.end method

.method public insertParameter(Ljavassist/CtClass;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 579
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 580
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-static {p1, v0}, Ljavassist/bytecode/Descriptor;->insertParameter(Ljavassist/CtClass;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 583
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v2, p1, v0}, Ljavassist/CtBehavior;->addParameter2(ILjavassist/CtClass;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    iget-object p1, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p1, v1}, Ljavassist/bytecode/MethodInfo;->setDescriptor(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 586
    new-instance v0, Ljavassist/CannotCompileException;

    invoke-direct {v0, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public instrument(Ljavassist/CodeConverter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 653
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 654
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 655
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v1

    iget-object v2, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p1, v1, v2, v0}, Ljavassist/CodeConverter;->doit(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/ConstPool;)V

    return-void
.end method

.method public instrument(Ljavassist/expr/ExprEditor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 676
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 679
    :cond_0
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    iget-object v1, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p1, v0, v1}, Ljavassist/expr/ExprEditor;->doit(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 680
    iget-object p1, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {p1}, Ljavassist/CtClass;->checkModify()V

    :cond_1
    return-void
.end method

.method public abstract isEmpty()Z
.end method

.method public setAttribute(Ljava/lang/String;[B)V
    .locals 3

    .line 482
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 483
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    new-instance v1, Ljavassist/bytecode/AttributeInfo;

    iget-object v2, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v2}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljavassist/bytecode/MethodInfo;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 383
    invoke-virtual {p0, p1, v0, v0}, Ljavassist/CtBehavior;->setBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 402
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    .line 403
    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 405
    :try_start_0
    new-instance v1, Ljavassist/compiler/Javac;

    invoke-direct {v1, v0}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    if-eqz p3, :cond_0

    .line 407
    invoke-virtual {v1, p2, p3}, Ljavassist/compiler/Javac;->recordProceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_0
    invoke-virtual {v1, p0, p1}, Ljavassist/compiler/Javac;->compileBody(Ljavassist/CtBehavior;Ljava/lang/String;)Ljavassist/bytecode/Bytecode;

    move-result-object p1

    .line 410
    iget-object p2, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 411
    iget-object p1, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result p2

    and-int/lit16 p2, p2, -0x401

    invoke-virtual {p1, p2}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 413
    iget-object p1, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object p2

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V

    .line 414
    iget-object p1, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {p1}, Ljavassist/CtClass;->rebuildClassFile()V
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 419
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 417
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw p2
.end method

.method public setExceptionTypes([Ljavassist/CtClass;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 350
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    if-eqz p1, :cond_3

    .line 351
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 356
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 357
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 358
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    :cond_1
    iget-object p1, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getExceptionsAttribute()Ljavassist/bytecode/ExceptionsAttribute;

    move-result-object p1

    if-nez p1, :cond_2

    .line 362
    new-instance p1, Ljavassist/bytecode/ExceptionsAttribute;

    iget-object v1, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    invoke-direct {p1, v1}, Ljavassist/bytecode/ExceptionsAttribute;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 363
    iget-object v1, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v1, p1}, Ljavassist/bytecode/MethodInfo;->setExceptionsAttribute(Ljavassist/bytecode/ExceptionsAttribute;)V

    .line 366
    :cond_2
    invoke-virtual {p1, v0}, Ljavassist/bytecode/ExceptionsAttribute;->setExceptions([Ljava/lang/String;)V

    return-void

    .line 352
    :cond_3
    :goto_1
    iget-object p1, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->removeExceptionsAttribute()V

    return-void
.end method

.method public setModifiers(I)V
    .locals 1

    .line 152
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 153
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-static {p1}, Ljavassist/bytecode/AccessFlag;->of(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    return-void
.end method

.method public useCflow(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 505
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    .line 506
    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 507
    invoke-virtual {v0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 511
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_cflow$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 513
    :try_start_0
    invoke-virtual {v0, v3}, Ljavassist/CtClass;->getDeclaredField(Ljava/lang/String;)Ljavassist/CtField;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    goto :goto_0

    .line 520
    :catch_0
    iget-object v4, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v4}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v4, v3}, Ljavassist/ClassPool;->recordCflow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    const-string p1, "javassist.runtime.Cflow"

    .line 522
    invoke-virtual {v1, p1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p1

    .line 523
    new-instance v1, Ljavassist/CtField;

    invoke-direct {v1, p1, v3, v0}, Ljavassist/CtField;-><init>(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)V

    const/16 v4, 0x9

    .line 524
    invoke-virtual {v1, v4}, Ljavassist/CtField;->setModifiers(I)V

    .line 525
    invoke-static {p1}, Ljavassist/CtField$Initializer;->byNew(Ljavassist/CtClass;)Ljavassist/CtField$Initializer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljavassist/CtClass;->addField(Ljavassist/CtField;Ljavassist/CtField$Initializer;)V

    .line 526
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".enter();"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Ljavassist/CtBehavior;->insertBefore(Ljava/lang/String;Z)V

    .line 527
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".exit();"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 528
    invoke-virtual {p0, p1, v0}, Ljavassist/CtBehavior;->insertAfter(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 531
    new-instance v0, Ljavassist/CannotCompileException;

    invoke-direct {v0, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
