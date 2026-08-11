.class Ljavassist/CtNewWrappedMethod;
.super Ljava/lang/Object;
.source "CtNewWrappedMethod.java"


# static fields
.field private static final addedWrappedMethod:Ljava/lang/String; = "_added_m$"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBodyMethod(Ljavassist/CtClassType;Ljavassist/bytecode/ClassFile;Ljavassist/CtMethod;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Ljavassist/CtClassType;->getHiddenMethods()Ljava/util/Hashtable;

    move-result-object v0

    .line 141
    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 144
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_added_m$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavassist/CtClassType;->getUniqueNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {p1, v1}, Ljavassist/bytecode/ClassFile;->getMethod(Ljava/lang/String;)Ljavassist/bytecode/MethodInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 146
    new-instance v2, Ljavassist/ClassMap;

    invoke-direct {v2}, Ljavassist/ClassMap;-><init>()V

    .line 147
    invoke-virtual {p2}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavassist/ClassMap;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v3, Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v4

    invoke-virtual {p2}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v5

    invoke-direct {v3, v4, v1, v5, v2}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;Ljava/util/Map;)V

    .line 151
    invoke-virtual {v3}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v2

    .line 152
    invoke-static {v2}, Ljavassist/bytecode/AccessFlag;->setPrivate(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 153
    new-instance v2, Ljavassist/bytecode/SyntheticAttribute;

    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v4

    invoke-direct {v2, v4}, Ljavassist/bytecode/SyntheticAttribute;-><init>(Ljavassist/bytecode/ConstPool;)V

    invoke-virtual {v3, v2}, Ljavassist/bytecode/MethodInfo;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 155
    invoke-virtual {p1, v3}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    .line 156
    invoke-virtual {v0, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {p0}, Ljavassist/CtClassType;->hasMemberCache()Ljavassist/CtMember$Cache;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 159
    new-instance p2, Ljavassist/CtMethod;

    invoke-direct {p2, v3, p0}, Ljavassist/CtMethod;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    invoke-virtual {p1, p2}, Ljavassist/CtMember$Cache;->addMethod(Ljavassist/CtMember;)V

    :cond_1
    return-object v1
.end method

.method private static checkSignature(Ljavassist/CtMethod;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 129
    :cond_0
    new-instance p1, Ljavassist/CannotCompileException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrapped method with a bad signature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/CtMethod;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static compileParameterList(Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;I)I
    .locals 0

    .line 174
    invoke-static {p0, p1, p2}, Ljavassist/compiler/JvstCodeGen;->compileParameterList(Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;I)I

    move-result p0

    return p0
.end method

.method private static compileReturn(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;)V
    .locals 3

    .line 181
    invoke-virtual {p1}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    check-cast p1, Ljavassist/CtPrimitiveType;

    .line 183
    sget-object v0, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    if-eq p1, v0, :cond_0

    .line 184
    invoke-virtual {p1}, Ljavassist/CtPrimitiveType;->getWrapperName()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addCheckcast(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Ljavassist/CtPrimitiveType;->getGetMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavassist/CtPrimitiveType;->getGetMethodDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtPrimitiveType;->getReturnOp()I

    move-result p1

    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addCheckcast(Ljavassist/CtClass;)V

    const/16 p1, 0xb0

    .line 194
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    :goto_0
    return-void
.end method

.method static makeBody(Ljavassist/CtClass;Ljavassist/bytecode/ClassFile;Ljavassist/CtMethod;[Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/CtMethod$ConstParameter;)Ljavassist/bytecode/Bytecode;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 58
    invoke-virtual {p2}, Ljavassist/CtMethod;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v0

    .line 59
    new-instance v9, Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10, v10}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v0

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object v8, v9

    .line 60
    invoke-static/range {v1 .. v8}, Ljavassist/CtNewWrappedMethod;->makeBody0(Ljavassist/CtClass;Ljavassist/bytecode/ClassFile;Ljavassist/CtMethod;Z[Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/CtMethod$ConstParameter;Ljavassist/bytecode/Bytecode;)I

    move-result v1

    .line 62
    invoke-virtual {v9, v1}, Ljavassist/bytecode/Bytecode;->setMaxStack(I)V

    move-object v1, p3

    .line 63
    invoke-virtual {v9, v0, p3, v10}, Ljavassist/bytecode/Bytecode;->setMaxLocals(Z[Ljavassist/CtClass;I)V

    return-object v9
.end method

.method protected static makeBody0(Ljavassist/CtClass;Ljavassist/bytecode/ClassFile;Ljavassist/CtMethod;Z[Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/CtMethod$ConstParameter;Ljavassist/bytecode/Bytecode;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 77
    instance-of v0, p0, Ljavassist/CtClassType;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 82
    invoke-virtual {p7, v0}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    :cond_0
    xor-int/lit8 v1, p3, 0x1

    .line 84
    invoke-static {p7, p4, v1}, Ljavassist/CtNewWrappedMethod;->compileParameterList(Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;I)I

    move-result p4

    if-nez p6, :cond_1

    .line 90
    invoke-static {}, Ljavassist/CtMethod$ConstParameter;->defaultDescriptor()Ljava/lang/String;

    move-result-object p6

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p6, p7}, Ljavassist/CtMethod$ConstParameter;->compile(Ljavassist/bytecode/Bytecode;)I

    move-result v0

    .line 94
    invoke-virtual {p6}, Ljavassist/CtMethod$ConstParameter;->descriptor()Ljava/lang/String;

    move-result-object p6

    .line 97
    :goto_0
    invoke-static {p2, p6}, Ljavassist/CtNewWrappedMethod;->checkSignature(Ljavassist/CtMethod;Ljava/lang/String;)V

    .line 101
    :try_start_0
    check-cast p0, Ljavassist/CtClassType;

    invoke-static {p0, p1, p2}, Ljavassist/CtNewWrappedMethod;->addBodyMethod(Ljavassist/CtClassType;Ljavassist/bytecode/ClassFile;Ljavassist/CtMethod;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_2

    .line 112
    sget-object p1, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-virtual {p7, p1, p0, p6}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_2
    sget-object p1, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-virtual {p7, p1, p0, p6}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_1
    invoke-static {p7, p5}, Ljavassist/CtNewWrappedMethod;->compileReturn(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;)V

    add-int/lit8 v0, v0, 0x2

    if-ge p4, v0, :cond_3

    move p4, v0

    :cond_3
    return p4

    :catch_0
    move-exception p0

    .line 108
    new-instance p1, Ljavassist/CannotCompileException;

    invoke-direct {p1, p0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 78
    :cond_4
    new-instance p1, Ljavassist/CannotCompileException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bad declaring class"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static wrapped(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 35
    new-instance v0, Ljavassist/CtMethod;

    invoke-direct {v0, p0, p1, p2, p6}, Ljavassist/CtMethod;-><init>(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;Ljavassist/CtClass;)V

    .line 37
    invoke-virtual {p4}, Ljavassist/CtMethod;->getModifiers()I

    move-result p1

    invoke-virtual {v0, p1}, Ljavassist/CtMethod;->setModifiers(I)V

    .line 39
    :try_start_0
    invoke-virtual {v0, p3}, Ljavassist/CtMethod;->setExceptionTypes([Ljavassist/CtClass;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    invoke-virtual {p6}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v2

    move-object v1, p6

    move-object v3, p4

    move-object v4, p2

    move-object v5, p0

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Ljavassist/CtNewWrappedMethod;->makeBody(Ljavassist/CtClass;Ljavassist/bytecode/ClassFile;Ljavassist/CtMethod;[Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/CtMethod$ConstParameter;)Ljavassist/bytecode/Bytecode;

    move-result-object p0

    .line 47
    invoke-virtual {v0}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object p1

    invoke-virtual {p0}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    return-object v0

    :catch_0
    move-exception p0

    .line 42
    new-instance p1, Ljavassist/CannotCompileException;

    invoke-direct {p1, p0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw p1
.end method
