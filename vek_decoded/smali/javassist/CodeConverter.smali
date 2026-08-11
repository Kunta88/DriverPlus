.class public Ljavassist/CodeConverter;
.super Ljava/lang/Object;
.source "CodeConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/CodeConverter$DefaultArrayAccessReplacementMethodNames;,
        Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;
    }
.end annotation


# instance fields
.field protected transformers:Ljavassist/convert/Transformer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    return-void
.end method


# virtual methods
.method protected doit(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/ConstPool;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 497
    invoke-virtual {p2}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 498
    iget-object v1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 501
    invoke-virtual {v1, p3, p1, p2}, Ljavassist/convert/Transformer;->initialize(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 500
    invoke-virtual {v1}, Ljavassist/convert/Transformer;->getNext()Ljavassist/convert/Transformer;

    move-result-object v1

    goto :goto_0

    .line 503
    :cond_1
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object p2

    .line 504
    :cond_2
    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 506
    :try_start_0
    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v1

    .line 507
    iget-object v2, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    :goto_1
    if-eqz v2, :cond_2

    .line 508
    invoke-virtual {v2, p1, v1, p2, p3}, Ljavassist/convert/Transformer;->transform(Ljavassist/CtClass;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/ConstPool;)I

    move-result v1

    .line 507
    invoke-virtual {v2}, Ljavassist/convert/Transformer;->getNext()Ljavassist/convert/Transformer;

    move-result-object v2
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 511
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 517
    :cond_3
    iget-object p1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_2
    if-eqz p1, :cond_6

    .line 518
    invoke-virtual {p1}, Ljavassist/convert/Transformer;->extraLocals()I

    move-result v1

    if-le v1, p2, :cond_4

    move p2, v1

    .line 522
    :cond_4
    invoke-virtual {p1}, Ljavassist/convert/Transformer;->extraStack()I

    move-result v1

    if-le v1, p3, :cond_5

    move p3, v1

    .line 517
    :cond_5
    invoke-virtual {p1}, Ljavassist/convert/Transformer;->getNext()Ljavassist/convert/Transformer;

    move-result-object p1

    goto :goto_2

    .line 527
    :cond_6
    iget-object p1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    :goto_3
    if-eqz p1, :cond_7

    .line 528
    invoke-virtual {p1}, Ljavassist/convert/Transformer;->clean()V

    .line 527
    invoke-virtual {p1}, Ljavassist/convert/Transformer;->getNext()Ljavassist/convert/Transformer;

    move-result-object p1

    goto :goto_3

    :cond_7
    if-lez p2, :cond_8

    .line 531
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V

    :cond_8
    if-lez p3, :cond_9

    .line 534
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result p1

    add-int/2addr p1, p3

    invoke-virtual {v0, p1}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    :cond_9
    :goto_4
    return-void
.end method

.method public insertAfterMethod(Ljavassist/CtMethod;Ljavassist/CtMethod;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 482
    :try_start_0
    new-instance v0, Ljavassist/convert/TransformAfter;

    iget-object v1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    invoke-direct {v0, v1, p1, p2}, Ljavassist/convert/TransformAfter;-><init>(Ljavassist/convert/Transformer;Ljavassist/CtMethod;Ljavassist/CtMethod;)V

    iput-object v0, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 486
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw p2
.end method

.method public insertBeforeMethod(Ljavassist/CtMethod;Ljavassist/CtMethod;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 435
    :try_start_0
    new-instance v0, Ljavassist/convert/TransformBefore;

    iget-object v1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    invoke-direct {v0, v1, p1, p2}, Ljavassist/convert/TransformBefore;-><init>(Ljavassist/convert/Transformer;Ljavassist/CtMethod;Ljavassist/CtMethod;)V

    iput-object v0, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 439
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw p2
.end method

.method public redirectFieldAccess(Ljavassist/CtField;Ljavassist/CtClass;Ljava/lang/String;)V
    .locals 2

    .line 146
    new-instance v0, Ljavassist/convert/TransformFieldAccess;

    iget-object v1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2, p3}, Ljavassist/convert/TransformFieldAccess;-><init>(Ljavassist/convert/Transformer;Ljavassist/CtField;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    return-void
.end method

.method public redirectMethodCall(Ljava/lang/String;Ljavassist/CtMethod;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 392
    new-instance v0, Ljavassist/convert/TransformCall;

    iget-object v1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    invoke-direct {v0, v1, p1, p2}, Ljavassist/convert/TransformCall;-><init>(Ljavassist/convert/Transformer;Ljava/lang/String;Ljavassist/CtMethod;)V

    iput-object v0, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    return-void
.end method

.method public redirectMethodCall(Ljavassist/CtMethod;Ljavassist/CtMethod;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 352
    invoke-virtual {p1}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-virtual {p2}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    invoke-virtual {p1}, Ljavassist/CtMethod;->getModifiers()I

    move-result v0

    .line 359
    invoke-virtual {p2}, Ljavassist/CtMethod;->getModifiers()I

    move-result v1

    .line 360
    invoke-static {v0}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v2

    invoke-static {v1}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-static {v0}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtClass;->isInterface()Z

    move-result v0

    invoke-virtual {p2}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/CtClass;->isInterface()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 367
    new-instance v0, Ljavassist/convert/TransformCall;

    iget-object v1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    invoke-direct {v0, v1, p1, p2}, Ljavassist/convert/TransformCall;-><init>(Ljavassist/convert/Transformer;Ljavassist/CtMethod;Ljavassist/CtMethod;)V

    iput-object v0, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    return-void

    .line 364
    :cond_1
    new-instance p1, Ljavassist/CannotCompileException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invoke-type mismatch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljavassist/CtMethod;->getLongName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 355
    :cond_2
    new-instance p1, Ljavassist/CannotCompileException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "signature mismatch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljavassist/CtMethod;->getLongName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public replaceArrayAccess(Ljavassist/CtClass;Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 330
    new-instance v0, Ljavassist/convert/TransformAccessArrayField;

    iget-object v1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, p2}, Ljavassist/convert/TransformAccessArrayField;-><init>(Ljavassist/convert/Transformer;Ljava/lang/String;Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;)V

    iput-object v0, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    return-void
.end method

.method public replaceFieldRead(Ljavassist/CtField;Ljavassist/CtClass;Ljava/lang/String;)V
    .locals 2

    .line 186
    new-instance v0, Ljavassist/convert/TransformReadField;

    iget-object v1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2, p3}, Ljavassist/convert/TransformReadField;-><init>(Ljavassist/convert/Transformer;Ljavassist/CtField;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    return-void
.end method

.method public replaceFieldWrite(Ljavassist/CtField;Ljavassist/CtClass;Ljava/lang/String;)V
    .locals 2

    .line 227
    new-instance v0, Ljavassist/convert/TransformWriteField;

    iget-object v1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2, p3}, Ljavassist/convert/TransformWriteField;-><init>(Ljavassist/convert/Transformer;Ljavassist/CtField;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    return-void
.end method

.method public replaceNew(Ljavassist/CtClass;Ljavassist/CtClass;)V
    .locals 2

    .line 123
    new-instance v0, Ljavassist/convert/TransformNewClass;

    iget-object v1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2}, Ljavassist/convert/TransformNewClass;-><init>(Ljavassist/convert/Transformer;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    return-void
.end method

.method public replaceNew(Ljavassist/CtClass;Ljavassist/CtClass;Ljava/lang/String;)V
    .locals 2

    .line 97
    new-instance v0, Ljavassist/convert/TransformNew;

    iget-object v1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2, p3}, Ljavassist/convert/TransformNew;-><init>(Ljavassist/convert/Transformer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    return-void
.end method
