.class public Ljavassist/CtNewMethod;
.super Ljava/lang/Object;
.source "CtNewMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abstractMethod(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 208
    new-instance v0, Ljavassist/CtMethod;

    invoke-direct {v0, p0, p1, p2, p4}, Ljavassist/CtMethod;-><init>(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;Ljavassist/CtClass;)V

    .line 209
    invoke-virtual {v0, p3}, Ljavassist/CtMethod;->setExceptionTypes([Ljavassist/CtClass;)V

    return-object v0
.end method

.method public static copy(Ljavassist/CtMethod;Ljava/lang/String;Ljavassist/CtClass;Ljavassist/ClassMap;)Ljavassist/CtMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 185
    new-instance v0, Ljavassist/CtMethod;

    invoke-direct {v0, p0, p2, p3}, Ljavassist/CtMethod;-><init>(Ljavassist/CtMethod;Ljavassist/CtClass;Ljavassist/ClassMap;)V

    .line 186
    invoke-virtual {v0, p1}, Ljavassist/CtMethod;->setName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static copy(Ljavassist/CtMethod;Ljavassist/CtClass;Ljavassist/ClassMap;)Ljavassist/CtMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 163
    new-instance v0, Ljavassist/CtMethod;

    invoke-direct {v0, p0, p1, p2}, Ljavassist/CtMethod;-><init>(Ljavassist/CtMethod;Ljavassist/CtClass;Ljavassist/ClassMap;)V

    return-object v0
.end method

.method public static delegator(Ljavassist/CtMethod;Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 321
    :try_start_0
    invoke-static {p0, p1}, Ljavassist/CtNewMethod;->delegator0(Ljavassist/CtMethod;Ljavassist/CtClass;)Ljavassist/CtMethod;

    move-result-object p0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 324
    new-instance p1, Ljavassist/CannotCompileException;

    invoke-direct {p1, p0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw p1
.end method

.method private static delegator0(Ljavassist/CtMethod;Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 331
    invoke-virtual {p0}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-virtual {p1}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    .line 335
    new-instance v4, Ljavassist/bytecode/MethodInfo;

    invoke-direct {v4, v3, v1, v2}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v5

    invoke-virtual {v4, v5}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 338
    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getExceptionsAttribute()Ljavassist/bytecode/ExceptionsAttribute;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    .line 340
    invoke-virtual {v0, v3, v5}, Ljavassist/bytecode/ExceptionsAttribute;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/ExceptionsAttribute;

    invoke-virtual {v4, v0}, Ljavassist/bytecode/MethodInfo;->setExceptionsAttribute(Ljavassist/bytecode/ExceptionsAttribute;)V

    .line 343
    :cond_0
    new-instance v0, Ljavassist/bytecode/Bytecode;

    const/4 v5, 0x0

    invoke-direct {v0, v3, v5, v5}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 344
    invoke-virtual {p0}, Ljavassist/CtMethod;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v3

    .line 345
    invoke-virtual {p0}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v6

    .line 346
    invoke-virtual {p0}, Ljavassist/CtMethod;->getParameterTypes()[Ljavassist/CtClass;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v3, :cond_1

    .line 349
    invoke-virtual {v0, v7, v5}, Ljavassist/bytecode/Bytecode;->addLoadParameters([Ljavassist/CtClass;I)I

    move-result v3

    .line 350
    invoke-virtual {v0, v6, v1, v2}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {v0, v5, v6}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    .line 354
    invoke-virtual {v0, v7, v8}, Ljavassist/bytecode/Bytecode;->addLoadParameters([Ljavassist/CtClass;I)I

    move-result v3

    .line 355
    invoke-virtual {v0, v6, v1, v2}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :goto_0
    invoke-virtual {p0}, Ljavassist/CtMethod;->getReturnType()Ljavassist/CtClass;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavassist/bytecode/Bytecode;->addReturn(Ljavassist/CtClass;)V

    add-int/2addr v3, v8

    .line 359
    invoke-virtual {v0, v3}, Ljavassist/bytecode/Bytecode;->setMaxLocals(I)V

    const/4 p0, 0x2

    if-ge v3, p0, :cond_2

    const/4 v3, 0x2

    .line 360
    :cond_2
    invoke-virtual {v0, v3}, Ljavassist/bytecode/Bytecode;->setMaxStack(I)V

    .line 361
    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 362
    new-instance p0, Ljavassist/CtMethod;

    invoke-direct {p0, v4, p1}, Ljavassist/CtMethod;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    return-object p0
.end method

.method public static getter(Ljava/lang/String;Ljavassist/CtField;)Ljavassist/CtMethod;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 225
    invoke-virtual {p1}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    .line 229
    new-instance v4, Ljavassist/bytecode/MethodInfo;

    invoke-direct {v4, v3, p0, v2}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 230
    invoke-virtual {v4, p0}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 232
    new-instance v2, Ljavassist/bytecode/Bytecode;

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, p0}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 234
    :try_start_0
    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object p0

    .line 235
    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getAccessFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 236
    invoke-virtual {v2, v0}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 237
    sget-object v0, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-virtual {v2, v0, p0, v1}, Ljavassist/bytecode/Bytecode;->addGetfield(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_0
    sget-object v0, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-virtual {v2, v0, p0, v1}, Ljavassist/bytecode/Bytecode;->addGetstatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :goto_0
    invoke-virtual {p1}, Ljavassist/CtField;->getType()Ljavassist/CtClass;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljavassist/bytecode/Bytecode;->addReturn(Ljavassist/CtClass;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 249
    new-instance p0, Ljavassist/CtMethod;

    invoke-virtual {p1}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Ljavassist/CtMethod;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 245
    new-instance p1, Ljavassist/CannotCompileException;

    invoke-direct {p1, p0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw p1
.end method

.method public static make(ILjavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;[Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 134
    :try_start_0
    new-instance v0, Ljavassist/CtMethod;

    invoke-direct {v0, p1, p2, p3, p6}, Ljavassist/CtMethod;-><init>(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;Ljavassist/CtClass;)V

    .line 136
    invoke-virtual {v0, p0}, Ljavassist/CtMethod;->setModifiers(I)V

    .line 137
    invoke-virtual {v0, p4}, Ljavassist/CtMethod;->setExceptionTypes([Ljavassist/CtClass;)V

    .line 138
    invoke-virtual {v0, p5}, Ljavassist/CtMethod;->setBody(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 142
    new-instance p1, Ljavassist/CannotCompileException;

    invoke-direct {p1, p0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw p1
.end method

.method public static make(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 45
    invoke-static {p0, p1, v0, v0}, Ljavassist/CtNewMethod;->make(Ljava/lang/String;Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object p0

    return-object p0
.end method

.method public static make(Ljava/lang/String;Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 69
    new-instance v0, Ljavassist/compiler/Javac;

    invoke-direct {v0, p1}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    if-eqz p3, :cond_0

    .line 72
    :try_start_0
    invoke-virtual {v0, p2, p3}, Ljavassist/compiler/Javac;->recordProceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    invoke-virtual {v0, p0}, Ljavassist/compiler/Javac;->compile(Ljava/lang/String;)Ljavassist/CtMember;

    move-result-object p0

    .line 75
    instance-of p1, p0, Ljavassist/CtMethod;

    if-eqz p1, :cond_1

    .line 76
    check-cast p0, Ljavassist/CtMethod;
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 82
    :cond_1
    new-instance p0, Ljavassist/CannotCompileException;

    const-string p1, "not a method"

    invoke-direct {p0, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 79
    new-instance p1, Ljavassist/CannotCompileException;

    invoke-direct {p1, p0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw p1
.end method

.method public static make(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;[Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 v0, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 106
    invoke-static/range {v0 .. v6}, Ljavassist/CtNewMethod;->make(ILjavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;[Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtMethod;

    move-result-object p0

    return-object p0
.end method

.method public static setter(Ljava/lang/String;Ljavassist/CtField;)Ljavassist/CtMethod;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 266
    invoke-virtual {p1}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")V"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    .line 270
    new-instance v4, Ljavassist/bytecode/MethodInfo;

    invoke-direct {v4, v3, p0, v2}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 271
    invoke-virtual {v4, p0}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 273
    new-instance v2, Ljavassist/bytecode/Bytecode;

    const/4 v5, 0x3

    invoke-direct {v2, v3, v5, v5}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 275
    :try_start_0
    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 276
    invoke-virtual {v0}, Ljavassist/bytecode/FieldInfo;->getAccessFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 277
    invoke-virtual {v2, v0}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 278
    invoke-virtual {p1}, Ljavassist/CtField;->getType()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    .line 279
    sget-object p0, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-virtual {v2, p0, v3, v1}, Ljavassist/bytecode/Bytecode;->addPutfield(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtField;->getType()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    .line 283
    sget-object p0, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-virtual {v2, p0, v3, v1}, Ljavassist/bytecode/Bytecode;->addPutstatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    .line 286
    invoke-virtual {v2, p0}, Ljavassist/bytecode/Bytecode;->addReturn(Ljavassist/CtClass;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 293
    new-instance p0, Ljavassist/CtMethod;

    invoke-virtual {p1}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Ljavassist/CtMethod;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 289
    new-instance p1, Ljavassist/CannotCompileException;

    invoke-direct {p1, p0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw p1
.end method

.method public static wrapped(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 468
    invoke-static/range {p0 .. p6}, Ljavassist/CtNewWrappedMethod;->wrapped(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;[Ljavassist/CtClass;Ljavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;Ljavassist/CtClass;)Ljavassist/CtMethod;

    move-result-object p0

    return-object p0
.end method
