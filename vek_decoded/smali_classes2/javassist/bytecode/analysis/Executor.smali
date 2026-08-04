.class public Ljavassist/bytecode/analysis/Executor;
.super Ljava/lang/Object;
.source "Executor.java"

# interfaces
.implements Ljavassist/bytecode/Opcode;


# instance fields
.field private final CLASS_TYPE:Ljavassist/bytecode/analysis/Type;

.field private final STRING_TYPE:Ljavassist/bytecode/analysis/Type;

.field private final THROWABLE_TYPE:Ljavassist/bytecode/analysis/Type;

.field private final classPool:Ljavassist/ClassPool;

.field private final constPool:Ljavassist/bytecode/ConstPool;

.field private lastPos:I


# direct methods
.method public constructor <init>(Ljavassist/ClassPool;Ljavassist/bytecode/ConstPool;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    .line 43
    iput-object p1, p0, Ljavassist/bytecode/analysis/Executor;->classPool:Ljavassist/ClassPool;

    :try_start_0
    const-string p1, "java.lang.String"

    .line 46
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Executor;->getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    iput-object p1, p0, Ljavassist/bytecode/analysis/Executor;->STRING_TYPE:Ljavassist/bytecode/analysis/Type;

    const-string p1, "java.lang.Class"

    .line 47
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Executor;->getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    iput-object p1, p0, Ljavassist/bytecode/analysis/Executor;->CLASS_TYPE:Ljavassist/bytecode/analysis/Type;

    const-string p1, "java.lang.Throwable"

    .line 48
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Executor;->getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    iput-object p1, p0, Ljavassist/bytecode/analysis/Executor;->THROWABLE_TYPE:Ljavassist/bytecode/analysis/Type;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 50
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private access(ILjavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Subroutine;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 984
    :cond_0
    invoke-virtual {p3, p1}, Ljavassist/bytecode/analysis/Subroutine;->access(I)V

    .line 985
    invoke-virtual {p2}, Ljavassist/bytecode/analysis/Type;->getSize()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 986
    invoke-virtual {p3, p1}, Ljavassist/bytecode/analysis/Subroutine;->access(I)V

    :cond_1
    return-void
.end method

.method private evalArrayLoad(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 635
    invoke-virtual {p2}, Ljavassist/bytecode/analysis/Frame;->pop()Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 636
    invoke-virtual {p2}, Ljavassist/bytecode/analysis/Frame;->pop()Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    .line 640
    sget-object v2, Ljavassist/bytecode/analysis/Type;->UNINIT:Ljavassist/bytecode/analysis/Type;

    if-ne v1, v2, :cond_1

    .line 641
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, v0}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 642
    sget-object v0, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    if-ne p1, v0, :cond_0

    .line 643
    sget-object p1, Ljavassist/bytecode/analysis/Type;->UNINIT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto :goto_0

    .line 645
    :cond_0
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    :goto_0
    return-void

    .line 650
    :cond_1
    invoke-virtual {v1}, Ljavassist/bytecode/analysis/Type;->getComponent()Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 655
    invoke-direct {p0, v1}, Ljavassist/bytecode/analysis/Executor;->zeroExtend(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    .line 657
    invoke-direct {p0, p1, v1}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 658
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 659
    invoke-direct {p0, v1, p2}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    return-void

    .line 653
    :cond_2
    new-instance p1, Ljavassist/bytecode/BadBytecode;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not an array! [pos = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "]: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private evalArrayStore(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 663
    invoke-direct {p0, p2}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 664
    invoke-virtual {p2}, Ljavassist/bytecode/analysis/Frame;->pop()Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    .line 665
    invoke-virtual {p2}, Ljavassist/bytecode/analysis/Frame;->pop()Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    .line 667
    sget-object v2, Ljavassist/bytecode/analysis/Type;->UNINIT:Ljavassist/bytecode/analysis/Type;

    if-ne p2, v2, :cond_0

    .line 668
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, v1}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    return-void

    .line 672
    :cond_0
    invoke-virtual {p2}, Ljavassist/bytecode/analysis/Type;->getComponent()Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 677
    invoke-direct {p0, p2}, Ljavassist/bytecode/analysis/Executor;->zeroExtend(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    .line 679
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 680
    sget-object v2, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v2, v1}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 688
    sget-object v1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    if-ne p1, v1, :cond_1

    .line 689
    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    goto :goto_0

    .line 691
    :cond_1
    invoke-direct {p0, p2, v0}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    :goto_0
    return-void

    .line 675
    :cond_2
    new-instance p1, Ljavassist/bytecode/BadBytecode;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not an array! [pos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 696
    invoke-direct {p0, p2}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 697
    invoke-direct {p0, p2}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    .line 699
    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 700
    invoke-direct {p0, p1, v1}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 701
    invoke-direct {p0, v1, p2}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    return-void
.end method

.method private evalGetField(IILjavassist/bytecode/analysis/Frame;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 705
    iget-object v0, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ConstPool;->getFieldrefType(I)Ljava/lang/String;

    move-result-object v0

    .line 706
    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/Executor;->typeFromDesc(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/Executor;->zeroExtend(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_0

    .line 709
    iget-object p1, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->getFieldrefClassName(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Executor;->resolveClassInfo(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    .line 710
    invoke-direct {p0, p3}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 713
    :cond_0
    invoke-direct {p0, v0, p3}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    return-void
.end method

.method private evalInvokeIntfMethod(IILjavassist/bytecode/analysis/Frame;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 717
    iget-object p1, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->getInterfaceMethodrefType(I)Ljava/lang/String;

    move-result-object p1

    .line 718
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Executor;->paramTypesFromDesc(Ljava/lang/String;)[Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 719
    array-length v1, v0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 722
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Ljavassist/bytecode/analysis/Executor;->zeroExtend(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, p3}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    goto :goto_0

    .line 724
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ConstPool;->getInterfaceMethodrefClassName(I)Ljava/lang/String;

    move-result-object p2

    .line 725
    invoke-direct {p0, p2}, Ljavassist/bytecode/analysis/Executor;->resolveClassInfo(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    .line 726
    invoke-direct {p0, p3}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 728
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Executor;->returnTypeFromDesc(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    .line 729
    sget-object p2, Ljavassist/bytecode/analysis/Type;->VOID:Ljavassist/bytecode/analysis/Type;

    if-eq p1, p2, :cond_1

    .line 730
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Executor;->zeroExtend(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    :cond_1
    return-void
.end method

.method private evalInvokeMethod(IILjavassist/bytecode/analysis/Frame;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 734
    iget-object v0, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ConstPool;->getMethodrefType(I)Ljava/lang/String;

    move-result-object v0

    .line 735
    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/Executor;->paramTypesFromDesc(Ljava/lang/String;)[Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    .line 736
    array-length v2, v1

    :goto_0
    if-lez v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    .line 739
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Ljavassist/bytecode/analysis/Executor;->zeroExtend(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    invoke-direct {p0, p3}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xb8

    if-eq p1, v1, :cond_1

    .line 742
    iget-object p1, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->getMethodrefClassName(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Executor;->resolveClassInfo(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    .line 743
    invoke-direct {p0, p3}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 746
    :cond_1
    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/Executor;->returnTypeFromDesc(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    .line 747
    sget-object p2, Ljavassist/bytecode/analysis/Type;->VOID:Ljavassist/bytecode/analysis/Type;

    if-eq p1, p2, :cond_2

    .line 748
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Executor;->zeroExtend(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    :cond_2
    return-void
.end method

.method private evalLDC(ILjavassist/bytecode/analysis/Frame;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 753
    iget-object v0, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->getTag(I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 775
    new-instance p2, Ljavassist/bytecode/BadBytecode;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad LDC [pos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw p2

    .line 757
    :pswitch_0
    iget-object p1, p0, Ljavassist/bytecode/analysis/Executor;->STRING_TYPE:Ljavassist/bytecode/analysis/Type;

    goto :goto_0

    .line 772
    :pswitch_1
    iget-object p1, p0, Ljavassist/bytecode/analysis/Executor;->CLASS_TYPE:Ljavassist/bytecode/analysis/Type;

    goto :goto_0

    .line 769
    :pswitch_2
    sget-object p1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    goto :goto_0

    .line 766
    :pswitch_3
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    goto :goto_0

    .line 763
    :pswitch_4
    sget-object p1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    goto :goto_0

    .line 760
    :pswitch_5
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    .line 778
    :goto_0
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 782
    invoke-virtual {p3, p2}, Ljavassist/bytecode/analysis/Frame;->getLocal(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 784
    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 786
    invoke-direct {p0, v0, p3}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 787
    invoke-direct {p0, p2, v0, p4}, Ljavassist/bytecode/analysis/Executor;->access(ILjavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Subroutine;)V

    return-void
.end method

.method private evalNewArray(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 791
    sget-object v0, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p3}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    add-int/lit8 v0, p1, 0x1

    .line 793
    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    .line 820
    new-instance p3, Ljavassist/bytecode/BadBytecode;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid array type [pos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw p3

    :pswitch_0
    const-string p1, "long[]"

    .line 811
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Executor;->getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    const-string p1, "int[]"

    .line 808
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Executor;->getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    const-string p1, "short[]"

    .line 805
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Executor;->getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    const-string p1, "byte[]"

    .line 802
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Executor;->getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    const-string p1, "double[]"

    .line 817
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Executor;->getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    const-string p1, "float[]"

    .line 814
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Executor;->getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    goto :goto_0

    :pswitch_6
    const-string p1, "char[]"

    .line 799
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Executor;->getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    goto :goto_0

    :pswitch_7
    const-string p1, "boolean[]"

    .line 796
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Executor;->getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    .line 824
    :goto_0
    invoke-virtual {p3, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    return-void

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

.method private evalNewObjectArray(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 829
    iget-object v0, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/Executor;->resolveClassInfo(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 830
    invoke-virtual {v0}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 831
    invoke-virtual {p2, p1}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v1

    const/16 v2, 0xc5

    if-ne v1, v2, :cond_0

    add-int/lit8 p1, p1, 0x3

    .line 835
    invoke-virtual {p2, p1}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result p1

    goto :goto_0

    .line 837
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "[]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 p1, 0x1

    :goto_0
    add-int/lit8 p2, p1, -0x1

    if-lez p1, :cond_1

    .line 842
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p3}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    move p1, p2

    goto :goto_0

    .line 845
    :cond_1
    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/Executor;->getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    return-void
.end method

.method private evalPutField(IILjavassist/bytecode/analysis/Frame;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 849
    iget-object v0, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ConstPool;->getFieldrefType(I)Ljava/lang/String;

    move-result-object v0

    .line 850
    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/Executor;->typeFromDesc(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/Executor;->zeroExtend(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 852
    invoke-direct {p0, p3}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    const/16 v0, 0xb5

    if-ne p1, v0, :cond_0

    .line 855
    iget-object p1, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->getFieldrefClassName(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Executor;->resolveClassInfo(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    .line 856
    invoke-direct {p0, p3}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    :cond_0
    return-void
.end method

.method private evalShift(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 861
    invoke-direct {p0, p2}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 862
    invoke-direct {p0, p2}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    .line 864
    sget-object v2, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v2, v0}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 865
    invoke-direct {p0, p1, v1}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 866
    invoke-direct {p0, v1, p2}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    return-void
.end method

.method private evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 870
    invoke-direct {p0, p3}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 873
    sget-object v1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    if-ne p1, v1, :cond_0

    sget-object v1, Ljavassist/bytecode/analysis/Type;->RETURN_ADDRESS:Ljavassist/bytecode/analysis/Type;

    if-eq v0, v1, :cond_1

    .line 874
    :cond_0
    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 875
    :cond_1
    invoke-direct {p0, p2, v0, p3}, Ljavassist/bytecode/analysis/Executor;->simpleSetLocal(ILjavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 876
    invoke-direct {p0, p2, v0, p4}, Ljavassist/bytecode/analysis/Executor;->access(ILjavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Subroutine;)V

    return-void
.end method

.method private evalWide(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    .line 880
    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x2

    .line 881
    invoke-virtual {p2, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result p2

    const/16 v1, 0x84

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 920
    new-instance p2, Ljavassist/bytecode/BadBytecode;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid WIDE operand [pos = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "]: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw p2

    .line 911
    :pswitch_0
    sget-object p1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto :goto_0

    .line 908
    :pswitch_1
    sget-object p1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto :goto_0

    .line 905
    :pswitch_2
    sget-object p1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto :goto_0

    .line 902
    :pswitch_3
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto :goto_0

    .line 899
    :pswitch_4
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto :goto_0

    .line 896
    :pswitch_5
    sget-object p1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto :goto_0

    .line 893
    :pswitch_6
    sget-object p1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto :goto_0

    .line 890
    :pswitch_7
    sget-object p1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto :goto_0

    .line 887
    :pswitch_8
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto :goto_0

    .line 884
    :pswitch_9
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto :goto_0

    .line 917
    :cond_0
    sget-object p1, Ljavassist/bytecode/analysis/Type;->RETURN_ADDRESS:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p3, p2}, Ljavassist/bytecode/analysis/Frame;->getLocal(I)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    goto :goto_0

    .line 914
    :cond_1
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p3, p2}, Ljavassist/bytecode/analysis/Frame;->getLocal(I)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    :goto_0
    return-void

    nop

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

.method private getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 927
    :try_start_0
    iget-object v0, p0, Ljavassist/bytecode/analysis/Executor;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v0, p1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    invoke-static {v0}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 929
    :catch_0
    new-instance v0, Ljavassist/bytecode/BadBytecode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find class [pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private paramTypesFromDesc(Ljava/lang/String;)[Ljavassist/bytecode/analysis/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const-string v0, "]: "

    .line 936
    :try_start_0
    iget-object v1, p0, Ljavassist/bytecode/analysis/Executor;->classPool:Ljavassist/ClassPool;

    invoke-static {p1, v1}, Ljavassist/bytecode/Descriptor;->getParameterTypes(Ljava/lang/String;Ljavassist/ClassPool;)[Ljavassist/CtClass;

    move-result-object v1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 944
    array-length p1, v1

    new-array v0, p1, [Ljavassist/bytecode/analysis/Type;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 946
    aget-object v3, v1, v2

    invoke-static {v3}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 942
    :cond_1
    new-instance v1, Ljavassist/bytecode/BadBytecode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not obtain parameters for descriptor [pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception p1

    .line 938
    new-instance v1, Ljavassist/bytecode/BadBytecode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find class in descriptor [pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private resolveClassInfo(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const-string v0, "]: "

    const/4 v1, 0x0

    .line 998
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 999
    iget-object v1, p0, Ljavassist/bytecode/analysis/Executor;->classPool:Ljavassist/ClassPool;

    invoke-static {p1, v1}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object v1

    goto :goto_0

    .line 1001
    :cond_0
    iget-object v1, p0, Ljavassist/bytecode/analysis/Executor;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v1, p1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v1, :cond_1

    .line 1011
    invoke-static {v1}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    return-object p1

    .line 1009
    :cond_1
    new-instance v1, Ljavassist/bytecode/BadBytecode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not obtain type for descriptor [pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception p1

    .line 1005
    new-instance v1, Ljavassist/bytecode/BadBytecode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find class in descriptor [pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private returnTypeFromDesc(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const-string v0, "]: "

    .line 954
    :try_start_0
    iget-object v1, p0, Ljavassist/bytecode/analysis/Executor;->classPool:Ljavassist/ClassPool;

    invoke-static {p1, v1}, Ljavassist/bytecode/Descriptor;->getReturnType(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object v1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 962
    invoke-static {v1}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    return-object p1

    .line 960
    :cond_0
    new-instance v1, Ljavassist/bytecode/BadBytecode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not obtain return type for descriptor [pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception p1

    .line 956
    new-instance v1, Ljavassist/bytecode/BadBytecode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find class in descriptor [pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private simplePeek(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;
    .locals 2

    .line 966
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Frame;->peek()Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 967
    sget-object v1, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Frame;->getTopIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljavassist/bytecode/analysis/Frame;->getStack(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;
    .locals 2

    .line 971
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Frame;->pop()Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 972
    sget-object v1, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Frame;->pop()Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V
    .locals 1

    .line 976
    invoke-virtual {p2, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 977
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->getSize()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 978
    sget-object p1, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p2, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    :cond_0
    return-void
.end method

.method private simpleSetLocal(ILjavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V
    .locals 1

    .line 990
    invoke-virtual {p3, p1, p2}, Ljavassist/bytecode/analysis/Frame;->setLocal(ILjavassist/bytecode/analysis/Type;)V

    .line 991
    invoke-virtual {p2}, Ljavassist/bytecode/analysis/Type;->getSize()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 992
    sget-object p2, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p3, p1, p2}, Ljavassist/bytecode/analysis/Frame;->setLocal(ILjavassist/bytecode/analysis/Type;)V

    :cond_0
    return-void
.end method

.method private typeFromDesc(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    const-string v0, "]: "

    .line 1017
    :try_start_0
    iget-object v1, p0, Ljavassist/bytecode/analysis/Executor;->classPool:Ljavassist/ClassPool;

    invoke-static {p1, v1}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object v1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 1025
    invoke-static {v1}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    return-object p1

    .line 1023
    :cond_0
    new-instance v1, Ljavassist/bytecode/BadBytecode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not obtain type for descriptor [pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception p1

    .line 1019
    new-instance v1, Ljavassist/bytecode/BadBytecode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find class in descriptor [pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1029
    invoke-virtual {p1, p2}, Ljavassist/bytecode/analysis/Type;->isAssignableFrom(Ljavassist/bytecode/analysis/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1030
    :cond_0
    new-instance v0, Ljavassist/bytecode/BadBytecode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " Got: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " [pos = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private zeroExtend(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;
    .locals 1

    .line 628
    sget-object v0, Ljavassist/bytecode/analysis/Type;->SHORT:Ljavassist/bytecode/analysis/Type;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljavassist/bytecode/analysis/Type;->BYTE:Ljavassist/bytecode/analysis/Type;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljavassist/bytecode/analysis/Type;->CHAR:Ljavassist/bytecode/analysis/Type;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljavassist/bytecode/analysis/Type;->BOOLEAN:Ljavassist/bytecode/analysis/Type;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 629
    :cond_1
    :goto_0
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    return-object p1
.end method


# virtual methods
.method public execute(Ljavassist/bytecode/MethodInfo;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 68
    iput p2, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    .line 69
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    const-string v1, "DUP can not be used with a category 2 value, pos = "

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 622
    :pswitch_1
    sget-object p1, Ljavassist/bytecode/analysis/Type;->RETURN_ADDRESS:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 617
    :pswitch_2
    sget-object p1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 613
    :pswitch_3
    invoke-direct {p0, p2, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalNewObjectArray(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 610
    :pswitch_4
    invoke-direct {p0, p2, p3, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalWide(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto/16 :goto_3

    .line 607
    :pswitch_5
    sget-object p1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 602
    :pswitch_6
    sget-object p1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 603
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 598
    :pswitch_7
    sget-object p1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p5

    invoke-direct {p0, p1, p5}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 599
    iget-object p1, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->getClassInfoByDescriptor(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Executor;->typeFromDesc(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 595
    :pswitch_8
    iget-object p1, p0, Ljavassist/bytecode/analysis/Executor;->THROWABLE_TYPE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 588
    :pswitch_9
    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    .line 589
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->isArray()Z

    move-result p3

    if-nez p3, :cond_1

    sget-object p3, Ljavassist/bytecode/analysis/Type;->UNINIT:Ljavassist/bytecode/analysis/Type;

    if-ne p1, p3, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    new-instance p3, Ljavassist/bytecode/BadBytecode;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Array length passed a non-array [pos = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, "]: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw p3

    .line 591
    :cond_1
    :goto_0
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 585
    :pswitch_a
    invoke-direct {p0, p2, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalNewObjectArray(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 582
    :pswitch_b
    invoke-direct {p0, p2, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalNewArray(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 579
    :pswitch_c
    iget-object p1, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/Executor;->resolveClassInfo(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 577
    :pswitch_d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Bad opcode 186"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_e
    add-int/lit8 p2, p2, 0x1

    .line 574
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result p1

    invoke-direct {p0, v0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalInvokeIntfMethod(IILjavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    :pswitch_f
    add-int/lit8 p2, p2, 0x1

    .line 571
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result p1

    invoke-direct {p0, v0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalInvokeMethod(IILjavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    :pswitch_10
    add-int/lit8 p2, p2, 0x1

    .line 566
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result p1

    invoke-direct {p0, v0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalPutField(IILjavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    :pswitch_11
    add-int/lit8 p2, p2, 0x1

    .line 563
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result p1

    invoke-direct {p0, v0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalGetField(IILjavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    :pswitch_12
    add-int/lit8 p2, p2, 0x1

    .line 560
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result p1

    invoke-direct {p0, v0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalPutField(IILjavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    :pswitch_13
    add-int/lit8 p2, p2, 0x1

    .line 557
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result p1

    invoke-direct {p0, v0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalGetField(IILjavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 548
    :pswitch_14
    :try_start_0
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ljavassist/bytecode/analysis/Executor;->classPool:Ljavassist/ClassPool;

    invoke-static {p1, p2}, Ljavassist/bytecode/Descriptor;->getReturnType(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object p1

    .line 549
    invoke-static {p1}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    .line 551
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 544
    :pswitch_15
    sget-object p1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 541
    :pswitch_16
    sget-object p1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 538
    :pswitch_17
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 535
    :pswitch_18
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 530
    :pswitch_19
    sget-object p1, Ljavassist/bytecode/analysis/Type;->RETURN_ADDRESS:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result p2

    invoke-virtual {p4, p2}, Ljavassist/bytecode/analysis/Frame;->getLocal(I)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 527
    :pswitch_1a
    sget-object p1, Ljavassist/bytecode/analysis/Type;->RETURN_ADDRESS:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 521
    :pswitch_1b
    sget-object p1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 522
    sget-object p1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 516
    :pswitch_1c
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 517
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 508
    :pswitch_1d
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 496
    :pswitch_1e
    sget-object p1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 497
    sget-object p1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 498
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 490
    :pswitch_1f
    sget-object p1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 491
    sget-object p1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 492
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 484
    :pswitch_20
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 485
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 486
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 481
    :pswitch_21
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->peek()Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 475
    :pswitch_22
    sget-object p1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 476
    sget-object p1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 471
    :pswitch_23
    sget-object p1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 472
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 467
    :pswitch_24
    sget-object p1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 468
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 463
    :pswitch_25
    sget-object p1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 464
    sget-object p1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 459
    :pswitch_26
    sget-object p1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 460
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 455
    :pswitch_27
    sget-object p1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 456
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 451
    :pswitch_28
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 452
    sget-object p1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 447
    :pswitch_29
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 448
    sget-object p1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 443
    :pswitch_2a
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 444
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 439
    :pswitch_2b
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 440
    sget-object p1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 435
    :pswitch_2c
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 436
    sget-object p1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 431
    :pswitch_2d
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 432
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    :pswitch_2e
    add-int/lit8 p2, p2, 0x1

    .line 423
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result p1

    .line 424
    sget-object p2, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, p1}, Ljavassist/bytecode/analysis/Frame;->getLocal(I)Ljavassist/bytecode/analysis/Type;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 425
    sget-object p2, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p2, p5}, Ljavassist/bytecode/analysis/Executor;->access(ILjavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Subroutine;)V

    goto/16 :goto_3

    .line 419
    :pswitch_2f
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 416
    :pswitch_30
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 413
    :pswitch_31
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 410
    :pswitch_32
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 407
    :pswitch_33
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 404
    :pswitch_34
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 399
    :pswitch_35
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalShift(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 396
    :pswitch_36
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalShift(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 393
    :pswitch_37
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalShift(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 390
    :pswitch_38
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalShift(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 387
    :pswitch_39
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalShift(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 384
    :pswitch_3a
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalShift(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 379
    :pswitch_3b
    sget-object p1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePeek(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 376
    :pswitch_3c
    sget-object p1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePeek(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 373
    :pswitch_3d
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePeek(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 370
    :pswitch_3e
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePeek(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 365
    :pswitch_3f
    sget-object p1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 362
    :pswitch_40
    sget-object p1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 359
    :pswitch_41
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 356
    :pswitch_42
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 353
    :pswitch_43
    sget-object p1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 350
    :pswitch_44
    sget-object p1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 347
    :pswitch_45
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 344
    :pswitch_46
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 341
    :pswitch_47
    sget-object p1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 338
    :pswitch_48
    sget-object p1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 335
    :pswitch_49
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 332
    :pswitch_4a
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 329
    :pswitch_4b
    sget-object p1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 326
    :pswitch_4c
    sget-object p1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 323
    :pswitch_4d
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 320
    :pswitch_4e
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 317
    :pswitch_4f
    sget-object p1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 314
    :pswitch_50
    sget-object p1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 311
    :pswitch_51
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 308
    :pswitch_52
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 297
    :pswitch_53
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->pop()Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    .line 298
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->pop()Ljavassist/bytecode/analysis/Type;

    move-result-object p3

    .line 299
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->getSize()I

    move-result p5

    const/4 v0, 0x2

    if-eq p5, v0, :cond_2

    invoke-virtual {p3}, Ljavassist/bytecode/analysis/Type;->getSize()I

    move-result p5

    if-eq p5, v0, :cond_2

    .line 301
    invoke-virtual {p4, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 302
    invoke-virtual {p4, p3}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 300
    :cond_2
    new-instance p1, Ljavassist/bytecode/BadBytecode;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Swap can not be used with category 2 values, pos = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw p1

    .line 282
    :pswitch_54
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->getTopIndex()I

    move-result p1

    add-int/lit8 v0, v0, -0x5d

    sub-int p2, p1, v0

    add-int/lit8 p2, p2, -0x1

    .line 284
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->getTopIndex()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p4, p3}, Ljavassist/bytecode/analysis/Frame;->getStack(I)Ljavassist/bytecode/analysis/Type;

    move-result-object p3

    .line 285
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->peek()Ljavassist/bytecode/analysis/Type;

    move-result-object p5

    .line 286
    invoke-virtual {p4, p3}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 287
    invoke-virtual {p4, p5}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    :goto_1
    if-le p1, p2, :cond_3

    add-int/lit8 v0, p1, -0x2

    .line 289
    invoke-virtual {p4, v0}, Ljavassist/bytecode/analysis/Frame;->getStack(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    invoke-virtual {p4, p1, v0}, Ljavassist/bytecode/analysis/Frame;->setStack(ILjavassist/bytecode/analysis/Type;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 292
    :cond_3
    invoke-virtual {p4, p2, p5}, Ljavassist/bytecode/analysis/Frame;->setStack(ILjavassist/bytecode/analysis/Type;)V

    add-int/lit8 p2, p2, -0x1

    .line 293
    invoke-virtual {p4, p2, p3}, Ljavassist/bytecode/analysis/Frame;->setStack(ILjavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 277
    :pswitch_55
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->getTopIndex()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p4, p1}, Ljavassist/bytecode/analysis/Frame;->getStack(I)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 278
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->getTopIndex()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p4, p1}, Ljavassist/bytecode/analysis/Frame;->getStack(I)Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 262
    :pswitch_56
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->peek()Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    .line 263
    sget-object p3, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    if-eq p1, p3, :cond_5

    .line 265
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->getTopIndex()I

    move-result p2

    add-int/lit8 v0, v0, -0x5a

    sub-int p3, p2, v0

    add-int/lit8 p3, p3, -0x1

    .line 267
    invoke-virtual {p4, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    :goto_2
    if-le p2, p3, :cond_4

    add-int/lit8 p5, p2, -0x1

    .line 270
    invoke-virtual {p4, p5}, Ljavassist/bytecode/analysis/Frame;->getStack(I)Ljavassist/bytecode/analysis/Type;

    move-result-object p5

    invoke-virtual {p4, p2, p5}, Ljavassist/bytecode/analysis/Frame;->setStack(ILjavassist/bytecode/analysis/Type;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 273
    :cond_4
    invoke-virtual {p4, p3, p1}, Ljavassist/bytecode/analysis/Frame;->setStack(ILjavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 264
    :cond_5
    new-instance p1, Ljavassist/bytecode/BadBytecode;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw p1

    .line 253
    :pswitch_57
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->peek()Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    .line 254
    sget-object p3, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    if-eq p1, p3, :cond_6

    .line 257
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->peek()Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 255
    :cond_6
    new-instance p1, Ljavassist/bytecode/BadBytecode;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw p1

    .line 249
    :pswitch_58
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->pop()Ljavassist/bytecode/analysis/Type;

    .line 250
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->pop()Ljavassist/bytecode/analysis/Type;

    goto/16 :goto_3

    .line 245
    :pswitch_59
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->pop()Ljavassist/bytecode/analysis/Type;

    move-result-object p1

    sget-object p3, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    if-eq p1, p3, :cond_7

    goto/16 :goto_3

    .line 246
    :cond_7
    new-instance p1, Ljavassist/bytecode/BadBytecode;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "POP can not be used with a category 2 value, pos = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw p1

    .line 242
    :pswitch_5a
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalArrayStore(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 237
    :pswitch_5b
    sget-object p1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalArrayStore(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 234
    :pswitch_5c
    sget-object p1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalArrayStore(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 231
    :pswitch_5d
    sget-object p1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalArrayStore(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 228
    :pswitch_5e
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalArrayStore(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 225
    :pswitch_5f
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalArrayStore(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 222
    :pswitch_60
    sget-object p1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v0, v0, -0x4b

    invoke-direct {p0, p1, v0, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto/16 :goto_3

    .line 216
    :pswitch_61
    sget-object p1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v0, v0, -0x47

    invoke-direct {p0, p1, v0, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto/16 :goto_3

    .line 210
    :pswitch_62
    sget-object p1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v0, v0, -0x43

    invoke-direct {p0, p1, v0, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto/16 :goto_3

    .line 204
    :pswitch_63
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v0, v0, -0x3f

    invoke-direct {p0, p1, v0, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto/16 :goto_3

    .line 198
    :pswitch_64
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v0, v0, -0x3b

    invoke-direct {p0, p1, v0, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto/16 :goto_3

    .line 192
    :pswitch_65
    sget-object p1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result p2

    invoke-direct {p0, p1, p2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto/16 :goto_3

    .line 189
    :pswitch_66
    sget-object p1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result p2

    invoke-direct {p0, p1, p2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto/16 :goto_3

    .line 186
    :pswitch_67
    sget-object p1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result p2

    invoke-direct {p0, p1, p2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto/16 :goto_3

    .line 183
    :pswitch_68
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result p2

    invoke-direct {p0, p1, p2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto/16 :goto_3

    .line 180
    :pswitch_69
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result p2

    invoke-direct {p0, p1, p2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto/16 :goto_3

    .line 177
    :pswitch_6a
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalArrayLoad(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 172
    :pswitch_6b
    sget-object p1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalArrayLoad(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 169
    :pswitch_6c
    sget-object p1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalArrayLoad(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 166
    :pswitch_6d
    sget-object p1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalArrayLoad(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 163
    :pswitch_6e
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalArrayLoad(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 160
    :pswitch_6f
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalArrayLoad(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_3

    .line 157
    :pswitch_70
    sget-object p1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v0, v0, -0x2a

    invoke-direct {p0, p1, v0, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto/16 :goto_3

    .line 151
    :pswitch_71
    sget-object p1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v0, v0, -0x26

    invoke-direct {p0, p1, v0, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto/16 :goto_3

    .line 145
    :pswitch_72
    sget-object p1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v0, v0, -0x22

    invoke-direct {p0, p1, v0, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto/16 :goto_3

    .line 139
    :pswitch_73
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v0, v0, -0x1e

    invoke-direct {p0, p1, v0, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto/16 :goto_3

    .line 133
    :pswitch_74
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v0, v0, -0x1a

    invoke-direct {p0, p1, v0, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto/16 :goto_3

    .line 127
    :pswitch_75
    sget-object p1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result p2

    invoke-direct {p0, p1, p2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto/16 :goto_3

    .line 124
    :pswitch_76
    sget-object p1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result p2

    invoke-direct {p0, p1, p2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto :goto_3

    .line 121
    :pswitch_77
    sget-object p1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result p2

    invoke-direct {p0, p1, p2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto :goto_3

    .line 118
    :pswitch_78
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result p2

    invoke-direct {p0, p1, p2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto :goto_3

    .line 115
    :pswitch_79
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result p2

    invoke-direct {p0, p1, p2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto :goto_3

    :pswitch_7a
    add-int/lit8 p2, p2, 0x1

    .line 112
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result p1

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalLDC(ILjavassist/bytecode/analysis/Frame;)V

    goto :goto_3

    :pswitch_7b
    add-int/lit8 p2, p2, 0x1

    .line 108
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result p1

    invoke-direct {p0, p1, p4}, Ljavassist/bytecode/analysis/Executor;->evalLDC(ILjavassist/bytecode/analysis/Frame;)V

    goto :goto_3

    .line 105
    :pswitch_7c
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    goto :goto_3

    .line 100
    :pswitch_7d
    sget-object p1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 101
    sget-object p1, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    goto :goto_3

    .line 96
    :pswitch_7e
    sget-object p1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    goto :goto_3

    .line 90
    :pswitch_7f
    sget-object p1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 91
    sget-object p1, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    goto :goto_3

    .line 86
    :pswitch_80
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    goto :goto_3

    .line 77
    :pswitch_81
    sget-object p1, Ljavassist/bytecode/analysis/Type;->UNINIT:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_81
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_7f
        :pswitch_7f
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7d
        :pswitch_7d
        :pswitch_7c
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_74
        :pswitch_74
        :pswitch_74
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_70
        :pswitch_70
        :pswitch_70
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_6a
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
