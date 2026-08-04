.class public Ljavassist/CtNewConstructor;
.super Ljava/lang/Object;
.source "CtNewConstructor.java"


# static fields
.field public static final PASS_ARRAY:I = 0x1

.field public static final PASS_NONE:I = 0x0

.field public static final PASS_PARAMS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljavassist/CtConstructor;Ljavassist/CtClass;Ljavassist/ClassMap;)Ljavassist/CtConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 127
    new-instance v0, Ljavassist/CtConstructor;

    invoke-direct {v0, p0, p1, p2}, Ljavassist/CtConstructor;-><init>(Ljavassist/CtConstructor;Ljavassist/CtClass;Ljavassist/ClassMap;)V

    return-object v0
.end method

.method public static defaultConstructor(Ljavassist/CtClass;)Ljavassist/CtConstructor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 139
    new-instance v0, Ljavassist/CtConstructor;

    const/4 v1, 0x0

    check-cast v1, [Ljavassist/CtClass;

    invoke-direct {v0, v1, p0}, Ljavassist/CtConstructor;-><init>([Ljavassist/CtClass;Ljavassist/CtClass;)V

    .line 141
    invoke-virtual {p0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    .line 142
    new-instance v2, Ljavassist/bytecode/Bytecode;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v3}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    const/4 v1, 0x0

    .line 143
    invoke-virtual {v2, v1}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 145
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object p0

    const-string v1, "<init>"

    const-string v3, "()V"

    invoke-virtual {v2, p0, v1, v3}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p0, 0xb1

    .line 152
    invoke-virtual {v2, p0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 155
    invoke-virtual {v0}, Ljavassist/CtConstructor;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object p0

    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    return-object v0

    :catch_0
    move-exception p0

    .line 149
    new-instance v0, Ljavassist/CannotCompileException;

    invoke-direct {v0, p0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v0
.end method

.method public static make(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 68
    new-instance v0, Ljavassist/compiler/Javac;

    invoke-direct {v0, p1}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    .line 70
    :try_start_0
    invoke-virtual {v0, p0}, Ljavassist/compiler/Javac;->compile(Ljava/lang/String;)Ljavassist/CtMember;

    move-result-object p0

    .line 71
    instance-of p1, p0, Ljavassist/CtConstructor;

    if-eqz p1, :cond_0

    .line 73
    check-cast p0, Ljavassist/CtConstructor;
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 80
    :cond_0
    new-instance p0, Ljavassist/CannotCompileException;

    const-string p1, "not a constructor"

    invoke-direct {p0, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 77
    new-instance p1, Ljavassist/CannotCompileException;

    invoke-direct {p1, p0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw p1
.end method

.method public static make([Ljavassist/CtClass;[Ljavassist/CtClass;ILjavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;Ljavassist/CtClass;)Ljavassist/CtConstructor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 314
    invoke-static/range {p0 .. p5}, Ljavassist/CtNewWrappedConstructor;->wrapped([Ljavassist/CtClass;[Ljavassist/CtClass;ILjavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;Ljavassist/CtClass;)Ljavassist/CtConstructor;

    move-result-object p0

    return-object p0
.end method

.method public static make([Ljavassist/CtClass;[Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 101
    :try_start_0
    new-instance v0, Ljavassist/CtConstructor;

    invoke-direct {v0, p0, p3}, Ljavassist/CtConstructor;-><init>([Ljavassist/CtClass;Ljavassist/CtClass;)V

    .line 102
    invoke-virtual {v0, p1}, Ljavassist/CtConstructor;->setExceptionTypes([Ljavassist/CtClass;)V

    .line 103
    invoke-virtual {v0, p2}, Ljavassist/CtConstructor;->setBody(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 107
    new-instance p1, Ljavassist/CannotCompileException;

    invoke-direct {p1, p0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw p1
.end method

.method public static make([Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtConstructor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 200
    invoke-static/range {v0 .. v5}, Ljavassist/CtNewConstructor;->make([Ljavassist/CtClass;[Ljavassist/CtClass;ILjavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;Ljavassist/CtClass;)Ljavassist/CtConstructor;

    move-result-object p0

    return-object p0
.end method

.method public static skeleton([Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtConstructor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 181
    invoke-static/range {v0 .. v5}, Ljavassist/CtNewConstructor;->make([Ljavassist/CtClass;[Ljavassist/CtClass;ILjavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;Ljavassist/CtClass;)Ljavassist/CtConstructor;

    move-result-object p0

    return-object p0
.end method
