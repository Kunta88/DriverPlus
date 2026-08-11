.class public Ljavassist/compiler/AccessorMaker;
.super Ljava/lang/Object;
.source "AccessorMaker.java"


# static fields
.field static final lastParamType:Ljava/lang/String; = "javassist.runtime.Inner"


# instance fields
.field private accessors:Ljava/util/HashMap;

.field private clazz:Ljavassist/CtClass;

.field private uniqueNumber:I


# direct methods
.method public constructor <init>(Ljavassist/CtClass;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    const/4 p1, 0x1

    .line 36
    iput p1, p0, Ljavassist/compiler/AccessorMaker;->uniqueNumber:I

    .line 37
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ljavassist/compiler/AccessorMaker;->accessors:Ljava/util/HashMap;

    return-void
.end method

.method private findAccessorName(Ljavassist/bytecode/ClassFile;)Ljava/lang/String;
    .locals 3

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "access$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavassist/compiler/AccessorMaker;->uniqueNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/compiler/AccessorMaker;->uniqueNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {p1, v0}, Ljavassist/bytecode/ClassFile;->getMethod(Ljava/lang/String;)Ljavassist/bytecode/MethodInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0
.end method


# virtual methods
.method public getConstructor(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const-string p1, "<init>"

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<init>:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Ljavassist/compiler/AccessorMaker;->accessors:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const-string v1, "javassist.runtime.Inner"

    .line 48
    invoke-static {v1, p2}, Ljavassist/bytecode/Descriptor;->appendParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    iget-object v2, p0, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-virtual {v2}, Ljavassist/CtClass;->getClassFile()Ljavassist/bytecode/ClassFile;

    move-result-object v2

    .line 51
    :try_start_0
    invoke-virtual {v2}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    .line 52
    iget-object v4, p0, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-virtual {v4}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v4

    .line 53
    new-instance v5, Ljavassist/bytecode/MethodInfo;

    invoke-direct {v5, v3, p1, v1}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 55
    invoke-virtual {v5, v6}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 56
    new-instance v7, Ljavassist/bytecode/SyntheticAttribute;

    invoke-direct {v7, v3}, Ljavassist/bytecode/SyntheticAttribute;-><init>(Ljavassist/bytecode/ConstPool;)V

    invoke-virtual {v5, v7}, Ljavassist/bytecode/MethodInfo;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 57
    invoke-virtual {p3}, Ljavassist/bytecode/MethodInfo;->getExceptionsAttribute()Ljavassist/bytecode/ExceptionsAttribute;

    move-result-object p3

    const/4 v7, 0x0

    if-eqz p3, :cond_1

    .line 59
    invoke-virtual {p3, v3, v7}, Ljavassist/bytecode/ExceptionsAttribute;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljavassist/bytecode/MethodInfo;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 61
    :cond_1
    invoke-static {p2, v4}, Ljavassist/bytecode/Descriptor;->getParameterTypes(Ljava/lang/String;Ljavassist/ClassPool;)[Ljavassist/CtClass;

    move-result-object p3

    .line 62
    new-instance v4, Ljavassist/bytecode/Bytecode;

    invoke-direct {v4, v3}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 63
    invoke-virtual {v4, v6}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    const/4 v3, 0x1

    const/4 v8, 0x1

    .line 65
    :goto_0
    array-length v9, p3

    if-ge v6, v9, :cond_2

    .line 66
    aget-object v9, p3, v6

    invoke-virtual {v4, v8, v9}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v8, v3

    .line 67
    invoke-virtual {v4, v8}, Ljavassist/bytecode/Bytecode;->setMaxLocals(I)V

    .line 68
    iget-object p3, p0, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-virtual {v4, p3, p1, p2}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v4, v7}, Ljavassist/bytecode/Bytecode;->addReturn(Ljavassist/CtClass;)V

    .line 71
    invoke-virtual {v4}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 72
    invoke-virtual {v2, v5}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V
    :try_end_0
    .catch Ljavassist/CannotCompileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    iget-object p1, p0, Ljavassist/compiler/AccessorMaker;->accessors:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :catch_0
    move-exception p1

    .line 78
    new-instance p2, Ljavassist/compiler/CompileError;

    invoke-direct {p2, p1}, Ljavassist/compiler/CompileError;-><init>(Ljavassist/NotFoundException;)V

    throw p2

    :catch_1
    move-exception p1

    .line 75
    new-instance p2, Ljavassist/compiler/CompileError;

    invoke-direct {p2, p1}, Ljavassist/compiler/CompileError;-><init>(Ljavassist/CannotCompileException;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public getFieldGetter(Ljavassist/bytecode/FieldInfo;Z)Ljavassist/bytecode/MethodInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 153
    invoke-virtual {p1}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":getter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    iget-object v2, p0, Ljavassist/compiler/AccessorMaker;->accessors:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 157
    check-cast v2, Ljavassist/bytecode/MethodInfo;

    return-object v2

    .line 159
    :cond_0
    iget-object v2, p0, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-virtual {v2}, Ljavassist/CtClass;->getClassFile()Ljavassist/bytecode/ClassFile;

    move-result-object v2

    .line 160
    invoke-direct {p0, v2}, Ljavassist/compiler/AccessorMaker;->findAccessorName(Ljavassist/bytecode/ClassFile;)Ljava/lang/String;

    move-result-object v3

    .line 162
    :try_start_0
    invoke-virtual {v2}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v4

    .line 163
    iget-object v5, p0, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-virtual {v5}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v5

    .line 164
    invoke-virtual {p1}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 169
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-static {v7}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 171
    :goto_0
    new-instance v7, Ljavassist/bytecode/MethodInfo;

    invoke-direct {v7, v4, v3, v6}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x8

    .line 172
    invoke-virtual {v7, v3}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 173
    new-instance v3, Ljavassist/bytecode/SyntheticAttribute;

    invoke-direct {v3, v4}, Ljavassist/bytecode/SyntheticAttribute;-><init>(Ljavassist/bytecode/ConstPool;)V

    invoke-virtual {v7, v3}, Ljavassist/bytecode/MethodInfo;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 174
    new-instance v3, Ljavassist/bytecode/Bytecode;

    invoke-direct {v3, v4}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;)V

    if-eqz p2, :cond_2

    .line 176
    sget-object p2, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-virtual {v3, p2, v0, p1}, Ljavassist/bytecode/Bytecode;->addGetstatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 179
    invoke-virtual {v3, p2}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 180
    sget-object p2, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-virtual {v3, p2, v0, p1}, Ljavassist/bytecode/Bytecode;->addGetfield(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 181
    invoke-virtual {v3, p2}, Ljavassist/bytecode/Bytecode;->setMaxLocals(I)V

    .line 184
    :goto_1
    invoke-static {p1, v5}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljavassist/bytecode/Bytecode;->addReturn(Ljavassist/CtClass;)V

    .line 185
    invoke-virtual {v3}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 186
    invoke-virtual {v2, v7}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    .line 187
    iget-object p1, p0, Ljavassist/compiler/AccessorMaker;->accessors:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavassist/CannotCompileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception p1

    .line 194
    new-instance p2, Ljavassist/compiler/CompileError;

    invoke-direct {p2, p1}, Ljavassist/compiler/CompileError;-><init>(Ljavassist/NotFoundException;)V

    throw p2

    :catch_1
    move-exception p1

    .line 191
    new-instance p2, Ljavassist/compiler/CompileError;

    invoke-direct {p2, p1}, Ljavassist/compiler/CompileError;-><init>(Ljavassist/CannotCompileException;)V

    throw p2
.end method

.method public getFieldSetter(Ljavassist/bytecode/FieldInfo;Z)Ljavassist/bytecode/MethodInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 204
    invoke-virtual {p1}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":setter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    iget-object v2, p0, Ljavassist/compiler/AccessorMaker;->accessors:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 208
    check-cast v2, Ljavassist/bytecode/MethodInfo;

    return-object v2

    .line 210
    :cond_0
    iget-object v2, p0, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-virtual {v2}, Ljavassist/CtClass;->getClassFile()Ljavassist/bytecode/ClassFile;

    move-result-object v2

    .line 211
    invoke-direct {p0, v2}, Ljavassist/compiler/AccessorMaker;->findAccessorName(Ljavassist/bytecode/ClassFile;)Ljava/lang/String;

    move-result-object v3

    .line 213
    :try_start_0
    invoke-virtual {v2}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v4

    .line 214
    iget-object v5, p0, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-virtual {v5}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v5

    .line 215
    invoke-virtual {p1}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljavassist/CannotCompileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ")V"

    const-string v7, "("

    if-eqz p2, :cond_1

    .line 218
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 220
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-static {v8}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 222
    :goto_0
    new-instance v7, Ljavassist/bytecode/MethodInfo;

    invoke-direct {v7, v4, v3, v6}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x8

    .line 223
    invoke-virtual {v7, v3}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 224
    new-instance v3, Ljavassist/bytecode/SyntheticAttribute;

    invoke-direct {v3, v4}, Ljavassist/bytecode/SyntheticAttribute;-><init>(Ljavassist/bytecode/ConstPool;)V

    invoke-virtual {v7, v3}, Ljavassist/bytecode/MethodInfo;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 225
    new-instance v3, Ljavassist/bytecode/Bytecode;

    invoke-direct {v3, v4}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;)V

    const/4 v4, 0x0

    if-eqz p2, :cond_2

    .line 228
    invoke-static {p1, v5}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    move-result p2

    .line 229
    sget-object v4, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-virtual {v3, v4, v0, p1}, Ljavassist/bytecode/Bytecode;->addPutstatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 232
    :cond_2
    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 233
    invoke-static {p1, v5}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object p2

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p2}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    move-result p2

    add-int/2addr p2, v4

    .line 235
    sget-object v4, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-virtual {v3, v4, v0, p1}, Ljavassist/bytecode/Bytecode;->addPutfield(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x0

    .line 238
    invoke-virtual {v3, p1}, Ljavassist/bytecode/Bytecode;->addReturn(Ljavassist/CtClass;)V

    .line 239
    invoke-virtual {v3, p2}, Ljavassist/bytecode/Bytecode;->setMaxLocals(I)V

    .line 240
    invoke-virtual {v3}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 241
    invoke-virtual {v2, v7}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    .line 242
    iget-object p1, p0, Ljavassist/compiler/AccessorMaker;->accessors:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljavassist/CannotCompileException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v7

    :catch_0
    move-exception p1

    .line 249
    new-instance p2, Ljavassist/compiler/CompileError;

    invoke-direct {p2, p1}, Ljavassist/compiler/CompileError;-><init>(Ljavassist/NotFoundException;)V

    throw p2

    :catch_1
    move-exception p1

    .line 246
    new-instance p2, Ljavassist/compiler/CompileError;

    invoke-direct {p2, p1}, Ljavassist/compiler/CompileError;-><init>(Ljavassist/CannotCompileException;)V

    throw p2
.end method

.method public getMethodAccessor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, p0, Ljavassist/compiler/AccessorMaker;->accessors:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    .line 107
    :cond_0
    iget-object v1, p0, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-virtual {v1}, Ljavassist/CtClass;->getClassFile()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    .line 108
    invoke-direct {p0, v1}, Ljavassist/compiler/AccessorMaker;->findAccessorName(Ljavassist/bytecode/ClassFile;)Ljava/lang/String;

    move-result-object v2

    .line 110
    :try_start_0
    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    .line 111
    iget-object v4, p0, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-virtual {v4}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v4

    .line 112
    new-instance v5, Ljavassist/bytecode/MethodInfo;

    invoke-direct {v5, v3, v2, p3}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x8

    .line 114
    invoke-virtual {v5, v6}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 115
    new-instance v6, Ljavassist/bytecode/SyntheticAttribute;

    invoke-direct {v6, v3}, Ljavassist/bytecode/SyntheticAttribute;-><init>(Ljavassist/bytecode/ConstPool;)V

    invoke-virtual {v5, v6}, Ljavassist/bytecode/MethodInfo;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 116
    invoke-virtual {p4}, Ljavassist/bytecode/MethodInfo;->getExceptionsAttribute()Ljavassist/bytecode/ExceptionsAttribute;

    move-result-object p4

    if-eqz p4, :cond_1

    const/4 v6, 0x0

    .line 118
    invoke-virtual {p4, v3, v6}, Ljavassist/bytecode/ExceptionsAttribute;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p4

    invoke-virtual {v5, p4}, Ljavassist/bytecode/MethodInfo;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 120
    :cond_1
    invoke-static {p3, v4}, Ljavassist/bytecode/Descriptor;->getParameterTypes(Ljava/lang/String;Ljavassist/ClassPool;)[Ljavassist/CtClass;

    move-result-object p4

    .line 122
    new-instance v6, Ljavassist/bytecode/Bytecode;

    invoke-direct {v6, v3}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;)V

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 123
    :goto_0
    array-length v8, p4

    if-ge v3, v8, :cond_2

    .line 124
    aget-object v8, p4, v3

    invoke-virtual {v6, v7, v8}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {v6, v7}, Ljavassist/bytecode/Bytecode;->setMaxLocals(I)V

    if-ne p2, p3, :cond_3

    .line 128
    iget-object p3, p0, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-virtual {v6, p3, p1, p2}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 130
    :cond_3
    iget-object p3, p0, Ljavassist/compiler/AccessorMaker;->clazz:Ljavassist/CtClass;

    invoke-virtual {v6, p3, p1, p2}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_1
    invoke-static {p2, v4}, Ljavassist/bytecode/Descriptor;->getReturnType(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljavassist/bytecode/Bytecode;->addReturn(Ljavassist/CtClass;)V

    .line 133
    invoke-virtual {v6}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 134
    invoke-virtual {v1, v5}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V
    :try_end_0
    .catch Ljavassist/CannotCompileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    iget-object p1, p0, Ljavassist/compiler/AccessorMaker;->accessors:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :catch_0
    move-exception p1

    .line 140
    new-instance p2, Ljavassist/compiler/CompileError;

    invoke-direct {p2, p1}, Ljavassist/compiler/CompileError;-><init>(Ljavassist/NotFoundException;)V

    throw p2

    :catch_1
    move-exception p1

    .line 137
    new-instance p2, Ljavassist/compiler/CompileError;

    invoke-direct {p2, p1}, Ljavassist/compiler/CompileError;-><init>(Ljavassist/CannotCompileException;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method
