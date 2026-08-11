.class public Ljavassist/compiler/MemberCodeGen;
.super Ljavassist/compiler/CodeGen;
.source "MemberCodeGen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/compiler/MemberCodeGen$JsrHook2;,
        Ljavassist/compiler/MemberCodeGen$JsrHook;
    }
.end annotation


# instance fields
.field protected resolver:Ljavassist/compiler/MemberResolver;

.field protected resultStatic:Z

.field protected thisClass:Ljavassist/CtClass;

.field protected thisMethod:Ljavassist/bytecode/MethodInfo;


# direct methods
.method public constructor <init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;Ljavassist/ClassPool;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Ljavassist/compiler/CodeGen;-><init>(Ljavassist/bytecode/Bytecode;)V

    .line 36
    new-instance p1, Ljavassist/compiler/MemberResolver;

    invoke-direct {p1, p3}, Ljavassist/compiler/MemberResolver;-><init>(Ljavassist/ClassPool;)V

    iput-object p1, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    .line 37
    iput-object p2, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Ljavassist/compiler/MemberCodeGen;->thisMethod:Ljavassist/bytecode/MethodInfo;

    return-void
.end method

.method private addFieldrefInfo(Ljavassist/CtField;Ljavassist/bytecode/FieldInfo;)I
    .locals 2

    .line 965
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 966
    invoke-virtual {p1}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object p1

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    .line 967
    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p1

    .line 968
    invoke-virtual {p2}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 969
    invoke-virtual {p2}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object p2

    .line 970
    invoke-virtual {v0, p1, v1, p2}, Ljavassist/bytecode/ConstPool;->addFieldrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private addFinally(Ljava/util/ArrayList;Ljavassist/compiler/ast/Stmnt;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    .line 277
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 279
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    .line 280
    aget v5, v4, v2

    .line 281
    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v6

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v5, v6}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    .line 282
    new-instance v6, Ljavassist/compiler/MemberCodeGen$JsrHook2;

    invoke-direct {v6, p0, v4}, Ljavassist/compiler/MemberCodeGen$JsrHook2;-><init>(Ljavassist/compiler/CodeGen;[I)V

    .line 283
    invoke-virtual {p2, p0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 284
    invoke-virtual {v6, p0}, Ljavassist/compiler/CodeGen$ReturnHook;->remove(Ljavassist/compiler/CodeGen;)V

    .line 285
    iget-boolean v4, p0, Ljavassist/compiler/MemberCodeGen;->hasReturned:Z

    if-nez v4, :cond_0

    const/16 v4, 0xa7

    .line 286
    invoke-virtual {v0, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    add-int/lit8 v5, v5, 0x3

    .line 287
    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v4

    sub-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private atArrayLength(Ljavassist/compiler/ast/ASTree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 871
    iget p1, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    if-eqz p1, :cond_0

    .line 874
    iget-object p1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v0, 0xbe

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    const/16 p1, 0x144

    .line 875
    iput p1, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    const/4 p1, 0x0

    .line 876
    iput p1, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    return-void

    .line 872
    :cond_0
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string v0, ".length applied to a non array"

    invoke-direct {p1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private atFieldAssignCore(Ljavassist/CtField;ZIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    if-eqz p3, :cond_3

    const/4 p1, -0x2

    if-eqz p2, :cond_1

    .line 825
    iget-object p2, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v0, 0xb3

    invoke-virtual {p2, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 826
    iget-object p2, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-virtual {p2, p1}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    goto :goto_1

    .line 829
    :cond_1
    iget-object p2, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v0, 0xb5

    invoke-virtual {p2, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 830
    iget-object p2, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-eqz p4, :cond_2

    const/4 p1, -0x3

    :cond_2
    invoke-virtual {p2, p1}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 833
    :goto_1
    iget-object p1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, p3}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    goto :goto_2

    .line 836
    :cond_3
    invoke-virtual {p1}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object p3

    .line 837
    invoke-virtual {p3}, Ljavassist/CtClass;->getAccessorMaker()Ljavassist/compiler/AccessorMaker;

    move-result-object p4

    .line 839
    invoke-virtual {p1}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object p1

    .line 840
    invoke-virtual {p4, p1, p2}, Ljavassist/compiler/AccessorMaker;->getFieldSetter(Ljavassist/bytecode/FieldInfo;Z)Ljavassist/bytecode/MethodInfo;

    move-result-object p1

    .line 841
    iget-object p2, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p4, p1}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private atFieldRead(Ljavassist/CtField;Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 885
    invoke-virtual {p1}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v0

    .line 886
    invoke-direct {p0, v0}, Ljavassist/compiler/MemberCodeGen;->setFieldType(Ljavassist/bytecode/FieldInfo;)Z

    move-result v1

    .line 887
    invoke-direct {p0, p1, v0}, Ljavassist/compiler/MemberCodeGen;->isAccessibleField(Ljavassist/CtField;Ljavassist/bytecode/FieldInfo;)Ljavassist/compiler/AccessorMaker;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 889
    invoke-virtual {v2, v0, p2}, Ljavassist/compiler/AccessorMaker;->getFieldGetter(Ljavassist/bytecode/FieldInfo;Z)Ljavassist/bytecode/MethodInfo;

    move-result-object p2

    .line 890
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object p1

    invoke-virtual {p2}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 895
    :cond_0
    invoke-direct {p0, p1, v0}, Ljavassist/compiler/MemberCodeGen;->addFieldrefInfo(Ljavassist/CtField;Ljavassist/bytecode/FieldInfo;)I

    move-result p1

    if-eqz p2, :cond_2

    .line 897
    iget-object p2, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v0, 0xb2

    invoke-virtual {p2, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 898
    iget-object p2, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2, v0}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    goto :goto_1

    .line 901
    :cond_2
    iget-object p2, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v0, 0xb4

    invoke-virtual {p2, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 902
    iget-object p2, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p2, v1}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 905
    :goto_1
    iget-object p2, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p2, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    return p1
.end method

.method private atMethodCallCore2(Ljavassist/CtClass;Ljava/lang/String;ZZIILjavassist/compiler/MemberResolver$Method;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    move-object v6, p0

    move/from16 v7, p5

    move-object/from16 v0, p7

    .line 585
    iget-object v8, v0, Ljavassist/compiler/MemberResolver$Method;->declaring:Ljavassist/CtClass;

    .line 586
    iget-object v4, v0, Ljavassist/compiler/MemberResolver$Method;->info:Ljavassist/bytecode/MethodInfo;

    .line 587
    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 588
    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v0

    const-string v1, "<init>"

    move-object/from16 v3, p2

    .line 590
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_2

    move-object v11, p1

    if-ne v8, v11, :cond_1

    .line 595
    iget-object v1, v6, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    if-eq v8, v1, :cond_0

    invoke-static {v0}, Ljavassist/bytecode/AccessFlag;->isPrivate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    invoke-virtual {p0, v2, v8, v4}, Ljavassist/compiler/MemberCodeGen;->getAccessibleConstructor(Ljava/lang/String;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;

    move-result-object v2

    .line 597
    iget-object v1, v6, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1, v10}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    :cond_0
    :goto_0
    move v13, v0

    const/4 v1, 0x1

    goto :goto_2

    .line 593
    :cond_1
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "no such constructor"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v11, p1

    .line 600
    invoke-static {v0}, Ljavassist/bytecode/AccessFlag;->isPrivate(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 601
    iget-object v1, v6, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    if-ne v8, v1, :cond_3

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_4

    .line 608
    invoke-virtual {v8}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljavassist/bytecode/Descriptor;->insertParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    goto :goto_1

    :cond_4
    move-object v12, v2

    .line 611
    :goto_1
    invoke-static {v0}, Ljavassist/bytecode/AccessFlag;->setPackage(I)I

    move-result v0

    or-int/lit8 v13, v0, 0x8

    move-object v0, p0

    move-object/from16 v1, p2

    move-object v3, v12

    move-object v5, v8

    .line 612
    invoke-virtual/range {v0 .. v5}, Ljavassist/compiler/MemberCodeGen;->getAccessiblePrivate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move-object v2, v12

    const/4 v0, 0x1

    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    move/from16 v1, p4

    move v13, v0

    :goto_2
    move/from16 v0, p3

    :goto_3
    and-int/lit8 v4, v13, 0x8

    if-eqz v4, :cond_8

    if-nez v0, :cond_7

    if-ltz v7, :cond_6

    .line 626
    iget-object v0, v6, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v7, v9}, Ljavassist/bytecode/Bytecode;->write(II)V

    goto :goto_4

    :cond_6
    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    move v10, v0

    .line 631
    :goto_4
    iget-object v0, v6, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, v8, v3, v2}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    goto :goto_5

    :cond_8
    if-eqz v1, :cond_9

    .line 634
    iget-object v1, v6, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1, v8, v3, v2}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 636
    :cond_9
    invoke-virtual {v8}, Ljavassist/CtClass;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljavassist/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v8}, Ljavassist/CtClass;->isInterface()Z

    move-result v1

    invoke-virtual {p1}, Ljavassist/CtClass;->isInterface()Z

    move-result v4

    if-eq v1, v4, :cond_b

    :cond_a
    move-object v8, v11

    .line 640
    :cond_b
    invoke-virtual {v8}, Ljavassist/CtClass;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 641
    iget-object v1, v6, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    move/from16 v4, p6

    invoke-virtual {v1, v8, v3, v2, v4}, Ljavassist/bytecode/Bytecode;->addInvokeinterface(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    :cond_c
    if-nez v0, :cond_d

    .line 646
    iget-object v1, v6, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1, v8, v3, v2}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :goto_5
    invoke-virtual {p0, v2, v0, v9}, Ljavassist/compiler/MemberCodeGen;->setReturnType(Ljava/lang/String;ZZ)V

    return-void

    .line 644
    :cond_d
    new-instance v0, Ljavassist/compiler/CompileError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not static"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method private atNewArrayExpr2(ILjavassist/compiler/ast/ASTree;Ljava/lang/String;Ljavassist/compiler/ast/ArrayInit;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    if-nez p4, :cond_1

    if-eqz p2, :cond_0

    .line 336
    invoke-virtual {p2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    goto :goto_0

    .line 334
    :cond_0
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string p2, "no array size"

    invoke-direct {p1, p2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-nez p2, :cond_d

    .line 339
    invoke-virtual {p4}, Ljavassist/compiler/ast/ArrayInit;->length()I

    move-result p2

    .line 340
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    :goto_0
    const/16 p2, 0x133

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    .line 347
    invoke-virtual {p0, p3}, Ljavassist/compiler/MemberCodeGen;->resolveClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 348
    iget-object p3, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-static {p2}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljavassist/bytecode/Bytecode;->addAnewarray(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    const/16 p3, 0x12d

    if-eq p1, p3, :cond_a

    const/16 p3, 0x12f

    if-eq p1, p3, :cond_9

    const/16 p3, 0x132

    if-eq p1, p3, :cond_8

    const/16 p3, 0x138

    if-eq p1, p3, :cond_7

    const/16 p3, 0x13d

    if-eq p1, p3, :cond_6

    const/16 p3, 0x144

    if-eq p1, p3, :cond_5

    const/16 p3, 0x146

    if-eq p1, p3, :cond_4

    const/16 p3, 0x14e

    if-eq p1, p3, :cond_3

    .line 379
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->badNewExpr()V

    const/4 p3, 0x0

    goto :goto_1

    :cond_3
    const/16 p3, 0x9

    goto :goto_1

    :cond_4
    const/16 p3, 0xb

    goto :goto_1

    :cond_5
    const/16 p3, 0xa

    goto :goto_1

    :cond_6
    const/4 p3, 0x6

    goto :goto_1

    :cond_7
    const/4 p3, 0x7

    goto :goto_1

    :cond_8
    const/4 p3, 0x5

    goto :goto_1

    :cond_9
    const/16 p3, 0x8

    goto :goto_1

    :cond_a
    const/4 p3, 0x4

    .line 383
    :goto_1
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v2, 0xbc

    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 384
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1, p3}, Ljavassist/bytecode/Bytecode;->add(I)V

    :goto_2
    if-eqz p4, :cond_c

    .line 388
    invoke-virtual {p4}, Ljavassist/compiler/ast/ArrayInit;->length()I

    move-result p3

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p3, :cond_c

    .line 391
    iget-object v2, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v3, 0x59

    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 392
    iget-object v2, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 393
    invoke-virtual {p4}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 394
    invoke-static {p1}, Ljavassist/compiler/MemberCodeGen;->isRefType(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 395
    iget v2, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    invoke-virtual {p0, v2, p1}, Ljavassist/compiler/MemberCodeGen;->atNumCastExpr(II)V

    .line 397
    :cond_b
    iget-object v2, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-static {p1, v0}, Ljavassist/compiler/MemberCodeGen;->getArrayWriteOp(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 398
    invoke-virtual {p4}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 402
    :cond_c
    iput p1, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    const/4 p1, 0x1

    .line 403
    iput p1, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    .line 404
    iput-object p2, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    return-void

    .line 343
    :cond_d
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string p2, "unnecessary array size specified for new"

    invoke-direct {p1, p2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private static badLvalue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1095
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "bad l-value"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static badMethod()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 528
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "bad method"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static badNewExpr()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 408
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "bad new expression"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isAccessibleField(Ljavassist/CtField;Ljavassist/bytecode/FieldInfo;)Ljavassist/compiler/AccessorMaker;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 918
    invoke-virtual {p2}, Ljavassist/bytecode/FieldInfo;->getAccessFlags()I

    move-result p2

    invoke-static {p2}, Ljavassist/bytecode/AccessFlag;->isPrivate(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object p2

    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    if-eq p2, v0, :cond_2

    .line 920
    invoke-virtual {p1}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object p2

    .line 921
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    invoke-direct {p0, p2, v0}, Ljavassist/compiler/MemberCodeGen;->isEnclosing(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 922
    invoke-virtual {p2}, Ljavassist/CtClass;->getAccessorMaker()Ljavassist/compiler/AccessorMaker;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 926
    :cond_0
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string p2, "fatal error.  bug?"

    invoke-direct {p1, p2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 929
    :cond_1
    new-instance v0, Ljavassist/compiler/CompileError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljavassist/CtField;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " in "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is private."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private isEnclosing(Ljavassist/CtClass;Ljavassist/CtClass;)Z
    .locals 0

    :cond_0
    if-eqz p2, :cond_1

    .line 701
    :try_start_0
    invoke-virtual {p2}, Ljavassist/CtClass;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object p2
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private setFieldType(Ljavassist/bytecode/FieldInfo;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 942
    invoke-virtual {p1}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 946
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x5b

    if-ne v1, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 949
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 952
    :cond_0
    iput v2, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    .line 953
    invoke-static {v1}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result v2

    iput v2, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    const/16 v2, 0x4c

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    add-int/2addr v3, v4

    const/16 v2, 0x3b

    .line 956
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 958
    iput-object p1, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    :goto_1
    const/16 p1, 0x4a

    if-eq v1, p1, :cond_2

    const/16 p1, 0x44

    if-ne v1, p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method


# virtual methods
.method public atArrayInit(Ljavassist/compiler/ast/ArrayInit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 417
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string v0, "array initializer is not supported"

    invoke-direct {p1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected atArrayVariableAssign(Ljavassist/compiler/ast/ArrayInit;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 p3, 0x0

    .line 413
    invoke-direct {p0, p2, p3, p4, p1}, Ljavassist/compiler/MemberCodeGen;->atNewArrayExpr2(ILjavassist/compiler/ast/ASTree;Ljava/lang/String;Ljavassist/compiler/ast/ArrayInit;)V

    return-void
.end method

.method public atCallExpr(Ljavassist/compiler/ast/CallExpr;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 452
    invoke-virtual {p1}, Ljavassist/compiler/ast/CallExpr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 453
    invoke-virtual {p1}, Ljavassist/compiler/ast/CallExpr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljavassist/compiler/ast/ASTList;

    .line 458
    invoke-virtual {p1}, Ljavassist/compiler/ast/CallExpr;->getMethod()Ljavassist/compiler/MemberResolver$Method;

    move-result-object v9

    .line 459
    instance-of p1, v0, Ljavassist/compiler/ast/Member;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-string v6, "<init>"

    if-eqz p1, :cond_2

    .line 460
    check-cast v0, Ljavassist/compiler/ast/Member;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object p1

    .line 461
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    .line 462
    iget-boolean v1, p0, Ljavassist/compiler/MemberCodeGen;->inStaticMethod:Z

    if-nez v1, :cond_1

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljavassist/compiler/MemberResolver$Method;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 465
    :cond_0
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v1

    .line 466
    iget-object v2, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    move-object v4, p1

    move-object v3, v0

    move v8, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_1
    :goto_0
    move-object v4, p1

    move-object v3, v0

    const/4 v6, 0x1

    :goto_1
    const/4 v7, 0x0

    :goto_2
    const/4 v8, -0x1

    goto/16 :goto_7

    .line 469
    :cond_2
    instance-of p1, v0, Ljavassist/compiler/ast/Keyword;

    const/16 v7, 0x150

    if-eqz p1, :cond_5

    .line 472
    iget-object p1, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    .line 473
    iget-boolean v1, p0, Ljavassist/compiler/MemberCodeGen;->inStaticMethod:Z

    if-nez v1, :cond_4

    .line 476
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1, v3}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 478
    check-cast v0, Ljavassist/compiler/ast/Keyword;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result v0

    if-ne v0, v7, :cond_3

    .line 479
    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->getSuperclass(Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object p1

    :cond_3
    move-object v3, p1

    move-object v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_2

    .line 474
    :cond_4
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string v0, "a constructor cannot be static"

    invoke-direct {p1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 481
    :cond_5
    instance-of p1, v0, Ljavassist/compiler/ast/Expr;

    if-eqz p1, :cond_c

    .line 482
    check-cast v0, Ljavassist/compiler/ast/Expr;

    .line 483
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object p1

    check-cast p1, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {p1}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object p1

    .line 484
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v6

    const/16 v8, 0x23

    if-ne v6, v8, :cond_6

    .line 486
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v1

    goto :goto_6

    :cond_6
    const/16 v8, 0x2e

    if-ne v6, v8, :cond_b

    .line 491
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 492
    instance-of v6, v0, Ljavassist/compiler/ast/Keyword;

    if-eqz v6, :cond_7

    .line 493
    move-object v6, v0

    check-cast v6, Ljavassist/compiler/ast/Keyword;

    invoke-virtual {v6}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result v6

    if-ne v6, v7, :cond_7

    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    :goto_3
    const/16 v7, 0x133

    .line 497
    :try_start_0
    invoke-virtual {v0, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V
    :try_end_0
    .catch Ljavassist/compiler/NoFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v8

    .line 500
    invoke-virtual {v8}, Ljavassist/compiler/NoFieldException;->getExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v10

    if-ne v10, v0, :cond_a

    .line 504
    iput v7, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 505
    iput v3, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    .line 506
    invoke-virtual {v8}, Ljavassist/compiler/NoFieldException;->getField()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    const/4 v3, 0x1

    .line 510
    :goto_4
    iget v0, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    if-lez v0, :cond_8

    .line 511
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    const-string v1, "java.lang.Object"

    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v1

    goto :goto_5

    .line 512
    :cond_8
    iget v0, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    if-ne v0, v7, :cond_9

    .line 513
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavassist/compiler/MemberResolver;->lookupClassByJvmName(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    goto :goto_5

    .line 515
    :cond_9
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->badMethod()V

    :goto_5
    move v2, v3

    move v3, v6

    goto :goto_6

    .line 501
    :cond_a
    throw v8

    .line 518
    :cond_b
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->badMethod()V

    const/4 v2, 0x0

    :goto_6
    move-object v4, p1

    move v6, v2

    move v7, v3

    const/4 v8, -0x1

    move-object v3, v1

    goto :goto_7

    .line 521
    :cond_c
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->fatal()V

    move-object v3, v1

    move-object v4, v3

    const/4 v6, 0x0

    goto/16 :goto_1

    :goto_7
    move-object v2, p0

    .line 523
    invoke-virtual/range {v2 .. v9}, Ljavassist/compiler/MemberCodeGen;->atMethodCallCore(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/compiler/ast/ASTList;ZZILjavassist/compiler/MemberResolver$Method;)V

    return-void
.end method

.method protected atClassObject2(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 974
    invoke-virtual {p0}, Ljavassist/compiler/MemberCodeGen;->getMajorVersion()I

    move-result v0

    const/16 v1, 0x31

    if-ge v0, v1, :cond_0

    .line 975
    invoke-super {p0, p1}, Ljavassist/compiler/CodeGen;->atClassObject2(Ljava/lang/String;)V

    goto :goto_0

    .line 977
    :cond_0
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljavassist/bytecode/Bytecode;->addLdc(I)V

    :goto_0
    return-void
.end method

.method protected atFieldAssign(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Z)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    move-object v7, p0

    move/from16 v2, p2

    const/4 v0, 0x0

    move-object/from16 v1, p3

    .line 777
    invoke-virtual {p0, v1, v0}, Ljavassist/compiler/MemberCodeGen;->fieldAccess(Ljavassist/compiler/ast/ASTree;Z)Ljavassist/CtField;

    move-result-object v8

    .line 778
    iget-boolean v9, v7, Ljavassist/compiler/MemberCodeGen;->resultStatic:Z

    const/16 v10, 0x59

    const/16 v1, 0x3d

    if-eq v2, v1, :cond_0

    if-nez v9, :cond_0

    .line 780
    iget-object v3, v7, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v3, v10}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    :cond_0
    if-ne v2, v1, :cond_1

    .line 784
    invoke-virtual {v8}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v1

    .line 785
    invoke-direct {p0, v1}, Ljavassist/compiler/MemberCodeGen;->setFieldType(Ljavassist/bytecode/FieldInfo;)Z

    .line 786
    invoke-direct {p0, v8, v1}, Ljavassist/compiler/MemberCodeGen;->isAccessibleField(Ljavassist/CtField;Ljavassist/bytecode/FieldInfo;)Ljavassist/compiler/AccessorMaker;

    move-result-object v3

    if-nez v3, :cond_2

    .line 788
    invoke-direct {p0, v8, v1}, Ljavassist/compiler/MemberCodeGen;->addFieldrefInfo(Ljavassist/CtField;Ljavassist/bytecode/FieldInfo;)I

    move-result v0

    goto :goto_0

    .line 793
    :cond_1
    invoke-direct {p0, v8, v9}, Ljavassist/compiler/MemberCodeGen;->atFieldRead(Ljavassist/CtField;Z)I

    move-result v0

    :cond_2
    :goto_0
    move v11, v0

    .line 795
    iget v12, v7, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 796
    iget v13, v7, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    .line 797
    iget-object v14, v7, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move v4, v12

    move v5, v13

    move-object v6, v14

    .line 799
    invoke-virtual/range {v0 .. v6}, Ljavassist/compiler/MemberCodeGen;->atAssignCore(Ljavassist/compiler/ast/Expr;ILjavassist/compiler/ast/ASTree;IILjava/lang/String;)V

    .line 801
    invoke-static {v12, v13}, Ljavassist/compiler/MemberCodeGen;->is2word(II)Z

    move-result v0

    if-eqz p5, :cond_6

    if-eqz v9, :cond_3

    if-eqz v0, :cond_5

    const/16 v10, 0x5c

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    const/16 v1, 0x5d

    const/16 v10, 0x5d

    goto :goto_1

    :cond_4
    const/16 v1, 0x5a

    const/16 v10, 0x5a

    .line 809
    :cond_5
    :goto_1
    iget-object v1, v7, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1, v10}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 812
    :cond_6
    invoke-direct {p0, v8, v9, v11, v0}, Ljavassist/compiler/MemberCodeGen;->atFieldAssignCore(Ljavassist/CtField;ZIZ)V

    .line 814
    iput v12, v7, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 815
    iput v13, v7, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    .line 816
    iput-object v14, v7, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    return-void
.end method

.method protected atFieldPlusPlus(IZLjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/Expr;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 v0, 0x0

    .line 984
    invoke-virtual {p0, p3, v0}, Ljavassist/compiler/MemberCodeGen;->fieldAccess(Ljavassist/compiler/ast/ASTree;Z)Ljavassist/CtField;

    move-result-object p3

    .line 985
    iget-boolean v0, p0, Ljavassist/compiler/MemberCodeGen;->resultStatic:Z

    const/16 v1, 0x59

    if-nez v0, :cond_0

    .line 987
    iget-object v2, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 989
    :cond_0
    invoke-direct {p0, p3, v0}, Ljavassist/compiler/MemberCodeGen;->atFieldRead(Ljavassist/CtField;Z)I

    move-result v2

    .line 990
    iget v3, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 991
    iget v4, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    invoke-static {v3, v4}, Ljavassist/compiler/MemberCodeGen;->is2word(II)Z

    move-result v3

    if-eqz v0, :cond_1

    if-eqz v3, :cond_3

    const/16 v1, 0x5c

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    const/16 v1, 0x5d

    goto :goto_0

    :cond_2
    const/16 v1, 0x5a

    :cond_3
    :goto_0
    move v5, v1

    move-object v4, p0

    move v6, p5

    move v7, p1

    move v8, p2

    move-object v9, p4

    .line 999
    invoke-virtual/range {v4 .. v9}, Ljavassist/compiler/MemberCodeGen;->atPlusPlusCore(IZIZLjavassist/compiler/ast/Expr;)V

    .line 1000
    invoke-direct {p0, p3, v0, v2, v3}, Ljavassist/compiler/MemberCodeGen;->atFieldAssignCore(Ljavassist/CtField;ZIZ)V

    return-void
.end method

.method protected atFieldRead(Ljavassist/compiler/ast/ASTree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 v0, 0x1

    .line 854
    invoke-virtual {p0, p1, v0}, Ljavassist/compiler/MemberCodeGen;->fieldAccess(Ljavassist/compiler/ast/ASTree;Z)Ljavassist/CtField;

    move-result-object v0

    if-nez v0, :cond_0

    .line 856
    invoke-direct {p0, p1}, Ljavassist/compiler/MemberCodeGen;->atArrayLength(Ljavassist/compiler/ast/ASTree;)V

    return-void

    .line 860
    :cond_0
    iget-boolean p1, p0, Ljavassist/compiler/MemberCodeGen;->resultStatic:Z

    .line 861
    invoke-static {v0}, Ljavassist/compiler/TypeChecker;->getConstantFieldValue(Ljavassist/CtField;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    if-nez v1, :cond_1

    .line 863
    invoke-direct {p0, v0, p1}, Ljavassist/compiler/MemberCodeGen;->atFieldRead(Ljavassist/CtField;Z)I

    goto :goto_0

    .line 865
    :cond_1
    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 866
    invoke-virtual {v0}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavassist/compiler/MemberCodeGen;->setFieldType(Ljavassist/bytecode/FieldInfo;)Z

    :goto_0
    return-void
.end method

.method public atMember(Ljavassist/compiler/ast/Member;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 849
    invoke-virtual {p0, p1}, Ljavassist/compiler/MemberCodeGen;->atFieldRead(Ljavassist/compiler/ast/ASTree;)V

    return-void
.end method

.method public atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 718
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 719
    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 720
    iget v1, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    aput v1, p2, v0

    .line 721
    iget v1, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    aput v1, p3, v0

    .line 722
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    aput-object v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    .line 724
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public atMethodCallCore(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/compiler/ast/ASTList;ZZILjavassist/compiler/MemberResolver$Method;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    move-object v8, p0

    move-object v9, p2

    move-object v0, p3

    .line 542
    invoke-virtual {p0, p3}, Ljavassist/compiler/MemberCodeGen;->getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I

    move-result v1

    .line 543
    new-array v5, v1, [I

    .line 544
    new-array v6, v1, [I

    .line 545
    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x1

    if-nez p4, :cond_0

    if-eqz p7, :cond_0

    .line 547
    invoke-virtual/range {p7 .. p7}, Ljavassist/compiler/MemberResolver$Method;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 548
    iget-object v2, v8, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v3, 0x57

    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    move/from16 v10, p4

    .line 552
    :goto_0
    iget-object v2, v8, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->getStackDepth()I

    move-result v2

    .line 555
    invoke-virtual {p0, p3, v5, v6, v7}, Ljavassist/compiler/MemberCodeGen;->atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V

    .line 558
    iget-object v0, v8, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->getStackDepth()I

    move-result v0

    sub-int/2addr v0, v2

    add-int/lit8 v11, v0, 0x1

    if-nez p7, :cond_1

    .line 561
    iget-object v0, v8, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    iget-object v2, v8, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    iget-object v3, v8, Ljavassist/compiler/MemberCodeGen;->thisMethod:Ljavassist/bytecode/MethodInfo;

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Ljavassist/compiler/MemberResolver;->lookupMethod(Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljava/lang/String;[I[I[Ljava/lang/String;)Ljavassist/compiler/MemberResolver$Method;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object/from16 v7, p7

    :goto_1
    if-nez v7, :cond_3

    const-string v0, "<init>"

    .line 566
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "constructor not found"

    goto :goto_2

    .line 569
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    :goto_2
    new-instance v1, Ljavassist/compiler/CompileError;

    invoke-direct {v1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v10

    move/from16 v4, p5

    move/from16 v5, p6

    move v6, v11

    .line 575
    invoke-direct/range {v0 .. v7}, Ljavassist/compiler/MemberCodeGen;->atMethodCallCore2(Ljavassist/CtClass;Ljava/lang/String;ZZIILjavassist/compiler/MemberResolver$Method;)V

    return-void
.end method

.method protected atMultiNewArray(ILjavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 424
    invoke-virtual {p3}, Ljavassist/compiler/ast/ASTList;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-eqz p3, :cond_2

    .line 426
    invoke-virtual {p3}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 431
    invoke-virtual {v2, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 432
    iget v2, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    const/16 v3, 0x144

    if-ne v2, v3, :cond_1

    .line 425
    invoke-virtual {p3}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p3

    goto :goto_0

    .line 433
    :cond_1
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string p2, "bad type for array size"

    invoke-direct {p1, p2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 437
    :cond_2
    :goto_1
    iput p1, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 438
    iput v0, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    const/16 p3, 0x133

    if-ne p1, p3, :cond_3

    .line 440
    invoke-virtual {p0, p2}, Ljavassist/compiler/MemberCodeGen;->resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    .line 441
    iget-object p1, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    invoke-static {p1, v0}, Ljavassist/compiler/MemberCodeGen;->toJvmArrayName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 444
    :cond_3
    invoke-static {p1, v0}, Ljavassist/compiler/MemberCodeGen;->toJvmTypeName(II)Ljava/lang/String;

    move-result-object p1

    .line 446
    :goto_2
    iget-object p2, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p2, p1, v1}, Ljavassist/bytecode/Bytecode;->addMultiNewarray(Ljava/lang/String;I)I

    return-void
.end method

.method public atNewArrayExpr(Ljavassist/compiler/ast/NewExpr;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 312
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getArrayType()I

    move-result v0

    .line 313
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getArraySize()Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    .line 314
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getClassName()Ljavassist/compiler/ast/ASTList;

    move-result-object v2

    .line 315
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getInitializer()Ljavassist/compiler/ast/ArrayInit;

    move-result-object p1

    .line 316
    invoke-virtual {v1}, Ljavassist/compiler/ast/ASTList;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    if-nez p1, :cond_0

    .line 322
    invoke-virtual {p0, v0, v2, v1}, Ljavassist/compiler/MemberCodeGen;->atMultiNewArray(ILjavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)V

    return-void

    .line 318
    :cond_0
    new-instance p1, Ljavassist/compiler/CompileError;

    const-string v0, "sorry, multi-dimensional array initializer for new is not supported"

    invoke-direct {p1, v0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 326
    :cond_1
    invoke-virtual {v1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    const/16 v3, 0x2f

    .line 327
    invoke-static {v2, v3}, Ljavassist/compiler/ast/Declarator;->astToClassName(Ljavassist/compiler/ast/ASTList;C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p1}, Ljavassist/compiler/MemberCodeGen;->atNewArrayExpr2(ILjavassist/compiler/ast/ASTree;Ljava/lang/String;Ljavassist/compiler/ast/ArrayInit;)V

    return-void
.end method

.method public atNewExpr(Ljavassist/compiler/ast/NewExpr;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 293
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0, p1}, Ljavassist/compiler/MemberCodeGen;->atNewArrayExpr(Ljavassist/compiler/ast/NewExpr;)V

    goto :goto_0

    .line 296
    :cond_0
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getClassName()Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/compiler/MemberResolver;->lookupClassByName(Ljavassist/compiler/ast/ASTList;)Ljavassist/CtClass;

    move-result-object v3

    .line 297
    invoke-virtual {v3}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-virtual {p1}, Ljavassist/compiler/ast/NewExpr;->getArguments()Ljavassist/compiler/ast/ASTList;

    move-result-object v5

    .line 299
    iget-object p1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addNew(Ljava/lang/String;)V

    .line 300
    iget-object p1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v1, 0x59

    invoke-virtual {p1, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const-string v4, "<init>"

    move-object v2, p0

    .line 302
    invoke-virtual/range {v2 .. v9}, Ljavassist/compiler/MemberCodeGen;->atMethodCallCore(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/compiler/ast/ASTList;ZZILjavassist/compiler/MemberResolver$Method;)V

    const/16 p1, 0x133

    .line 305
    iput p1, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    const/4 p1, 0x0

    .line 306
    iput p1, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    .line 307
    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method protected atTryStmnt(Ljavassist/compiler/ast/Stmnt;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 190
    iget-object v1, v0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    .line 191
    invoke-virtual/range {p1 .. p1}, Ljavassist/compiler/ast/Stmnt;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    check-cast v2, Ljavassist/compiler/ast/Stmnt;

    if-nez v2, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljavassist/compiler/ast/Stmnt;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/compiler/ast/ASTree;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    check-cast v3, Ljavassist/compiler/ast/ASTList;

    .line 196
    invoke-virtual/range {p1 .. p1}, Ljavassist/compiler/ast/Stmnt;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    invoke-virtual {v4}, Ljavassist/compiler/ast/ASTree;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    invoke-virtual {v4}, Ljavassist/compiler/ast/ASTree;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    check-cast v4, Ljavassist/compiler/ast/Stmnt;

    .line 197
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 201
    new-instance v6, Ljavassist/compiler/MemberCodeGen$JsrHook;

    invoke-direct {v6, v0}, Ljavassist/compiler/MemberCodeGen$JsrHook;-><init>(Ljavassist/compiler/CodeGen;)V

    .line 203
    :cond_1
    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v7

    .line 204
    invoke-virtual {v2, v0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 205
    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v2

    if-eq v7, v2, :cond_9

    .line 209
    iget-boolean v8, v0, Ljavassist/compiler/MemberCodeGen;->hasReturned:Z

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    const/16 v10, 0xa7

    const/4 v11, 0x0

    if-eqz v8, :cond_2

    .line 211
    invoke-virtual {v1, v10}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 212
    new-instance v12, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-virtual {v1, v11}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 216
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljavassist/compiler/MemberCodeGen;->getMaxLocals()I

    move-result v12

    .line 217
    invoke-virtual {v0, v9}, Ljavassist/compiler/MemberCodeGen;->incMaxLocals(I)V

    :goto_0
    if-eqz v3, :cond_5

    .line 220
    invoke-virtual {v3}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v13

    check-cast v13, Ljavassist/compiler/ast/Pair;

    .line 221
    invoke-virtual {v3}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object v3

    .line 222
    invoke-virtual {v13}, Ljavassist/compiler/ast/Pair;->getLeft()Ljavassist/compiler/ast/ASTree;

    move-result-object v14

    check-cast v14, Ljavassist/compiler/ast/Declarator;

    .line 223
    invoke-virtual {v13}, Ljavassist/compiler/ast/Pair;->getRight()Ljavassist/compiler/ast/ASTree;

    move-result-object v13

    check-cast v13, Ljavassist/compiler/ast/Stmnt;

    .line 225
    invoke-virtual {v14, v12}, Ljavassist/compiler/ast/Declarator;->setLocalVar(I)V

    .line 227
    iget-object v15, v0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v14}, Ljavassist/compiler/ast/Declarator;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljavassist/compiler/MemberResolver;->lookupClassByJvmName(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v10

    .line 228
    invoke-virtual {v10}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljavassist/compiler/ast/Declarator;->setClassName(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v14

    invoke-virtual {v1, v7, v2, v14, v10}, Ljavassist/bytecode/Bytecode;->addExceptionHandler(IIILjavassist/CtClass;)V

    .line 230
    invoke-virtual {v1, v9}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 231
    invoke-virtual {v1, v12}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 232
    iput-boolean v11, v0, Ljavassist/compiler/MemberCodeGen;->hasReturned:Z

    if-eqz v13, :cond_3

    .line 234
    invoke-virtual {v13, v0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 236
    :cond_3
    iget-boolean v10, v0, Ljavassist/compiler/MemberCodeGen;->hasReturned:Z

    if-nez v10, :cond_4

    const/16 v10, 0xa7

    .line 237
    invoke-virtual {v1, v10}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 238
    new-instance v8, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v13

    invoke-direct {v8, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {v1, v11}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    const/4 v8, 0x1

    goto :goto_0

    :cond_4
    const/16 v10, 0xa7

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_7

    .line 245
    invoke-virtual {v6, v0}, Ljavassist/compiler/MemberCodeGen$JsrHook;->remove(Ljavassist/compiler/CodeGen;)V

    .line 247
    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v2

    .line 248
    invoke-virtual {v1, v7, v2, v2, v11}, Ljavassist/bytecode/Bytecode;->addExceptionHandler(IIII)V

    .line 249
    invoke-virtual {v1, v9}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 250
    invoke-virtual {v1, v12}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 251
    iput-boolean v11, v0, Ljavassist/compiler/MemberCodeGen;->hasReturned:Z

    .line 252
    invoke-virtual {v4, v0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 253
    iget-boolean v2, v0, Ljavassist/compiler/MemberCodeGen;->hasReturned:Z

    if-nez v2, :cond_6

    .line 254
    invoke-virtual {v1, v12}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    const/16 v2, 0xbf

    .line 255
    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 258
    :cond_6
    iget-object v2, v6, Ljavassist/compiler/MemberCodeGen$JsrHook;->jsrList:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v4}, Ljavassist/compiler/MemberCodeGen;->addFinally(Ljava/util/ArrayList;Ljavassist/compiler/ast/Stmnt;)V

    .line 261
    :cond_7
    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v1

    .line 262
    invoke-virtual {v0, v5, v1}, Ljavassist/compiler/MemberCodeGen;->patchGoto(Ljava/util/ArrayList;I)V

    xor-int/lit8 v1, v8, 0x1

    .line 263
    iput-boolean v1, v0, Ljavassist/compiler/MemberCodeGen;->hasReturned:Z

    if-eqz v4, :cond_8

    if-eqz v8, :cond_8

    .line 266
    invoke-virtual {v4, v0}, Ljavassist/compiler/ast/Stmnt;->accept(Ljavassist/compiler/ast/Visitor;)V

    :cond_8
    return-void

    .line 207
    :cond_9
    new-instance v1, Ljavassist/compiler/CompileError;

    const-string v2, "empty try block"

    invoke-direct {v1, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method protected fieldAccess(Ljavassist/compiler/ast/ASTree;Z)Ljavassist/CtField;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1010
    instance-of v0, p1, Ljavassist/compiler/ast/Member;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1011
    move-object p2, p1

    check-cast p2, Ljavassist/compiler/ast/Member;

    invoke-virtual {p2}, Ljavassist/compiler/ast/Member;->get()Ljava/lang/String;

    move-result-object p2

    .line 1014
    :try_start_0
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0, p2}, Ljavassist/CtClass;->getField(Ljava/lang/String;)Ljavassist/CtField;

    move-result-object p1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1021
    invoke-virtual {p1}, Ljavassist/CtField;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1023
    iget-boolean v2, p0, Ljavassist/compiler/MemberCodeGen;->inStaticMethod:Z

    if-nez v2, :cond_0

    .line 1027
    iget-object p2, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p2, v1}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    goto :goto_0

    .line 1024
    :cond_0
    new-instance p1, Ljavassist/compiler/CompileError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not available in a static method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1029
    :cond_1
    :goto_0
    iput-boolean v0, p0, Ljavassist/compiler/MemberCodeGen;->resultStatic:Z

    return-object p1

    .line 1018
    :catch_0
    new-instance v0, Ljavassist/compiler/NoFieldException;

    invoke-direct {v0, p2, p1}, Ljavassist/compiler/NoFieldException;-><init>(Ljava/lang/String;Ljavassist/compiler/ast/ASTree;)V

    throw v0

    .line 1032
    :cond_2
    instance-of v0, p1, Ljavassist/compiler/ast/Expr;

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 1033
    move-object v0, p1

    check-cast v0, Ljavassist/compiler/ast/Expr;

    .line 1034
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v3

    const/16 v4, 0x23

    const/4 v5, 0x1

    if-ne v3, v4, :cond_3

    .line 1040
    iget-object p1, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object p2

    check-cast p2, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {p2}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {p1, p2, v0}, Ljavassist/compiler/MemberResolver;->lookupField(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;)Ljavassist/CtField;

    move-result-object p1

    .line 1042
    iput-boolean v5, p0, Ljavassist/compiler/MemberCodeGen;->resultStatic:Z

    return-object p1

    :cond_3
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_8

    .line 1048
    :try_start_1
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 1053
    iget v1, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    const/16 v3, 0x133

    if-ne v1, v3, :cond_4

    iget v1, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    if-nez v1, :cond_4

    .line 1054
    iget-object p2, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    check-cast v2, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {p2, v1, v2}, Ljavassist/compiler/MemberResolver;->lookupFieldByJvmName(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;)Ljavassist/CtField;

    move-result-object v2

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 1056
    iget p2, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    if-lez p2, :cond_5

    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object p2

    check-cast p2, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {p2}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object p2

    const-string v1, "length"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    return-object v2

    .line 1060
    :cond_5
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->badLvalue()V

    .line 1062
    :goto_1
    invoke-virtual {v2}, Ljavassist/CtField;->getModifiers()I

    move-result p2

    invoke-static {p2}, Ljavassist/Modifier;->isStatic(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1064
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 v3, 0x57

    invoke-virtual {v1, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1066
    :cond_6
    iput-boolean p2, p0, Ljavassist/compiler/MemberCodeGen;->resultStatic:Z
    :try_end_1
    .catch Ljavassist/compiler/NoFieldException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    move-exception p2

    .line 1070
    invoke-virtual {p2}, Ljavassist/compiler/NoFieldException;->getExpr()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    if-ne v1, v2, :cond_7

    .line 1077
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    check-cast v0, Ljavassist/compiler/ast/Symbol;

    .line 1078
    invoke-virtual {p2}, Ljavassist/compiler/NoFieldException;->getField()Ljava/lang/String;

    move-result-object p2

    .line 1079
    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v1, p2, v0, p1}, Ljavassist/compiler/MemberResolver;->lookupFieldByJvmName2(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;Ljavassist/compiler/ast/ASTree;)Ljavassist/CtField;

    move-result-object p1

    .line 1080
    iput-boolean v5, p0, Ljavassist/compiler/MemberCodeGen;->resultStatic:Z

    return-object p1

    .line 1071
    :cond_7
    throw p2

    .line 1085
    :cond_8
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->badLvalue()V

    goto :goto_2

    .line 1088
    :cond_9
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->badLvalue()V

    .line 1090
    :goto_2
    iput-boolean v1, p0, Ljavassist/compiler/MemberCodeGen;->resultStatic:Z

    return-object v2
.end method

.method protected getAccessibleConstructor(Ljava/lang/String;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 688
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    invoke-direct {p0, p2, v0}, Ljavassist/compiler/MemberCodeGen;->isEnclosing(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {p2}, Ljavassist/CtClass;->getAccessorMaker()Ljavassist/compiler/AccessorMaker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {v0, p2, p1, p3}, Ljavassist/compiler/AccessorMaker;->getConstructor(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 694
    :cond_0
    new-instance p1, Ljavassist/compiler/CompileError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "the called constructor is private in "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getAccessiblePrivate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 664
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    invoke-direct {p0, p5, v0}, Ljavassist/compiler/MemberCodeGen;->isEnclosing(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {p5}, Ljavassist/CtClass;->getAccessorMaker()Ljavassist/compiler/AccessorMaker;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 667
    invoke-virtual {p5, p1, p2, p3, p4}, Ljavassist/compiler/AccessorMaker;->getMethodAccessor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 671
    :cond_0
    new-instance p2, Ljavassist/compiler/CompileError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Method "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " is private"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getMajorVersion()I
    .locals 1

    .line 46
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    sget v0, Ljavassist/bytecode/ClassFile;->MAJOR_VERSION:I

    return v0

    .line 50
    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getMajorVersion()I

    move-result v0

    return v0
.end method

.method public getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I
    .locals 0

    .line 711
    invoke-static {p1}, Ljavassist/compiler/ast/ASTList;->length(Ljavassist/compiler/ast/ASTList;)I

    move-result p1

    return p1
.end method

.method protected getSuperName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->getSuperclass(Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThisClass()Ljavassist/CtClass;
    .locals 1

    .line 62
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    return-object v0
.end method

.method protected getThisName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected insertDefaultSuperCall()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 81
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    iget-object v1, p0, Ljavassist/compiler/MemberCodeGen;->thisClass:Ljavassist/CtClass;

    invoke-static {v1}, Ljavassist/compiler/MemberResolver;->getSuperclass(Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v1

    const-string v2, "<init>"

    const-string v3, "()V"

    invoke-virtual {v0, v1, v2, v3}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public makeParamList(Ljavassist/compiler/ast/MethodDecl;)[Ljavassist/CtClass;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1100
    invoke-virtual {p1}, Ljavassist/compiler/ast/MethodDecl;->getParams()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljavassist/CtClass;

    goto :goto_1

    .line 1105
    :cond_0
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->length()I

    move-result v1

    new-array v1, v1, [Ljavassist/CtClass;

    :goto_0
    if-eqz p1, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 1107
    iget-object v3, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    check-cast v4, Ljavassist/compiler/ast/Declarator;

    invoke-virtual {v3, v4}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljavassist/compiler/ast/Declarator;)Ljavassist/CtClass;

    move-result-object v3

    aput-object v3, v1, v0

    .line 1108
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_1
    return-object p1
.end method

.method public makeThrowsList(Ljavassist/compiler/ast/MethodDecl;)[Ljavassist/CtClass;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1117
    invoke-virtual {p1}, Ljavassist/compiler/ast/MethodDecl;->getThrows()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 1122
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->length()I

    move-result v1

    new-array v1, v1, [Ljavassist/CtClass;

    :goto_0
    if-eqz p1, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 1124
    iget-object v3, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    check-cast v4, Ljavassist/compiler/ast/ASTList;

    invoke-virtual {v3, v4}, Ljavassist/compiler/MemberResolver;->lookupClassByName(Ljavassist/compiler/ast/ASTList;)Ljavassist/CtClass;

    move-result-object v3

    aput-object v3, v1, v0

    .line 1125
    invoke-virtual {p1}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p1

    move v0, v2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected resolveClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1145
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v0, p1}, Ljavassist/compiler/MemberResolver;->resolveJvmClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1138
    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->resolver:Ljavassist/compiler/MemberResolver;

    invoke-virtual {v0, p1}, Ljavassist/compiler/MemberResolver;->resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method setReturnType(Ljava/lang/String;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/16 v0, 0x29

    .line 731
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 733
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->badMethod()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 735
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x5b

    if-ne v1, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 739
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 742
    :cond_1
    iput v2, p0, Ljavassist/compiler/MemberCodeGen;->arrayDim:I

    const/16 v3, 0x4c

    if-ne v1, v3, :cond_3

    const/16 v1, 0x3b

    add-int/lit8 v0, v0, 0x1

    .line 744
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_2

    .line 746
    invoke-static {}, Ljavassist/compiler/MemberCodeGen;->badMethod()V

    :cond_2
    const/16 v3, 0x133

    .line 748
    iput v3, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    .line 749
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    goto :goto_1

    .line 752
    :cond_3
    invoke-static {v1}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result p1

    iput p1, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    const/4 p1, 0x0

    .line 753
    iput-object p1, p0, Ljavassist/compiler/MemberCodeGen;->className:Ljava/lang/String;

    .line 756
    :goto_1
    iget p1, p0, Ljavassist/compiler/MemberCodeGen;->exprType:I

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    .line 759
    invoke-static {p1, v2}, Ljavassist/compiler/MemberCodeGen;->is2word(II)Z

    move-result p2

    const/16 p3, 0x57

    if-eqz p2, :cond_4

    .line 760
    iget-object p1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 p2, 0x5d

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 761
    iget-object p1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 p2, 0x58

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 762
    iget-object p1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, p3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_2

    :cond_4
    const/16 p2, 0x158

    if-ne p1, p2, :cond_5

    .line 765
    iget-object p1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, p3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_2

    .line 767
    :cond_5
    iget-object p1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    const/16 p2, 0x5f

    invoke-virtual {p1, p2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 768
    iget-object p1, p0, Ljavassist/compiler/MemberCodeGen;->bytecode:Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1, p3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setThisMethod(Ljavassist/CtMethod;)V
    .locals 1

    .line 57
    invoke-virtual {p1}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object p1

    iput-object p1, p0, Ljavassist/compiler/MemberCodeGen;->thisMethod:Ljavassist/bytecode/MethodInfo;

    .line 58
    iget-object p1, p0, Ljavassist/compiler/MemberCodeGen;->typeChecker:Ljavassist/compiler/TypeChecker;

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Ljavassist/compiler/MemberCodeGen;->typeChecker:Ljavassist/compiler/TypeChecker;

    iget-object v0, p0, Ljavassist/compiler/MemberCodeGen;->thisMethod:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p1, v0}, Ljavassist/compiler/TypeChecker;->setThisMethod(Ljavassist/bytecode/MethodInfo;)V

    :cond_0
    return-void
.end method
