.class Ljavassist/CtClassType;
.super Ljavassist/CtClass;
.source "CtClassType.java"


# static fields
.field private static final GET_THRESHOLD:I = 0x2


# instance fields
.field private accessors:Ljavassist/compiler/AccessorMaker;

.field classPool:Ljavassist/ClassPool;

.field classfile:Ljavassist/bytecode/ClassFile;

.field private doPruning:Z

.field private fieldInitializers:Ljavassist/FieldInitLink;

.field gcConstPool:Z

.field private getCount:I

.field private hiddenMethods:Ljava/util/Hashtable;

.field private memberCache:Ljava/lang/ref/WeakReference;

.field rawClassfile:[B

.field private uniqueNumberSeed:I

.field wasChanged:Z

.field private wasFrozen:Z

.field wasPruned:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljavassist/ClassPool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 94
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Ljavassist/CtClassType;-><init>(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 95
    new-instance p2, Ljavassist/bytecode/ClassFile;

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v0}, Ljavassist/bytecode/ClassFile;-><init>(Ljava/io/DataInputStream;)V

    iput-object p2, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;

    .line 96
    invoke-virtual {p2}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/CtClassType;->qualifiedName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljavassist/ClassPool;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Ljavassist/CtClass;-><init>(Ljava/lang/String;)V

    .line 75
    sget-boolean p1, Ljavassist/ClassPool;->doPruning:Z

    iput-boolean p1, p0, Ljavassist/CtClassType;->doPruning:Z

    .line 81
    iput-object p2, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Ljavassist/CtClassType;->gcConstPool:Z

    iput-boolean p1, p0, Ljavassist/CtClassType;->wasPruned:Z

    iput-boolean p1, p0, Ljavassist/CtClassType;->wasFrozen:Z

    iput-boolean p1, p0, Ljavassist/CtClassType;->wasChanged:Z

    const/4 p2, 0x0

    .line 83
    iput-object p2, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;

    .line 84
    iput-object p2, p0, Ljavassist/CtClassType;->rawClassfile:[B

    .line 85
    iput-object p2, p0, Ljavassist/CtClassType;->memberCache:Ljava/lang/ref/WeakReference;

    .line 86
    iput-object p2, p0, Ljavassist/CtClassType;->accessors:Ljavassist/compiler/AccessorMaker;

    .line 87
    iput-object p2, p0, Ljavassist/CtClassType;->fieldInitializers:Ljavassist/FieldInitLink;

    .line 88
    iput-object p2, p0, Ljavassist/CtClassType;->hiddenMethods:Ljava/util/Hashtable;

    .line 89
    iput p1, p0, Ljavassist/CtClassType;->uniqueNumberSeed:I

    .line 90
    iput p1, p0, Ljavassist/CtClassType;->getCount:I

    return-void
.end method

.method private checkGetField(Ljavassist/CtField;Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    if-nez p1, :cond_1

    .line 903
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "field: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 905
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 907
    :cond_0
    new-instance p2, Ljavassist/NotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " in "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    return-object p1
.end method

.method private checkPruned(Ljava/lang/String;)V
    .locals 2

    .line 1459
    iget-boolean v0, p0, Ljavassist/CtClassType;->wasPruned:Z

    if-nez v0, :cond_0

    return-void

    .line 1460
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "(): "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " was pruned."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dumpClassFile(Ljavassist/bytecode/ClassFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1447
    sget-object v0, Ljavassist/CtClassType;->debugDump:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljavassist/CtClassType;->makeFileOutput(Ljava/lang/String;)Ljava/io/DataOutputStream;

    move-result-object v0

    .line 1449
    :try_start_0
    invoke-virtual {p1, v0}, Ljavassist/bytecode/ClassFile;->write(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1452
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    throw p1
.end method

.method private exToString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljavassist/CtMember;Ljavassist/CtMember;)V
    .locals 0

    .line 150
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    if-eq p3, p4, :cond_0

    .line 152
    invoke-virtual {p3}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object p3

    .line 153
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p2, ", "

    .line 154
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static getAnnotationType(Ljava/lang/Class;Ljavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    .line 491
    :cond_0
    invoke-virtual {p2}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object p2

    :goto_0
    if-nez p3, :cond_1

    move-object p3, v0

    goto :goto_1

    .line 496
    :cond_1
    invoke-virtual {p3}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object p3

    .line 498
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    const/4 v2, 0x0

    .line 500
    :goto_2
    array-length v3, p2

    if-ge v2, v3, :cond_3

    .line 501
    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 502
    aget-object p0, p2, v2

    invoke-static {p0, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_5

    .line 505
    :goto_3
    array-length p2, p3

    if-ge v1, p2, :cond_5

    .line 506
    aget-object p2, p3, v1

    invoke-virtual {p2}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 507
    aget-object p0, p3, v1

    invoke-static {p0, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-object v0
.end method

.method private getAnnotations(Z)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 528
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    const-string v1, "RuntimeInvisibleAnnotations"

    .line 529
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AnnotationsAttribute;

    const-string v2, "RuntimeVisibleAnnotations"

    .line 531
    invoke-virtual {v0, v2}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AnnotationsAttribute;

    .line 533
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassPool()Ljavassist/ClassPool;

    move-result-object v2

    invoke-static {p1, v2, v1, v0}, Ljavassist/CtClassType;->toAnnotationType(ZLjavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private getDeclaredField2(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;
    .locals 3

    .line 960
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 961
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->fieldHead()Ljavassist/CtMember;

    move-result-object v1

    .line 962
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastField()Ljavassist/CtMember;

    move-result-object v0

    :cond_0
    if-eq v1, v0, :cond_2

    .line 964
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    .line 965
    invoke-virtual {v1}, Ljavassist/CtMember;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Ljavassist/CtMember;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 967
    :cond_1
    check-cast v1, Ljavassist/CtField;

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private static getFields(Ljava/util/ArrayList;Ljavassist/CtClass;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 872
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    invoke-static {p0, v0}, Ljavassist/CtClassType;->getFields(Ljava/util/ArrayList;Ljavassist/CtClass;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :catch_0
    :try_start_1
    invoke-virtual {p1}, Ljavassist/CtClass;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v0

    .line 878
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 880
    aget-object v3, v0, v2

    invoke-static {p0, v3}, Ljavassist/CtClassType;->getFields(Ljava/util/ArrayList;Ljavassist/CtClass;)V
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 884
    :catch_1
    :cond_1
    check-cast p1, Ljavassist/CtClassType;

    invoke-virtual {p1}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object p1

    .line 885
    invoke-virtual {p1}, Ljavassist/CtMember$Cache;->fieldHead()Ljavassist/CtMember;

    move-result-object v0

    .line 886
    invoke-virtual {p1}, Ljavassist/CtMember$Cache;->lastField()Ljavassist/CtMember;

    move-result-object p1

    :cond_2
    :goto_1
    if-eq v0, p1, :cond_3

    .line 888
    invoke-virtual {v0}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v0

    .line 889
    invoke-virtual {v0}, Ljavassist/CtMember;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 890
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static getMethod0(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;
    .locals 4

    .line 1136
    instance-of v0, p0, Ljavassist/CtClassType;

    if-eqz v0, :cond_1

    .line 1137
    move-object v0, p0

    check-cast v0, Ljavassist/CtClassType;

    invoke-virtual {v0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 1138
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->methodHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1139
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastMethod()Ljavassist/CtMember;

    move-result-object v0

    :cond_0
    if-eq v1, v0, :cond_1

    .line 1142
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    .line 1143
    invoke-virtual {v1}, Ljavassist/CtMember;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljavassist/CtMethod;

    invoke-virtual {v2}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    .line 1150
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1152
    invoke-static {v0, p1, p2}, Ljavassist/CtClassType;->getMethod0(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    return-object v0

    .line 1160
    :catch_0
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljavassist/CtClass;->getInterfaces()[Ljavassist/CtClass;

    move-result-object p0

    .line 1161
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 1163
    aget-object v2, p0, v1

    invoke-static {v2, p1, p2}, Ljavassist/CtClassType;->getMethod0(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v2
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_1
    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMethods0(Ljava/util/HashMap;Ljavassist/CtClass;)V
    .locals 4

    .line 1096
    :try_start_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v0

    .line 1097
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1099
    aget-object v3, v0, v2

    invoke-static {p0, v3}, Ljavassist/CtClassType;->getMethods0(Ljava/util/HashMap;Ljavassist/CtClass;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1104
    :catch_0
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1106
    invoke-static {p0, v0}, Ljavassist/CtClassType;->getMethods0(Ljava/util/HashMap;Ljavassist/CtClass;)V
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 1110
    :cond_1
    :goto_1
    instance-of v0, p1, Ljavassist/CtClassType;

    if-eqz v0, :cond_3

    .line 1111
    check-cast p1, Ljavassist/CtClassType;

    invoke-virtual {p1}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object p1

    .line 1112
    invoke-virtual {p1}, Ljavassist/CtMember$Cache;->methodHead()Ljavassist/CtMember;

    move-result-object v0

    .line 1113
    invoke-virtual {p1}, Ljavassist/CtMember$Cache;->lastMethod()Ljavassist/CtMember;

    move-result-object p1

    :cond_2
    :goto_2
    if-eq v0, p1, :cond_3

    .line 1116
    invoke-virtual {v0}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v0

    .line 1117
    invoke-virtual {v0}, Ljavassist/CtMember;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1118
    move-object v1, v0

    check-cast v1, Ljavassist/CtMethod;

    invoke-virtual {v1}, Ljavassist/CtMethod;->getStringRep()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-void
.end method

.method static hasAnnotationType(Ljava/lang/Class;Ljavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)Z
    .locals 3

    const/4 p1, 0x0

    if-nez p2, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 452
    :cond_0
    invoke-virtual {p2}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object p2

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    .line 457
    :cond_1
    invoke-virtual {p3}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object p1

    .line 459
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    const/4 v1, 0x0

    .line 461
    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_3

    .line 462
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_5

    const/4 p2, 0x0

    .line 466
    :goto_3
    array-length v1, p1

    if-ge p2, v1, :cond_5

    .line 467
    aget-object v1, p1, p2

    invoke-virtual {v1}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_5
    return p3
.end method

.method private static insertAuxInitializer(Ljavassist/bytecode/CodeAttribute;Ljavassist/bytecode/Bytecode;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1579
    invoke-virtual {p0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v0

    .line 1580
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->skipSuperConstructor()I

    move-result v1

    if-gez v1, :cond_0

    .line 1582
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->skipThisConstructor()I

    move-result v1

    if-ltz v1, :cond_0

    return-void

    .line 1589
    :cond_0
    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeIterator;->insertEx([B)I

    move-result v1

    .line 1590
    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Ljavassist/bytecode/CodeIterator;->insert(Ljavassist/bytecode/ExceptionTable;I)V

    .line 1591
    invoke-virtual {p0}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result p1

    if-ge p1, p2, :cond_1

    .line 1593
    invoke-virtual {p0, p2}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    :cond_1
    return-void
.end method

.method private static isPubCons(Ljavassist/CtConstructor;)Z
    .locals 1

    .line 1024
    invoke-virtual {p0}, Ljavassist/CtConstructor;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavassist/CtConstructor;->isConstructor()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private makeBehaviorCache(Ljavassist/CtMember$Cache;)V
    .locals 5

    .line 845
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v0

    .line 846
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 848
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/MethodInfo;

    .line 849
    invoke-virtual {v3}, Ljavassist/bytecode/MethodInfo;->isMethod()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 850
    new-instance v4, Ljavassist/CtMethod;

    invoke-direct {v4, v3, p0}, Ljavassist/CtMethod;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    .line 851
    invoke-virtual {p1, v4}, Ljavassist/CtMember$Cache;->addMethod(Ljavassist/CtMember;)V

    goto :goto_1

    .line 854
    :cond_0
    new-instance v4, Ljavassist/CtConstructor;

    invoke-direct {v4, v3, p0}, Ljavassist/CtConstructor;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    .line 855
    invoke-virtual {p1, v4}, Ljavassist/CtMember$Cache;->addConstructor(Ljavassist/CtMember;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private makeFieldCache(Ljavassist/CtMember$Cache;)V
    .locals 5

    .line 835
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getFields()Ljava/util/List;

    move-result-object v0

    .line 836
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 838
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/FieldInfo;

    .line 839
    new-instance v4, Ljavassist/CtField;

    invoke-direct {v4, v3, p0}, Ljavassist/CtField;-><init>(Ljavassist/bytecode/FieldInfo;Ljavassist/CtClass;)V

    .line 840
    invoke-virtual {p1, v4}, Ljavassist/CtMember$Cache;->addField(Ljavassist/CtMember;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private makeFieldInitializer(Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1600
    new-instance v6, Ljavassist/compiler/Javac;

    invoke-direct {v6, p1, p0}, Ljavassist/compiler/Javac;-><init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;)V

    const/4 v0, 0x0

    .line 1602
    :try_start_0
    invoke-virtual {v6, p2, v0}, Ljavassist/compiler/Javac;->recordParams([Ljavassist/CtClass;Z)I
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1608
    iget-object v1, p0, Ljavassist/CtClassType;->fieldInitializers:Ljavassist/FieldInitLink;

    move-object v8, v1

    const/4 v7, 0x0

    :goto_0
    if-eqz v8, :cond_1

    .line 1609
    iget-object v0, v8, Ljavassist/FieldInitLink;->field:Ljavassist/CtField;

    .line 1610
    invoke-virtual {v0}, Ljavassist/CtField;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1611
    iget-object v1, v8, Ljavassist/FieldInitLink;->init:Ljavassist/CtField$Initializer;

    invoke-virtual {v0}, Ljavassist/CtField;->getType()Ljavassist/CtClass;

    move-result-object v2

    invoke-virtual {v0}, Ljavassist/CtField;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, p1

    move-object v4, p2

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Ljavassist/CtField$Initializer;->compile(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;Ljavassist/compiler/Javac;)I

    move-result v0

    if-ge v7, v0, :cond_0

    move v7, v0

    .line 1608
    :cond_0
    iget-object v8, v8, Ljavassist/FieldInitLink;->next:Ljavassist/FieldInitLink;

    goto :goto_0

    :cond_1
    return v7

    :catch_0
    move-exception p1

    .line 1605
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method private makeMemberList(Ljava/util/HashMap;)V
    .locals 6

    .line 1663
    invoke-virtual {p0}, Ljavassist/CtClassType;->getModifiers()I

    move-result v0

    .line 1664
    invoke-static {v0}, Ljavassist/Modifier;->isAbstract(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {v0}, Ljavassist/Modifier;->isInterface(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1666
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v0

    .line 1667
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 1669
    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    .line 1670
    instance-of v5, v4, Ljavassist/CtClassType;

    if-eqz v5, :cond_1

    .line 1671
    check-cast v4, Ljavassist/CtClassType;

    invoke-direct {v4, p1}, Ljavassist/CtClassType;->makeMemberList(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1677
    :catch_0
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljavassist/CtClassType;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1678
    instance-of v1, v0, Ljavassist/CtClassType;

    if-eqz v1, :cond_3

    .line 1679
    check-cast v0, Ljavassist/CtClassType;

    invoke-direct {v0, p1}, Ljavassist/CtClassType;->makeMemberList(Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1683
    :catch_1
    :cond_3
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v0

    .line 1684
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_4

    .line 1686
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavassist/bytecode/MethodInfo;

    .line 1687
    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1690
    :cond_4
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getFields()Ljava/util/List;

    move-result-object v0

    .line 1691
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_5

    .line 1693
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/FieldInfo;

    .line 1694
    invoke-virtual {v3}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private modifyClassConstructor(Ljavassist/bytecode/ClassFile;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1473
    iget-object v0, p0, Ljavassist/CtClassType;->fieldInitializers:Ljavassist/FieldInitLink;

    if-nez v0, :cond_0

    return-void

    .line 1476
    :cond_0
    new-instance v0, Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 1477
    new-instance v1, Ljavassist/compiler/Javac;

    invoke-direct {v1, v0, p0}, Ljavassist/compiler/Javac;-><init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;)V

    .line 1480
    iget-object v3, p0, Ljavassist/CtClassType;->fieldInitializers:Ljavassist/FieldInitLink;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 1481
    iget-object v6, v3, Ljavassist/FieldInitLink;->field:Ljavassist/CtField;

    .line 1482
    invoke-virtual {v6}, Ljavassist/CtField;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v4, 0x1

    .line 1484
    iget-object v7, v3, Ljavassist/FieldInitLink;->init:Ljavassist/CtField$Initializer;

    invoke-virtual {v6}, Ljavassist/CtField;->getType()Ljavassist/CtClass;

    move-result-object v8

    invoke-virtual {v6}, Ljavassist/CtField;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6, v0, v1}, Ljavassist/CtField$Initializer;->compileIfStatic(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/Javac;)I

    move-result v6

    if-ge v5, v6, :cond_1

    move v5, v6

    .line 1480
    :cond_1
    iget-object v3, v3, Ljavassist/FieldInitLink;->next:Ljavassist/FieldInitLink;

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 1492
    invoke-direct {p0, p1, v0, v5, v2}, Ljavassist/CtClassType;->modifyClassConstructor(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/Bytecode;II)V

    :cond_3
    return-void
.end method

.method private modifyClassConstructor(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/Bytecode;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1499
    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getStaticInitializer()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0xb1

    .line 1501
    invoke-virtual {p2, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1502
    invoke-virtual {p2, p3}, Ljavassist/bytecode/Bytecode;->setMaxStack(I)V

    .line 1503
    invoke-virtual {p2, p4}, Ljavassist/bytecode/Bytecode;->setMaxLocals(I)V

    .line 1504
    new-instance v0, Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object p3

    const-string p4, "<clinit>"

    const-string v1, "()V"

    invoke-direct {v0, p3, p4, v1}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0x8

    .line 1505
    invoke-virtual {v0, p3}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 1506
    invoke-virtual {p2}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 1507
    invoke-virtual {p1, v0}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    .line 1508
    invoke-virtual {p0}, Ljavassist/CtClassType;->hasMemberCache()Ljavassist/CtMember$Cache;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1510
    new-instance p3, Ljavassist/CtConstructor;

    invoke-direct {p3, v0, p0}, Ljavassist/CtConstructor;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    invoke-virtual {p2, p3}, Ljavassist/CtMember$Cache;->addConstructor(Ljavassist/CtMember;)V

    goto :goto_0

    .line 1513
    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1518
    :try_start_0
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v2

    .line 1519
    invoke-virtual {p2}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavassist/bytecode/CodeIterator;->insertEx([B)I

    move-result v3

    .line 1520
    invoke-virtual {p2}, Ljavassist/bytecode/Bytecode;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object p2

    invoke-virtual {v2, p2, v3}, Ljavassist/bytecode/CodeIterator;->insert(Ljavassist/bytecode/ExceptionTable;I)V

    .line 1521
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result p2

    if-ge p2, p3, :cond_1

    .line 1523
    invoke-virtual {v1, p3}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    .line 1525
    :cond_1
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result p2

    if-ge p2, p4, :cond_2

    .line 1527
    invoke-virtual {v1, p4}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_1

    .line 1535
    :cond_2
    :goto_0
    :try_start_1
    iget-object p2, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v0, p2, p1}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    :try_end_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1538
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1530
    new-instance p2, Ljavassist/CannotCompileException;

    invoke-direct {p2, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1515
    :cond_3
    new-instance p1, Ljavassist/CannotCompileException;

    const-string p2, "empty <clinit>"

    invoke-direct {p1, p2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private modifyConstructors(Ljavassist/bytecode/ClassFile;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1545
    iget-object v0, p0, Ljavassist/CtClassType;->fieldInitializers:Ljavassist/FieldInitLink;

    if-nez v0, :cond_0

    return-void

    .line 1548
    :cond_0
    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 1549
    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v1

    .line 1550
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 1552
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavassist/bytecode/MethodInfo;

    .line 1553
    invoke-virtual {v5}, Ljavassist/bytecode/MethodInfo;->isConstructor()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1554
    invoke-virtual {v5}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1557
    :try_start_0
    new-instance v7, Ljavassist/bytecode/Bytecode;

    invoke-virtual {v6}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v8

    invoke-direct {v7, v0, v3, v8}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 1559
    invoke-virtual {v5}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-static {v8, v9}, Ljavassist/bytecode/Descriptor;->getParameterTypes(Ljava/lang/String;Ljavassist/ClassPool;)[Ljavassist/CtClass;

    move-result-object v8

    .line 1563
    invoke-direct {p0, v7, v8}, Ljavassist/CtClassType;->makeFieldInitializer(Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;)I

    move-result v8

    .line 1564
    invoke-static {v6, v7, v8}, Ljavassist/CtClassType;->insertAuxInitializer(Ljavassist/bytecode/CodeAttribute;Ljavassist/bytecode/Bytecode;I)V

    .line 1565
    iget-object v6, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v5, v6, p1}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1568
    new-instance v0, Ljavassist/CannotCompileException;

    invoke-direct {v0, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private nameReplaced()V
    .locals 2

    .line 800
    invoke-virtual {p0}, Ljavassist/CtClassType;->hasMemberCache()Ljavassist/CtMember$Cache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 802
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->methodHead()Ljavassist/CtMember;

    move-result-object v1

    .line 803
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastMethod()Ljavassist/CtMember;

    move-result-object v0

    :goto_0
    if-eq v1, v0, :cond_0

    .line 805
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    .line 806
    invoke-virtual {v1}, Ljavassist/CtMember;->nameReplaced()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static notFindInArray(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 1654
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1656
    aget-object v3, p1, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private declared-synchronized removeClassFile()V
    .locals 1

    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v0, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavassist/CtClassType;->isModified()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavassist/CtClassType;->hasMemberCache()Ljavassist/CtMember$Cache;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized saveClassFile()V
    .locals 3

    monitor-enter p0

    .line 244
    :try_start_0
    iget-object v0, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavassist/CtClassType;->hasMemberCache()Ljavassist/CtMember$Cache;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 248
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :try_start_1
    iget-object v2, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/ClassFile;->write(Ljava/io/DataOutputStream;)V

    .line 251
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 252
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Ljavassist/CtClassType;->rawClassfile:[B

    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :catch_0
    monitor-exit p0

    return-void

    .line 245
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 661
    :try_start_0
    invoke-virtual {p1}, Ljavassist/ClassPool;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 662
    invoke-virtual {p0, v0, p1}, Ljavassist/bytecode/annotation/Annotation;->toAnnotationType(Ljava/lang/ClassLoader;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 665
    :catch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 666
    invoke-virtual {p0, v0, p1}, Ljavassist/bytecode/annotation/Annotation;->toAnnotationType(Ljava/lang/ClassLoader;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static toAnnotationType(ZLjavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    const/4 v2, 0x0

    goto :goto_0

    .line 548
    :cond_0
    invoke-virtual {p2}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object p2

    .line 549
    array-length v2, p2

    :goto_0
    if-nez p3, :cond_1

    const/4 p3, 0x0

    goto :goto_1

    .line 557
    :cond_1
    invoke-virtual {p3}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v0

    .line 558
    array-length p3, v0

    :goto_1
    if-nez p0, :cond_4

    add-int p0, v2, p3

    .line 562
    new-array p0, p0, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    .line 564
    aget-object v4, p2, v3

    invoke-static {v4, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v1, p3, :cond_3

    add-int p2, v1, v2

    .line 567
    aget-object v3, v0, v1

    invoke-static {v3, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p0, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-object p0

    .line 572
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_5

    .line 575
    :try_start_0
    aget-object v4, p2, v3

    invoke-static {v4, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    if-ge v1, p3, :cond_6

    .line 581
    :try_start_1
    aget-object p2, v0, v1

    invoke-static {p2, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 586
    :cond_6
    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static toAnnotationType(ZLjavassist/ClassPool;Ljavassist/bytecode/ParameterAnnotationsAttribute;Ljavassist/bytecode/ParameterAnnotationsAttribute;Ljavassist/bytecode/MethodInfo;)[[Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 598
    invoke-virtual {p2}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->numParameters()I

    move-result p4

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 600
    invoke-virtual {p3}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->numParameters()I

    move-result p4

    goto :goto_0

    .line 602
    :cond_1
    invoke-virtual {p4}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljavassist/bytecode/Descriptor;->numOfParameters(Ljava/lang/String;)I

    move-result p4

    .line 604
    :goto_0
    new-array v0, p4, [[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p4, :cond_9

    const/4 v3, 0x0

    if-nez p2, :cond_2

    move-object v4, v3

    const/4 v5, 0x0

    goto :goto_2

    .line 614
    :cond_2
    invoke-virtual {p2}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->getAnnotations()[[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v4

    aget-object v4, v4, v2

    .line 615
    array-length v5, v4

    :goto_2
    if-nez p3, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    .line 623
    :cond_3
    invoke-virtual {p3}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->getAnnotations()[[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v3

    aget-object v3, v3, v2

    .line 624
    array-length v6, v3

    :goto_3
    if-nez p0, :cond_5

    add-int v7, v5, v6

    .line 628
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v7, v0, v2

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v5, :cond_4

    .line 630
    aget-object v8, v0, v2

    aget-object v9, v4, v7

    invoke-static {v9, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v6, :cond_8

    .line 633
    aget-object v7, v0, v2

    add-int v8, v4, v5

    aget-object v9, v3, v4

    invoke-static {v9, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 636
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v5, :cond_6

    .line 639
    :try_start_0
    aget-object v9, v4, v8

    invoke-static {v9, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_7
    if-ge v4, v6, :cond_7

    .line 645
    :try_start_1
    aget-object v5, v3, v4

    invoke-static {v5, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 650
    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    return-object v0
.end method


# virtual methods
.method public addConstructor(Ljavassist/CtConstructor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1297
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1298
    invoke-virtual {p1}, Ljavassist/CtConstructor;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1301
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavassist/CtMember$Cache;->addConstructor(Ljavassist/CtMember;)V

    .line 1302
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtConstructor;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    return-void

    .line 1299
    :cond_0
    new-instance p1, Ljavassist/CannotCompileException;

    const-string v0, "cannot add"

    invoke-direct {p1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addField(Ljavassist/CtField;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1223
    invoke-static {p2}, Ljavassist/CtField$Initializer;->byExpr(Ljava/lang/String;)Ljavassist/CtField$Initializer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljavassist/CtClassType;->addField(Ljavassist/CtField;Ljavassist/CtField$Initializer;)V

    return-void
.end method

.method public addField(Ljavassist/CtField;Ljavassist/CtField$Initializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1229
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1230
    invoke-virtual {p1}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    if-ne v0, p0, :cond_5

    if-nez p2, :cond_0

    .line 1234
    invoke-virtual {p1}, Ljavassist/CtField;->getInit()Ljavassist/CtField$Initializer;

    move-result-object p2

    :cond_0
    if-eqz p2, :cond_1

    .line 1237
    invoke-virtual {p1}, Ljavassist/CtField;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljavassist/CtField$Initializer;->check(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {p1}, Ljavassist/CtField;->getModifiers()I

    move-result v0

    .line 1239
    invoke-static {v0}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljavassist/Modifier;->isFinal(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1241
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 1242
    invoke-virtual {p1}, Ljavassist/CtField;->getType()Ljavassist/CtClass;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljavassist/CtField$Initializer;->getConstantValue(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1244
    invoke-virtual {p1}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v2

    new-instance v3, Ljavassist/bytecode/ConstantAttribute;

    invoke-direct {v3, v0, v1}, Ljavassist/bytecode/ConstantAttribute;-><init>(Ljavassist/bytecode/ConstPool;I)V

    invoke-virtual {v2, v3}, Ljavassist/bytecode/FieldInfo;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x0

    goto :goto_0

    :catch_0
    nop

    .line 1251
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavassist/CtMember$Cache;->addField(Ljavassist/CtMember;)V

    .line 1252
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->addField(Ljavassist/bytecode/FieldInfo;)V

    if-eqz p2, :cond_4

    .line 1255
    new-instance v0, Ljavassist/FieldInitLink;

    invoke-direct {v0, p1, p2}, Ljavassist/FieldInitLink;-><init>(Ljavassist/CtField;Ljavassist/CtField$Initializer;)V

    .line 1256
    iget-object p1, p0, Ljavassist/CtClassType;->fieldInitializers:Ljavassist/FieldInitLink;

    if-nez p1, :cond_2

    .line 1258
    iput-object v0, p0, Ljavassist/CtClassType;->fieldInitializers:Ljavassist/FieldInitLink;

    goto :goto_2

    .line 1260
    :cond_2
    :goto_1
    iget-object p2, p1, Ljavassist/FieldInitLink;->next:Ljavassist/FieldInitLink;

    if-eqz p2, :cond_3

    .line 1261
    iget-object p1, p1, Ljavassist/FieldInitLink;->next:Ljavassist/FieldInitLink;

    goto :goto_1

    .line 1263
    :cond_3
    iput-object v0, p1, Ljavassist/FieldInitLink;->next:Ljavassist/FieldInitLink;

    :cond_4
    :goto_2
    return-void

    .line 1231
    :cond_5
    new-instance p1, Ljavassist/CannotCompileException;

    const-string p2, "cannot add"

    invoke-direct {p1, p2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public addInterface(Ljavassist/CtClass;)V
    .locals 1

    .line 730
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    if-eqz p1, :cond_0

    .line 732
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ClassFile;->addInterface(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public addMethod(Ljavassist/CtMethod;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1318
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1319
    invoke-virtual {p1}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    if-ne v0, p0, :cond_3

    .line 1322
    invoke-virtual {p1}, Ljavassist/CtMethod;->getModifiers()I

    move-result v0

    .line 1323
    invoke-virtual {p0}, Ljavassist/CtClassType;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1

    or-int/lit8 v1, v0, 0x1

    .line 1324
    invoke-virtual {p1, v1}, Ljavassist/CtMethod;->setModifiers(I)V

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1326
    :cond_0
    new-instance v0, Ljavassist/CannotCompileException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "an interface method must be abstract: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljavassist/CtMethod;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1330
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljavassist/CtMember$Cache;->addMethod(Ljavassist/CtMember;)V

    .line 1331
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    invoke-virtual {p1}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    and-int/lit16 p1, v0, 0x400

    if-eqz p1, :cond_2

    .line 1333
    invoke-virtual {p0}, Ljavassist/CtClassType;->getModifiers()I

    move-result p1

    or-int/lit16 p1, p1, 0x400

    invoke-virtual {p0, p1}, Ljavassist/CtClassType;->setModifiers(I)V

    :cond_2
    return-void

    .line 1320
    :cond_3
    new-instance p1, Ljavassist/CannotCompileException;

    const-string v0, "bad declaring class"

    invoke-direct {p1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method checkModify()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Ljavassist/CtClassType;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " class is frozen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    iget-boolean v1, p0, Ljavassist/CtClassType;->wasPruned:Z

    if-eqz v1, :cond_0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and pruned"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x1

    .line 290
    iput-boolean v0, p0, Ljavassist/CtClassType;->wasChanged:Z

    return-void
.end method

.method compress()V
    .locals 2

    .line 228
    iget v0, p0, Ljavassist/CtClassType;->getCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 229
    invoke-virtual {p0}, Ljavassist/CtClassType;->isModified()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Ljavassist/ClassPool;->releaseUnmodifiedClassFile:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-direct {p0}, Ljavassist/CtClassType;->removeClassFile()V

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ljavassist/CtClassType;->wasPruned:Z

    if-nez v0, :cond_1

    .line 232
    invoke-direct {p0}, Ljavassist/CtClassType;->saveClassFile()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 234
    iput v0, p0, Ljavassist/CtClassType;->getCount:I

    return-void
.end method

.method public defrost()V
    .locals 1

    const-string v0, "defrost"

    .line 294
    invoke-direct {p0, v0}, Ljavassist/CtClassType;->checkPruned(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 295
    iput-boolean v0, p0, Ljavassist/CtClassType;->wasFrozen:Z

    return-void
.end method

.method protected extendToString(Ljava/lang/StringBuffer;)V
    .locals 4

    const-string v0, " extends ??"

    .line 100
    iget-boolean v1, p0, Ljavassist/CtClassType;->wasChanged:Z

    if-eqz v1, :cond_0

    const-string v1, "changed "

    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    :cond_0
    iget-boolean v1, p0, Ljavassist/CtClassType;->wasFrozen:Z

    if-eqz v1, :cond_1

    const-string v1, "frozen "

    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    :cond_1
    iget-boolean v1, p0, Ljavassist/CtClassType;->wasPruned:Z

    if-eqz v1, :cond_2

    const-string v1, "pruned "

    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    :cond_2
    invoke-virtual {p0}, Ljavassist/CtClassType;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljavassist/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " class "

    .line 110
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->getSuperclass()Ljavassist/CtClass;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 116
    invoke-virtual {v1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.Object"

    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " extends "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljavassist/CtClassType;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v1

    .line 127
    array-length v2, v1

    if-lez v2, :cond_4

    const-string v2, " implements "

    .line 128
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const/4 v2, 0x0

    .line 130
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 131
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ", "

    .line 132
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 136
    :catch_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    :cond_5
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->fieldHead()Ljavassist/CtMember;

    move-result-object v1

    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastField()Ljavassist/CtMember;

    move-result-object v2

    const-string v3, " fields="

    invoke-direct {p0, p1, v3, v1, v2}, Ljavassist/CtClassType;->exToString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljavassist/CtMember;Ljavassist/CtMember;)V

    .line 142
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->consHead()Ljavassist/CtMember;

    move-result-object v1

    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastCons()Ljavassist/CtMember;

    move-result-object v2

    const-string v3, " constructors="

    invoke-direct {p0, p1, v3, v1, v2}, Ljavassist/CtClassType;->exToString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljavassist/CtMember;Ljavassist/CtMember;)V

    .line 144
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->methodHead()Ljavassist/CtMember;

    move-result-object v1

    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastMethod()Ljavassist/CtMember;

    move-result-object v0

    const-string v2, " methods="

    invoke-direct {p0, p1, v2, v1, v0}, Ljavassist/CtClassType;->exToString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljavassist/CtMember;Ljavassist/CtMember;)V

    return-void
.end method

.method public freeze()V
    .locals 1

    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p0, Ljavassist/CtClassType;->wasFrozen:Z

    return-void
.end method

.method public getAccessorMaker()Ljavassist/compiler/AccessorMaker;
    .locals 1

    .line 159
    iget-object v0, p0, Ljavassist/CtClassType;->accessors:Ljavassist/compiler/AccessorMaker;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljavassist/compiler/AccessorMaker;

    invoke-direct {v0, p0}, Ljavassist/compiler/AccessorMaker;-><init>(Ljavassist/CtClass;)V

    iput-object v0, p0, Ljavassist/CtClassType;->accessors:Ljavassist/compiler/AccessorMaker;

    .line 162
    :cond_0
    iget-object v0, p0, Ljavassist/CtClassType;->accessors:Ljavassist/compiler/AccessorMaker;

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 474
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    const-string v1, "RuntimeInvisibleAnnotations"

    .line 475
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AnnotationsAttribute;

    const-string v2, "RuntimeVisibleAnnotations"

    .line 477
    invoke-virtual {v0, v2}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AnnotationsAttribute;

    .line 479
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassPool()Ljavassist/ClassPool;

    move-result-object v2

    invoke-static {p1, v2, v1, v0}, Ljavassist/CtClassType;->getAnnotationType(Ljava/lang/Class;Ljavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotations()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 513
    invoke-direct {p0, v0}, Ljavassist/CtClassType;->getAnnotations(Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)[B
    .locals 1

    .line 1349
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1353
    :cond_0
    invoke-virtual {p1}, Ljavassist/bytecode/AttributeInfo;->get()[B

    move-result-object p1

    return-object p1
.end method

.method public getAvailableAnnotations()[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    .line 518
    :try_start_0
    invoke-direct {p0, v0}, Ljavassist/CtClassType;->getAnnotations(Z)[Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 521
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected exception "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getClassFile2()Ljavassist/bytecode/ClassFile;
    .locals 7

    .line 166
    iget-object v0, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;

    if-eqz v0, :cond_0

    return-object v0

    .line 170
    :cond_0
    iget-object v0, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v0}, Ljavassist/ClassPool;->compress()V

    .line 171
    iget-object v0, p0, Ljavassist/CtClassType;->rawClassfile:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 173
    :try_start_0
    new-instance v0, Ljavassist/bytecode/ClassFile;

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Ljavassist/CtClassType;->rawClassfile:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljavassist/bytecode/ClassFile;-><init>(Ljava/io/DataInputStream;)V

    iput-object v0, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;

    .line 175
    iput-object v1, p0, Ljavassist/CtClassType;->rawClassfile:[B

    const/4 v1, 0x2

    .line 176
    iput v1, p0, Ljavassist/CtClassType;->getCount:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 180
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 186
    :cond_1
    :try_start_1
    iget-object v0, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavassist/ClassPool;->openClassfile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 190
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :try_start_2
    new-instance v1, Ljavassist/bytecode/ClassFile;

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljavassist/bytecode/ClassFile;-><init>(Ljava/io/DataInputStream;)V

    .line 192
    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljavassist/CtClassType;->qualifiedName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 197
    iput-object v1, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;
    :try_end_2
    .catch Ljavassist/NotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 209
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-object v1

    .line 193
    :cond_2
    :try_start_4
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljavassist/CtClassType;->qualifiedName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " found in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljavassist/CtClassType;->qualifiedName:Ljava/lang/String;

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".class"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljavassist/NotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1

    .line 188
    :cond_3
    :try_start_5
    new-instance v0, Ljavassist/NotFoundException;

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljavassist/NotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 204
    :goto_0
    :try_start_6
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_5
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 201
    :goto_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljavassist/NotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    :goto_2
    if-eqz v0, :cond_4

    .line 209
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 211
    :catch_6
    :cond_4
    throw v1
.end method

.method public getClassInitializer()Ljavassist/CtConstructor;
    .locals 4

    .line 1074
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 1075
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->consHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1076
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastCons()Ljavassist/CtMember;

    move-result-object v0

    :cond_0
    if-eq v1, v0, :cond_1

    .line 1079
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    .line 1080
    move-object v2, v1

    check-cast v2, Ljavassist/CtConstructor;

    .line 1081
    invoke-virtual {v2}, Ljavassist/CtConstructor;->isClassInitializer()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClassPool()Ljavassist/ClassPool;
    .locals 1

    .line 263
    iget-object v0, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    return-object v0
.end method

.method public getConstructor(Ljava/lang/String;)Ljavassist/CtConstructor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1031
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 1032
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->consHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1033
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastCons()Ljavassist/CtMember;

    move-result-object v0

    :cond_0
    if-eq v1, v0, :cond_1

    .line 1036
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    .line 1037
    move-object v2, v1

    check-cast v2, Ljavassist/CtConstructor;

    .line 1038
    invoke-virtual {v2}, Ljavassist/CtConstructor;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljavassist/CtConstructor;->isConstructor()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    .line 1043
    :cond_1
    invoke-super {p0, p1}, Ljavassist/CtClass;->getConstructor(Ljava/lang/String;)Ljavassist/CtConstructor;

    move-result-object p1

    return-object p1
.end method

.method public getConstructors()[Ljavassist/CtConstructor;
    .locals 6

    .line 998
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 999
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->consHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1000
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastCons()Ljavassist/CtMember;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-eq v3, v0, :cond_1

    .line 1005
    invoke-virtual {v3}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v3

    .line 1006
    move-object v5, v3

    check-cast v5, Ljavassist/CtConstructor;

    invoke-static {v5}, Ljavassist/CtClassType;->isPubCons(Ljavassist/CtConstructor;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1010
    :cond_1
    new-array v3, v4, [Ljavassist/CtConstructor;

    :cond_2
    :goto_1
    if-eq v1, v0, :cond_3

    .line 1014
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    .line 1015
    move-object v4, v1

    check-cast v4, Ljavassist/CtConstructor;

    .line 1016
    invoke-static {v4}, Ljavassist/CtClassType;->isPubCons(Ljavassist/CtConstructor;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v5, v2, 0x1

    .line 1017
    aput-object v4, v3, v2

    move v2, v5

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method public getDeclaredBehaviors()[Ljavassist/CtBehavior;
    .locals 8

    .line 974
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 975
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->consHead()Ljavassist/CtMember;

    move-result-object v1

    .line 976
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastCons()Ljavassist/CtMember;

    move-result-object v2

    .line 977
    invoke-static {v1, v2}, Ljavassist/CtMember$Cache;->count(Ljavassist/CtMember;Ljavassist/CtMember;)I

    move-result v3

    .line 978
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->methodHead()Ljavassist/CtMember;

    move-result-object v4

    .line 979
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastMethod()Ljavassist/CtMember;

    move-result-object v0

    .line 980
    invoke-static {v4, v0}, Ljavassist/CtMember$Cache;->count(Ljavassist/CtMember;Ljavassist/CtMember;)I

    move-result v5

    add-int/2addr v3, v5

    .line 982
    new-array v3, v3, [Ljavassist/CtBehavior;

    const/4 v5, 0x0

    :goto_0
    if-eq v1, v2, :cond_0

    .line 985
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    add-int/lit8 v6, v5, 0x1

    .line 986
    move-object v7, v1

    check-cast v7, Ljavassist/CtBehavior;

    aput-object v7, v3, v5

    move v5, v6

    goto :goto_0

    :cond_0
    :goto_1
    if-eq v4, v0, :cond_1

    .line 990
    invoke-virtual {v4}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v4

    add-int/lit8 v1, v5, 0x1

    .line 991
    move-object v2, v4

    check-cast v2, Ljavassist/CtBehavior;

    aput-object v2, v3, v5

    move v5, v1

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method public getDeclaredConstructors()[Ljavassist/CtConstructor;
    .locals 6

    .line 1047
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 1048
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->consHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1049
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastCons()Ljavassist/CtMember;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-eq v3, v0, :cond_1

    .line 1054
    invoke-virtual {v3}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v3

    .line 1055
    move-object v5, v3

    check-cast v5, Ljavassist/CtConstructor;

    .line 1056
    invoke-virtual {v5}, Ljavassist/CtConstructor;->isConstructor()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1060
    :cond_1
    new-array v3, v4, [Ljavassist/CtConstructor;

    :cond_2
    :goto_1
    if-eq v1, v0, :cond_3

    .line 1064
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    .line 1065
    move-object v4, v1

    check-cast v4, Ljavassist/CtConstructor;

    .line 1066
    invoke-virtual {v4}, Ljavassist/CtConstructor;->isConstructor()Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v5, v2, 0x1

    .line 1067
    aput-object v4, v3, v2

    move v2, v5

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method public getDeclaredField(Ljava/lang/String;)Ljavassist/CtField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 951
    invoke-virtual {p0, p1, v0}, Ljavassist/CtClassType;->getDeclaredField(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object p1

    return-object p1
.end method

.method public getDeclaredField(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 955
    invoke-direct {p0, p1, p2}, Ljavassist/CtClassType;->getDeclaredField2(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v0

    .line 956
    invoke-direct {p0, v0, p1, p2}, Ljavassist/CtClassType;->checkGetField(Ljavassist/CtField;Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object p1

    return-object p1
.end method

.method public getDeclaredFields()[Ljavassist/CtField;
    .locals 6

    .line 936
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 937
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->fieldHead()Ljavassist/CtMember;

    move-result-object v1

    .line 938
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastField()Ljavassist/CtMember;

    move-result-object v0

    .line 939
    invoke-static {v1, v0}, Ljavassist/CtMember$Cache;->count(Ljavassist/CtMember;Ljavassist/CtMember;)I

    move-result v2

    .line 940
    new-array v2, v2, [Ljavassist/CtField;

    const/4 v3, 0x0

    :goto_0
    if-eq v1, v0, :cond_0

    .line 943
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    add-int/lit8 v4, v3, 0x1

    .line 944
    move-object v5, v1

    check-cast v5, Ljavassist/CtField;

    aput-object v5, v2, v3

    move v3, v4

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getDeclaredMethod(Ljava/lang/String;)Ljavassist/CtMethod;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1188
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 1189
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->methodHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1190
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastMethod()Ljavassist/CtMember;

    move-result-object v0

    :cond_0
    if-eq v1, v0, :cond_1

    .line 1192
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    .line 1193
    invoke-virtual {v1}, Ljavassist/CtMember;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1194
    check-cast v1, Ljavassist/CtMethod;

    return-object v1

    .line 1197
    :cond_1
    new-instance v0, Ljavassist/NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "(..) is not found in "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method public getDeclaredMethod(Ljava/lang/String;[Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1204
    invoke-static {p2}, Ljavassist/bytecode/Descriptor;->ofParameters([Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p2

    .line 1205
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 1206
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->methodHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1207
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastMethod()Ljavassist/CtMember;

    move-result-object v0

    :cond_0
    if-eq v1, v0, :cond_1

    .line 1210
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    .line 1211
    invoke-virtual {v1}, Ljavassist/CtMember;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljavassist/CtMethod;

    invoke-virtual {v2}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    .line 1216
    :cond_1
    new-instance p2, Ljavassist/NotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "(..) is not found in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p2

    :goto_1
    goto :goto_0
.end method

.method public getDeclaredMethods()[Ljavassist/CtMethod;
    .locals 6

    .line 1173
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 1174
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->methodHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1175
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastMethod()Ljavassist/CtMember;

    move-result-object v0

    .line 1176
    invoke-static {v1, v0}, Ljavassist/CtMember$Cache;->count(Ljavassist/CtMember;Ljavassist/CtMember;)I

    move-result v2

    .line 1177
    new-array v2, v2, [Ljavassist/CtMethod;

    const/4 v3, 0x0

    :goto_0
    if-eq v1, v0, :cond_0

    .line 1180
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    add-int/lit8 v4, v3, 0x1

    .line 1181
    move-object v5, v1

    check-cast v5, Ljavassist/CtMethod;

    aput-object v5, v2, v3

    move v3, v4

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getDeclaringClass()Ljavassist/CtClass;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 736
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    const-string v1, "InnerClasses"

    .line 737
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/InnerClassesAttribute;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 742
    :cond_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v3

    .line 743
    invoke-virtual {v1}, Ljavassist/bytecode/InnerClassesAttribute;->tableLength()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    .line 745
    invoke-virtual {v1, v5}, Ljavassist/bytecode/InnerClassesAttribute;->innerClass(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 746
    invoke-virtual {v1, v5}, Ljavassist/bytecode/InnerClassesAttribute;->outerClass(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 748
    iget-object v0, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v0, v6}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v6, "EnclosingMethod"

    .line 751
    invoke-virtual {v0, v6}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v6

    check-cast v6, Ljavassist/bytecode/EnclosingMethodAttribute;

    if-eqz v6, :cond_2

    .line 755
    iget-object v0, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v6}, Ljavassist/bytecode/EnclosingMethodAttribute;->className()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public getEnclosingMethod()Ljavassist/CtMethod;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 763
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    const-string v1, "EnclosingMethod"

    .line 764
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/EnclosingMethodAttribute;

    if-eqz v0, :cond_0

    .line 768
    iget-object v1, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v0}, Ljavassist/bytecode/EnclosingMethodAttribute;->className()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    .line 769
    invoke-virtual {v0}, Ljavassist/bytecode/EnclosingMethodAttribute;->methodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavassist/bytecode/EnclosingMethodAttribute;->methodDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljavassist/CtClass;->getMethod(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getField(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 895
    invoke-virtual {p0, p1, p2}, Ljavassist/CtClassType;->getField2(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v0

    .line 896
    invoke-direct {p0, v0, p1, p2}, Ljavassist/CtClassType;->checkGetField(Ljavassist/CtField;Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object p1

    return-object p1
.end method

.method getField2(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;
    .locals 4

    .line 914
    invoke-direct {p0, p1, p2}, Ljavassist/CtClassType;->getDeclaredField2(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 919
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v0

    .line 920
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 922
    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Ljavassist/CtClass;->getField2(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 927
    :cond_2
    invoke-virtual {p0}, Ljavassist/CtClassType;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 929
    invoke-virtual {v0, p1, p2}, Ljavassist/CtClass;->getField2(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object p1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFields()[Ljavassist/CtField;
    .locals 2

    .line 861
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 862
    invoke-static {v0, p0}, Ljavassist/CtClassType;->getFields(Ljava/util/ArrayList;Ljavassist/CtClass;)V

    .line 863
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljavassist/CtField;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavassist/CtField;

    check-cast v0, [Ljavassist/CtField;

    return-object v0
.end method

.method getHiddenMethods()Ljava/util/Hashtable;
    .locals 1

    .line 1624
    iget-object v0, p0, Ljavassist/CtClassType;->hiddenMethods:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 1625
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavassist/CtClassType;->hiddenMethods:Ljava/util/Hashtable;

    .line 1627
    :cond_0
    iget-object v0, p0, Ljavassist/CtClassType;->hiddenMethods:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getInterfaces()[Ljavassist/CtClass;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 705
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getInterfaces()[Ljava/lang/String;

    move-result-object v0

    .line 706
    array-length v1, v0

    .line 707
    new-array v2, v1, [Ljavassist/CtClass;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 709
    iget-object v4, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method protected declared-synchronized getMembers()Ljavassist/CtMember$Cache;
    .locals 2

    monitor-enter p0

    .line 823
    :try_start_0
    iget-object v0, p0, Ljavassist/CtClassType;->memberCache:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/CtMember$Cache;

    if-nez v0, :cond_1

    .line 825
    :cond_0
    new-instance v0, Ljavassist/CtMember$Cache;

    invoke-direct {v0, p0}, Ljavassist/CtMember$Cache;-><init>(Ljavassist/CtClassType;)V

    .line 826
    invoke-direct {p0, v0}, Ljavassist/CtClassType;->makeFieldCache(Ljavassist/CtMember$Cache;)V

    .line 827
    invoke-direct {p0, v0}, Ljavassist/CtClassType;->makeBehaviorCache(Ljavassist/CtMember$Cache;)V

    .line 828
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Ljavassist/CtClassType;->memberCache:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMethod(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1126
    invoke-static {p0, p1, p2}, Ljavassist/CtClassType;->getMethod0(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    .line 1130
    :cond_0
    new-instance p2, Ljavassist/NotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "(..) is not found in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getMethods()[Ljavassist/CtMethod;
    .locals 2

    .line 1089
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1090
    invoke-static {v0, p0}, Ljavassist/CtClassType;->getMethods0(Ljava/util/HashMap;Ljavassist/CtClass;)V

    .line 1091
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Ljavassist/CtMethod;

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavassist/CtMethod;

    check-cast v0, [Ljavassist/CtMethod;

    return-object v0
.end method

.method public getModifiers()I
    .locals 3

    .line 388
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getAccessFlags()I

    move-result v1

    const/16 v2, 0x20

    .line 390
    invoke-static {v1, v2}, Ljavassist/bytecode/AccessFlag;->clear(II)I

    move-result v1

    .line 391
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getInnerAccessFlags()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    or-int/lit8 v1, v1, 0x8

    .line 395
    :cond_0
    invoke-static {v1}, Ljavassist/bytecode/AccessFlag;->toModifier(I)I

    move-result v0

    return v0
.end method

.method public getNestedClasses()[Ljavassist/CtClass;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 399
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    const-string v1, "InnerClasses"

    .line 400
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/InnerClassesAttribute;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array v0, v2, [Ljavassist/CtClass;

    return-object v0

    .line 405
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "$"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-virtual {v1}, Ljavassist/bytecode/InnerClassesAttribute;->tableLength()I

    move-result v3

    .line 407
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v2, v3, :cond_2

    .line 409
    invoke-virtual {v1, v2}, Ljavassist/bytecode/InnerClassesAttribute;->innerClass(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 411
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x24

    .line 413
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 414
    iget-object v6, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v6, v5}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 418
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljavassist/CtClass;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavassist/CtClass;

    check-cast v0, [Ljavassist/CtClass;

    return-object v0
.end method

.method public getSuperclass()Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 689
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getSuperclass()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 693
    :cond_0
    iget-object v1, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v1, v0}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->find(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 270
    :cond_0
    new-instance v0, Ljavassist/NotFoundException;

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getUniqueNumber()I
    .locals 2

    .line 1630
    iget v0, p0, Ljavassist/CtClassType;->uniqueNumberSeed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljavassist/CtClassType;->uniqueNumberSeed:I

    return v0
.end method

.method public hasAnnotation(Ljava/lang/Class;)Z
    .locals 3

    .line 436
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    const-string v1, "RuntimeInvisibleAnnotations"

    .line 437
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AnnotationsAttribute;

    const-string v2, "RuntimeVisibleAnnotations"

    .line 439
    invoke-virtual {v0, v2}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/AnnotationsAttribute;

    .line 441
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassPool()Ljavassist/ClassPool;

    move-result-object v2

    invoke-static {p1, v2, v1, v0}, Ljavassist/CtClassType;->hasAnnotationType(Ljava/lang/Class;Ljavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)Z

    move-result p1

    return p1
.end method

.method protected hasMemberCache()Ljavassist/CtMember$Cache;
    .locals 1

    .line 815
    iget-object v0, p0, Ljavassist/CtClassType;->memberCache:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 816
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/CtMember$Cache;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final incGetCounter()V
    .locals 1

    .line 220
    iget v0, p0, Ljavassist/CtClassType;->getCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavassist/CtClassType;->getCount:I

    return-void
.end method

.method public instrument(Ljavassist/CodeConverter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1365
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1366
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 1367
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    .line 1368
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v0

    .line 1369
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 1371
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavassist/bytecode/MethodInfo;

    .line 1372
    invoke-virtual {p1, p0, v4, v1}, Ljavassist/CodeConverter;->doit(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/ConstPool;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public instrument(Ljavassist/expr/ExprEditor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1379
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1380
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 1381
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v0

    .line 1382
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1384
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/MethodInfo;

    .line 1385
    invoke-virtual {p1, p0, v3}, Ljavassist/expr/ExprEditor;->doit(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isAnnotation()Z
    .locals 1

    .line 380
    invoke-virtual {p0}, Ljavassist/CtClassType;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljavassist/Modifier;->isAnnotation(I)Z

    move-result v0

    return v0
.end method

.method public isEnum()Z
    .locals 1

    .line 384
    invoke-virtual {p0}, Ljavassist/CtClassType;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljavassist/Modifier;->isEnum(I)Z

    move-result v0

    return v0
.end method

.method public isFrozen()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Ljavassist/CtClassType;->wasFrozen:Z

    return v0
.end method

.method public isInterface()Z
    .locals 1

    .line 376
    invoke-virtual {p0}, Ljavassist/CtClassType;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljavassist/Modifier;->isInterface(I)Z

    move-result v0

    return v0
.end method

.method public isModified()Z
    .locals 1

    .line 275
    iget-boolean v0, p0, Ljavassist/CtClassType;->wasChanged:Z

    return v0
.end method

.method public makeClassInitializer()Ljavassist/CtConstructor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1283
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassInitializer()Ljavassist/CtConstructor;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1287
    :cond_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1288
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 1289
    new-instance v1, Ljavassist/bytecode/Bytecode;

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 1290
    invoke-direct {p0, v0, v1, v3, v3}, Ljavassist/CtClassType;->modifyClassConstructor(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/Bytecode;II)V

    .line 1291
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassInitializer()Ljavassist/CtConstructor;

    move-result-object v0

    return-object v0
.end method

.method public makeNestedClass(Ljava/lang/String;Z)Ljavassist/CtClass;
    .locals 5

    if-eqz p2, :cond_1

    .line 780
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 781
    iget-object p2, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljavassist/ClassPool;->makeNestedClass(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object p2

    .line 782
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 783
    invoke-virtual {p2}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    const-string v2, "InnerClasses"

    .line 784
    invoke-virtual {v0, v2}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/InnerClassesAttribute;

    if-nez v2, :cond_0

    .line 787
    new-instance v2, Ljavassist/bytecode/InnerClassesAttribute;

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavassist/bytecode/InnerClassesAttribute;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 788
    invoke-virtual {v0, v2}, Ljavassist/bytecode/ClassFile;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 791
    :cond_0
    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getAccessFlags()I

    move-result v4

    and-int/lit8 v4, v4, -0x21

    or-int/lit8 v4, v4, 0x8

    invoke-virtual {v2, v0, v3, p1, v4}, Ljavassist/bytecode/InnerClassesAttribute;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 793
    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {v2, p1, v0}, Ljavassist/bytecode/InnerClassesAttribute;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavassist/bytecode/ClassFile;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    return-object p2

    .line 777
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "sorry, only nested static class is supported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public makeUniqueName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1633
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1634
    invoke-direct {p0, v0}, Ljavassist/CtClassType;->makeMemberList(Ljava/util/HashMap;)V

    .line 1635
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1636
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1637
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1639
    invoke-static {p1, v1}, Ljavassist/CtClassType;->notFindInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/16 v0, 0x64

    :goto_0
    const/16 v2, 0x3e7

    if-gt v0, v2, :cond_2

    .line 1648
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1649
    invoke-static {v0, v1}, Ljavassist/CtClassType;->notFindInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    move v0, v3

    goto :goto_0

    .line 1646
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "too many unique name"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public prune()V
    .locals 1

    .line 1394
    iget-boolean v0, p0, Ljavassist/CtClassType;->wasPruned:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1397
    iput-boolean v0, p0, Ljavassist/CtClassType;->wasFrozen:Z

    iput-boolean v0, p0, Ljavassist/CtClassType;->wasPruned:Z

    .line 1398
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->prune()V

    return-void
.end method

.method public rebuildClassFile()V
    .locals 1

    const/4 v0, 0x1

    .line 1401
    iput-boolean v0, p0, Ljavassist/CtClassType;->gcConstPool:Z

    return-void
.end method

.method public removeConstructor(Ljavassist/CtConstructor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1306
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1307
    invoke-virtual {p1}, Ljavassist/CtConstructor;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    .line 1308
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    .line 1309
    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1310
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavassist/CtMember$Cache;->remove(Ljavassist/CtMember;)V

    const/4 p1, 0x1

    .line 1311
    iput-boolean p1, p0, Ljavassist/CtClassType;->gcConstPool:Z

    return-void

    .line 1314
    :cond_0
    new-instance v0, Ljavassist/NotFoundException;

    invoke-virtual {p1}, Ljavassist/CtConstructor;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeField(Ljavassist/CtField;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1269
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1270
    invoke-virtual {p1}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v0

    .line 1271
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    .line 1272
    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1273
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavassist/CtMember$Cache;->remove(Ljavassist/CtMember;)V

    const/4 p1, 0x1

    .line 1274
    iput-boolean p1, p0, Ljavassist/CtClassType;->gcConstPool:Z

    return-void

    .line 1277
    :cond_0
    new-instance v0, Ljavassist/NotFoundException;

    invoke-virtual {p1}, Ljavassist/CtField;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeMethod(Ljavassist/CtMethod;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1337
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1338
    invoke-virtual {p1}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    .line 1339
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    .line 1340
    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1341
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavassist/CtMember$Cache;->remove(Ljavassist/CtMember;)V

    const/4 p1, 0x1

    .line 1342
    iput-boolean p1, p0, Ljavassist/CtClassType;->gcConstPool:Z

    return-void

    .line 1345
    :cond_0
    new-instance v0, Ljavassist/NotFoundException;

    invoke-virtual {p1}, Ljavassist/CtMethod;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public replaceClassName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 365
    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0, p2}, Ljavassist/CtClassType;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_0
    invoke-super {p0, p1, p2}, Ljavassist/CtClass;->replaceClassName(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/ClassFile;->renameClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-direct {p0}, Ljavassist/CtClassType;->nameReplaced()V

    :goto_0
    return-void
.end method

.method public replaceClassName(Ljavassist/ClassMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 342
    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljavassist/ClassMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 346
    invoke-static {v1}, Ljavassist/bytecode/Descriptor;->toJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    iget-object v2, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v2, v1}, Ljavassist/ClassPool;->checkNotFrozen(Ljava/lang/String;)V

    .line 351
    :cond_0
    invoke-super {p0, p1}, Ljavassist/CtClass;->replaceClassName(Ljavassist/ClassMap;)V

    .line 352
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v2

    .line 353
    invoke-virtual {v2, p1}, Ljavassist/bytecode/ClassFile;->renameClass(Ljava/util/Map;)V

    .line 354
    invoke-direct {p0}, Ljavassist/CtClassType;->nameReplaced()V

    if-eqz v1, :cond_1

    .line 357
    invoke-super {p0, v1}, Ljavassist/CtClass;->setName(Ljava/lang/String;)V

    .line 358
    iget-object p1, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {p1, v0, p0}, Ljavassist/ClassPool;->classNameChanged(Ljava/lang/String;Ljavassist/CtClass;)V

    :cond_1
    return-void
.end method

.method public setAttribute(Ljava/lang/String;[B)V
    .locals 3

    .line 1357
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1358
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 1359
    new-instance v1, Ljavassist/bytecode/AttributeInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    return-void
.end method

.method setClassPool(Ljavassist/ClassPool;)V
    .locals 0

    .line 265
    iput-object p1, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    return-void
.end method

.method public setInterfaces([Ljavassist/CtClass;)V
    .locals 4

    .line 715
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/String;

    goto :goto_1

    .line 720
    :cond_0
    array-length v1, p1

    .line 721
    new-array v2, v1, [Ljava/lang/String;

    :goto_0
    if-ge v0, v1, :cond_1

    .line 723
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object p1, v2

    .line 726
    :goto_1
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ClassFile;->setInterfaces([Ljava/lang/String;)V

    return-void
.end method

.method public setModifiers(I)V
    .locals 3

    .line 422
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 423
    invoke-static {p1}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getInnerAccessFlags()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    and-int/lit8 p1, p1, -0x9

    goto :goto_0

    .line 428
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot change "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " into a static class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 431
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 432
    invoke-static {p1}, Ljavassist/bytecode/AccessFlag;->of(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ClassFile;->setAccessFlags(I)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 326
    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 331
    :cond_0
    iget-object v1, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v1, p1}, Ljavassist/ClassPool;->checkNotFrozen(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    .line 333
    invoke-super {p0, p1}, Ljavassist/CtClass;->setName(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v1, p1}, Ljavassist/bytecode/ClassFile;->setName(Ljava/lang/String;)V

    .line 335
    invoke-direct {p0}, Ljavassist/CtClassType;->nameReplaced()V

    .line 336
    iget-object p1, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {p1, v0, p0}, Ljavassist/ClassPool;->classNameChanged(Ljava/lang/String;Ljavassist/CtClass;)V

    return-void
.end method

.method public setSuperclass(Ljavassist/CtClass;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 697
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 698
    invoke-virtual {p0}, Ljavassist/CtClassType;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {p0, p1}, Ljavassist/CtClassType;->addInterface(Ljavassist/CtClass;)V

    goto :goto_0

    .line 701
    :cond_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ClassFile;->setSuperclass(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopPruning(Z)Z
    .locals 1

    .line 1465
    iget-boolean v0, p0, Ljavassist/CtClassType;->doPruning:Z

    xor-int/lit8 v0, v0, 0x1

    xor-int/lit8 p1, p1, 0x1

    .line 1466
    iput-boolean p1, p0, Ljavassist/CtClassType;->doPruning:Z

    return v0
.end method

.method public subclassOf(Ljavassist/CtClass;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 674
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object p1

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_2

    .line 678
    :try_start_0
    invoke-virtual {v1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    .line 681
    :cond_1
    invoke-virtual {v1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    return v0
.end method

.method public subtypeOf(Ljavassist/CtClass;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 300
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_7

    .line 301
    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 304
    :cond_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v2

    .line 305
    invoke-virtual {v2}, Ljavassist/bytecode/ClassFile;->getSuperclass()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 306
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    .line 309
    :cond_1
    invoke-virtual {v2}, Ljavassist/bytecode/ClassFile;->getInterfaces()[Ljava/lang/String;

    move-result-object v2

    .line 310
    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_3

    .line 312
    aget-object v7, v2, v6

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    return v1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 315
    iget-object v0, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v0, v3}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_6

    .line 319
    iget-object v3, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    aget-object v6, v2, v0

    invoke-virtual {v3, v6}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return v5

    :cond_7
    :goto_2
    return v1
.end method

.method public toBytecode(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1407
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->isModified()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v0, "toBytecode"

    .line 1408
    invoke-direct {p0, v0}, Ljavassist/CtClassType;->checkPruned(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 1410
    iget-boolean v3, p0, Ljavassist/CtClassType;->gcConstPool:Z

    if-eqz v3, :cond_0

    .line 1411
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->compact()V

    .line 1412
    iput-boolean v2, p0, Ljavassist/CtClassType;->gcConstPool:Z

    .line 1415
    :cond_0
    invoke-direct {p0, v0}, Ljavassist/CtClassType;->modifyClassConstructor(Ljavassist/bytecode/ClassFile;)V

    .line 1416
    invoke-direct {p0, v0}, Ljavassist/CtClassType;->modifyConstructors(Ljavassist/bytecode/ClassFile;)V

    .line 1417
    sget-object v3, Ljavassist/CtClassType;->debugDump:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1418
    invoke-direct {p0, v0}, Ljavassist/CtClassType;->dumpClassFile(Ljavassist/bytecode/ClassFile;)V

    .line 1420
    :cond_1
    invoke-virtual {v0, p1}, Ljavassist/bytecode/ClassFile;->write(Ljava/io/DataOutputStream;)V

    .line 1421
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    const/4 p1, 0x0

    .line 1422
    iput-object p1, p0, Ljavassist/CtClassType;->fieldInitializers:Ljavassist/FieldInitLink;

    .line 1423
    iget-boolean p1, p0, Ljavassist/CtClassType;->doPruning:Z

    if-eqz p1, :cond_3

    .line 1425
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->prune()V

    .line 1426
    iput-boolean v1, p0, Ljavassist/CtClassType;->wasPruned:Z

    goto :goto_0

    .line 1430
    :cond_2
    iget-object v0, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Ljavassist/ClassPool;->writeClassfile(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 1435
    :cond_3
    :goto_0
    iput v2, p0, Ljavassist/CtClassType;->getCount:I

    .line 1436
    iput-boolean v1, p0, Ljavassist/CtClassType;->wasFrozen:Z
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1442
    new-instance v0, Ljavassist/CannotCompileException;

    invoke-direct {v0, p1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1439
    new-instance v0, Ljavassist/CannotCompileException;

    invoke-direct {v0, p1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v0
.end method
