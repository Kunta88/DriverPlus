.class public Ljavassist/SerialVersionUID;
.super Ljava/lang/Object;
.source "SerialVersionUID.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateDefault(Ljavassist/CtClass;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 78
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 79
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 80
    invoke-virtual {p0}, Ljavassist/CtClass;->getClassFile()Ljavassist/bytecode/ClassFile;

    move-result-object v2

    .line 83
    invoke-static {p0}, Ljavassist/SerialVersionUID;->javaName(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Ljavassist/CtClass;->getDeclaredMethods()[Ljavassist/CtMethod;

    move-result-object v3

    .line 89
    invoke-virtual {p0}, Ljavassist/CtClass;->getModifiers()I

    move-result v4

    and-int/lit16 v5, v4, 0x200

    if-eqz v5, :cond_1

    .line 91
    array-length v5, v3

    if-lez v5, :cond_0

    or-int/lit16 v4, v4, 0x400

    goto :goto_0

    :cond_0
    and-int/lit16 v4, v4, -0x401

    .line 96
    :cond_1
    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 99
    invoke-virtual {v2}, Ljavassist/bytecode/ClassFile;->getInterfaces()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 100
    :goto_1
    array-length v7, v4

    if-ge v6, v7, :cond_2

    .line 101
    aget-object v7, v4, v6

    invoke-static {v7}, Ljavassist/SerialVersionUID;->javaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 103
    :cond_2
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v6, 0x0

    .line 104
    :goto_2
    array-length v7, v4

    if-ge v6, v7, :cond_3

    .line 105
    aget-object v7, v4, v6

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 108
    :cond_3
    invoke-virtual {p0}, Ljavassist/CtClass;->getDeclaredFields()[Ljavassist/CtField;

    move-result-object v4

    .line 109
    new-instance v6, Ljavassist/SerialVersionUID$1;

    invoke-direct {v6}, Ljavassist/SerialVersionUID$1;-><init>()V

    invoke-static {v4, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v6, 0x0

    .line 117
    :goto_3
    array-length v7, v4

    if-ge v6, v7, :cond_6

    .line 118
    aget-object v7, v4, v6

    .line 119
    invoke-virtual {v7}, Ljavassist/CtField;->getModifiers()I

    move-result v8

    and-int/lit8 v9, v8, 0x2

    if-eqz v9, :cond_4

    and-int/lit16 v9, v8, 0x88

    if-nez v9, :cond_5

    .line 122
    :cond_4
    invoke-virtual {v7}, Ljavassist/CtField;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 124
    invoke-virtual {v7}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v7

    invoke-virtual {v7}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 129
    :cond_6
    invoke-virtual {v2}, Ljavassist/bytecode/ClassFile;->getStaticInitializer()Ljavassist/bytecode/MethodInfo;

    move-result-object v2

    const/16 v4, 0x8

    if-eqz v2, :cond_7

    const-string v2, "<clinit>"

    .line 130
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-string v2, "()V"

    .line 132
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 136
    :cond_7
    invoke-virtual {p0}, Ljavassist/CtClass;->getDeclaredConstructors()[Ljavassist/CtConstructor;

    move-result-object p0

    .line 137
    new-instance v2, Ljavassist/SerialVersionUID$2;

    invoke-direct {v2}, Ljavassist/SerialVersionUID$2;-><init>()V

    invoke-static {p0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    .line 146
    :goto_4
    array-length v6, p0

    const/16 v7, 0x2e

    const/16 v8, 0x2f

    if-ge v2, v6, :cond_9

    .line 147
    aget-object v6, p0, v2

    .line 148
    invoke-virtual {v6}, Ljavassist/CtConstructor;->getModifiers()I

    move-result v9

    and-int/lit8 v10, v9, 0x2

    if-nez v10, :cond_8

    const-string v10, "<init>"

    .line 150
    invoke-virtual {v1, v10}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 152
    invoke-virtual {v6}, Ljavassist/CtConstructor;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v6

    invoke-virtual {v6}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 158
    :cond_9
    new-instance p0, Ljavassist/SerialVersionUID$3;

    invoke-direct {p0}, Ljavassist/SerialVersionUID$3;-><init>()V

    invoke-static {v3, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 171
    :goto_5
    array-length p0, v3

    if-ge v5, p0, :cond_b

    .line 172
    aget-object p0, v3, v5

    .line 173
    invoke-virtual {p0}, Ljavassist/CtMethod;->getModifiers()I

    move-result v2

    and-int/lit16 v2, v2, 0xd3f

    and-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_a

    .line 179
    invoke-virtual {p0}, Ljavassist/CtMethod;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 181
    invoke-virtual {p0}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object p0

    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 187
    :cond_b
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    const-string p0, "SHA"

    .line 188
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 189
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 191
    array-length v2, p0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_6
    if-ltz v2, :cond_c

    shl-long/2addr v0, v4

    .line 192
    aget-byte v3, p0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v3, v3, 0xff

    int-to-long v5, v3

    or-long/2addr v0, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_c
    return-wide v0

    :catch_0
    move-exception p0

    .line 200
    new-instance v0, Ljavassist/CannotCompileException;

    invoke-direct {v0, p0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 197
    new-instance v0, Ljavassist/CannotCompileException;

    invoke-direct {v0, p0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method private static isSerializable(Ljavassist/CtClass;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    const-string v1, "java.io.Serializable"

    .line 67
    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z

    move-result p0

    return p0
.end method

.method private static javaName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 209
    invoke-static {p0}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljavassist/bytecode/Descriptor;->toJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static javaName(Ljavassist/CtClass;)Ljava/lang/String;
    .locals 0

    .line 205
    invoke-static {p0}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljavassist/bytecode/Descriptor;->toJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setSerialVersionUID(Ljavassist/CtClass;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    const-string v0, "serialVersionUID"

    .line 43
    :try_start_0
    invoke-virtual {p0, v0}, Ljavassist/CtClass;->getDeclaredField(Ljava/lang/String;)Ljavassist/CtField;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 49
    :catch_0
    invoke-static {p0}, Ljavassist/SerialVersionUID;->isSerializable(Ljavassist/CtClass;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 53
    :cond_0
    new-instance v1, Ljavassist/CtField;

    sget-object v2, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    invoke-direct {v1, v2, v0, p0}, Ljavassist/CtField;-><init>(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)V

    const/16 v0, 0x1a

    .line 55
    invoke-virtual {v1, v0}, Ljavassist/CtField;->setModifiers(I)V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljavassist/SerialVersionUID;->calculateDefault(Ljavassist/CtClass;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "L"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljavassist/CtClass;->addField(Ljavassist/CtField;Ljava/lang/String;)V

    return-void
.end method
