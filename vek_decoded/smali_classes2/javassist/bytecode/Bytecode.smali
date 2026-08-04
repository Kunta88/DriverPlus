.class public Ljavassist/bytecode/Bytecode;
.super Ljavassist/bytecode/ByteVector;
.source "Bytecode.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljavassist/bytecode/Opcode;


# static fields
.field public static final THIS:Ljavassist/CtClass;


# instance fields
.field constPool:Ljavassist/bytecode/ConstPool;

.field maxLocals:I

.field maxStack:I

.field private stackDepth:I

.field tryblocks:Ljavassist/bytecode/ExceptionTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    sget-object v0, Ljavassist/bytecode/ConstPool;->THIS:Ljavassist/CtClass;

    sput-object v0, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 1

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, p1, v0, v0}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;II)V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljavassist/bytecode/ByteVector;-><init>()V

    .line 140
    iput-object p1, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    .line 141
    iput p2, p0, Ljavassist/bytecode/Bytecode;->maxStack:I

    .line 142
    iput p3, p0, Ljavassist/bytecode/Bytecode;->maxLocals:I

    .line 143
    new-instance p2, Ljavassist/bytecode/ExceptionTable;

    invoke-direct {p2, p1}, Ljavassist/bytecode/ExceptionTable;-><init>(Ljavassist/bytecode/ConstPool;)V

    iput-object p2, p0, Ljavassist/bytecode/Bytecode;->tryblocks:Ljavassist/bytecode/ExceptionTable;

    const/4 p1, 0x0

    .line 144
    iput p1, p0, Ljavassist/bytecode/Bytecode;->stackDepth:I

    return-void
.end method

