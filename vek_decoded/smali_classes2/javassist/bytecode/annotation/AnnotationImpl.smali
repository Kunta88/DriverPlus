.class public Ljavassist/bytecode/annotation/AnnotationImpl;
.super Ljava/lang/Object;
.source "AnnotationImpl.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final JDK_ANNOTATION_CLASS_NAME:Ljava/lang/String; = "java.lang.annotation.Annotation"

.field private static JDK_ANNOTATION_TYPE_METHOD:Ljava/lang/reflect/Method;


# instance fields
.field private annotation:Ljavassist/bytecode/annotation/Annotation;

.field private transient annotationType:Ljava/lang/Class;

.field private transient cachedHashCode:I

.field private classLoader:Ljava/lang/ClassLoader;

.field private pool:Ljavassist/ClassPool;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "java.lang.annotation.Annotation"

    .line 51
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "annotationType"

    const/4 v2, 0x0

    .line 52
    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Ljavassist/bytecode/annotation/AnnotationImpl;->JDK_ANNOTATION_TYPE_METHOD:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private constructor <init>(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;Ljava/lang/ClassLoader;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 46
    iput v0, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->cachedHashCode:I

    .line 76
    iput-object p1, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    .line 77
    iput-object p2, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->pool:Ljavassist/ClassPool;

    .line 78
    iput-object p3, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private static arrayHashCode(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 296
    :cond_0
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 297
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 299
    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 300
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private checkEquals(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 239
    :cond_0
    instance-of v1, p1, Ljava/lang/reflect/Proxy;

    if-eqz v1, :cond_1

    .line 240
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    .line 241
    instance-of v2, v1, Ljavassist/bytecode/annotation/AnnotationImpl;

    if-eqz v2, :cond_1

    .line 242
    check-cast v1, Ljavassist/bytecode/annotation/AnnotationImpl;

    .line 243
    iget-object p1, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    iget-object v0, v1, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    invoke-virtual {p1, v0}, Ljavassist/bytecode/annotation/Annotation;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 247
    :cond_1
    sget-object v1, Ljavassist/bytecode/annotation/AnnotationImpl;->JDK_ANNOTATION_TYPE_METHOD:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 248
    invoke-direct {p0}, Ljavassist/bytecode/annotation/AnnotationImpl;->getAnnotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 251
    :cond_2
    iget-object v1, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotationType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    .line 252
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_7

    .line 253
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 256
    iget-object v5, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    invoke-virtual {v5, v4}, Ljavassist/bytecode/annotation/Annotation;->getMemberValue(Ljava/lang/String;)Ljavassist/bytecode/annotation/MemberValue;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 261
    :try_start_0
    iget-object v6, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->classLoader:Ljava/lang/ClassLoader;

    iget-object v7, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->pool:Ljavassist/ClassPool;

    aget-object v8, v1, v3

    invoke-virtual {v5, v6, v7, v8}, Ljavassist/bytecode/annotation/MemberValue;->getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_3
    move-object v5, v2

    :goto_1
    if-nez v5, :cond_4

    .line 263
    aget-object v5, v1, v3

    invoke-direct {p0, v4, v5}, Ljavassist/bytecode/annotation/AnnotationImpl;->getDefault(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v5

    .line 264
    :cond_4
    aget-object v6, v1, v3

    move-object v7, v2

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v6, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_5

    if-eqz v4, :cond_5

    return v0

    :cond_5
    if-eqz v5, :cond_6

    .line 275
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    return v0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 270
    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error retrieving value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for annotation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    invoke-virtual {v2}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 267
    :goto_3
    throw p1

    :cond_7
    const/4 p1, 0x1

    return p1
.end method

.method private getAnnotationType()Ljava/lang/Class;
    .locals 5

    .line 97
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotationType:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    invoke-virtual {v0}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 100
    :try_start_0
    iget-object v1, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotationType:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 103
    new-instance v2, Ljava/lang/NoClassDefFoundError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading annotation class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/NoClassDefFoundError;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 105
    throw v2

    .line 108
    :cond_0
    :goto_0
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotationType:Ljava/lang/Class;

    return-object v0
.end method

.method private getDefault(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    invoke-virtual {v0}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 156
    iget-object v1, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->pool:Ljavassist/ClassPool;

    if-eqz v1, :cond_0

    .line 158
    :try_start_0
    invoke-virtual {v1, v0}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    .line 160
    invoke-virtual {v1, p1}, Ljavassist/bytecode/ClassFile;->getMethod(Ljava/lang/String;)Ljavassist/bytecode/MethodInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "AnnotationDefault"

    .line 162
    invoke-virtual {v1, v2}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AnnotationDefaultAttribute;

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v1}, Ljavassist/bytecode/AnnotationDefaultAttribute;->getDefaultValue()Ljavassist/bytecode/annotation/MemberValue;

    move-result-object p1

    .line 167
    iget-object v1, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->classLoader:Ljava/lang/ClassLoader;

    iget-object v2, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->pool:Ljavassist/ClassPool;

    invoke-virtual {p1, v1, v2, p2}, Ljavassist/bytecode/annotation/MemberValue;->getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 172
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot find a class file: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no default value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static make(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljavassist/ClassPool;Ljavassist/bytecode/annotation/Annotation;)Ljava/lang/Object;
    .locals 1

    .line 71
    new-instance v0, Ljavassist/bytecode/annotation/AnnotationImpl;

    invoke-direct {v0, p3, p2, p0}, Ljavassist/bytecode/annotation/AnnotationImpl;-><init>(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;Ljava/lang/ClassLoader;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Class;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 72
    invoke-static {p0, p2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAnnotation()Ljavassist/bytecode/annotation/Annotation;
    .locals 1

    .line 117
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    invoke-virtual {v0}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .line 185
    iget v0, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->cachedHashCode:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_5

    .line 189
    invoke-direct {p0}, Ljavassist/bytecode/annotation/AnnotationImpl;->getAnnotationType()Ljava/lang/Class;

    .line 191
    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotationType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 192
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_4

    .line 193
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 197
    iget-object v5, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    invoke-virtual {v5, v4}, Ljavassist/bytecode/annotation/Annotation;->getMemberValue(Ljava/lang/String;)Ljavassist/bytecode/annotation/MemberValue;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 201
    :try_start_0
    iget-object v6, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->classLoader:Ljava/lang/ClassLoader;

    iget-object v7, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->pool:Ljavassist/ClassPool;

    aget-object v8, v0, v2

    invoke-virtual {v5, v6, v7, v8}, Ljavassist/bytecode/annotation/MemberValue;->getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_1
    if-nez v6, :cond_1

    .line 203
    aget-object v5, v0, v2

    invoke-direct {p0, v4, v5}, Ljavassist/bytecode/annotation/AnnotationImpl;->getDefault(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 209
    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error retrieving value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for annotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    invoke-virtual {v3}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 206
    :goto_3
    throw v0

    :cond_1
    :goto_4
    if-eqz v6, :cond_3

    .line 214
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 215
    invoke-static {v6}, Ljavassist/bytecode/annotation/AnnotationImpl;->arrayHashCode(Ljava/lang/Object;)I

    move-result v5

    goto :goto_5

    .line 217
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_5

    :cond_3
    const/4 v5, 0x0

    .line 219
    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    mul-int/lit8 v4, v4, 0x7f

    xor-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    :cond_4
    iput v3, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->cachedHashCode:I

    .line 224
    :cond_5
    iget v0, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->cachedHashCode:I

    return v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 130
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .line 131
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    const-string v0, "equals"

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 133
    aget-object p1, p3, p1

    .line 134
    new-instance p2, Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Ljavassist/bytecode/annotation/AnnotationImpl;->checkEquals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :cond_0
    const-string p3, "toString"

    .line 136
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 137
    iget-object p1, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    invoke-virtual {p1}, Ljavassist/bytecode/annotation/Annotation;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p3, "hashCode"

    .line 138
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 139
    new-instance p1, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljavassist/bytecode/annotation/AnnotationImpl;->hashCode()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_2
    const-string p3, "annotationType"

    .line 141
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    array-length p3, p3

    if-nez p3, :cond_3

    .line 143
    invoke-direct {p0}, Ljavassist/bytecode/annotation/AnnotationImpl;->getAnnotationType()Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 145
    :cond_3
    iget-object p3, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->annotation:Ljavassist/bytecode/annotation/Annotation;

    invoke-virtual {p3, p1}, Ljavassist/bytecode/annotation/Annotation;->getMemberValue(Ljava/lang/String;)Ljavassist/bytecode/annotation/MemberValue;

    move-result-object p3

    if-nez p3, :cond_4

    .line 147
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/annotation/AnnotationImpl;->getDefault(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 149
    :cond_4
    iget-object p1, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->classLoader:Ljava/lang/ClassLoader;

    iget-object v0, p0, Ljavassist/bytecode/annotation/AnnotationImpl;->pool:Ljavassist/ClassPool;

    invoke-virtual {p3, p1, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;->getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
