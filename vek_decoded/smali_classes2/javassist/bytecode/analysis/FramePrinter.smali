.class public final Ljavassist/bytecode/analysis/FramePrinter;
.super Ljava/lang/Object;
.source "FramePrinter.java"


# instance fields
.field private final stream:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    return-void
.end method

.method private addSpacing(I)V
    .locals 2

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_0

    .line 146
    iget-object p1, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(C)V

    move p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getMethodString(Ljavassist/CtMethod;)Ljava/lang/String;
    .locals 3

    const-string v0, " "

    .line 67
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljavassist/CtMethod;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljavassist/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljavassist/CtMethod;->getReturnType()Ljavassist/CtClass;

    move-result-object v2

    invoke-virtual {v2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtMethod;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static print(Ljavassist/CtClass;Ljava/io/PrintStream;)V
    .locals 1

    .line 52
    new-instance v0, Ljavassist/bytecode/analysis/FramePrinter;

    invoke-direct {v0, p1}, Ljavassist/bytecode/analysis/FramePrinter;-><init>(Ljava/io/PrintStream;)V

    invoke-virtual {v0, p0}, Ljavassist/bytecode/analysis/FramePrinter;->print(Ljavassist/CtClass;)V

    return-void
.end method

.method private printLocals(Ljavassist/bytecode/analysis/Frame;)V
    .locals 4

    .line 133
    iget-object v0, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    const-string v1, "locals ["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Frame;->localsLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    if-lez v1, :cond_0

    .line 137
    iget-object v2, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 138
    :cond_0
    invoke-virtual {p1, v1}, Ljavassist/bytecode/analysis/Frame;->getLocal(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    .line 139
    iget-object v3, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    if-nez v2, :cond_1

    const-string v2, "empty"

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljavassist/bytecode/analysis/Type;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_2
    iget-object p1, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private printStack(Ljavassist/bytecode/analysis/Frame;)V
    .locals 4

    .line 121
    iget-object v0, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    const-string v1, "stack ["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Frame;->getTopIndex()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    if-lez v1, :cond_0

    .line 125
    iget-object v2, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-virtual {p1, v1}, Ljavassist/bytecode/analysis/Frame;->getStack(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    .line 127
    iget-object v3, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_1
    iget-object p1, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public print(Ljavassist/CtClass;)V
    .locals 2

    .line 59
    invoke-virtual {p1}, Ljavassist/CtClass;->getDeclaredMethods()[Ljavassist/CtMethod;

    move-result-object p1

    const/4 v0, 0x0

    .line 60
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 61
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljavassist/bytecode/analysis/FramePrinter;->print(Ljavassist/CtMethod;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public print(Ljavassist/CtMethod;)V
    .locals 7

    .line 79
    iget-object v0, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/FramePrinter;->getMethodString(Ljavassist/CtMethod;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    .line 82
    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 88
    :cond_0
    :try_start_0
    new-instance v3, Ljavassist/bytecode/analysis/Analyzer;

    invoke-direct {v3}, Ljavassist/bytecode/analysis/Analyzer;-><init>()V

    invoke-virtual {p1}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object p1

    invoke-virtual {v3, p1, v0}, Ljavassist/bytecode/analysis/Analyzer;->analyze(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/analysis/Frame;

    move-result-object p1
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    invoke-virtual {v2}, Ljavassist/bytecode/CodeAttribute;->getCodeLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 95
    invoke-virtual {v2}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v2

    .line 96
    :goto_0
    invoke-virtual {v2}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    :try_start_1
    invoke-virtual {v2}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v3
    :try_end_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    iget-object v4, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v3, v1}, Ljavassist/bytecode/InstructionPrinter;->instructionString(Ljavassist/bytecode/CodeIterator;ILjavassist/bytecode/ConstPool;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v0, 0x3

    .line 106
    invoke-direct {p0, v4}, Ljavassist/bytecode/analysis/FramePrinter;->addSpacing(I)V

    .line 107
    aget-object v3, p1, v3

    if-nez v3, :cond_1

    .line 109
    iget-object v3, p0, Ljavassist/bytecode/analysis/FramePrinter;->stream:Ljava/io/PrintStream;

    const-string v4, "--DEAD CODE--"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_1
    invoke-direct {p0, v3}, Ljavassist/bytecode/analysis/FramePrinter;->printStack(Ljavassist/bytecode/analysis/Frame;)V

    .line 114
    invoke-direct {p0, v4}, Ljavassist/bytecode/analysis/FramePrinter;->addSpacing(I)V

    .line 115
    invoke-direct {p0, v3}, Ljavassist/bytecode/analysis/FramePrinter;->printLocals(Ljavassist/bytecode/analysis/Frame;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 101
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    return-void

    :catch_1
    move-exception p1

    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
