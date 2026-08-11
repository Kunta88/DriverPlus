.class Ljavassist/CtField$ParamInitializer;
.super Ljavassist/CtField$Initializer;
.source "CtField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/CtField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParamInitializer"
.end annotation


# instance fields
.field nthParam:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 928
    invoke-direct {p0}, Ljavassist/CtField$Initializer;-><init>()V

    return-void
.end method

.method static nthParamToLocal(I[Ljavassist/CtClass;Z)I
    .locals 4

    .line 955
    sget-object v0, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    .line 956
    sget-object v1, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    xor-int/lit8 p2, p2, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_2

    .line 964
    aget-object v3, p1, v2

    if-eq v3, v0, :cond_1

    if-ne v3, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method


# virtual methods
.method compile(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;Ljavassist/compiler/Javac;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 p5, 0x0

    if-eqz p4, :cond_0

    .line 934
    iget v0, p0, Ljavassist/CtField$ParamInitializer;->nthParam:I

    array-length v1, p4

    if-ge v0, v1, :cond_0

    .line 935
    invoke-virtual {p3, p5}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 936
    iget v0, p0, Ljavassist/CtField$ParamInitializer;->nthParam:I

    invoke-static {v0, p4, p5}, Ljavassist/CtField$ParamInitializer;->nthParamToLocal(I[Ljavassist/CtClass;Z)I

    move-result p4

    .line 937
    invoke-virtual {p3, p4, p1}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    .line 938
    sget-object p5, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p5, p2, p1}, Ljavassist/bytecode/Bytecode;->addPutfield(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    return p4

    :cond_0
    return p5
.end method

.method compileIfStatic(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/Javac;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
