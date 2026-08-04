.class public Ljavassist/compiler/MemberResolver;
.super Ljava/lang/Object;
.source "MemberResolver.java"

# interfaces
.implements Ljavassist/compiler/TokenId;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/compiler/MemberResolver$Method;
    }
.end annotation


# static fields
.field private static final INVALID:Ljava/lang/String; = "<invalid>"

.field private static final NO:I = -0x1

.field private static final YES:I

.field private static invalidNamesMap:Ljava/util/WeakHashMap;


# instance fields
.field private classPool:Ljavassist/ClassPool;

.field private invalidNames:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 417
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljavassist/compiler/MemberResolver;->invalidNamesMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Ljavassist/ClassPool;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 418
    iput-object v0, p0, Ljavassist/compiler/MemberResolver;->invalidNames:Ljava/util/Hashtable;

    .line 34
    iput-object p1, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    return-void
.end method

.method private compareSignature(Ljava/lang/String;[I[I[Ljava/lang/String;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 190
    array-length v3, v2

    .line 191
    invoke-static/range {p1 .. p1}, Ljavassist/bytecode/Descriptor;->numOfParameters(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v3, v4, :cond_0

    return v5

    .line 194
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v8, v4, :cond_13

    add-int/lit8 v11, v8, 0x1

    .line 196
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v12, 0x29

    if-ne v8, v12, :cond_2

    if-ne v9, v3, :cond_1

    move v5, v10

    :cond_1
    return v5

    :cond_2
    if-lt v9, v3, :cond_3

    return v5

    :cond_3
    const/4 v12, 0x0

    :goto_1
    const/16 v13, 0x5b

    if-ne v8, v13, :cond_4

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v8, v11, 0x1

    .line 205
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move/from16 v16, v11

    move v11, v8

    move/from16 v8, v16

    goto :goto_1

    .line 208
    :cond_4
    aget v13, v2, v9

    const/16 v14, 0x19c

    const/16 v15, 0x3b

    const/16 v6, 0x4c

    if-ne v13, v14, :cond_7

    if-nez v12, :cond_5

    if-eq v8, v6, :cond_5

    return v5

    :cond_5
    if-ne v8, v6, :cond_12

    .line 213
    invoke-virtual {v1, v15, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    add-int/2addr v6, v7

    :cond_6
    :goto_2
    move v8, v6

    goto/16 :goto_7

    .line 215
    :cond_7
    aget v13, p3, v9

    if-eq v13, v12, :cond_a

    if-nez v12, :cond_9

    if-ne v8, v6, :cond_9

    const-string v6, "java/lang/Object;"

    .line 216
    invoke-virtual {v1, v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_3

    .line 221
    :cond_8
    invoke-virtual {v1, v15, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    add-int/2addr v6, v7

    add-int/lit8 v10, v10, 0x1

    if-gtz v6, :cond_6

    :cond_9
    :goto_3
    return v5

    :cond_a
    if-ne v8, v6, :cond_f

    .line 227
    invoke-virtual {v1, v15, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-ltz v6, :cond_e

    .line 228
    aget v8, v2, v9

    const/16 v12, 0x133

    if-eq v8, v12, :cond_b

    goto :goto_5

    .line 231
    :cond_b
    invoke-virtual {v1, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 232
    aget-object v11, p4, v9

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 233
    aget-object v11, p4, v9

    invoke-virtual {v0, v11}, Ljavassist/compiler/MemberResolver;->lookupClassByJvmName(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v11

    .line 235
    :try_start_0
    invoke-virtual {v0, v8}, Ljavassist/compiler/MemberResolver;->lookupClassByJvmName(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z

    move-result v8
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_c

    goto :goto_4

    :cond_c
    return v5

    :catch_0
    :goto_4
    add-int/lit8 v10, v10, 0x1

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_e
    :goto_5
    return v5

    .line 248
    :cond_f
    invoke-static {v8}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result v6

    .line 249
    aget v8, v2, v9

    if-eq v6, v8, :cond_12

    const/16 v12, 0x144

    if-ne v6, v12, :cond_11

    const/16 v6, 0x14e

    if-eq v8, v6, :cond_10

    const/16 v6, 0x12f

    if-eq v8, v6, :cond_10

    const/16 v6, 0x132

    if-ne v8, v6, :cond_11

    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_11
    return v5

    :cond_12
    :goto_6
    move v8, v11

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_13
    return v5
.end method

.method public static descToType(C)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/16 v0, 0x46

    if-eq p0, v0, :cond_6

    const/16 v0, 0x4c

    if-eq p0, v0, :cond_5

    const/16 v0, 0x53

    if-eq p0, v0, :cond_4

    const/16 v0, 0x56

    const/16 v1, 0x158

    if-eq p0, v0, :cond_3

    const/16 v0, 0x49

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_5

    packed-switch p0, :pswitch_data_0

    .line 555
    invoke-static {}, Ljavassist/compiler/MemberResolver;->fatal()V

    return v1

    :pswitch_0
    const/16 p0, 0x138

    return p0

    :pswitch_1
    const/16 p0, 0x132

    return p0

    :pswitch_2
    const/16 p0, 0x12f

    return p0

    :cond_0
    const/16 p0, 0x12d

    return p0

    :cond_1
    const/16 p0, 0x146

    return p0

    :cond_2
    const/16 p0, 0x144

    return p0

    :cond_3
    return v1

    :cond_4
    const/16 p0, 0x14e

    return p0

    :cond_5
    const/16 p0, 0x133

    return p0

    :cond_6
    const/16 p0, 0x13d

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static fatal()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 40
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "fatal"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInvalidMapSize()I
    .locals 1

    .line 421
    sget-object v0, Ljavassist/compiler/MemberResolver;->invalidNamesMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    return v0
.end method

.method private getInvalidNames()Ljava/util/Hashtable;
    .locals 5

    .line 424
    iget-object v0, p0, Ljavassist/compiler/MemberResolver;->invalidNames:Ljava/util/Hashtable;

    if-nez v0, :cond_2

    .line 426
    const-class v1, Ljavassist/compiler/MemberResolver;

    monitor-enter v1

    .line 427
    :try_start_0
    sget-object v2, Ljavassist/compiler/MemberResolver;->invalidNamesMap:Ljava/util/WeakHashMap;

    iget-object v3, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 429
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    :cond_0
    if-nez v0, :cond_1

    .line 432
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 433
    sget-object v2, Ljavassist/compiler/MemberResolver;->invalidNamesMap:Ljava/util/WeakHashMap;

    iget-object v3, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    iput-object v0, p0, Ljavassist/compiler/MemberResolver;->invalidNames:Ljava/util/Hashtable;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 435
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getModifiers(Ljavassist/compiler/ast/ASTList;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_7

    .line 563
    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    check-cast v1, Ljavassist/compiler/ast/Keyword;

    .line 564
    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p0

    .line 565
    invoke-virtual {v1}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result v1

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_6

    const/16 v2, 0x13b

    if-eq v1, v2, :cond_5

    const/16 v2, 0x14f

    if-eq v1, v2, :cond_4

    const/16 v2, 0x152

    if-eq v1, v2, :cond_3

    const/16 v2, 0x156

    if-eq v1, v2, :cond_2

    const/16 v2, 0x159

    if-eq v1, v2, :cond_1

    const/16 v2, 0x15b

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :pswitch_2
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    or-int/lit16 v0, v0, 0x800

    goto :goto_0

    :cond_1
    or-int/lit8 v0, v0, 0x40

    goto :goto_0

    :cond_2
    or-int/lit16 v0, v0, 0x80

    goto :goto_0

    :cond_3
    or-int/lit8 v0, v0, 0x20

    goto :goto_0

    :cond_4
    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_5
    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_6
    or-int/lit16 v0, v0, 0x400

    goto :goto_0

    :cond_7
    return v0

    :pswitch_data_0
    .packed-switch 0x14a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSuperclass(Ljavassist/CtClass;)Ljavassist/CtClass;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 514
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    .line 519
    :catch_0
    :cond_0
    new-instance v0, Ljavassist/compiler/CompileError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find the super class of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getTypeName(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_8

    const/16 v0, 0x12f

    if-eq p0, v0, :cond_7

    const/16 v0, 0x132

    if-eq p0, v0, :cond_6

    const/16 v0, 0x138

    if-eq p0, v0, :cond_5

    const/16 v0, 0x13d

    if-eq p0, v0, :cond_4

    const/16 v0, 0x144

    if-eq p0, v0, :cond_3

    const/16 v0, 0x146

    if-eq p0, v0, :cond_2

    const/16 v0, 0x14e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x158

    if-eq p0, v0, :cond_0

    .line 385
    invoke-static {}, Ljavassist/compiler/MemberResolver;->fatal()V

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "void"

    goto :goto_0

    :cond_1
    const-string p0, "short"

    goto :goto_0

    :cond_2
    const-string p0, "long"

    goto :goto_0

    :cond_3
    const-string p0, "int"

    goto :goto_0

    :cond_4
    const-string p0, "float"

    goto :goto_0

    :cond_5
    const-string p0, "double"

    goto :goto_0

    :cond_6
    const-string p0, "char"

    goto :goto_0

    :cond_7
    const-string p0, "byte"

    goto :goto_0

    :cond_8
    const-string p0, "boolean"

    :goto_0
    return-object p0
.end method

.method public static javaToJvmName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    .line 524
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    .line 528
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private lookupClass0(Ljava/lang/String;Z)Ljavassist/CtClass;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 474
    :cond_0
    :try_start_0
    iget-object v1, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v1, p1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/16 v2, 0x2e

    .line 477
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-nez p2, :cond_1

    if-ltz v2, :cond_1

    .line 481
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x24

    .line 482
    invoke-virtual {v1, v2, p1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 483
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz v0, :cond_0

    return-object v0

    .line 479
    :cond_1
    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private lookupMethod(Ljavassist/CtClass;Ljava/lang/String;[I[I[Ljava/lang/String;Z)Ljavassist/compiler/MemberResolver$Method;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 98
    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 102
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move-object v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    .line 105
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavassist/bytecode/MethodInfo;

    .line 106
    invoke-virtual {v6}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v15, p2

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 107
    invoke-virtual {v6}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v14, p0

    move-object/from16 v13, p3

    move-object/from16 v12, p4

    move-object/from16 v11, p5

    invoke-direct {v14, v7, v13, v12, v11}, Ljavassist/compiler/MemberResolver;->compareSignature(Ljava/lang/String;[I[I[Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 110
    new-instance v8, Ljavassist/compiler/MemberResolver$Method;

    move-object/from16 v10, p1

    invoke-direct {v8, v10, v6, v7}, Ljavassist/compiler/MemberResolver$Method;-><init>(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;I)V

    if-nez v7, :cond_0

    return-object v8

    :cond_0
    if-eqz v5, :cond_1

    .line 113
    iget v6, v5, Ljavassist/compiler/MemberResolver$Method;->notmatch:I

    if-le v6, v7, :cond_4

    :cond_1
    move-object v5, v8

    goto :goto_1

    :cond_2
    move-object/from16 v10, p1

    goto :goto_1

    :cond_3
    move-object/from16 v14, p0

    move-object/from16 v10, p1

    move-object/from16 v13, p3

    move-object/from16 v12, p4

    move-object/from16 v11, p5

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v14, p0

    move-object/from16 v10, p1

    move-object/from16 v15, p2

    move-object/from16 v13, p3

    move-object/from16 v12, p4

    move-object/from16 v11, p5

    goto :goto_2

    :cond_6
    move-object/from16 v14, p0

    move-object/from16 v10, p1

    move-object/from16 v15, p2

    move-object/from16 v13, p3

    move-object/from16 v12, p4

    move-object/from16 v11, p5

    move-object v5, v1

    :goto_2
    if-eqz p6, :cond_7

    move/from16 v0, p6

    goto :goto_4

    :cond_7
    if-eqz v5, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    move-object v1, v5

    .line 125
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->getModifiers()I

    move-result v3

    .line 126
    invoke-static {v3}, Ljavassist/Modifier;->isInterface(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 130
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v9

    if-eqz v9, :cond_9

    move-object/from16 v8, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move v14, v0

    .line 132
    invoke-direct/range {v8 .. v14}, Ljavassist/compiler/MemberResolver;->lookupMethod(Ljavassist/CtClass;Ljava/lang/String;[I[I[Ljava/lang/String;Z)Ljavassist/compiler/MemberResolver$Method;

    move-result-object v5
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_9

    return-object v5

    :catch_0
    nop

    :cond_9
    if-nez v4, :cond_a

    .line 141
    invoke-static {v3}, Ljavassist/Modifier;->isAbstract(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 143
    :cond_a
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v3

    .line 144
    array-length v5, v3

    :goto_5
    if-ge v2, v5, :cond_c

    .line 146
    aget-object v9, v3, v2

    move-object/from16 v8, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move v14, v0

    invoke-direct/range {v8 .. v14}, Ljavassist/compiler/MemberResolver;->lookupMethod(Ljavassist/CtClass;Ljava/lang/String;[I[I[Ljava/lang/String;Z)Ljavassist/compiler/MemberResolver$Method;

    move-result-object v6

    if-eqz v6, :cond_b

    return-object v6

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    if-eqz v4, :cond_d

    .line 155
    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v9

    if-eqz v9, :cond_d

    move-object/from16 v8, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move v14, v0

    .line 157
    invoke-direct/range {v8 .. v14}, Ljavassist/compiler/MemberResolver;->lookupMethod(Ljavassist/CtClass;Ljava/lang/String;[I[I[Ljava/lang/String;Z)Ljavassist/compiler/MemberResolver$Method;

    move-result-object v0
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_d

    return-object v0

    :catch_1
    :cond_d
    return-object v1
.end method

.method private searchImports(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/16 v0, 0x2e

    .line 446
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 447
    iget-object v1, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v1}, Ljavassist/ClassPool;->getImportedPackages()Ljava/util/Iterator;

    move-result-object v1

    .line 448
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 452
    :try_start_0
    iget-object v4, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v4, v3}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 456
    :catch_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 457
    iget-object v3, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v3, v2}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p1
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    nop

    goto :goto_0

    .line 464
    :cond_1
    invoke-direct {p0}, Ljavassist/compiler/MemberResolver;->getInvalidNames()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "<invalid>"

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    new-instance v0, Ljavassist/compiler/CompileError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public getClassPool()Ljavassist/ClassPool;
    .locals 1

    .line 37
    iget-object v0, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    return-object v0
.end method

.method public lookupClass(IILjava/lang/String;)Ljavassist/CtClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/16 v0, 0x133

    if-ne p1, v0, :cond_1

    .line 336
    invoke-virtual {p0, p3}, Ljavassist/compiler/MemberResolver;->lookupClassByJvmName(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p1

    if-lez p2, :cond_0

    .line 338
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1

    .line 343
    :cond_1
    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->getTypeName(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    add-int/lit8 p3, p2, -0x1

    if-lez p2, :cond_2

    .line 346
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "[]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move p2, p3

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 348
    invoke-virtual {p0, p1, p2}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object p1

    return-object p1
.end method

.method public lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 397
    invoke-direct {p0}, Ljavassist/compiler/MemberResolver;->getInvalidNames()Ljava/util/Hashtable;

    move-result-object v0

    .line 398
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<invalid>"

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    .line 402
    check-cast v1, Ljavassist/CtClass;

    return-object v1

    .line 406
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Ljavassist/compiler/MemberResolver;->lookupClass0(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object p2
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 409
    :catch_0
    invoke-direct {p0, p1}, Ljavassist/compiler/MemberResolver;->searchImports(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p2

    .line 412
    :goto_0
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 400
    :cond_1
    new-instance p2, Ljavassist/compiler/CompileError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no such class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public lookupClass(Ljavassist/compiler/ast/Declarator;)Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 323
    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result v0

    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getArrayDim()I

    move-result v1

    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Ljavassist/compiler/MemberResolver;->lookupClass(IILjava/lang/String;)Ljavassist/CtClass;

    move-result-object p1

    return-object p1
.end method

.method public lookupClassByJvmName(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 319
    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object p1

    return-object p1
.end method

.method public lookupClassByName(Ljavassist/compiler/ast/ASTList;)Ljavassist/CtClass;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/16 v0, 0x2e

    .line 315
    invoke-static {p1, v0}, Ljavassist/compiler/ast/Declarator;->astToClassName(Ljavassist/compiler/ast/ASTList;C)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object p1

    return-object p1
.end method

.method public lookupField(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;)Ljavassist/CtField;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    const/4 v0, 0x0

    .line 306
    invoke-virtual {p0, p1, v0}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object p1

    .line 308
    :try_start_0
    invoke-virtual {p2}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/CtClass;->getField(Ljava/lang/String;)Ljavassist/CtField;

    move-result-object p1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 311
    :catch_0
    new-instance p1, Ljavassist/compiler/CompileError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no such field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lookupFieldByJvmName(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;)Ljavassist/CtField;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 297
    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljavassist/compiler/MemberResolver;->lookupField(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;)Ljavassist/CtField;

    move-result-object p1

    return-object p1
.end method

.method public lookupFieldByJvmName2(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;Ljavassist/compiler/ast/ASTree;)Ljavassist/CtField;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/NoFieldException;
        }
    .end annotation

    .line 271
    invoke-virtual {p2}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object p2

    .line 274
    :try_start_0
    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object p1
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_1

    .line 282
    :try_start_1
    invoke-virtual {p1, p2}, Ljavassist/CtClass;->getField(Ljava/lang/String;)Ljavassist/CtField;

    move-result-object p1
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 286
    :catch_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 287
    new-instance v0, Ljavassist/compiler/NoFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "$"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljavassist/compiler/NoFieldException;-><init>(Ljava/lang/String;Ljavassist/compiler/ast/ASTree;)V

    throw v0

    .line 278
    :catch_1
    new-instance v0, Ljavassist/compiler/NoFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljavassist/compiler/NoFieldException;-><init>(Ljava/lang/String;Ljavassist/compiler/ast/ASTree;)V

    throw v0
.end method

.method public lookupMethod(Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljava/lang/String;[I[I[Ljava/lang/String;)Ljavassist/compiler/MemberResolver$Method;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    if-eqz p3, :cond_0

    if-ne p1, p2, :cond_0

    .line 72
    invoke-virtual {p3}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p3}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p5, p6, p7}, Ljavassist/compiler/MemberResolver;->compareSignature(Ljava/lang/String;[I[I[Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 76
    new-instance v0, Ljavassist/compiler/MemberResolver$Method;

    invoke-direct {v0, p1, p3, p2}, Ljavassist/compiler/MemberResolver$Method;-><init>(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;I)V

    if-nez p2, :cond_1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_2

    const/4 p2, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    const/4 v7, 0x0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 84
    invoke-direct/range {v1 .. v7}, Ljavassist/compiler/MemberResolver;->lookupMethod(Ljavassist/CtClass;Ljava/lang/String;[I[I[Ljava/lang/String;Z)Ljavassist/compiler/MemberResolver$Method;

    move-result-object p1

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    return-object v0
.end method

.method public resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 499
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/compiler/MemberResolver;->lookupClassByName(Ljavassist/compiler/ast/ASTList;)Ljavassist/CtClass;

    move-result-object p1

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public resolveJvmClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 509
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/compiler/MemberResolver;->lookupClassByJvmName(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p1

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
