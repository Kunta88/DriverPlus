.class abstract Ljavassist/CtField$CodeInitializer0;
.super Ljavassist/CtField$Initializer;
.source "CtField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/CtField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CodeInitializer0"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 827
    invoke-direct {p0}, Ljavassist/CtField$Initializer;-><init>()V

    return-void
.end method


# virtual methods
.method compile(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;Ljavassist/compiler/Javac;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 p4, 0x0

    .line 835
    :try_start_0
    invoke-virtual {p3, p4}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 836
    invoke-virtual {p0, p5}, Ljavassist/CtField$CodeInitializer0;->compileExpr(Ljavassist/compiler/Javac;)V

    .line 837
    sget-object p4, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p4, p2, p1}, Ljavassist/bytecode/Bytecode;->addPutfield(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    invoke-virtual {p3}, Ljavassist/bytecode/Bytecode;->getMaxStack()I

    move-result p1
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 841
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw p2
.end method

.method abstract compileExpr(Ljavassist/compiler/Javac;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation
.end method

.method compileIfStatic(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/Javac;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 849
    :try_start_0
    invoke-virtual {p0, p4}, Ljavassist/CtField$CodeInitializer0;->compileExpr(Ljavassist/compiler/Javac;)V

    .line 850
    sget-object p4, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p4, p2, p1}, Ljavassist/bytecode/Bytecode;->addPutstatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    invoke-virtual {p3}, Ljavassist/bytecode/Bytecode;->getMaxStack()I

    move-result p1
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 854
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw p2
.end method

.method getConstantValue2(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;Ljavassist/compiler/ast/ASTree;)I
    .locals 2

    .line 859
    invoke-virtual {p2}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 860
    instance-of v0, p3, Ljavassist/compiler/ast/IntConst;

    if-eqz v0, :cond_3

    .line 861
    check-cast p3, Ljavassist/compiler/ast/IntConst;

    invoke-virtual {p3}, Ljavassist/compiler/ast/IntConst;->get()J

    move-result-wide v0

    .line 862
    sget-object p3, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    if-ne p2, p3, :cond_0

    long-to-double p2, v0

    .line 863
    invoke-virtual {p1, p2, p3}, Ljavassist/bytecode/ConstPool;->addDoubleInfo(D)I

    move-result p1

    return p1

    .line 864
    :cond_0
    sget-object p3, Ljavassist/CtClass;->floatType:Ljavassist/CtClass;

    if-ne p2, p3, :cond_1

    long-to-float p2, v0

    .line 865
    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->addFloatInfo(F)I

    move-result p1

    return p1

    .line 866
    :cond_1
    sget-object p3, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    if-ne p2, p3, :cond_2

    .line 867
    invoke-virtual {p1, v0, v1}, Ljavassist/bytecode/ConstPool;->addLongInfo(J)I

    move-result p1

    return p1

    .line 868
    :cond_2
    sget-object p3, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    if-eq p2, p3, :cond_6

    long-to-int p2, v0

    .line 869
    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->addIntegerInfo(I)I

    move-result p1

    return p1

    .line 871
    :cond_3
    instance-of v0, p3, Ljavassist/compiler/ast/DoubleConst;

    if-eqz v0, :cond_6

    .line 872
    check-cast p3, Ljavassist/compiler/ast/DoubleConst;

    invoke-virtual {p3}, Ljavassist/compiler/ast/DoubleConst;->get()D

    move-result-wide v0

    .line 873
    sget-object p3, Ljavassist/CtClass;->floatType:Ljavassist/CtClass;

    if-ne p2, p3, :cond_4

    double-to-float p2, v0

    .line 874
    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->addFloatInfo(F)I

    move-result p1

    return p1

    .line 875
    :cond_4
    sget-object p3, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    if-ne p2, p3, :cond_6

    .line 876
    invoke-virtual {p1, v0, v1}, Ljavassist/bytecode/ConstPool;->addDoubleInfo(D)I

    move-result p1

    return p1

    .line 879
    :cond_5
    instance-of v0, p3, Ljavassist/compiler/ast/StringL;

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "java.lang.String"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 881
    check-cast p3, Ljavassist/compiler/ast/StringL;

    invoke-virtual {p3}, Ljavassist/compiler/ast/StringL;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->addStringInfo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method
