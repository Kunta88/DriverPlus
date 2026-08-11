.class public final Ljavassist/CtMethod;
.super Ljavassist/CtBehavior;
.source "CtMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/CtMethod$StringConstParameter;,
        Ljavassist/CtMethod$LongConstParameter;,
        Ljavassist/CtMethod$IntConstParameter;,
        Ljavassist/CtMethod$ConstParameter;
    }
.end annotation


# instance fields
.field protected cachedStringRep:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavassist/CtClass;Ljava/lang/String;[Ljavassist/CtClass;Ljavassist/CtClass;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0, p4}, Ljavassist/CtMethod;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    .line 56
    invoke-virtual {p4}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object p4

    invoke-virtual {p4}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object p4

    .line 57
    invoke-static {p1, p3}, Ljavassist/bytecode/Descriptor;->ofMethod(Ljavassist/CtClass;[Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p1

    .line 58
    new-instance p3, Ljavassist/bytecode/MethodInfo;

    invoke-direct {p3, p4, p2, p1}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Ljavassist/CtMethod;->methodInfo:Ljavassist/bytecode/MethodInfo;

    const/16 p1, 0x401

    .line 59
    invoke-virtual {p0, p1}, Ljavassist/CtMethod;->setModifiers(I)V

    return-void
.end method

.method public constructor <init>(Ljavassist/CtMethod;Ljavassist/CtClass;Ljavassist/ClassMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, v0, p2}, Ljavassist/CtMethod;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    const/4 p2, 0x0

    .line 114
    invoke-virtual {p0, p1, p2, p3}, Ljavassist/CtMethod;->copy(Ljavassist/CtBehavior;ZLjavassist/ClassMap;)V

    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V
    .locals 0

    .line 38
    invoke-direct {p0, p2, p1}, Ljavassist/CtBehavior;-><init>(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Ljavassist/CtMethod;->cachedStringRep:Ljava/lang/String;

    return-void
.end method

.method public static make(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 130
    invoke-static {p0, p1}, Ljavassist/CtNewMethod;->make(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtMethod;

    move-result-object p0

    return-object p0
.end method

.method public static make(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 145
    invoke-virtual {p1}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 148
    new-instance v0, Ljavassist/CtMethod;

    invoke-direct {v0, p0, p1}, Ljavassist/CtMethod;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    return-object v0

    .line 146
    :cond_0
    new-instance p0, Ljavassist/CannotCompileException;

    const-string p1, "bad declaring class"

    invoke-direct {p0, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 183
    instance-of v0, p1, Ljavassist/CtMethod;

    if-eqz v0, :cond_0

    check-cast p1, Ljavassist/CtMethod;

    invoke-virtual {p1}, Ljavassist/CtMethod;->getStringRep()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljavassist/CtMethod;->getStringRep()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getLongName()Ljava/lang/String;
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/CtMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/CtMethod;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavassist/bytecode/Descriptor;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Ljavassist/CtMethod;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljavassist/CtClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Ljavassist/CtMethod;->getReturnType0()Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method final getStringRep()Ljava/lang/String;
    .locals 2

    .line 171
    iget-object v0, p0, Ljavassist/CtMethod;->cachedStringRep:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljavassist/CtMethod;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavassist/CtMethod;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavassist/bytecode/Descriptor;->getParamDescriptor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/CtMethod;->cachedStringRep:Ljava/lang/String;

    .line 175
    :cond_0
    iget-object v0, p0, Ljavassist/CtMethod;->cachedStringRep:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 157
    invoke-virtual {p0}, Ljavassist/CtMethod;->getStringRep()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 5

    .line 225
    invoke-virtual {p0}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 227
    invoke-virtual {p0}, Ljavassist/CtMethod;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 229
    :cond_1
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v0

    .line 231
    :try_start_0
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v3

    invoke-virtual {v0, v3}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v3

    const/16 v4, 0xb1

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    :catch_0
    return v2
.end method

.method nameReplaced()V
    .locals 1

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Ljavassist/CtMethod;->cachedStringRep:Ljava/lang/String;

    return-void
.end method

.method public setBody(Ljavassist/CtMethod;Ljavassist/ClassMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 255
    iget-object v0, p1, Ljavassist/CtMethod;->declaringClass:Ljavassist/CtClass;

    iget-object p1, p1, Ljavassist/CtMethod;->methodInfo:Ljavassist/bytecode/MethodInfo;

    iget-object v1, p0, Ljavassist/CtMethod;->declaringClass:Ljavassist/CtClass;

    iget-object v2, p0, Ljavassist/CtMethod;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-static {v0, p1, v1, v2, p2}, Ljavassist/CtMethod;->setBody0(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/ClassMap;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 209
    iget-object v0, p0, Ljavassist/CtMethod;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 210
    iget-object v0, p0, Ljavassist/CtMethod;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/MethodInfo;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setWrappedBody(Ljavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Ljavassist/CtMethod;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 275
    invoke-virtual {p0}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v1

    .line 279
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtMethod;->getParameterTypes()[Ljavassist/CtClass;

    move-result-object v4

    .line 280
    invoke-virtual {p0}, Ljavassist/CtMethod;->getReturnType()Ljavassist/CtClass;

    move-result-object v5
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    invoke-virtual {v1}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v2

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Ljavassist/CtNewWrappedMethod;->makeBody(Ljavassist/CtClass;Ljavassist/bytecode/ClassFile;Ljavassist/CtMethod;[Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/CtMethod$ConstParameter;)Ljavassist/bytecode/Bytecode;

    move-result-object p1

    .line 291
    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p1

    .line 292
    iget-object p2, p0, Ljavassist/CtMethod;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p2, p1}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 293
    iget-object p1, p0, Ljavassist/CtMethod;->methodInfo:Ljavassist/bytecode/MethodInfo;

    iget-object p2, p0, Ljavassist/CtMethod;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p2}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result p2

    and-int/lit16 p2, p2, -0x401

    invoke-virtual {p1, p2}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    return-void

    :catch_0
    move-exception p1

    .line 283
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw p2
.end method