.method private addPutfield0(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xb5

    .line 1325
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    if-nez p2, :cond_0

    .line 1327
    iget-object p2, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {p2, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p1

    .line 1329
    :goto_0
    iget-object p2, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {p2, p1, p3, p4}, Ljavassist/bytecode/ConstPool;->addFieldrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1330
    invoke-static {p4}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result p1

    rsub-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    return-void
.end method

.method private addPutstatic0(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xb3

    .line 1358
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    if-nez p2, :cond_0

    .line 1360
    iget-object p2, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {p2, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p1

    .line 1362
    :goto_0
    iget-object p2, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {p2, p1, p3, p4}, Ljavassist/bytecode/ConstPool;->addFieldrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1363
    invoke-static {p4}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 0

    .line 382
    invoke-super {p0, p1}, Ljavassist/bytecode/ByteVector;->add(I)V

    return-void
.end method

.method public bridge synthetic add(II)V
    .locals 0

    .line 114
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/ByteVector;->add(II)V

    return-void
.end method

.method public bridge synthetic add(IIII)V
    .locals 0

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Ljavassist/bytecode/ByteVector;->add(IIII)V

    return-void
.end method

.method public add32bit(I)V
    .locals 3

    shr-int/lit8 v0, p1, 0x18

    shr-int/lit8 v1, p1, 0x10

    shr-int/lit8 v2, p1, 0x8

    .line 389
    invoke-virtual {p0, v0, v1, v2, p1}, Ljavassist/bytecode/Bytecode;->add(IIII)V

    return-void
.end method

.method public addAload(I)V
    .locals 2

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x2a

    .line 461
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    const/16 v1, 0x19

    if-ge p1, v0, :cond_1

    .line 463
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 464
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xc4

    .line 467
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 468
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 469
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    :goto_0
    return-void
.end method

.method public addAnewarray(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xbd

    .line 1225
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1226
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    return-void
.end method

.method public addAnewarray(Ljavassist/CtClass;I)V
    .locals 0

    .line 1236
    invoke-virtual {p0, p2}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    const/16 p2, 0xbd

    .line 1237
    invoke-virtual {p0, p2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1238
    iget-object p2, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {p2, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    return-void
.end method

.method public addAstore(I)V
    .locals 2

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x4b

    .line 480
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    const/16 v1, 0x3a

    if-ge p1, v0, :cond_1

    .line 482
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 483
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xc4

    .line 486
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 487
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 488
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    :goto_0
    return-void
.end method

.method public addCheckcast(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xc0

    .line 824
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 825
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    return-void
.end method

.method public addCheckcast(Ljavassist/CtClass;)V
    .locals 1

    const/16 v0, 0xc0

    .line 814
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 815
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    return-void
.end method

.method public addConstZero(Ljavassist/CtClass;)V
    .locals 1

    .line 520
    invoke-virtual {p1}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 521
    sget-object v0, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_0

    const/16 p1, 0x9

    .line 522
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 523
    :cond_0
    sget-object v0, Ljavassist/CtClass;->floatType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_1

    const/16 p1, 0xb

    .line 524
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 525
    :cond_1
    sget-object v0, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_2

    const/16 p1, 0xe

    .line 526
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 527
    :cond_2
    sget-object v0, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    if-eq p1, v0, :cond_3

    const/4 p1, 0x3

    .line 530
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 528
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "void type?"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p1, 0x1

    .line 533
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    :goto_0
    return-void
.end method

.method public addDconst(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 633
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/Bytecode;->addLdc2w(D)V

    goto :goto_1

    :cond_1
    :goto_0
    double-to-int p1, p1

    add-int/lit8 p1, p1, 0xe

    .line 631
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    :goto_1
    return-void
.end method

.method public addDload(I)V
    .locals 2

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x26

    .line 643
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    const/16 v1, 0x18

    if-ge p1, v0, :cond_1

    .line 645
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 646
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xc4

    .line 649
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 650
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 651
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    :goto_0
    return-void
.end method

.method public addDstore(I)V
    .locals 2

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x47

    .line 662
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    const/16 v1, 0x39

    if-ge p1, v0, :cond_1

    .line 664
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 665
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xc4

    .line 668
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 669
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 670
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    :goto_0
    return-void
.end method

.method public addExceptionHandler(IIII)V
    .locals 1

    .line 309
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->tryblocks:Ljavassist/bytecode/ExceptionTable;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavassist/bytecode/ExceptionTable;->add(IIII)V

    return-void
.end method

.method public addExceptionHandler(IIILjava/lang/String;)V
    .locals 1

    .line 300
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p4}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljavassist/bytecode/Bytecode;->addExceptionHandler(IIII)V

    return-void
.end method

.method public addExceptionHandler(IIILjavassist/CtClass;)V
    .locals 1

    .line 289
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p4}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljavassist/bytecode/Bytecode;->addExceptionHandler(IIII)V

    return-void
.end method

.method public addFconst(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 683
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addFloatInfo(F)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addLdc(I)V

    goto :goto_1

    :cond_1
    :goto_0
    float-to-int p1, p1

    add-int/lit8 p1, p1, 0xb

    .line 681
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    :goto_1
    return-void
.end method

.method public addFload(I)V
    .locals 2

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x22

    .line 693
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    const/16 v1, 0x17

    if-ge p1, v0, :cond_1

    .line 695
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 696
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xc4

    .line 699
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 700
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 701
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    :goto_0
    return-void
.end method

.method public addFstore(I)V
    .locals 2

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x43

    .line 712
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    const/16 v1, 0x38

    if-ge p1, v0, :cond_1

    .line 714
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 715
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xc4

    .line 718
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 719
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 720
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    :goto_0
    return-void
.end method

.method public addGap(I)V
    .locals 0

    .line 398
    invoke-super {p0, p1}, Ljavassist/bytecode/ByteVector;->addGap(I)V

    return-void
.end method

.method public addGetfield(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xb4

    .line 864
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 865
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p1

    .line 866
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/ConstPool;->addFieldrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 867
    invoke-static {p3}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    return-void
.end method

.method public addGetfield(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xb4

    .line 848
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 849
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result p1

    .line 850
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/ConstPool;->addFieldrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 851
    invoke-static {p3}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    return-void
.end method

.method public addGetstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xb2

    .line 896
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 897
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p1

    .line 898
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/ConstPool;->addFieldrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 899
    invoke-static {p3}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    return-void
.end method

.method public addGetstatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xb2

    .line 880
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 881
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result p1

    .line 882
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/ConstPool;->addFieldrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 883
    invoke-static {p3}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    return-void
.end method

.method public addIconst(I)V
    .locals 1

    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    const/4 v0, -0x2

    if-ge v0, p1, :cond_0

    add-int/lit8 p1, p1, 0x3

    .line 499
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_1

    const/16 v0, -0x80

    if-gt v0, p1, :cond_1

    const/16 v0, 0x10

    .line 501
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 502
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_2

    const/16 v0, -0x8000

    if-gt v0, p1, :cond_2

    const/16 v0, 0x11

    .line 505
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    shr-int/lit8 v0, p1, 0x8

    .line 506
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 507
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    .line 510
    :cond_2
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addIntegerInfo(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addLdc(I)V

    :goto_0
    return-void
.end method

.method public addIload(I)V
    .locals 2

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1a

    .line 543
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    const/16 v1, 0x15

    if-ge p1, v0, :cond_1

    .line 545
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 546
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xc4

    .line 549
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 550
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 551
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    :goto_0
    return-void
.end method

.method public addIndex(I)V
    .locals 1

    shr-int/lit8 v0, p1, 0x8

    .line 451
    invoke-virtual {p0, v0, p1}, Ljavassist/bytecode/Bytecode;->add(II)V

    return-void
.end method

.method public addInstanceof(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xc1

    .line 834
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 835
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    return-void
.end method

.method public addInvokeinterface(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/16 v0, 0xb9

    .line 1150
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1151
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/ConstPool;->addInterfaceMethodrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1152
    invoke-virtual {p0, p4}, Ljavassist/bytecode/Bytecode;->add(I)V

    const/4 p1, 0x0

    .line 1153
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1154
    invoke-static {p3}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    return-void
.end method

.method public addInvokeinterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1133
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Ljavassist/bytecode/Bytecode;->addInvokeinterface(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public addInvokeinterface(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1117
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Ljavassist/bytecode/Bytecode;->addInvokeinterface(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public addInvokeinterface(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;[Ljavassist/CtClass;I)V
    .locals 0

    .line 1101
    invoke-static {p3, p4}, Ljavassist/bytecode/Descriptor;->ofMethod(Ljavassist/CtClass;[Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p3

    .line 1102
    invoke-virtual {p0, p1, p2, p3, p5}, Ljavassist/bytecode/Bytecode;->addInvokeinterface(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public addInvokespecial(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xb7

    .line 956
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 957
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 958
    invoke-static {p3}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    return-void
.end method

.method public addInvokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 941
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Ljavassist/bytecode/Bytecode;->addInvokespecial(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addInvokespecial(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 927
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Ljavassist/bytecode/Bytecode;->addInvokespecial(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addInvokespecial(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;[Ljavassist/CtClass;)V
    .locals 0

    .line 912
    invoke-static {p3, p4}, Ljavassist/bytecode/Descriptor;->ofMethod(Ljavassist/CtClass;[Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p3

    .line 913
    invoke-virtual {p0, p1, p2, p3}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addInvokestatic(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xb8

    .line 1012
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1013
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1014
    invoke-static {p3}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    return-void
.end method

.method public addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 998
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Ljavassist/bytecode/Bytecode;->addInvokestatic(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addInvokestatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 985
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Ljavassist/bytecode/Bytecode;->addInvokestatic(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addInvokestatic(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;[Ljavassist/CtClass;)V
    .locals 0

    .line 971
    invoke-static {p3, p4}, Ljavassist/bytecode/Descriptor;->ofMethod(Ljavassist/CtClass;[Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p3

    .line 972
    invoke-virtual {p0, p1, p2, p3}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addInvokevirtual(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xb6

    .line 1084
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1085
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1086
    invoke-static {p3}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    return-void
.end method

.method public addInvokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1066
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addInvokevirtual(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1049
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addInvokevirtual(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;[Ljavassist/CtClass;)V
    .locals 0

    .line 1031
    invoke-static {p3, p4}, Ljavassist/bytecode/Descriptor;->ofMethod(Ljavassist/CtClass;[Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p3

    .line 1032
    invoke-virtual {p0, p1, p2, p3}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addIstore(I)V
    .locals 2

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x3b

    .line 562
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    const/16 v1, 0x36

    if-ge p1, v0, :cond_1

    .line 564
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 565
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xc4

    .line 568
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 569
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 570
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    :goto_0
    return-void
.end method

.method public addLconst(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 583
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/Bytecode;->addLdc2w(J)V

    goto :goto_1

    :cond_1
    :goto_0
    long-to-int p2, p1

    add-int/lit8 p2, p2, 0x9

    .line 581
    invoke-virtual {p0, p2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    :goto_1
    return-void
.end method

.method public addLdc(I)V
    .locals 1

    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    const/16 v0, 0x13

    .line 1174
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1175
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    .line 1178
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1179
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    :goto_0
    return-void
.end method

.method public addLdc(Ljava/lang/String;)V
    .locals 1

    .line 1164
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addStringInfo(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addLdc(I)V

    return-void
.end method

.method public addLdc2w(D)V
    .locals 1

    const/16 v0, 0x14

    .line 1195
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1196
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/ConstPool;->addDoubleInfo(D)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    return-void
.end method

.method public addLdc2w(J)V
    .locals 1

    const/16 v0, 0x14

    .line 1187
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1188
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/ConstPool;->addLongInfo(J)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    return-void
.end method

.method public addLload(I)V
    .locals 2

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1e

    .line 593
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    const/16 v1, 0x16

    if-ge p1, v0, :cond_1

    .line 595
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 596
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xc4

    .line 599
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 600
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 601
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    :goto_0
    return-void
.end method

.method public addLoad(ILjavassist/CtClass;)I
    .locals 2

    .line 733
    invoke-virtual {p2}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 734
    sget-object v0, Ljavassist/CtClass;->booleanType:Ljavassist/CtClass;

    if-eq p2, v0, :cond_4

    sget-object v0, Ljavassist/CtClass;->charType:Ljavassist/CtClass;

    if-eq p2, v0, :cond_4

    sget-object v0, Ljavassist/CtClass;->byteType:Ljavassist/CtClass;

    if-eq p2, v0, :cond_4

    sget-object v0, Ljavassist/CtClass;->shortType:Ljavassist/CtClass;

    if-eq p2, v0, :cond_4

    sget-object v0, Ljavassist/CtClass;->intType:Ljavassist/CtClass;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 738
    :cond_0
    sget-object v0, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    const/4 v1, 0x2

    if-ne p2, v0, :cond_1

    .line 739
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addLload(I)V

    return v1

    .line 742
    :cond_1
    sget-object v0, Ljavassist/CtClass;->floatType:Ljavassist/CtClass;

    if-ne p2, v0, :cond_2

    .line 743
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addFload(I)V

    goto :goto_1

    .line 744
    :cond_2
    sget-object v0, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    if-ne p2, v0, :cond_3

    .line 745
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addDload(I)V

    return v1

    .line 749
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "void type?"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 737
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIload(I)V

    goto :goto_1

    .line 752
    :cond_5
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public addLoadParameters([Ljavassist/CtClass;I)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 800
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v3, v2, p2

    .line 802
    aget-object v4, p1, v0

    invoke-virtual {p0, v3, v4}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :cond_1
    return v0
.end method

.method public addLstore(I)V
    .locals 2

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x3f

    .line 612
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    const/16 v1, 0x37

    if-ge p1, v0, :cond_1

    .line 614
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 615
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xc4

    .line 618
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 619
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 620
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    :goto_0
    return-void
.end method

.method public addMultiNewarray(Ljava/lang/String;I)I
    .locals 1

    const/16 v0, 0xc5

    .line 1293
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1294
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1295
    invoke-virtual {p0, p2}, Ljavassist/bytecode/Bytecode;->add(I)V

    rsub-int/lit8 p1, p2, 0x1

    .line 1296
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    return p2
.end method

.method public addMultiNewarray(Ljavassist/CtClass;I)I
    .locals 1

    const/16 v0, 0xc5

    .line 1278
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1279
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1280
    invoke-virtual {p0, p2}, Ljavassist/bytecode/Bytecode;->add(I)V

    rsub-int/lit8 p1, p2, 0x1

    .line 1281
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    return p2
.end method

.method public addMultiNewarray(Ljavassist/CtClass;[I)I
    .locals 3

    .line 1261
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1263
    aget v2, p2, v1

    invoke-virtual {p0, v2}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1265
    :cond_0
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 1266
    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/Bytecode;->addMultiNewarray(Ljavassist/CtClass;I)I

    move-result p1

    return p1
.end method

.method public addNew(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xbb

    .line 1215
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1216
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    return-void
.end method

.method public addNew(Ljavassist/CtClass;)V
    .locals 1

    const/16 v0, 0xbb

    .line 1205
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1206
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    return-void
.end method

.method public addNewarray(II)V
    .locals 0

    .line 1248
    invoke-virtual {p0, p2}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    const/16 p2, 0xbc

    .line 1249
    invoke-virtual {p0, p2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1250
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    return-void
.end method

.method public addOpcode(I)V
    .locals 1

    .line 413
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 414
    sget-object v0, Ljavassist/bytecode/Bytecode;->STACK_GROW:[I

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    return-void
.end method

.method public addPrintln(Ljava/lang/String;)V
    .locals 3

    const-string v0, "java.lang.System"

    const-string v1, "err"

    const-string v2, "Ljava/io/PrintStream;"

    .line 1406
    invoke-virtual {p0, v0, v1, v2}, Ljavassist/bytecode/Bytecode;->addGetstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addLdc(Ljava/lang/String;)V

    const-string p1, "java.io.PrintStream"

    const-string v0, "println"

    const-string v1, "(Ljava/lang/String;)V"

    .line 1408
    invoke-virtual {p0, p1, v0, v1}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addPutfield(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1320
    invoke-direct {p0, v0, p1, p2, p3}, Ljavassist/bytecode/Bytecode;->addPutfield0(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addPutfield(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1308
    invoke-direct {p0, p1, v0, p2, p3}, Ljavassist/bytecode/Bytecode;->addPutfield0(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addPutstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1353
    invoke-direct {p0, v0, p1, p2, p3}, Ljavassist/bytecode/Bytecode;->addPutstatic0(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addPutstatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1341
    invoke-direct {p0, p1, v0, p2, p3}, Ljavassist/bytecode/Bytecode;->addPutstatic0(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addRet(I)V
    .locals 2

    const/16 v0, 0xa9

    const/16 v1, 0x100

    if-ge p1, v1, :cond_0

    .line 1389
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1390
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xc4

    .line 1393
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1394
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1395
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    :goto_0
    return-void
.end method

.method public addReturn(Ljavassist/CtClass;)V
    .locals 1

    if-nez p1, :cond_0

    const/16 p1, 0xb1

    .line 1373
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 1374
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1375
    check-cast p1, Ljavassist/CtPrimitiveType;

    .line 1376
    invoke-virtual {p1}, Ljavassist/CtPrimitiveType;->getReturnOp()I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xb0

    .line 1379
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    :goto_0
    return-void
.end method

.method public addStore(ILjavassist/CtClass;)I
    .locals 2

    .line 766
    invoke-virtual {p2}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 767
    sget-object v0, Ljavassist/CtClass;->booleanType:Ljavassist/CtClass;

    if-eq p2, v0, :cond_4

    sget-object v0, Ljavassist/CtClass;->charType:Ljavassist/CtClass;

    if-eq p2, v0, :cond_4

    sget-object v0, Ljavassist/CtClass;->byteType:Ljavassist/CtClass;

    if-eq p2, v0, :cond_4

    sget-object v0, Ljavassist/CtClass;->shortType:Ljavassist/CtClass;

    if-eq p2, v0, :cond_4

    sget-object v0, Ljavassist/CtClass;->intType:Ljavassist/CtClass;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 771
    :cond_0
    sget-object v0, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    const/4 v1, 0x2

    if-ne p2, v0, :cond_1

    .line 772
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addLstore(I)V

    return v1

    .line 775
    :cond_1
    sget-object v0, Ljavassist/CtClass;->floatType:Ljavassist/CtClass;

    if-ne p2, v0, :cond_2

    .line 776
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addFstore(I)V

    goto :goto_1

    .line 777
    :cond_2
    sget-object v0, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    if-ne p2, v0, :cond_3

    .line 778
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addDstore(I)V

    return v1

    .line 782
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "void type?"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 770
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIstore(I)V

    goto :goto_1

    .line 785
    :cond_5
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 167
    :try_start_0
    invoke-super {p0}, Ljavassist/bytecode/ByteVector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/Bytecode;

    .line 168
    iget-object v1, p0, Ljavassist/bytecode/Bytecode;->tryblocks:Ljavassist/bytecode/ExceptionTable;

    invoke-virtual {v1}, Ljavassist/bytecode/ExceptionTable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/ExceptionTable;

    iput-object v1, v0, Ljavassist/bytecode/Bytecode;->tryblocks:Ljavassist/bytecode/ExceptionTable;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 172
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public currentPc()I
    .locals 1

    .line 317
    invoke-virtual {p0}, Ljavassist/bytecode/Bytecode;->getSize()I

    move-result v0

    return v0
.end method

.method public get()[B
    .locals 1

    .line 205
    invoke-virtual {p0}, Ljavassist/bytecode/Bytecode;->copy()[B

    move-result-object v0

    return-object v0
.end method

.method public getConstPool()Ljavassist/bytecode/ConstPool;
    .locals 1

    .line 179
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    return-object v0
.end method

.method public getExceptionTable()Ljavassist/bytecode/ExceptionTable;
    .locals 1

    .line 184
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->tryblocks:Ljavassist/bytecode/ExceptionTable;

    return-object v0
.end method

.method public getMaxLocals()I
    .locals 1

    .line 234
    iget v0, p0, Ljavassist/bytecode/Bytecode;->maxLocals:I

    return v0
.end method

.method public getMaxStack()I
    .locals 1

    .line 211
    iget v0, p0, Ljavassist/bytecode/Bytecode;->maxStack:I

    return v0
.end method

.method public getStackDepth()I
    .locals 1

    .line 431
    iget v0, p0, Ljavassist/bytecode/Bytecode;->stackDepth:I

    return v0
.end method

.method public growStack(I)V
    .locals 1

    .line 425
    iget v0, p0, Ljavassist/bytecode/Bytecode;->stackDepth:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->setStackDepth(I)V

    return-void
.end method

.method public incMaxLocals(I)V
    .locals 1

    .line 281
    iget v0, p0, Ljavassist/bytecode/Bytecode;->maxLocals:I

    add-int/2addr v0, p1

    iput v0, p0, Ljavassist/bytecode/Bytecode;->maxLocals:I

    return-void
.end method

.method public length()I
    .locals 1

    .line 198
    invoke-virtual {p0}, Ljavassist/bytecode/Bytecode;->getSize()I

    move-result v0

    return v0
.end method

.method public read(I)I
    .locals 0

    .line 327
    invoke-super {p0, p1}, Ljavassist/bytecode/ByteVector;->read(I)I

    move-result p1

    return p1
.end method

.method public read16bit(I)I
    .locals 1

    .line 335
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->read(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    .line 336
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->read(I)I

    move-result p1

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v0, p1

    return v0
.end method

.method public read32bit(I)I
    .locals 2

    .line 345
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->read16bit(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x2

    .line 346
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->read16bit(I)I

    move-result p1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr p1, v1

    add-int/2addr v0, p1

    return v0
.end method

.method public setMaxLocals(I)V
    .locals 0

    .line 240
    iput p1, p0, Ljavassist/bytecode/Bytecode;->maxLocals:I

    return-void
.end method

.method public setMaxLocals(Z[Ljavassist/CtClass;I)V
    .locals 4

    if-nez p1, :cond_0

    add-int/lit8 p3, p3, 0x1

    :cond_0
    if-eqz p2, :cond_3

    .line 262
    sget-object p1, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    .line 263
    sget-object v0, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    .line 264
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 266
    aget-object v3, p2, v2

    if-eq v3, p1, :cond_2

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 p3, p3, 0x2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    :cond_3
    iput p3, p0, Ljavassist/bytecode/Bytecode;->maxLocals:I

    return-void
.end method

.method public setMaxStack(I)V
    .locals 0

    .line 228
    iput p1, p0, Ljavassist/bytecode/Bytecode;->maxStack:I

    return-void
.end method

.method public setStackDepth(I)V
    .locals 1

    .line 441
    iput p1, p0, Ljavassist/bytecode/Bytecode;->stackDepth:I

    .line 442
    iget v0, p0, Ljavassist/bytecode/Bytecode;->maxStack:I

    if-le p1, v0, :cond_0

    .line 443
    iput p1, p0, Ljavassist/bytecode/Bytecode;->maxStack:I

    :cond_0
    return-void
.end method

.method public toCodeAttribute()Ljavassist/bytecode/CodeAttribute;
    .locals 7

    .line 190
    new-instance v6, Ljavassist/bytecode/CodeAttribute;

    iget-object v1, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    iget v2, p0, Ljavassist/bytecode/Bytecode;->maxStack:I

    iget v3, p0, Ljavassist/bytecode/Bytecode;->maxLocals:I

    invoke-virtual {p0}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object v4

    iget-object v5, p0, Ljavassist/bytecode/Bytecode;->tryblocks:Ljavassist/bytecode/ExceptionTable;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/CodeAttribute;-><init>(Ljavassist/bytecode/ConstPool;II[BLjavassist/bytecode/ExceptionTable;)V

    return-object v6
.end method

.method public write(II)V
    .locals 0

    .line 357
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/ByteVector;->write(II)V

    return-void
.end method

.method public write16bit(II)V
    .locals 1

    shr-int/lit8 v0, p2, 0x8

    .line 365
    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/Bytecode;->write(II)V

    add-int/lit8 p1, p1, 0x1

    .line 366
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/Bytecode;->write(II)V

    return-void
.end method

.method public write32bit(II)V
    .locals 1

    shr-int/lit8 v0, p2, 0x10

    .line 374
    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    add-int/lit8 p1, p1, 0x2

    .line 375
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    return-void
.end method
