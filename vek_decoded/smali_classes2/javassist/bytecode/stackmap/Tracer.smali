.class public abstract Ljavassist/bytecode/stackmap/Tracer;
.super Ljava/lang/Object;
.source "Tracer.java"

# interfaces
.implements Ljavassist/bytecode/stackmap/TypeTag;


# instance fields
.field protected classPool:Ljavassist/ClassPool;

.field protected cpool:Ljavassist/bytecode/ConstPool;

.field protected localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

.field protected returnType:Ljava/lang/String;

.field protected stackTop:I

.field protected stackTypes:[Ljavassist/bytecode/stackmap/TypeData;


# direct methods
.method public constructor <init>(Ljavassist/ClassPool;Ljavassist/bytecode/ConstPool;IILjava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    .line 43
    iput-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    .line 44
    iput-object p5, p0, Ljavassist/bytecode/stackmap/Tracer;->returnType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 46
    new-array p1, p3, [Ljavassist/bytecode/stackmap/TypeData;

    iput-object p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 47
    new-array p1, p4, [Ljavassist/bytecode/stackmap/TypeData;

    iput-object p1, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/stackmap/Tracer;Z)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget-object v0, p1, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    iput-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    .line 52
    iget-object v0, p1, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    iput-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    .line 53
    iget-object v0, p1, Ljavassist/bytecode/stackmap/Tracer;->returnType:Ljava/lang/String;

    iput-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->returnType:Ljava/lang/String;

    .line 55
    iget v0, p1, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 56
    iget-object v0, p1, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    array-length v0, v0

    .line 57
    new-array v0, v0, [Ljavassist/bytecode/stackmap/TypeData;

    iput-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    if-eqz p2, :cond_0

    .line 59
    iget p2, p1, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    iget-object v1, p1, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    invoke-static {p2, v1, v0}, Ljavassist/bytecode/stackmap/Tracer;->copyFrom(I[Ljavassist/bytecode/stackmap/TypeData;[Ljavassist/bytecode/stackmap/TypeData;)I

    .line 61
    :cond_0
    iget-object p2, p1, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    array-length p2, p2

    .line 62
    new-array v0, p2, [Ljavassist/bytecode/stackmap/TypeData;

    iput-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 63
    iget-object p1, p1, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    invoke-static {p2, p1, v0}, Ljavassist/bytecode/stackmap/Tracer;->copyFrom(I[Ljavassist/bytecode/stackmap/TypeData;[Ljavassist/bytecode/stackmap/TypeData;)I

    return-void
.end method

.method private checkParamTypes(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 889
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, p2

    :goto_0
    const/16 v4, 0x5b

    if-ne v0, v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 897
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x4c

    if-ne v0, v4, :cond_3

    const/16 v5, 0x3b

    .line 901
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/2addr v3, v2

    if-lez v3, :cond_2

    goto :goto_1

    .line 903
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "bad descriptor"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    add-int/2addr v3, v2

    .line 908
    :goto_1
    invoke-direct {p0, p1, v3}, Ljavassist/bytecode/stackmap/Tracer;->checkParamTypes(Ljava/lang/String;I)V

    if-nez v1, :cond_5

    const/16 v5, 0x4a

    if-eq v0, v5, :cond_4

    const/16 v5, 0x44

    if-ne v0, v5, :cond_5

    .line 910
    :cond_4
    iget v5, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v5, v5, -0x2

    iput v5, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto :goto_2

    .line 912
    :cond_5
    iget v5, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v5, v2

    iput v5, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    :goto_2
    if-eqz v1, :cond_6

    .line 915
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object v0, v0, v1

    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-static {v0, p1, p2}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljavassist/bytecode/stackmap/TypeData;Ljava/lang/String;Ljavassist/ClassPool;)V

    goto :goto_3

    :cond_6
    if-ne v0, v4, :cond_7

    .line 918
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object v0, v0, v1

    add-int/2addr p2, v2

    sub-int/2addr v3, v2

    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-static {v0, p1, p2}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljavassist/bytecode/stackmap/TypeData;Ljava/lang/String;Ljavassist/ClassPool;)V

    :cond_7
    :goto_3
    return-void
.end method

.method protected static copyFrom(I[Ljavassist/bytecode/stackmap/TypeData;[Ljavassist/bytecode/stackmap/TypeData;)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_3

    .line 69
    aget-object v2, p1, v1

    .line 70
    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    if-ne v2, v3, :cond_0

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljavassist/bytecode/stackmap/TypeData;->getSelf()Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v3

    :goto_1
    aput-object v3, p2, v1

    .line 71
    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    if-eq v2, v3, :cond_2

    .line 72
    invoke-virtual {v2}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private doALOAD(I)I
    .locals 3

    .line 313
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    iget-object v2, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object p1, v2, p1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    return p1
.end method

.method private doASTORE(I)I
    .locals 3

    .line 451
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 453
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget-object v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData;->copy()Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v0

    aput-object v0, v1, p1

    const/4 p1, 0x2

    return p1
.end method

.method private doDUP_XX(II)V
    .locals 4

    .line 458
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 459
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, v1, -0x1

    sub-int p2, v1, p2

    :goto_0
    if-le v1, p2, :cond_0

    add-int v2, v1, p1

    .line 462
    aget-object v3, v0, v1

    aput-object v3, v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private doGetField(I[BZ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x1

    .line 760
    invoke-static {p2, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    .line 761
    invoke-direct {p0, p3, p1}, Ljavassist/bytecode/stackmap/Tracer;->setFieldTarget(ZI)V

    .line 762
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {p2, p1}, Ljavassist/bytecode/ConstPool;->getFieldrefType(I)Ljava/lang/String;

    move-result-object p1

    .line 763
    invoke-direct {p0, p1}, Ljavassist/bytecode/stackmap/Tracer;->pushMemberType(Ljava/lang/String;)V

    const/4 p1, 0x3

    return p1
.end method

.method private doInvokeIntfMethod(I[B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 834
    invoke-static {p2, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    .line 835
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {p2, p1}, Ljavassist/bytecode/ConstPool;->getInterfaceMethodrefType(I)Ljava/lang/String;

    move-result-object p2

    .line 836
    invoke-direct {p0, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->checkParamTypes(Ljava/lang/String;I)V

    .line 837
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, p1}, Ljavassist/bytecode/ConstPool;->getInterfaceMethodrefClassName(I)Ljava/lang/String;

    move-result-object p1

    .line 838
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v2, v0

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object v0, v1, v2

    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-static {v0, p1, v1}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljavassist/bytecode/stackmap/TypeData;Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 839
    invoke-direct {p0, p2}, Ljavassist/bytecode/stackmap/Tracer;->pushMemberType(Ljava/lang/String;)V

    const/4 p1, 0x5

    return p1
.end method

.method private doInvokeMethod(I[BZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 821
    invoke-static {p2, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    .line 822
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {p2, p1}, Ljavassist/bytecode/ConstPool;->getMethodrefType(I)Ljava/lang/String;

    move-result-object p2

    .line 823
    invoke-direct {p0, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->checkParamTypes(Ljava/lang/String;I)V

    if-eqz p3, :cond_0

    .line 825
    iget-object p3, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {p3, p1}, Ljavassist/bytecode/ConstPool;->getMethodrefClassName(I)Ljava/lang/String;

    move-result-object p1

    .line 826
    iget-object p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v1, v0

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object p3, p3, v1

    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-static {p3, p1, v0}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljavassist/bytecode/stackmap/TypeData;Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 829
    :cond_0
    invoke-direct {p0, p2}, Ljavassist/bytecode/stackmap/Tracer;->pushMemberType(Ljava/lang/String;)V

    const/4 p1, 0x3

    return p1
.end method

.method private doLDC(I)V
    .locals 3

    .line 277
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 278
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, p1}, Ljavassist/bytecode/ConstPool;->getTag(I)I

    move-result p1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 280
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    new-instance v1, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    const-string v2, "java.lang.String"

    invoke-direct {v1, v2}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 282
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v1, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v1, v0, p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 284
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v1, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v1, v0, p1

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 286
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v1, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v1, v0, p1

    .line 287
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v1, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v1, v0, p1

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    if-ne p1, v1, :cond_4

    .line 290
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v1, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v1, v0, p1

    .line 291
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v1, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v1, v0, p1

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    if-ne p1, v1, :cond_5

    .line 294
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    new-instance v1, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    const-string v2, "java.lang.Class"

    invoke-direct {v1, v2}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, p1

    :goto_0
    return-void

    .line 296
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad LDC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doMultiANewArray(I[B)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 811
    invoke-static {p2, v0}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x3

    .line 812
    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    .line 813
    iget p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p1, p1, -0x1

    sub-int/2addr p2, p1

    iput p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 815
    iget-object p1, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x2e

    const/16 v0, 0x2f

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 816
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v0, v0, -0x1

    new-instance v1, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-direct {v1, p1}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v1, p2, v0

    const/4 p1, 0x4

    return p1
.end method

.method private doNEWARRAY(I[B)I
    .locals 2

    .line 775
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p1, p1, 0x1

    .line 777
    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    packed-switch p1, :pswitch_data_0

    .line 803
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "bad newarray"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const-string p1, "[J"

    goto :goto_0

    :pswitch_1
    const-string p1, "[I"

    goto :goto_0

    :pswitch_2
    const-string p1, "[S"

    goto :goto_0

    :pswitch_3
    const-string p1, "[B"

    goto :goto_0

    :pswitch_4
    const-string p1, "[D"

    goto :goto_0

    :pswitch_5
    const-string p1, "[F"

    goto :goto_0

    :pswitch_6
    const-string p1, "[C"

    goto :goto_0

    :pswitch_7
    const-string p1, "[Z"

    .line 806
    :goto_0
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    new-instance v1, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-direct {v1, p1}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v1, p2, v0

    const/4 p1, 0x2

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doOpcode0_53(I[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch p3, :pswitch_data_0

    .line 270
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "fatal"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 267
    :pswitch_0
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p1, v3

    iput p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p1, v3

    sget-object p2, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p2, v0, p1

    goto/16 :goto_1

    .line 256
    :pswitch_1
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p1, v3

    iput p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p1, v3

    .line 257
    aget-object p2, v0, p1

    if-eqz p2, :cond_0

    .line 258
    invoke-virtual {p2}, Ljavassist/bytecode/stackmap/TypeData;->isObjectType()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 261
    new-instance p3, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;

    invoke-direct {p3, p2}, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;-><init>(Ljavassist/bytecode/stackmap/TypeData;)V

    aput-object p3, v0, p1

    goto/16 :goto_1

    .line 259
    :cond_0
    new-instance p1, Ljavassist/bytecode/BadBytecode;

    const-string p2, "bad AALOAD"

    invoke-direct {p1, p2}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw p1

    .line 252
    :pswitch_2
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p1, v2

    sget-object p2, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p2, v0, p1

    .line 253
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p1, v3

    sget-object p2, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p2, v0, p1

    goto/16 :goto_1

    .line 249
    :pswitch_3
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p1, v3

    iput p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p1, v3

    sget-object p2, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p2, v0, p1

    goto/16 :goto_1

    .line 245
    :pswitch_4
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p1, v2

    sget-object p2, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p2, v0, p1

    .line 246
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p1, v3

    sget-object p2, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p2, v0, p1

    goto/16 :goto_1

    .line 242
    :pswitch_5
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p1, v3

    iput p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p1, v3

    sget-object p2, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p2, v0, p1

    goto/16 :goto_1

    :pswitch_6
    add-int/lit8 p3, p3, -0x2a

    .line 239
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object p2, p2, p3

    aput-object p2, v0, p1

    goto/16 :goto_1

    .line 231
    :pswitch_7
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object p2, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p2, v0, p1

    .line 232
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object p2, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p2, v0, p1

    goto/16 :goto_1

    .line 225
    :pswitch_8
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object p2, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p2, v0, p1

    goto/16 :goto_1

    .line 218
    :pswitch_9
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object p2, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p2, v0, p1

    .line 219
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object p2, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p2, v0, p1

    goto/16 :goto_1

    .line 212
    :pswitch_a
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object p2, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p2, v0, p1

    goto/16 :goto_1

    :pswitch_b
    add-int/2addr p1, v3

    .line 207
    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, p1}, Ljavassist/bytecode/stackmap/Tracer;->doALOAD(I)I

    move-result p1

    return p1

    .line 205
    :pswitch_c
    sget-object p3, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p3, p2, p1}, Ljavassist/bytecode/stackmap/Tracer;->doXLOAD(Ljavassist/bytecode/stackmap/TypeData;[BI)I

    move-result p1

    return p1

    .line 203
    :pswitch_d
    sget-object p3, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p3, p2, p1}, Ljavassist/bytecode/stackmap/Tracer;->doXLOAD(Ljavassist/bytecode/stackmap/TypeData;[BI)I

    move-result p1

    return p1

    .line 201
    :pswitch_e
    sget-object p3, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p3, p2, p1}, Ljavassist/bytecode/stackmap/Tracer;->doXLOAD(Ljavassist/bytecode/stackmap/TypeData;[BI)I

    move-result p1

    return p1

    .line 199
    :pswitch_f
    sget-object p3, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p3, p2, p1}, Ljavassist/bytecode/stackmap/Tracer;->doXLOAD(Ljavassist/bytecode/stackmap/TypeData;[BI)I

    move-result p1

    return p1

    :pswitch_10
    add-int/2addr p1, v3

    .line 196
    invoke-static {p2, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    invoke-direct {p0, p1}, Ljavassist/bytecode/stackmap/Tracer;->doLDC(I)V

    return v1

    :pswitch_11
    add-int/2addr p1, v3

    .line 192
    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, p1}, Ljavassist/bytecode/stackmap/Tracer;->doLDC(I)V

    return v2

    .line 189
    :pswitch_12
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object p2, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p2, v0, p1

    const/16 p1, 0x11

    if-ne p3, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    return v1

    .line 184
    :pswitch_13
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object p2, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p2, v0, p1

    .line 185
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object p2, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p2, v0, p1

    goto :goto_1

    .line 180
    :pswitch_14
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object p2, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p2, v0, p1

    goto :goto_1

    .line 174
    :pswitch_15
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object p2, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p2, v0, p1

    .line 175
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object p2, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p2, v0, p1

    goto :goto_1

    .line 170
    :pswitch_16
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object p2, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p2, v0, p1

    goto :goto_1

    .line 161
    :pswitch_17
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    new-instance p2, Ljavassist/bytecode/stackmap/TypeData$NullType;

    invoke-direct {p2}, Ljavassist/bytecode/stackmap/TypeData$NullType;-><init>()V

    aput-object p2, v0, p1

    :goto_1
    :pswitch_18
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private doOpcode148_201(I[BI)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_1

    .line 681
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitJSR(I[B)V

    return v0

    :pswitch_1
    add-int/lit8 p3, p1, 0x1

    .line 678
    invoke-static {p2, p3}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Ljavassist/bytecode/stackmap/Tracer;->visitGoto(I[BI)V

    return v0

    .line 674
    :pswitch_2
    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, v4

    iput p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p3, p1, 0x1

    .line 675
    invoke-static {p2, p3}, Ljavassist/bytecode/ByteArray;->readS16bit([BI)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Ljavassist/bytecode/stackmap/Tracer;->visitBranch(I[BI)V

    return v3

    .line 671
    :pswitch_3
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->doMultiANewArray(I[B)I

    move-result p1

    return p1

    .line 669
    :pswitch_4
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE(I[B)I

    move-result p1

    return p1

    .line 665
    :pswitch_5
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p1, v4

    iput p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto/16 :goto_1

    .line 661
    :pswitch_6
    iget-object p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p2, v4

    sget-object p3, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p3, p1, p2

    return v3

    :pswitch_7
    add-int/2addr p1, v4

    .line 656
    invoke-static {p2, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    .line 657
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, v4

    new-instance v0, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, p1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v0, p2, p3

    return v3

    .line 651
    :pswitch_8
    iget-object p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v0, v4

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object p3, p3, v0

    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    const-string v1, "java.lang.Throwable"

    invoke-static {p3, v1, v0}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljavassist/bytecode/stackmap/TypeData;Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 652
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitThrow(I[B)V

    goto/16 :goto_1

    .line 647
    :pswitch_9
    iget-object p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p2, v4

    aget-object p1, p1, p2

    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    const-string p3, "[Ljava.lang.Object;"

    invoke-static {p1, p3, p2}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljavassist/bytecode/stackmap/TypeData;Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 648
    iget-object p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p2, v4

    sget-object p3, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p3, p1, p2

    goto/16 :goto_1

    :pswitch_a
    add-int/2addr p1, v4

    .line 636
    invoke-static {p2, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    .line 637
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {p2, p1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x2e

    const/16 p3, 0x2f

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 638
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 p3, 0x5b

    if-ne p2, p3, :cond_0

    .line 639
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 641
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[L"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ";"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 643
    :goto_0
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, v4

    new-instance v0, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-direct {v0, p1}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v0, p2, p3

    return v3

    .line 634
    :pswitch_b
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->doNEWARRAY(I[B)I

    move-result p1

    return p1

    :pswitch_c
    add-int/lit8 p3, p1, 0x1

    .line 629
    invoke-static {p2, p3}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p2

    .line 630
    iget-object p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    new-instance v1, Ljavassist/bytecode/stackmap/TypeData$UninitData;

    iget-object v2, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v2, p2}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Ljavassist/bytecode/stackmap/TypeData$UninitData;-><init>(ILjava/lang/String;)V

    aput-object v1, p3, v0

    return v3

    .line 627
    :pswitch_d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "bad opcode 186"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 625
    :pswitch_e
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->doInvokeIntfMethod(I[B)I

    move-result p1

    return p1

    .line 623
    :pswitch_f
    invoke-direct {p0, p1, p2, v1}, Ljavassist/bytecode/stackmap/Tracer;->doInvokeMethod(I[BZ)I

    move-result p1

    return p1

    .line 621
    :pswitch_10
    invoke-direct {p0, p1, p2, v4}, Ljavassist/bytecode/stackmap/Tracer;->doInvokeMethod(I[BZ)I

    move-result p1

    return p1

    .line 618
    :pswitch_11
    invoke-direct {p0, p1, p2, v4}, Ljavassist/bytecode/stackmap/Tracer;->doPutField(I[BZ)I

    move-result p1

    return p1

    .line 616
    :pswitch_12
    invoke-direct {p0, p1, p2, v4}, Ljavassist/bytecode/stackmap/Tracer;->doGetField(I[BZ)I

    move-result p1

    return p1

    .line 614
    :pswitch_13
    invoke-direct {p0, p1, p2, v1}, Ljavassist/bytecode/stackmap/Tracer;->doPutField(I[BZ)I

    move-result p1

    return p1

    .line 612
    :pswitch_14
    invoke-direct {p0, p1, p2, v1}, Ljavassist/bytecode/stackmap/Tracer;->doGetField(I[BZ)I

    move-result p1

    return p1

    .line 609
    :pswitch_15
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitReturn(I[B)V

    goto/16 :goto_1

    .line 605
    :pswitch_16
    iget-object p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v0, v4

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object p3, p3, v0

    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->returnType:Ljava/lang/String;

    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-static {p3, v0, v1}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljavassist/bytecode/stackmap/TypeData;Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 606
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitReturn(I[B)V

    goto/16 :goto_1

    .line 601
    :pswitch_17
    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, v2

    iput p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 602
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitReturn(I[B)V

    goto/16 :goto_1

    .line 597
    :pswitch_18
    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, v4

    iput p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 598
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitReturn(I[B)V

    goto/16 :goto_1

    .line 593
    :pswitch_19
    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, v2

    iput p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 594
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitReturn(I[B)V

    goto/16 :goto_1

    .line 589
    :pswitch_1a
    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, v4

    iput p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 590
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitReturn(I[B)V

    goto/16 :goto_1

    .line 583
    :pswitch_1b
    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, v4

    iput p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    and-int/lit8 p3, p1, -0x4

    add-int/lit8 p3, p3, 0x8

    .line 585
    invoke-static {p2, p3}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v0

    add-int/lit8 v8, p3, 0x4

    add-int/lit8 p3, p3, -0x4

    .line 586
    invoke-static {p2, p3}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v9

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move v7, v0

    invoke-virtual/range {v4 .. v9}, Ljavassist/bytecode/stackmap/Tracer;->visitLookupSwitch(I[BIII)V

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0xc

    and-int/2addr p1, v3

    sub-int/2addr v0, p1

    return v0

    .line 575
    :pswitch_1c
    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, v4

    iput p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    and-int/lit8 p3, p1, -0x4

    add-int/lit8 p3, p3, 0x8

    .line 577
    invoke-static {p2, p3}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v0

    add-int/lit8 v1, p3, 0x4

    .line 578
    invoke-static {p2, v1}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v1

    sub-int/2addr v1, v0

    add-int/2addr v1, v4

    add-int/lit8 v9, p3, 0x8

    add-int/lit8 p3, p3, -0x4

    .line 580
    invoke-static {p2, p3}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v10

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    move v8, v1

    invoke-virtual/range {v5 .. v10}, Ljavassist/bytecode/stackmap/Tracer;->visitTableSwitch(I[BIII)V

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x10

    and-int/2addr p1, v3

    sub-int/2addr v1, p1

    return v1

    .line 572
    :pswitch_1d
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitRET(I[B)V

    return v2

    .line 569
    :pswitch_1e
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitJSR(I[B)V

    return v3

    :pswitch_1f
    add-int/lit8 p3, p1, 0x1

    .line 566
    invoke-static {p2, p3}, Ljavassist/bytecode/ByteArray;->readS16bit([BI)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Ljavassist/bytecode/stackmap/Tracer;->visitGoto(I[BI)V

    return v3

    .line 562
    :pswitch_20
    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, v2

    iput p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p3, p1, 0x1

    .line 563
    invoke-static {p2, p3}, Ljavassist/bytecode/ByteArray;->readS16bit([BI)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Ljavassist/bytecode/stackmap/Tracer;->visitBranch(I[BI)V

    return v3

    .line 551
    :pswitch_21
    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, v4

    iput p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p3, p1, 0x1

    .line 552
    invoke-static {p2, p3}, Ljavassist/bytecode/ByteArray;->readS16bit([BI)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Ljavassist/bytecode/stackmap/Tracer;->visitBranch(I[BI)V

    return v3

    .line 542
    :pswitch_22
    iget-object p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p2, p2, -0x4

    sget-object p3, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p3, p1, p2

    .line 543
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p1, v3

    iput p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto :goto_1

    .line 538
    :pswitch_23
    iget-object p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p2, v4

    iput p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p2, v4

    sget-object p3, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p3, p1, p2

    goto :goto_1

    .line 533
    :pswitch_24
    iget-object p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p2, p2, -0x4

    sget-object p3, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p3, p1, p2

    .line 534
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p1, v3

    iput p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    :goto_1
    return v4

    :pswitch_data_0
    .packed-switch 0x94
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_22
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doOpcode54_95(I[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 319
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch p3, :pswitch_data_0

    .line 428
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "fatal"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 422
    :pswitch_0
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p1, v4

    .line 423
    aget-object p2, v1, p1

    add-int/lit8 p3, p1, -0x1

    .line 424
    aget-object v0, v1, p3

    aput-object v0, v1, p1

    .line 425
    aput-object p2, v1, p3

    goto/16 :goto_0

    :pswitch_1
    add-int/lit8 p3, p3, -0x5d

    add-int/2addr p3, v2

    .line 415
    invoke-direct {p0, v3, p3}, Ljavassist/bytecode/stackmap/Tracer;->doDUP_XX(II)V

    .line 416
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int p2, p1, p3

    .line 417
    aget-object p3, v1, p1

    aput-object p3, v1, p2

    add-int/2addr p2, v4

    add-int/lit8 p3, p1, 0x1

    .line 418
    aget-object p3, v1, p3

    aput-object p3, v1, p2

    add-int/2addr p1, v3

    .line 419
    iput p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto/16 :goto_0

    .line 409
    :pswitch_2
    invoke-direct {p0, v3, v3}, Ljavassist/bytecode/stackmap/Tracer;->doDUP_XX(II)V

    .line 410
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/2addr p1, v3

    iput p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto/16 :goto_0

    :pswitch_3
    add-int/lit8 p3, p3, -0x5a

    add-int/2addr p3, v3

    .line 403
    invoke-direct {p0, v4, p3}, Ljavassist/bytecode/stackmap/Tracer;->doDUP_XX(II)V

    .line 404
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int p2, p1, p3

    .line 405
    aget-object p3, v1, p1

    aput-object p3, v1, p2

    add-int/2addr p1, v4

    .line 406
    iput p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto/16 :goto_0

    .line 396
    :pswitch_4
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p2, p1, -0x1

    .line 397
    aget-object p2, v1, p2

    aput-object p2, v1, p1

    add-int/2addr p1, v4

    .line 398
    iput p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto/16 :goto_0

    .line 393
    :pswitch_5
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p1, v3

    iput p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto/16 :goto_0

    .line 390
    :pswitch_6
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p1, v4

    iput p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto/16 :goto_0

    .line 387
    :pswitch_7
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p1, v2

    iput p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto :goto_0

    .line 379
    :pswitch_8
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p2, p1, -0x1

    aget-object p2, v1, p2

    sub-int/2addr p1, v2

    aget-object p1, v1, p1

    invoke-virtual {p1}, Ljavassist/bytecode/stackmap/TypeData;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->getElementType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-static {p2, p1, p3}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljavassist/bytecode/stackmap/TypeData;Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 382
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p1, v2

    iput p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto :goto_0

    .line 376
    :pswitch_9
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    const/16 p2, 0x50

    if-eq p3, p2, :cond_0

    const/16 p2, 0x52

    if-ne p3, p2, :cond_1

    :cond_0
    const/4 v2, 0x4

    :cond_1
    sub-int/2addr p1, v2

    iput p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto :goto_0

    :pswitch_a
    add-int/lit8 p3, p3, -0x4b

    .line 370
    invoke-direct {p0, p3}, Ljavassist/bytecode/stackmap/Tracer;->doASTORE(I)I

    goto :goto_0

    :pswitch_b
    add-int/lit8 p3, p3, -0x47

    .line 361
    sget-object p1, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p1, v0, p3

    add-int/2addr p3, v4

    .line 362
    sget-object p1, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p1, v0, p3

    .line 363
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p1, v3

    iput p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto :goto_0

    :pswitch_c
    add-int/lit8 p3, p3, -0x43

    .line 353
    sget-object p1, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p1, v0, p3

    .line 354
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p1, v4

    iput p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto :goto_0

    :pswitch_d
    add-int/lit8 p3, p3, -0x3f

    .line 344
    sget-object p1, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p1, v0, p3

    add-int/2addr p3, v4

    .line 345
    sget-object p1, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p1, v0, p3

    .line 346
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p1, v3

    iput p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto :goto_0

    :pswitch_e
    add-int/lit8 p3, p3, -0x3b

    .line 336
    sget-object p1, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p1, v0, p3

    .line 337
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p1, v4

    iput p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    :goto_0
    return v4

    :pswitch_f
    add-int/2addr p1, v4

    .line 330
    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, p1}, Ljavassist/bytecode/stackmap/Tracer;->doASTORE(I)I

    move-result p1

    return p1

    .line 328
    :pswitch_10
    sget-object p3, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/stackmap/Tracer;->doXSTORE(I[BLjavassist/bytecode/stackmap/TypeData;)I

    move-result p1

    return p1

    .line 326
    :pswitch_11
    sget-object p3, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/stackmap/Tracer;->doXSTORE(I[BLjavassist/bytecode/stackmap/TypeData;)I

    move-result p1

    return p1

    .line 324
    :pswitch_12
    sget-object p3, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/stackmap/Tracer;->doXSTORE(I[BLjavassist/bytecode/stackmap/TypeData;)I

    move-result p1

    return p1

    .line 322
    :pswitch_13
    sget-object p3, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/stackmap/Tracer;->doXSTORE(I[BLjavassist/bytecode/stackmap/TypeData;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doOpcode96_147(I[BI)I
    .locals 1

    const/4 p1, 0x1

    const/16 p2, 0x83

    if-gt p3, p2, :cond_0

    .line 469
    iget p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v0, Ljavassist/bytecode/Opcode;->STACK_GROW:[I

    aget p3, v0, p3

    add-int/2addr p2, p3

    iput p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    return p1

    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 524
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "fatal"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 517
    :pswitch_0
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, p1

    iput p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, p1

    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v0, p2, p3

    goto/16 :goto_0

    .line 514
    :pswitch_1
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, p1

    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v0, p2, p3

    goto/16 :goto_0

    .line 511
    :pswitch_2
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, p1

    iput p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, p1

    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v0, p2, p3

    goto/16 :goto_0

    .line 507
    :pswitch_3
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, p1

    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v0, p2, p3

    .line 508
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v0, p2, p3

    goto/16 :goto_0

    .line 503
    :pswitch_4
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, p1

    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v0, p2, p3

    .line 504
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v0, p2, p3

    goto :goto_0

    .line 500
    :pswitch_5
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, p1

    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v0, p2, p3

    goto :goto_0

    .line 497
    :pswitch_6
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, p1

    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v0, p2, p3

    goto :goto_0

    .line 494
    :pswitch_7
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, p1

    iput p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, p1

    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v0, p2, p3

    goto :goto_0

    .line 491
    :pswitch_8
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, p1

    iput p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, p1

    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v0, p2, p3

    goto :goto_0

    .line 486
    :pswitch_9
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v0, p2, p3

    .line 487
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, p1

    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v0, p2, p3

    .line 488
    iget p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/2addr p2, p1

    iput p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto :goto_0

    .line 483
    :pswitch_a
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, p1

    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v0, p2, p3

    goto :goto_0

    .line 478
    :pswitch_b
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v0, p2, p3

    .line 479
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr p3, p1

    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v0, p2, p3

    .line 480
    iget p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/2addr p2, p1

    iput p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    :goto_0
    :pswitch_c
    return p1

    :pswitch_d
    const/4 p1, 0x3

    return p1

    :pswitch_data_0
    .packed-switch 0x84
        :pswitch_d
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method private doPutField(I[BZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x1

    .line 746
    invoke-static {p2, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    .line 747
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {p2, p1}, Ljavassist/bytecode/ConstPool;->getFieldrefType(I)Ljava/lang/String;

    move-result-object p2

    .line 748
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    invoke-static {p2}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    const/4 v0, 0x0

    .line 749
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_0

    .line 751
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object v1, v1, v2

    invoke-static {p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->getFieldClassName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-static {v1, p2, v0}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljavassist/bytecode/stackmap/TypeData;Ljava/lang/String;Ljavassist/ClassPool;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x5b

    if-ne v1, v0, :cond_1

    .line 753
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object v0, v0, v1

    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-static {v0, p2, v1}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljavassist/bytecode/stackmap/TypeData;Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 755
    :cond_1
    :goto_0
    invoke-direct {p0, p3, p1}, Ljavassist/bytecode/stackmap/Tracer;->setFieldTarget(ZI)V

    const/4 p1, 0x3

    return p1
.end method

.method private doWIDE(I[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    .line 688
    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x84

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 729
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad WIDE instruction: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    add-int/lit8 p1, p1, 0x2

    .line 719
    invoke-static {p2, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    .line 720
    invoke-direct {p0, p1}, Ljavassist/bytecode/stackmap/Tracer;->doASTORE(I)I

    goto :goto_0

    .line 716
    :pswitch_1
    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE_STORE(I[BLjavassist/bytecode/stackmap/TypeData;)V

    goto :goto_0

    .line 713
    :pswitch_2
    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE_STORE(I[BLjavassist/bytecode/stackmap/TypeData;)V

    goto :goto_0

    .line 710
    :pswitch_3
    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE_STORE(I[BLjavassist/bytecode/stackmap/TypeData;)V

    goto :goto_0

    .line 707
    :pswitch_4
    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE_STORE(I[BLjavassist/bytecode/stackmap/TypeData;)V

    goto :goto_0

    :pswitch_5
    add-int/lit8 p1, p1, 0x2

    .line 703
    invoke-static {p2, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    .line 704
    invoke-direct {p0, p1}, Ljavassist/bytecode/stackmap/Tracer;->doALOAD(I)I

    goto :goto_0

    .line 700
    :pswitch_6
    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE_XLOAD(I[BLjavassist/bytecode/stackmap/TypeData;)V

    goto :goto_0

    .line 697
    :pswitch_7
    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE_XLOAD(I[BLjavassist/bytecode/stackmap/TypeData;)V

    goto :goto_0

    .line 694
    :pswitch_8
    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE_XLOAD(I[BLjavassist/bytecode/stackmap/TypeData;)V

    goto :goto_0

    .line 691
    :pswitch_9
    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE_XLOAD(I[BLjavassist/bytecode/stackmap/TypeData;)V

    goto :goto_0

    .line 726
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitRET(I[B)V

    :goto_0
    const/4 p1, 0x4

    return p1

    :cond_1
    const/4 p1, 0x6

    return p1

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doWIDE_STORE(I[BLjavassist/bytecode/stackmap/TypeData;)V
    .locals 0

    add-int/lit8 p1, p1, 0x2

    .line 741
    invoke-static {p2, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    .line 742
    invoke-direct {p0, p1, p3}, Ljavassist/bytecode/stackmap/Tracer;->doXSTORE(ILjavassist/bytecode/stackmap/TypeData;)I

    return-void
.end method

.method private doWIDE_XLOAD(I[BLjavassist/bytecode/stackmap/TypeData;)V
    .locals 0

    add-int/lit8 p1, p1, 0x2

    .line 736
    invoke-static {p2, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    .line 737
    invoke-direct {p0, p1, p3}, Ljavassist/bytecode/stackmap/Tracer;->doXLOAD(ILjavassist/bytecode/stackmap/TypeData;)I

    return-void
.end method

.method private doXLOAD(ILjavassist/bytecode/stackmap/TypeData;)I
    .locals 2

    .line 305
    iget-object p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aput-object p2, p1, v0

    .line 306
    invoke-virtual {p2}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 307
    iget-object p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v0, p1, p2

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method private doXLOAD(Ljavassist/bytecode/stackmap/TypeData;[BI)I
    .locals 0

    add-int/lit8 p3, p3, 0x1

    .line 300
    aget-byte p2, p2, p3

    and-int/lit16 p2, p2, 0xff

    .line 301
    invoke-direct {p0, p2, p1}, Ljavassist/bytecode/stackmap/Tracer;->doXLOAD(ILjavassist/bytecode/stackmap/TypeData;)I

    move-result p1

    return p1
.end method

.method private doXSTORE(ILjavassist/bytecode/stackmap/TypeData;)I
    .locals 1

    .line 440
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 441
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aput-object p2, v0, p1

    .line 442
    invoke-virtual {p2}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 443
    iget p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 444
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    add-int/lit8 p1, p1, 0x1

    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object v0, p2, p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method private doXSTORE(I[BLjavassist/bytecode/stackmap/TypeData;)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 435
    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    .line 436
    invoke-direct {p0, p1, p3}, Ljavassist/bytecode/stackmap/Tracer;->doXSTORE(ILjavassist/bytecode/stackmap/TypeData;)I

    move-result p1

    return p1
.end method

.method private static getFieldClassName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 885
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2f

    const/16 v0, 0x2e

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private pushMemberType(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    .line 845
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x28

    if-ne v1, v3, :cond_1

    const/16 v0, 0x29

    .line 846
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v2

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 848
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 852
    :cond_1
    :goto_0
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 853
    iget v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 854
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x44

    if-eq v4, v5, :cond_7

    const/16 v5, 0x46

    if-eq v4, v5, :cond_6

    const/16 v5, 0x4a

    if-eq v4, v5, :cond_5

    const/16 v5, 0x4c

    if-eq v4, v5, :cond_4

    const/16 v5, 0x56

    if-eq v4, v5, :cond_3

    const/16 v5, 0x5b

    if-eq v4, v5, :cond_2

    .line 877
    sget-object p1, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p1, v1, v3

    goto :goto_1

    .line 856
    :cond_2
    new-instance v4, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v4, v1, v3

    goto :goto_1

    :cond_3
    return-void

    .line 859
    :cond_4
    new-instance v4, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-static {p1, v0}, Ljavassist/bytecode/stackmap/Tracer;->getFieldClassName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v4, v1, v3

    goto :goto_1

    .line 862
    :cond_5
    sget-object p1, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p1, v1, v3

    add-int/2addr v3, v2

    .line 863
    sget-object p1, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p1, v1, v3

    .line 864
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    return-void

    .line 867
    :cond_6
    sget-object p1, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p1, v1, v3

    .line 881
    :goto_1
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/2addr p1, v2

    iput p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    return-void

    .line 870
    :cond_7
    sget-object p1, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p1, v1, v3

    add-int/2addr v3, v2

    .line 871
    sget-object p1, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData;

    aput-object p1, v1, v3

    .line 872
    iget p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    return-void
.end method

.method private setFieldTarget(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 769
    iget-object p1, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->getFieldrefClassName(I)Ljava/lang/String;

    move-result-object p1

    .line 770
    iget-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object p2, p2, v0

    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-static {p2, p1, v0}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljavassist/bytecode/stackmap/TypeData;Ljava/lang/String;Ljavassist/ClassPool;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected doOpcode(I[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 93
    :try_start_0
    aget-byte v0, p2, p1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x60

    if-ge v0, v1, :cond_1

    const/16 v1, 0x36

    if-ge v0, v1, :cond_0

    .line 96
    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->doOpcode0_53(I[BI)I

    move-result p1

    return p1

    .line 98
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->doOpcode54_95(I[BI)I

    move-result p1

    return p1

    :cond_1
    const/16 v1, 0x94

    if-ge v0, v1, :cond_2

    .line 101
    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->doOpcode96_147(I[BI)I

    move-result p1

    return p1

    .line 103
    :cond_2
    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->doOpcode148_201(I[BI)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 106
    new-instance p2, Ljavassist/bytecode/BadBytecode;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inconsistent stack height "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected visitBranch(I[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    return-void
.end method

.method protected visitGoto(I[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    return-void
.end method

.method protected visitJSR(I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    return-void
.end method

.method protected visitLookupSwitch(I[BIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    return-void
.end method

.method protected visitRET(I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    return-void
.end method

.method protected visitReturn(I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    return-void
.end method

.method protected visitTableSwitch(I[BIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    return-void
.end method

.method protected visitThrow(I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    return-void
.end method
