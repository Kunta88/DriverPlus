.class Ljavassist/CtNewWrappedConstructor;
.super Ljavassist/CtNewWrappedMethod;
.source "CtNewWrappedConstructor.java"


# static fields
.field private static final PASS_NONE:I = 0x0

.field private static final PASS_PARAMS:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljavassist/CtNewWrappedMethod;-><init>()V

    return-void
.end method

.method protected static makeBody(Ljavassist/CtClass;Ljavassist/bytecode/ClassFile;ILjavassist/CtMethod;[Ljavassist/CtClass;Ljavassist/CtMethod$ConstParameter;)Ljavassist/bytecode/Bytecode;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getSuperclassId()I

    move-result v0

    .line 59
    new-instance v9, Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2, v2}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 60
    invoke-virtual {v9, v2, p4, v2}, Ljavassist/bytecode/Bytecode;->setMaxLocals(Z[Ljavassist/CtClass;I)V

    .line 61
    invoke-virtual {v9, v2}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    const-string v1, "<init>"

    const/4 v2, 0x1

    if-nez p2, :cond_0

    const-string p2, "()V"

    .line 64
    invoke-virtual {v9, v0, v1, p2}, Ljavassist/bytecode/Bytecode;->addInvokespecial(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 67
    invoke-virtual {v9, p4, v2}, Ljavassist/bytecode/Bytecode;->addLoadParameters([Ljavassist/CtClass;I)I

    move-result p2

    add-int/2addr v2, p2

    .line 68
    invoke-static {p4}, Ljavassist/bytecode/Descriptor;->ofConstructor([Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v9, v0, v1, p2}, Ljavassist/bytecode/Bytecode;->addInvokespecial(ILjava/lang/String;Ljava/lang/String;)V

    move p2, v2

    goto :goto_1

    .line 72
    :cond_1
    invoke-static {v9, p4, v2}, Ljavassist/CtNewWrappedConstructor;->compileParameterList(Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;I)I

    move-result p2

    if-nez p5, :cond_2

    .line 76
    invoke-static {}, Ljavassist/CtMethod$ConstParameter;->defaultConstDescriptor()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p5, v9}, Ljavassist/CtMethod$ConstParameter;->compile(Ljavassist/bytecode/Bytecode;)I

    move-result v2

    add-int/2addr v3, v2

    .line 80
    invoke-virtual {p5}, Ljavassist/CtMethod$ConstParameter;->constDescriptor()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-ge p2, v3, :cond_3

    move p2, v3

    .line 86
    :cond_3
    invoke-virtual {v9, v0, v1, v2}, Ljavassist/bytecode/Bytecode;->addInvokespecial(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-nez p3, :cond_4

    const/16 p0, 0xb1

    .line 90
    invoke-virtual {v9, p0}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 92
    sget-object v6, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v5, p4

    move-object v7, p5

    move-object v8, v9

    invoke-static/range {v1 .. v8}, Ljavassist/CtNewWrappedConstructor;->makeBody0(Ljavassist/CtClass;Ljavassist/bytecode/ClassFile;Ljavassist/CtMethod;Z[Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/CtMethod$ConstParameter;Ljavassist/bytecode/Bytecode;)I

    move-result p0

    if-ge p2, p0, :cond_5

    move p2, p0

    .line 99
    :cond_5
    :goto_2
    invoke-virtual {v9, p2}, Ljavassist/bytecode/Bytecode;->setMaxStack(I)V

    return-object v9
.end method

.method public static wrapped([Ljavassist/CtClass;[Ljavassist/CtClass;ILjavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;Ljavassist/CtClass;)Ljavassist/CtConstructor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 36
    :try_start_0
    new-instance v0, Ljavassist/CtConstructor;

    invoke-direct {v0, p0, p5}, Ljavassist/CtConstructor;-><init>([Ljavassist/CtClass;Ljavassist/CtClass;)V

    .line 37
    invoke-virtual {v0, p1}, Ljavassist/CtConstructor;->setExceptionTypes([Ljavassist/CtClass;)V

    .line 38
    invoke-virtual {p5}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v2

    move-object v1, p5

    move v3, p2

    move-object v4, p3

    move-object v5, p0

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Ljavassist/CtNewWrappedConstructor;->makeBody(Ljavassist/CtClass;Ljavassist/bytecode/ClassFile;ILjavassist/CtMethod;[Ljavassist/CtClass;Ljavassist/CtMethod$ConstParameter;)Ljavassist/bytecode/Bytecode;

    move-result-object p0

    .line 41
    invoke-virtual {v0}, Ljavassist/CtConstructor;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object p1

    invoke-virtual {p0}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 45
    new-instance p1, Ljavassist/CannotCompileException;

    invoke-direct {p1, p0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw p1
.end method
