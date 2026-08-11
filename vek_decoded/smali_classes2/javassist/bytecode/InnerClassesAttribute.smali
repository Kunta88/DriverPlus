.class public Ljavassist/bytecode/InnerClassesAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "InnerClassesAttribute.java"


# static fields
.field public static final tag:Ljava/lang/String; = "InnerClasses"


# direct methods
.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    const-string v1, "InnerClasses"

    .line 48
    invoke-direct {p0, p1, v1, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    .line 49
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->get()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1, v0}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-void
.end method

.method private constructor <init>(Ljavassist/bytecode/ConstPool;[B)V
    .locals 1

    const-string v0, "InnerClasses"

    .line 39
    invoke-direct {p0, p1, v0, p2}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public accessFlags(I)I
    .locals 1

    .line 148
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->get()[B

    move-result-object v0

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x8

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    return p1
.end method

.method public append(IIII)V
    .locals 5

    .line 183
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->get()[B

    move-result-object v0

    .line 184
    array-length v1, v0

    add-int/lit8 v2, v1, 0x8

    .line 185
    new-array v2, v2, [B

    const/4 v3, 0x2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 187
    aget-byte v4, v0, v3

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 189
    invoke-static {v0, v3}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 190
    invoke-static {v0, v2, v3}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 192
    invoke-static {p1, v2, v1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    add-int/lit8 p1, v1, 0x2

    .line 193
    invoke-static {p2, v2, p1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    add-int/lit8 p1, v1, 0x4

    .line 194
    invoke-static {p3, v2, p1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    add-int/lit8 v1, v1, 0x6

    .line 195
    invoke-static {p4, v2, v1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 197
    invoke-virtual {p0, v2}, Ljavassist/bytecode/InnerClassesAttribute;->set([B)V

    return-void
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 168
    iget-object v0, p0, Ljavassist/bytecode/InnerClassesAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p1

    .line 169
    iget-object v0, p0, Ljavassist/bytecode/InnerClassesAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result p2

    .line 170
    iget-object v0, p0, Ljavassist/bytecode/InnerClassesAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p3}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p3

    .line 171
    invoke-virtual {p0, p1, p2, p3, p4}, Ljavassist/bytecode/InnerClassesAttribute;->append(IIII)V

    return-void
.end method

.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 209
    invoke-virtual/range {p0 .. p0}, Ljavassist/bytecode/InnerClassesAttribute;->get()[B

    move-result-object v2

    .line 210
    array-length v3, v2

    new-array v3, v3, [B

    .line 211
    invoke-virtual/range {p0 .. p0}, Ljavassist/bytecode/InnerClassesAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v4

    .line 212
    new-instance v5, Ljavassist/bytecode/InnerClassesAttribute;

    invoke-direct {v5, v0, v3}, Ljavassist/bytecode/InnerClassesAttribute;-><init>(Ljavassist/bytecode/ConstPool;[B)V

    const/4 v6, 0x0

    .line 213
    invoke-static {v2, v6}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v7

    .line 214
    invoke-static {v7, v3, v6}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    const/4 v8, 0x2

    :goto_0
    if-ge v6, v7, :cond_3

    .line 217
    invoke-static {v2, v8}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v9

    add-int/lit8 v10, v8, 0x2

    .line 218
    invoke-static {v2, v10}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v11

    add-int/lit8 v12, v8, 0x4

    .line 219
    invoke-static {v2, v12}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v13

    add-int/lit8 v14, v8, 0x6

    .line 220
    invoke-static {v2, v14}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v15

    if-eqz v9, :cond_0

    .line 223
    invoke-virtual {v4, v9, v0, v1}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v9

    .line 225
    :cond_0
    invoke-static {v9, v3, v8}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    if-eqz v11, :cond_1

    .line 228
    invoke-virtual {v4, v11, v0, v1}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v11

    .line 230
    :cond_1
    invoke-static {v11, v3, v10}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    if-eqz v13, :cond_2

    .line 233
    invoke-virtual {v4, v13, v0, v1}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v13

    .line 235
    :cond_2
    invoke-static {v13, v3, v12}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 236
    invoke-static {v15, v3, v14}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    add-int/lit8 v8, v8, 0x8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return-object v5
.end method

.method public innerClass(I)Ljava/lang/String;
    .locals 1

    .line 71
    invoke-virtual {p0, p1}, Ljavassist/bytecode/InnerClassesAttribute;->innerClassIndex(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 75
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/InnerClassesAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public innerClassIndex(I)I
    .locals 1

    .line 61
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->get()[B

    move-result-object v0

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x2

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    return p1
.end method

.method public innerName(I)Ljava/lang/String;
    .locals 1

    .line 129
    invoke-virtual {p0, p1}, Ljavassist/bytecode/InnerClassesAttribute;->innerNameIndex(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 133
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/InnerClassesAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public innerNameIndex(I)I
    .locals 1

    .line 119
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->get()[B

    move-result-object v0

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x6

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    return p1
.end method

.method public outerClass(I)Ljava/lang/String;
    .locals 1

    .line 100
    invoke-virtual {p0, p1}, Ljavassist/bytecode/InnerClassesAttribute;->outerClassIndex(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 104
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/InnerClassesAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public outerClassIndex(I)I
    .locals 1

    .line 90
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->get()[B

    move-result-object v0

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    return p1
.end method

.method public setAccessFlags(II)V
    .locals 1

    .line 156
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->get()[B

    move-result-object v0

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x8

    invoke-static {p2, v0, p1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    return-void
.end method

.method public setInnerClassIndex(II)V
    .locals 1

    .line 83
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->get()[B

    move-result-object v0

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x2

    invoke-static {p2, v0, p1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    return-void
.end method

.method public setInnerNameIndex(II)V
    .locals 1

    .line 141
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->get()[B

    move-result-object v0

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x6

    invoke-static {p2, v0, p1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    return-void
.end method

.method public setOuterClassIndex(II)V
    .locals 1

    .line 112
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->get()[B

    move-result-object v0

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    invoke-static {p2, v0, p1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    return-void
.end method

.method public tableLength()I
    .locals 2

    .line 55
    invoke-virtual {p0}, Ljavassist/bytecode/InnerClassesAttribute;->get()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method
