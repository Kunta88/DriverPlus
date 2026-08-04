.class public Ljavassist/util/proxy/FactoryHelper;
.super Ljava/lang/Object;
.source "FactoryHelper.java"


# static fields
.field public static final dataSize:[I

.field private static defineClass1:Ljava/lang/reflect/Method;

.field private static defineClass2:Ljava/lang/reflect/Method;

.field public static final primitiveTypes:[Ljava/lang/Class;

.field public static final unwarpMethods:[Ljava/lang/String;

.field public static final unwrapDesc:[Ljava/lang/String;

.field public static final wrapperDesc:[Ljava/lang/String;

.field public static final wrapperTypes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 42
    const-class v0, [B

    const-string v1, "defineClass"

    :try_start_0
    const-string v2, "java.lang.ClassLoader"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    .line 43
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v4, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v7, v4, v9

    invoke-static {v2, v1, v4}, Ljavassist/util/proxy/SecurityActions;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Ljavassist/util/proxy/FactoryHelper;->defineClass1:Ljava/lang/reflect/Method;

    const/4 v4, 0x5

    new-array v7, v4, [Ljava/lang/Class;

    .line 49
    const-class v10, Ljava/lang/String;

    aput-object v10, v7, v6

    aput-object v0, v7, v5

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v7, v8

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v7, v9

    const-class v0, Ljava/security/ProtectionDomain;

    aput-object v0, v7, v3

    invoke-static {v2, v1, v7}, Ljavassist/util/proxy/SecurityActions;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Ljavassist/util/proxy/FactoryHelper;->defineClass2:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x9

    new-array v1, v0, [Ljava/lang/Class;

    .line 78
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v8

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v9

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x6

    aput-object v2, v1, v7

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    sput-object v1, Ljavassist/util/proxy/FactoryHelper;->primitiveTypes:[Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "java.lang.Boolean"

    aput-object v1, v0, v6

    const-string v1, "java.lang.Byte"

    aput-object v1, v0, v5

    const-string v1, "java.lang.Character"

    aput-object v1, v0, v8

    const-string v1, "java.lang.Short"

    aput-object v1, v0, v9

    const-string v1, "java.lang.Integer"

    aput-object v1, v0, v3

    const-string v1, "java.lang.Long"

    aput-object v1, v0, v4

    const-string v1, "java.lang.Float"

    aput-object v1, v0, v7

    const-string v1, "java.lang.Double"

    aput-object v1, v0, v10

    const-string v1, "java.lang.Void"

    aput-object v1, v0, v11

    .line 86
    sput-object v0, Ljavassist/util/proxy/FactoryHelper;->wrapperTypes:[Ljava/lang/String;

    new-array v0, v11, [Ljava/lang/String;

    const-string v1, "(Z)V"

    aput-object v1, v0, v6

    const-string v1, "(B)V"

    aput-object v1, v0, v5

    const-string v1, "(C)V"

    aput-object v1, v0, v8

    const-string v1, "(S)V"

    aput-object v1, v0, v9

    const-string v1, "(I)V"

    aput-object v1, v0, v3

    const-string v1, "(J)V"

    aput-object v1, v0, v4

    const-string v1, "(F)V"

    aput-object v1, v0, v7

    const-string v1, "(D)V"

    aput-object v1, v0, v10

    .line 95
    sput-object v0, Ljavassist/util/proxy/FactoryHelper;->wrapperDesc:[Ljava/lang/String;

    new-array v0, v11, [Ljava/lang/String;

    const-string v1, "booleanValue"

    aput-object v1, v0, v6

    const-string v1, "byteValue"

    aput-object v1, v0, v5

    const-string v1, "charValue"

    aput-object v1, v0, v8

    const-string v1, "shortValue"

    aput-object v1, v0, v9

    const-string v1, "intValue"

    aput-object v1, v0, v3

    const-string v1, "longValue"

    aput-object v1, v0, v4

    const-string v1, "floatValue"

    aput-object v1, v0, v7

    const-string v1, "doubleValue"

    aput-object v1, v0, v10

    .line 106
    sput-object v0, Ljavassist/util/proxy/FactoryHelper;->unwarpMethods:[Ljava/lang/String;

    new-array v0, v11, [Ljava/lang/String;

    const-string v1, "()Z"

    aput-object v1, v0, v6

    const-string v1, "()B"

    aput-object v1, v0, v5

    const-string v1, "()C"

    aput-object v1, v0, v8

    const-string v1, "()S"

    aput-object v1, v0, v9

    const-string v1, "()I"

    aput-object v1, v0, v3

    const-string v1, "()J"

    aput-object v1, v0, v4

    const-string v1, "()F"

    aput-object v1, v0, v7

    const-string v1, "()D"

    aput-object v1, v0, v10

    .line 115
    sput-object v0, Ljavassist/util/proxy/FactoryHelper;->unwrapDesc:[Ljava/lang/String;

    new-array v0, v11, [I

    .line 123
    fill-array-data v0, :array_0

    sput-object v0, Ljavassist/util/proxy/FactoryHelper;->dataSize:[I

    return-void

    .line 56
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot initialize"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static toBytecode(Ljavassist/bytecode/ClassFile;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 189
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 191
    :try_start_0
    invoke-virtual {p0, v1}, Ljavassist/bytecode/ClassFile;->write(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 197
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 194
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    throw p0
.end method

.method public static toClass(Ljavassist/bytecode/ClassFile;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 137
    invoke-static {p0, p1, v0}, Ljavassist/util/proxy/FactoryHelper;->toClass(Ljavassist/bytecode/ClassFile;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static toClass(Ljavassist/bytecode/ClassFile;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 150
    :try_start_0
    invoke-static {p0}, Ljavassist/util/proxy/FactoryHelper;->toBytecode(Ljavassist/bytecode/ClassFile;)[B

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-nez p2, :cond_0

    .line 154
    sget-object p2, Ljavassist/util/proxy/FactoryHelper;->defineClass1:Ljava/lang/reflect/Method;

    new-array v4, v4, [Ljava/lang/Object;

    .line 155
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v5

    aput-object v0, v4, v3

    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object p0, v4, v2

    new-instance p0, Ljava/lang/Integer;

    array-length v0, v0

    invoke-direct {p0, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object p0, v4, v1

    goto :goto_0

    .line 159
    :cond_0
    sget-object v6, Ljavassist/util/proxy/FactoryHelper;->defineClass2:Ljava/lang/reflect/Method;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    .line 160
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v7, v5

    aput-object v0, v7, v3

    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object p0, v7, v2

    new-instance p0, Ljava/lang/Integer;

    array-length v0, v0

    invoke-direct {p0, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object p0, v7, v1

    aput-object p2, v7, v4

    move-object p2, v6

    move-object v4, v7

    .line 164
    :goto_0
    invoke-static {p2, p1, v4}, Ljavassist/util/proxy/FactoryHelper;->toClass2(Ljava/lang/reflect/Method;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 173
    new-instance p1, Ljavassist/CannotCompileException;

    invoke-direct {p1, p0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 170
    new-instance p1, Ljavassist/CannotCompileException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 167
    throw p0
.end method

.method private static declared-synchronized toClass2(Ljava/lang/reflect/Method;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Ljavassist/util/proxy/FactoryHelper;

    monitor-enter v0

    const/4 v1, 0x1

    .line 181
    :try_start_0
    invoke-static {p0, v1}, Ljavassist/util/proxy/SecurityActions;->setAccessible(Ljava/lang/reflect/AccessibleObject;Z)V

    .line 182
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    const/4 p2, 0x0

    .line 183
    invoke-static {p0, p2}, Ljavassist/util/proxy/SecurityActions;->setAccessible(Ljava/lang/reflect/AccessibleObject;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final typeIndex(Ljava/lang/Class;)I
    .locals 4

    .line 66
    sget-object v0, Ljavassist/util/proxy/FactoryHelper;->primitiveTypes:[Ljava/lang/Class;

    .line 67
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 69
    aget-object v3, v0, v2

    if-ne v3, p0, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static writeFile(Ljavassist/bytecode/ClassFile;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 206
    :try_start_0
    invoke-static {p0, p1}, Ljavassist/util/proxy/FactoryHelper;->writeFile0(Ljavassist/bytecode/ClassFile;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 209
    new-instance p1, Ljavassist/CannotCompileException;

    invoke-direct {p1, p0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static writeFile0(Ljavassist/bytecode/ClassFile;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object v0

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2e

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 218
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 220
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 225
    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 228
    :try_start_0
    invoke-virtual {p0, v0}, Ljavassist/bytecode/ClassFile;->write(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 231
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :goto_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    throw p0
.end method
