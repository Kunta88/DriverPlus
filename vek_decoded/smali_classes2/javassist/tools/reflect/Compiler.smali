.class public Ljavassist/tools/reflect/Compiler;
.super Ljava/lang/Object;
.source "Compiler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static help(Ljava/io/PrintStream;)V
    .locals 1

    const-string v0, "Usage: java javassist.tools.reflect.Compiler"

    .line 160
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "            (<class> [-m <metaobject>] [-c <class metaobject>])+"

    .line 161
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    array-length v0, p0

    if-nez v0, :cond_0

    .line 75
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p0}, Ljavassist/tools/reflect/Compiler;->help(Ljava/io/PrintStream;)V

    return-void

    .line 79
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ljavassist/tools/reflect/CompiledClass;

    .line 80
    invoke-static {p0, v0}, Ljavassist/tools/reflect/Compiler;->parse([Ljava/lang/String;[Ljavassist/tools/reflect/CompiledClass;)I

    move-result p0

    const/4 v1, 0x1

    if-ge p0, v1, :cond_1

    .line 83
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "bad parameter."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 87
    :cond_1
    invoke-static {v0, p0}, Ljavassist/tools/reflect/Compiler;->processClasses([Ljavassist/tools/reflect/CompiledClass;I)V

    return-void
.end method

.method private static parse([Ljava/lang/String;[Ljavassist/tools/reflect/CompiledClass;)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 133
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_7

    .line 134
    aget-object v4, p0, v2

    const-string v5, "-m"

    .line 135
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-ltz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 136
    array-length v4, p0

    if-le v2, v4, :cond_0

    goto :goto_1

    .line 139
    :cond_0
    aget-object v4, p1, v3

    aget-object v5, p0, v2

    iput-object v5, v4, Ljavassist/tools/reflect/CompiledClass;->metaobject:Ljava/lang/String;

    goto :goto_3

    :cond_1
    :goto_1
    return v1

    :cond_2
    const-string v5, "-c"

    .line 140
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-ltz v3, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 141
    array-length v4, p0

    if-le v2, v4, :cond_3

    goto :goto_2

    .line 144
    :cond_3
    aget-object v4, p1, v3

    aget-object v5, p0, v2

    iput-object v5, v4, Ljavassist/tools/reflect/CompiledClass;->classobject:Ljava/lang/String;

    goto :goto_3

    :cond_4
    :goto_2
    return v1

    .line 145
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_6

    return v1

    .line 148
    :cond_6
    new-instance v5, Ljavassist/tools/reflect/CompiledClass;

    invoke-direct {v5}, Ljavassist/tools/reflect/CompiledClass;-><init>()V

    .line 149
    iput-object v4, v5, Ljavassist/tools/reflect/CompiledClass;->classname:Ljava/lang/String;

    const/4 v4, 0x0

    .line 150
    iput-object v4, v5, Ljavassist/tools/reflect/CompiledClass;->metaobject:Ljava/lang/String;

    .line 151
    iput-object v4, v5, Ljavassist/tools/reflect/CompiledClass;->classobject:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    .line 152
    aput-object v5, p1, v3

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    add-int/lit8 v3, v3, 0x1

    return v3
.end method

.method private static processClasses([Ljavassist/tools/reflect/CompiledClass;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    new-instance v0, Ljavassist/tools/reflect/Reflection;

    invoke-direct {v0}, Ljavassist/tools/reflect/Reflection;-><init>()V

    .line 94
    invoke-static {}, Ljavassist/ClassPool;->getDefault()Ljavassist/ClassPool;

    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Ljavassist/tools/reflect/Reflection;->start(Ljavassist/ClassPool;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_5

    .line 98
    aget-object v4, p0, v3

    iget-object v4, v4, Ljavassist/tools/reflect/CompiledClass;->classname:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v4

    .line 99
    aget-object v5, p0, v3

    iget-object v5, v5, Ljavassist/tools/reflect/CompiledClass;->metaobject:Ljava/lang/String;

    if-nez v5, :cond_1

    aget-object v5, p0, v3

    iget-object v5, v5, Ljavassist/tools/reflect/CompiledClass;->classobject:Ljava/lang/String;

    if-eqz v5, :cond_0

    goto :goto_1

    .line 122
    :cond_0
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": not reflective"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 103
    :cond_1
    :goto_1
    aget-object v5, p0, v3

    iget-object v5, v5, Ljavassist/tools/reflect/CompiledClass;->metaobject:Ljava/lang/String;

    if-nez v5, :cond_2

    const-string v5, "javassist.tools.reflect.Metaobject"

    goto :goto_2

    .line 106
    :cond_2
    aget-object v5, p0, v3

    iget-object v5, v5, Ljavassist/tools/reflect/CompiledClass;->metaobject:Ljava/lang/String;

    .line 108
    :goto_2
    aget-object v6, p0, v3

    iget-object v6, v6, Ljavassist/tools/reflect/CompiledClass;->classobject:Ljava/lang/String;

    if-nez v6, :cond_3

    const-string v6, "javassist.tools.reflect.ClassMetaobject"

    goto :goto_3

    .line 111
    :cond_3
    aget-object v6, p0, v3

    iget-object v6, v6, Ljavassist/tools/reflect/CompiledClass;->classobject:Ljava/lang/String;

    .line 113
    :goto_3
    invoke-virtual {v1, v5}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v7

    invoke-virtual {v1, v6}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v8

    invoke-virtual {v0, v4, v7, v8}, Ljavassist/tools/reflect/Reflection;->makeReflective(Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 115
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is reflective.  It was not changed."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    :cond_4
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ": "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_5
    if-ge v2, p1, :cond_6

    .line 126
    aget-object v3, p0, v2

    iget-object v3, v3, Ljavassist/tools/reflect/CompiledClass;->classname:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljavassist/tools/reflect/Reflection;->onLoad(Ljavassist/ClassPool;Ljava/lang/String;)V

    .line 127
    aget-object v3, p0, v2

    iget-object v3, v3, Ljavassist/tools/reflect/CompiledClass;->classname:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/CtClass;->writeFile()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method
