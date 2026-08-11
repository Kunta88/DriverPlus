.class public abstract Ljavassist/expr/Expr;
.super Ljava/lang/Object;
.source "Expr.java"

# interfaces
.implements Ljavassist/bytecode/Opcode;


# static fields
.field static final javaLangObject:Ljava/lang/String; = "java.lang.Object"


# instance fields
.field currentPos:I

.field edited:Z

.field iterator:Ljavassist/bytecode/CodeIterator;

.field maxLocals:I

.field maxStack:I

.field thisClass:Ljavassist/CtClass;

.field thisMethod:Ljavassist/bytecode/MethodInfo;


# direct methods
.method protected constructor <init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Ljavassist/expr/Expr;->currentPos:I

    .line 60
    iput-object p2, p0, Ljavassist/expr/Expr;->iterator:Ljavassist/bytecode/CodeIterator;

    .line 61
    iput-object p3, p0, Ljavassist/expr/Expr;->thisClass:Ljavassist/CtClass;

    .line 62
    iput-object p4, p0, Ljavassist/expr/Expr;->thisMethod:Ljavassist/bytecode/MethodInfo;

    return-void
.end method

.method private static addClass(Ljava/util/LinkedList;Ljavassist/CtClass;)V
    .locals 2

    .line 173
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 174
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-void

    .line 178
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static final checkResultValue(Ljavassist/CtClass;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const-string v0, "$_"

    .line 217
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 218
    sget-object v0, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    if-ne p0, v0, :cond_1

    goto :goto_1

    .line 219
    :cond_1
    new-instance p0, Ljavassist/CannotCompileException;

    const-string p1, "the resulting value is not stored in $_"

    invoke-direct {p0, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return p1
.end method

.method static final storeStack([Ljavassist/CtClass;ZILjavassist/bytecode/Bytecode;)V
    .locals 3

    .line 235
    array-length v0, p0

    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, p0, v1, p3}, Ljavassist/expr/Expr;->storeStack0(II[Ljavassist/CtClass;ILjavassist/bytecode/Bytecode;)V

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    .line 237
    invoke-virtual {p3, p0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 239
    :cond_0
    invoke-virtual {p3, p2}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    return-void
.end method

.method private static storeStack0(II[Ljavassist/CtClass;ILjavassist/bytecode/Bytecode;)V
    .locals 3

    if-lt p0, p1, :cond_0

    return-void

    .line 247
    :cond_0
    aget-object v0, p2, p0

    .line 249
    instance-of v1, v0, Ljavassist/CtPrimitiveType;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 250
    move-object v1, v0

    check-cast v1, Ljavassist/CtPrimitiveType;

    invoke-virtual {v1}, Ljavassist/CtPrimitiveType;->getDataSize()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    add-int/2addr p0, v2

    add-int/2addr v1, p3

    .line 254
    invoke-static {p0, p1, p2, v1, p4}, Ljavassist/expr/Expr;->storeStack0(II[Ljavassist/CtClass;ILjavassist/bytecode/Bytecode;)V

    .line 255
    invoke-virtual {p4, p3, v0}, Ljavassist/bytecode/Bytecode;->addStore(ILjavassist/CtClass;)I

    return-void
.end method


# virtual methods
.method protected final edited()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Ljavassist/expr/Expr;->edited:Z

    return v0
.end method

.method protected final getConstPool()Ljavassist/bytecode/ConstPool;
    .locals 1

    .line 74
    iget-object v0, p0, Ljavassist/expr/Expr;->thisMethod:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingClass()Ljavassist/CtClass;
    .locals 1

    .line 71
    iget-object v0, p0, Ljavassist/expr/Expr;->thisClass:Ljavassist/CtClass;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Ljavassist/expr/Expr;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 209
    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 2

    .line 196
    iget-object v0, p0, Ljavassist/expr/Expr;->thisMethod:Ljavassist/bytecode/MethodInfo;

    iget v1, p0, Ljavassist/expr/Expr;->currentPos:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/MethodInfo;->getLineNumber(I)I

    move-result v0

    return v0
.end method

.method public indexOfBytecode()I
    .locals 1

    .line 187
    iget v0, p0, Ljavassist/expr/Expr;->currentPos:I

    return v0
.end method

.method protected final locals()I
    .locals 1

    .line 82
    iget v0, p0, Ljavassist/expr/Expr;->maxLocals:I

    return v0
.end method

.method public mayThrow()[Ljavassist/CtClass;
    .locals 9

    .line 133
    iget-object v0, p0, Ljavassist/expr/Expr;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    .line 134
    iget-object v1, p0, Ljavassist/expr/Expr;->thisMethod:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    .line 135
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const/4 v3, 0x0

    .line 137
    :try_start_0
    iget-object v4, p0, Ljavassist/expr/Expr;->thisMethod:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v4

    .line 138
    invoke-virtual {v4}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v4

    .line 139
    iget v5, p0, Ljavassist/expr/Expr;->currentPos:I

    .line 140
    invoke-virtual {v4}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    .line 142
    invoke-virtual {v4, v7}, Ljavassist/bytecode/ExceptionTable;->startPc(I)I

    move-result v8

    if-gt v8, v5, :cond_0

    invoke-virtual {v4, v7}, Ljavassist/bytecode/ExceptionTable;->endPc(I)I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 143
    invoke-virtual {v4, v7}, Ljavassist/bytecode/ExceptionTable;->catchType(I)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v8, :cond_0

    .line 146
    :try_start_1
    invoke-virtual {v1, v8}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v8

    invoke-static {v2, v8}, Ljavassist/expr/Expr;->addClass(Ljava/util/LinkedList;Ljavassist/CtClass;)V
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_1
    nop

    .line 155
    :cond_1
    iget-object v1, p0, Ljavassist/expr/Expr;->thisMethod:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getExceptionsAttribute()Ljavassist/bytecode/ExceptionsAttribute;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 157
    invoke-virtual {v1}, Ljavassist/bytecode/ExceptionsAttribute;->getExceptions()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 159
    array-length v4, v1

    :goto_1
    if-ge v3, v4, :cond_2

    .line 162
    :try_start_2
    aget-object v5, v1, v3

    invoke-virtual {v0, v5}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v5

    invoke-static {v2, v5}, Ljavassist/expr/Expr;->addClass(Ljava/util/LinkedList;Ljavassist/CtClass;)V
    :try_end_2
    .catch Ljavassist/NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 169
    :cond_2
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Ljavassist/CtClass;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavassist/CtClass;

    check-cast v0, [Ljavassist/CtClass;

    return-object v0
.end method

.method public abstract replace(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation
.end method

.method public replace(Ljava/lang/String;Ljavassist/expr/ExprEditor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 285
    invoke-virtual {p0, p1}, Ljavassist/expr/Expr;->replace(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 287
    iget-object p1, p0, Ljavassist/expr/Expr;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {p0, p2, p1}, Ljavassist/expr/Expr;->runEditor(Ljavassist/expr/ExprEditor;Ljavassist/bytecode/CodeIterator;)V

    :cond_0
    return-void
.end method

.method protected replace0(ILjavassist/bytecode/Bytecode;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 292
    invoke-virtual {p2}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object v0

    const/4 v1, 0x1

    .line 293
    iput-boolean v1, p0, Ljavassist/expr/Expr;->edited:Z

    .line 294
    array-length v1, v0

    sub-int/2addr v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_0

    .line 296
    iget-object v4, p0, Ljavassist/expr/Expr;->iterator:Ljavassist/bytecode/CodeIterator;

    add-int v5, p1, v3

    invoke-virtual {v4, v2, v5}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    .line 299
    iget-object p3, p0, Ljavassist/expr/Expr;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {p3, p1, v1, v2}, Ljavassist/bytecode/CodeIterator;->insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;

    move-result-object p1

    iget p1, p1, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    .line 301
    :cond_1
    iget-object p3, p0, Ljavassist/expr/Expr;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {p3, v0, p1}, Ljavassist/bytecode/CodeIterator;->write([BI)V

    .line 302
    iget-object p3, p0, Ljavassist/expr/Expr;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {p2}, Ljavassist/bytecode/Bytecode;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Ljavassist/bytecode/CodeIterator;->insert(Ljavassist/bytecode/ExceptionTable;I)V

    .line 303
    invoke-virtual {p2}, Ljavassist/bytecode/Bytecode;->getMaxLocals()I

    move-result p1

    iput p1, p0, Ljavassist/expr/Expr;->maxLocals:I

    .line 304
    invoke-virtual {p2}, Ljavassist/bytecode/Bytecode;->getMaxStack()I

    move-result p1

    iput p1, p0, Ljavassist/expr/Expr;->maxStack:I

    return-void
.end method

.method protected runEditor(Ljavassist/expr/ExprEditor;Ljavassist/bytecode/CodeIterator;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 310
    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v1

    .line 312
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v2

    .line 313
    invoke-virtual {p0}, Ljavassist/expr/Expr;->locals()I

    move-result v3

    .line 314
    invoke-virtual {p0}, Ljavassist/expr/Expr;->stack()I

    move-result v4

    invoke-virtual {v0, v4}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    .line 315
    invoke-virtual {v0, v3}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V

    .line 316
    new-instance v4, Ljavassist/expr/ExprEditor$LoopContext;

    invoke-direct {v4, v3}, Ljavassist/expr/ExprEditor$LoopContext;-><init>(I)V

    .line 318
    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v3

    .line 319
    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->lookAhead()I

    move-result v11

    .line 320
    iget v5, p0, Ljavassist/expr/Expr;->currentPos:I

    invoke-virtual {p2, v5}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 321
    iget-object v6, p0, Ljavassist/expr/Expr;->thisClass:Ljavassist/CtClass;

    iget-object v7, p0, Ljavassist/expr/Expr;->thisMethod:Ljavassist/bytecode/MethodInfo;

    move-object v5, p1

    move-object v8, v4

    move-object v9, p2

    move v10, v11

    invoke-virtual/range {v5 .. v10}, Ljavassist/expr/ExprEditor;->doit(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/expr/ExprEditor$LoopContext;Ljavassist/bytecode/CodeIterator;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 322
    iput-boolean p1, p0, Ljavassist/expr/Expr;->edited:Z

    .line 324
    :cond_0
    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result p1

    add-int/2addr v11, p1

    sub-int/2addr v11, v3

    invoke-virtual {p2, v11}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 325
    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V

    .line 326
    invoke-virtual {v0, v2}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    .line 327
    iget p1, v4, Ljavassist/expr/ExprEditor$LoopContext;->maxLocals:I

    iput p1, p0, Ljavassist/expr/Expr;->maxLocals:I

    .line 328
    iget p1, p0, Ljavassist/expr/Expr;->maxStack:I

    iget p2, v4, Ljavassist/expr/ExprEditor$LoopContext;->maxStack:I

    add-int/2addr p1, p2

    iput p1, p0, Ljavassist/expr/Expr;->maxStack:I

    return-void
.end method

.method protected final stack()I
    .locals 1

    .line 86
    iget v0, p0, Ljavassist/expr/Expr;->maxStack:I

    return v0
.end method

.method public where()Ljavassist/CtBehavior;
    .locals 4

    .line 100
    iget-object v0, p0, Ljavassist/expr/Expr;->thisMethod:Ljavassist/bytecode/MethodInfo;

    .line 101
    iget-object v1, p0, Ljavassist/expr/Expr;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v1}, Ljavassist/CtClass;->getDeclaredBehaviors()[Ljavassist/CtBehavior;

    move-result-object v1

    .line 102
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 103
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljavassist/CtBehavior;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 104
    aget-object v0, v1, v2

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 106
    :cond_1
    iget-object v2, p0, Ljavassist/expr/Expr;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v2}, Ljavassist/CtClass;->getClassInitializer()Ljavassist/CtConstructor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 107
    invoke-virtual {v2}, Ljavassist/CtConstructor;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v3

    if-ne v3, v0, :cond_2

    return-object v2

    .line 115
    :cond_2
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    .line 116
    iget-object v2, p0, Ljavassist/expr/Expr;->thisMethod:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v2}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljavassist/CtBehavior;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljavassist/expr/Expr;->thisMethod:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v2}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljavassist/CtBehavior;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    aget-object v0, v1, v0

    return-object v0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 123
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fatal: not found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method protected final withinStatic()Z
    .locals 1

    .line 93
    iget-object v0, p0, Ljavassist/expr/Expr;->thisMethod:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
