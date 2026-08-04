.class public Ljavassist/bytecode/analysis/Analyzer;
.super Ljava/lang/Object;
.source "Analyzer.java"

# interfaces
.implements Ljavassist/bytecode/Opcode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;
    }
.end annotation


# instance fields
.field private clazz:Ljavassist/CtClass;

.field private exceptions:[Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;

.field private frames:[Ljavassist/bytecode/analysis/Frame;

.field private final scanner:Ljavassist/bytecode/analysis/SubroutineScanner;

.field private subroutines:[Ljavassist/bytecode/analysis/Subroutine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljavassist/bytecode/analysis/SubroutineScanner;

    invoke-direct {v0}, Ljavassist/bytecode/analysis/SubroutineScanner;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/analysis/Analyzer;->scanner:Ljavassist/bytecode/analysis/SubroutineScanner;

    return-void
.end method

.method private analyzeNextEntry(Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Executor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 170
    invoke-virtual {p3}, Ljavassist/bytecode/analysis/IntQueue;->take()I

    move-result v6

    .line 171
    invoke-virtual {p2, v6}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 172
    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->next()I

    .line 174
    iget-object v0, p0, Ljavassist/bytecode/analysis/Analyzer;->frames:[Ljavassist/bytecode/analysis/Frame;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljavassist/bytecode/analysis/Frame;->copy()Ljavassist/bytecode/analysis/Frame;

    move-result-object v7

    .line 175
    iget-object v0, p0, Ljavassist/bytecode/analysis/Analyzer;->subroutines:[Ljavassist/bytecode/analysis/Subroutine;

    aget-object v8, v0, v6

    move-object v0, p4

    move-object v1, p1

    move v2, v6

    move-object v3, p2

    move-object v4, v7

    move-object v5, v8

    .line 178
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Ljavassist/bytecode/analysis/Executor;->execute(Ljavassist/bytecode/MethodInfo;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    invoke-virtual {p2, v6}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result p4

    const/16 v0, 0xaa

    if-ne p4, v0, :cond_0

    .line 186
    invoke-direct {p0, p3, v6, p2, v7}, Ljavassist/bytecode/analysis/Analyzer;->mergeTableSwitch(Ljavassist/bytecode/analysis/IntQueue;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;)V

    goto :goto_1

    :cond_0
    const/16 v0, 0xab

    if-ne p4, v0, :cond_1

    .line 188
    invoke-direct {p0, p3, v6, p2, v7}, Ljavassist/bytecode/analysis/Analyzer;->mergeLookupSwitch(Ljavassist/bytecode/analysis/IntQueue;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;)V

    goto :goto_1

    :cond_1
    const/16 v0, 0xa9

    if-ne p4, v0, :cond_2

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move v3, v6

    move-object v4, v7

    move-object v5, v8

    .line 190
    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/analysis/Analyzer;->mergeRet(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/CodeIterator;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto :goto_1

    .line 191
    :cond_2
    invoke-static {p4}, Ljavassist/bytecode/analysis/Util;->isJumpInstruction(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 192
    invoke-static {v6, p2}, Ljavassist/bytecode/analysis/Util;->getJumpTarget(ILjavassist/bytecode/CodeIterator;)I

    move-result v8

    .line 194
    invoke-static {p4}, Ljavassist/bytecode/analysis/Util;->isJsr(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    iget-object p4, p0, Ljavassist/bytecode/analysis/Analyzer;->frames:[Ljavassist/bytecode/analysis/Frame;

    aget-object v2, p4, v6

    iget-object p4, p0, Ljavassist/bytecode/analysis/Analyzer;->subroutines:[Ljavassist/bytecode/analysis/Subroutine;

    aget-object v3, p4, v8

    invoke-direct {p0, p2, v6}, Ljavassist/bytecode/analysis/Analyzer;->lookAhead(Ljavassist/bytecode/CodeIterator;I)I

    move-result v5

    move-object v0, p0

    move-object v1, p3

    move v4, v6

    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/analysis/Analyzer;->mergeJsr(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;II)V

    goto :goto_0

    .line 197
    :cond_3
    invoke-static {p4}, Ljavassist/bytecode/analysis/Util;->isGoto(I)Z

    move-result p4

    if-nez p4, :cond_4

    .line 198
    invoke-direct {p0, p2, v6}, Ljavassist/bytecode/analysis/Analyzer;->lookAhead(Ljavassist/bytecode/CodeIterator;I)I

    move-result p2

    invoke-direct {p0, p3, v7, p2}, Ljavassist/bytecode/analysis/Analyzer;->merge(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Frame;I)V

    .line 201
    :cond_4
    :goto_0
    invoke-direct {p0, p3, v7, v8}, Ljavassist/bytecode/analysis/Analyzer;->merge(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Frame;I)V

    goto :goto_1

    :cond_5
    const/16 v0, 0xbf

    if-eq p4, v0, :cond_6

    .line 202
    invoke-static {p4}, Ljavassist/bytecode/analysis/Util;->isReturn(I)Z

    move-result p4

    if-nez p4, :cond_6

    .line 204
    invoke-direct {p0, p2, v6}, Ljavassist/bytecode/analysis/Analyzer;->lookAhead(Ljavassist/bytecode/CodeIterator;I)I

    move-result p2

    invoke-direct {p0, p3, v7, p2}, Ljavassist/bytecode/analysis/Analyzer;->merge(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Frame;I)V

    .line 210
    :cond_6
    :goto_1
    invoke-direct {p0, p3, p1, v6, v7}, Ljavassist/bytecode/analysis/Analyzer;->mergeExceptionHandlers(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/MethodInfo;ILjavassist/bytecode/analysis/Frame;)V

    return-void

    :catch_0
    move-exception p1

    .line 180
    new-instance p2, Ljavassist/bytecode/BadBytecode;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "[pos = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "]"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private buildExceptionInfo(Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;
    .locals 11

    .line 214
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 215
    iget-object v1, p0, Ljavassist/bytecode/analysis/Analyzer;->clazz:Ljavassist/CtClass;

    invoke-virtual {v1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v1

    .line 217
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p1

    invoke-virtual {p1}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v2

    new-array v2, v2, [Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;

    const/4 v3, 0x0

    .line 219
    :goto_0
    invoke-virtual {p1}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 220
    invoke-virtual {p1, v3}, Ljavassist/bytecode/ExceptionTable;->catchType(I)I

    move-result v4

    if-nez v4, :cond_0

    .line 223
    :try_start_0
    sget-object v4, Ljavassist/bytecode/analysis/Type;->THROWABLE:Ljavassist/bytecode/analysis/Type;

    :goto_1
    move-object v9, v4

    goto :goto_2

    :cond_0
    invoke-virtual {v0, v4}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v4

    invoke-static {v4}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object v4
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 228
    :goto_2
    new-instance v4, Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;

    invoke-virtual {p1, v3}, Ljavassist/bytecode/ExceptionTable;->startPc(I)I

    move-result v6

    invoke-virtual {p1, v3}, Ljavassist/bytecode/ExceptionTable;->endPc(I)I

    move-result v7

    invoke-virtual {p1, v3}, Ljavassist/bytecode/ExceptionTable;->handlerPc(I)I

    move-result v8

    const/4 v10, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;-><init>(IIILjavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Analyzer$1;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljavassist/NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v2
.end method

.method private firstFrame(Ljavassist/bytecode/MethodInfo;II)Ljavassist/bytecode/analysis/Frame;
    .locals 3

    .line 237
    new-instance v0, Ljavassist/bytecode/analysis/Frame;

    invoke-direct {v0, p2, p3}, Ljavassist/bytecode/analysis/Frame;-><init>(II)V

    .line 238
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result p2

    and-int/lit8 p2, p2, 0x8

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 239
    iget-object p2, p0, Ljavassist/bytecode/analysis/Analyzer;->clazz:Ljavassist/CtClass;

    invoke-static {p2}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Ljavassist/bytecode/analysis/Frame;->setLocal(ILjavassist/bytecode/analysis/Type;)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 244
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Ljavassist/bytecode/analysis/Analyzer;->clazz:Ljavassist/CtClass;

    invoke-virtual {v1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v1

    invoke-static {p1, v1}, Ljavassist/bytecode/Descriptor;->getParameterTypes(Ljava/lang/String;Ljavassist/ClassPool;)[Ljavassist/CtClass;

    move-result-object p1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_1
    array-length v1, p1

    if-ge p3, v1, :cond_2

    .line 250
    aget-object v1, p1, p3

    invoke-static {v1}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavassist/bytecode/analysis/Analyzer;->zeroExtend(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    .line 251
    invoke-virtual {v0, p2, v1}, Ljavassist/bytecode/analysis/Frame;->setLocal(ILjavassist/bytecode/analysis/Type;)V

    .line 252
    invoke-virtual {v1}, Ljavassist/bytecode/analysis/Type;->getSize()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    add-int/lit8 p2, v2, 0x1

    .line 253
    sget-object v1, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v0, v2, v1}, Ljavassist/bytecode/analysis/Frame;->setLocal(ILjavassist/bytecode/analysis/Type;)V

    goto :goto_2

    :cond_1
    move p2, v2

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    :catch_0
    move-exception p1

    .line 246
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method

.method private getNext(Ljavassist/bytecode/CodeIterator;II)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 260
    invoke-virtual {p1, p2}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 261
    invoke-virtual {p1}, Ljavassist/bytecode/CodeIterator;->next()I

    .line 262
    invoke-virtual {p1}, Ljavassist/bytecode/CodeIterator;->lookAhead()I

    move-result p2

    .line 263
    invoke-virtual {p1, p3}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 264
    invoke-virtual {p1}, Ljavassist/bytecode/CodeIterator;->next()I

    return p2
.end method

.method private lookAhead(Ljavassist/bytecode/CodeIterator;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 270
    invoke-virtual {p1}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p1}, Ljavassist/bytecode/CodeIterator;->lookAhead()I

    move-result p1

    return p1

    .line 271
    :cond_0
    new-instance p1, Ljavassist/bytecode/BadBytecode;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Execution falls off end! [pos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private merge(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Frame;I)V
    .locals 2

    .line 278
    iget-object v0, p0, Ljavassist/bytecode/analysis/Analyzer;->frames:[Ljavassist/bytecode/analysis/Frame;

    aget-object v1, v0, p3

    if-nez v1, :cond_0

    .line 282
    invoke-virtual {p2}, Ljavassist/bytecode/analysis/Frame;->copy()Ljavassist/bytecode/analysis/Frame;

    move-result-object p2

    aput-object p2, v0, p3

    const/4 p2, 0x1

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {v1, p2}, Ljavassist/bytecode/analysis/Frame;->merge(Ljavassist/bytecode/analysis/Frame;)Z

    move-result p2

    :goto_0
    if-eqz p2, :cond_1

    .line 289
    invoke-virtual {p1, p3}, Ljavassist/bytecode/analysis/IntQueue;->add(I)V

    :cond_1
    return-void
.end method

.method private mergeExceptionHandlers(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/MethodInfo;ILjavassist/bytecode/analysis/Frame;)V
    .locals 3

    const/4 p2, 0x0

    .line 294
    :goto_0
    iget-object v0, p0, Ljavassist/bytecode/analysis/Analyzer;->exceptions:[Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;

    array-length v1, v0

    if-ge p2, v1, :cond_1

    .line 295
    aget-object v0, v0, p2

    .line 298
    invoke-static {v0}, Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;->access$100(Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;)I

    move-result v1

    if-lt p3, v1, :cond_0

    invoke-static {v0}, Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;->access$200(Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;)I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 299
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->copy()Ljavassist/bytecode/analysis/Frame;

    move-result-object v1

    .line 300
    invoke-virtual {v1}, Ljavassist/bytecode/analysis/Frame;->clearStack()V

    .line 301
    invoke-static {v0}, Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;->access$300(Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 302
    invoke-static {v0}, Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;->access$400(Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;)I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Ljavassist/bytecode/analysis/Analyzer;->merge(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Frame;I)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private mergeJsr(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    if-eqz p3, :cond_7

    .line 311
    iget-object p4, p0, Ljavassist/bytecode/analysis/Analyzer;->frames:[Ljavassist/bytecode/analysis/Frame;

    aget-object v0, p4, p5

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 315
    invoke-virtual {p2}, Ljavassist/bytecode/analysis/Frame;->copy()Ljavassist/bytecode/analysis/Frame;

    move-result-object v0

    aput-object v0, p4, p5

    const/4 v2, 0x1

    goto :goto_3

    :cond_0
    const/4 p4, 0x0

    const/4 v2, 0x0

    .line 318
    :goto_0
    invoke-virtual {p2}, Ljavassist/bytecode/analysis/Frame;->localsLength()I

    move-result v3

    if-ge p4, v3, :cond_4

    .line 320
    invoke-virtual {p3, p4}, Ljavassist/bytecode/analysis/Subroutine;->isAccessed(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 321
    invoke-virtual {v0, p4}, Ljavassist/bytecode/analysis/Frame;->getLocal(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    .line 322
    invoke-virtual {p2, p4}, Ljavassist/bytecode/analysis/Frame;->getLocal(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v4

    if-nez v3, :cond_2

    .line 324
    invoke-virtual {v0, p4, v4}, Ljavassist/bytecode/analysis/Frame;->setLocal(ILjavassist/bytecode/analysis/Type;)V

    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    .line 329
    :cond_2
    invoke-virtual {v3, v4}, Ljavassist/bytecode/analysis/Type;->merge(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v4

    .line 331
    invoke-virtual {v0, p4, v4}, Ljavassist/bytecode/analysis/Frame;->setLocal(ILjavassist/bytecode/analysis/Type;)V

    .line 332
    invoke-virtual {v4, v3}, Ljavassist/bytecode/analysis/Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v4}, Ljavassist/bytecode/analysis/Type;->popChanged()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 338
    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljavassist/bytecode/analysis/Frame;->isJsrMerged()Z

    move-result p2

    if-nez p2, :cond_5

    .line 339
    invoke-virtual {v0, v1}, Ljavassist/bytecode/analysis/Frame;->setJsrMerged(Z)V

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    if-eqz v1, :cond_6

    .line 343
    invoke-virtual {v0}, Ljavassist/bytecode/analysis/Frame;->isRetMerged()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 344
    invoke-virtual {p1, p5}, Ljavassist/bytecode/analysis/IntQueue;->add(I)V

    :cond_6
    return-void

    .line 309
    :cond_7
    new-instance p1, Ljavassist/bytecode/BadBytecode;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No subroutine at jsr target! [pos = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method private mergeLookupSwitch(Ljavassist/bytecode/analysis/IntQueue;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    and-int/lit8 v0, p2, -0x4

    add-int/lit8 v0, v0, 0x4

    .line 351
    invoke-virtual {p3, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v1

    add-int/2addr v1, p2

    invoke-direct {p0, p1, p4, v1}, Ljavassist/bytecode/analysis/Analyzer;->merge(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Frame;I)V

    add-int/lit8 v0, v0, 0x4

    .line 352
    invoke-virtual {p3, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    add-int/lit8 v0, v0, 0x4

    :goto_0
    if-ge v0, v1, :cond_0

    .line 357
    invoke-virtual {p3, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v2

    add-int/2addr v2, p2

    .line 358
    invoke-direct {p0, p1, p4, v2}, Ljavassist/bytecode/analysis/Analyzer;->merge(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Frame;I)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    return-void
.end method

.method private mergeRet(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/CodeIterator;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    if-eqz p5, :cond_6

    .line 366
    invoke-virtual {p5}, Ljavassist/bytecode/analysis/Subroutine;->callers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 367
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 368
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 369
    invoke-direct {p0, p2, v1, p3}, Ljavassist/bytecode/analysis/Analyzer;->getNext(Ljavassist/bytecode/CodeIterator;II)I

    move-result v1

    .line 372
    iget-object v2, p0, Ljavassist/bytecode/analysis/Analyzer;->frames:[Ljavassist/bytecode/analysis/Frame;

    aget-object v3, v2, v1

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 374
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->copyStack()Ljavassist/bytecode/analysis/Frame;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v2, 0x1

    goto :goto_1

    .line 377
    :cond_1
    invoke-virtual {v3, p4}, Ljavassist/bytecode/analysis/Frame;->mergeStack(Ljavassist/bytecode/analysis/Frame;)Z

    move-result v2

    .line 380
    :goto_1
    invoke-virtual {p5}, Ljavassist/bytecode/analysis/Subroutine;->accessed()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 381
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 382
    invoke-virtual {v3, v6}, Ljavassist/bytecode/analysis/Frame;->getLocal(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v7

    .line 383
    invoke-virtual {p4, v6}, Ljavassist/bytecode/analysis/Frame;->getLocal(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v8

    if-eq v7, v8, :cond_2

    .line 385
    invoke-virtual {v3, v6, v8}, Ljavassist/bytecode/analysis/Frame;->setLocal(ILjavassist/bytecode/analysis/Type;)V

    const/4 v2, 0x1

    goto :goto_2

    .line 390
    :cond_3
    invoke-virtual {v3}, Ljavassist/bytecode/analysis/Frame;->isRetMerged()Z

    move-result v5

    if-nez v5, :cond_4

    .line 391
    invoke-virtual {v3, v4}, Ljavassist/bytecode/analysis/Frame;->setRetMerged(Z)V

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_3
    if-eqz v4, :cond_0

    .line 395
    invoke-virtual {v3}, Ljavassist/bytecode/analysis/Frame;->isJsrMerged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 396
    invoke-virtual {p1, v1}, Ljavassist/bytecode/analysis/IntQueue;->add(I)V

    goto :goto_0

    :cond_5
    return-void

    .line 364
    :cond_6
    new-instance p1, Ljavassist/bytecode/BadBytecode;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Ret on no subroutine! [pos = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private mergeTableSwitch(Ljavassist/bytecode/analysis/IntQueue;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    and-int/lit8 v0, p2, -0x4

    add-int/lit8 v0, v0, 0x4

    .line 405
    invoke-virtual {p3, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v1

    add-int/2addr v1, p2

    invoke-direct {p0, p1, p4, v1}, Ljavassist/bytecode/analysis/Analyzer;->merge(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Frame;I)V

    add-int/lit8 v0, v0, 0x4

    .line 406
    invoke-virtual {p3, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x4

    .line 407
    invoke-virtual {p3, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v2, v0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 412
    invoke-virtual {p3, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v1

    add-int/2addr v1, p2

    .line 413
    invoke-direct {p0, p1, p4, v1}, Ljavassist/bytecode/analysis/Analyzer;->merge(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Frame;I)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method

.method private zeroExtend(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;
    .locals 1

    .line 418
    sget-object v0, Ljavassist/bytecode/analysis/Type;->SHORT:Ljavassist/bytecode/analysis/Type;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljavassist/bytecode/analysis/Type;->BYTE:Ljavassist/bytecode/analysis/Type;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljavassist/bytecode/analysis/Type;->CHAR:Ljavassist/bytecode/analysis/Type;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljavassist/bytecode/analysis/Type;->BOOLEAN:Ljavassist/bytecode/analysis/Type;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 419
    :cond_1
    :goto_0
    sget-object p1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    return-object p1
.end method


# virtual methods
.method public analyze(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/analysis/Frame;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 123
    iput-object p1, p0, Ljavassist/bytecode/analysis/Analyzer;->clazz:Ljavassist/CtClass;

    .line 124
    invoke-virtual {p2}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 129
    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v1

    .line 130
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v2

    .line 131
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getCodeLength()I

    move-result v3

    .line 133
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v0

    .line 134
    new-instance v4, Ljavassist/bytecode/analysis/IntQueue;

    invoke-direct {v4}, Ljavassist/bytecode/analysis/IntQueue;-><init>()V

    .line 136
    invoke-direct {p0, p2}, Ljavassist/bytecode/analysis/Analyzer;->buildExceptionInfo(Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;

    move-result-object v5

    iput-object v5, p0, Ljavassist/bytecode/analysis/Analyzer;->exceptions:[Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;

    .line 137
    iget-object v5, p0, Ljavassist/bytecode/analysis/Analyzer;->scanner:Ljavassist/bytecode/analysis/SubroutineScanner;

    invoke-virtual {v5, p2}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/analysis/Subroutine;

    move-result-object v5

    iput-object v5, p0, Ljavassist/bytecode/analysis/Analyzer;->subroutines:[Ljavassist/bytecode/analysis/Subroutine;

    .line 139
    new-instance v5, Ljavassist/bytecode/analysis/Executor;

    invoke-virtual {p1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object p1

    invoke-virtual {p2}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Ljavassist/bytecode/analysis/Executor;-><init>(Ljavassist/ClassPool;Ljavassist/bytecode/ConstPool;)V

    .line 140
    new-array p1, v3, [Ljavassist/bytecode/analysis/Frame;

    iput-object p1, p0, Ljavassist/bytecode/analysis/Analyzer;->frames:[Ljavassist/bytecode/analysis/Frame;

    .line 141
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->lookAhead()I

    move-result v3

    invoke-direct {p0, p2, v1, v2}, Ljavassist/bytecode/analysis/Analyzer;->firstFrame(Ljavassist/bytecode/MethodInfo;II)Ljavassist/bytecode/analysis/Frame;

    move-result-object v1

    aput-object v1, p1, v3

    .line 142
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result p1

    invoke-virtual {v4, p1}, Ljavassist/bytecode/analysis/IntQueue;->add(I)V

    .line 143
    :goto_0
    invoke-virtual {v4}, Ljavassist/bytecode/analysis/IntQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 144
    invoke-direct {p0, p2, v0, v4, v5}, Ljavassist/bytecode/analysis/Analyzer;->analyzeNextEntry(Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Executor;)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object p1, p0, Ljavassist/bytecode/analysis/Analyzer;->frames:[Ljavassist/bytecode/analysis/Frame;

    return-object p1
.end method

.method public analyze(Ljavassist/CtMethod;)[Ljavassist/bytecode/analysis/Frame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 165
    invoke-virtual {p1}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljavassist/bytecode/analysis/Analyzer;->analyze(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/analysis/Frame;

    move-result-object p1

    return-object p1
.end method
