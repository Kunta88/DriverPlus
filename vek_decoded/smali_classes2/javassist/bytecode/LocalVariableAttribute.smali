.class public Ljavassist/bytecode/LocalVariableAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "LocalVariableAttribute.java"


# static fields
.field public static final tag:Ljava/lang/String; = "LocalVariableTable"

.field public static final typeTag:Ljava/lang/String; = "LocalVariableTypeTable"


# direct methods
.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    const-string v1, "LocalVariableTable"

    .line 41
    invoke-direct {p0, p1, v1, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    .line 42
    iget-object p1, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

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

    .line 64
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 57
    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    .line 58
    iget-object p1, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    const/4 p2, 0x0

    invoke-static {p2, p1, p2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public addEntry(IIIII)V
    .locals 4

    .line 82
    iget-object v0, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    array-length v0, v0

    add-int/lit8 v1, v0, 0xa

    .line 83
    new-array v1, v1, [B

    .line 84
    invoke-virtual {p0}, Ljavassist/bytecode/LocalVariableAttribute;->tableLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    const/4 v2, 0x2

    :goto_0
    if-ge v2, v0, :cond_0

    .line 86
    iget-object v3, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    aget-byte v3, v3, v2

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {p1, v1, v0}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    add-int/lit8 p1, v0, 0x2

    .line 89
    invoke-static {p2, v1, p1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    add-int/lit8 p1, v0, 0x4

    .line 90
    invoke-static {p3, v1, p1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    add-int/lit8 p1, v0, 0x6

    .line 91
    invoke-static {p4, v1, p1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    add-int/lit8 v0, v0, 0x8

    .line 92
    invoke-static {p5, v1, v0}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 93
    iput-object v1, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    return-void
.end method

.method public codeLength(I)I
    .locals 1

    .line 175
    iget-object v0, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x4

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    return p1
.end method

.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 17

    move-object/from16 v0, p1

    .line 295
    invoke-virtual/range {p0 .. p0}, Ljavassist/bytecode/LocalVariableAttribute;->get()[B

    move-result-object v1

    .line 296
    array-length v2, v1

    new-array v2, v2, [B

    .line 297
    invoke-virtual/range {p0 .. p0}, Ljavassist/bytecode/LocalVariableAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    move-object/from16 v4, p0

    .line 298
    invoke-virtual {v4, v0, v2}, Ljavassist/bytecode/LocalVariableAttribute;->makeThisAttr(Ljavassist/bytecode/ConstPool;[B)Ljavassist/bytecode/LocalVariableAttribute;

    move-result-object v5

    const/4 v6, 0x0

    .line 299
    invoke-static {v1, v6}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v7

    .line 300
    invoke-static {v7, v2, v6}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    const/4 v8, 0x2

    :goto_0
    if-ge v6, v7, :cond_2

    .line 303
    invoke-static {v1, v8}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v9

    add-int/lit8 v10, v8, 0x2

    .line 304
    invoke-static {v1, v10}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v11

    add-int/lit8 v12, v8, 0x4

    .line 305
    invoke-static {v1, v12}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v13

    add-int/lit8 v14, v8, 0x6

    .line 306
    invoke-static {v1, v14}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v15

    add-int/lit8 v4, v8, 0x8

    move/from16 v16, v7

    .line 307
    invoke-static {v1, v4}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v7

    .line 309
    invoke-static {v9, v2, v8}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 310
    invoke-static {v11, v2, v10}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    if-eqz v13, :cond_0

    const/4 v9, 0x0

    .line 312
    invoke-virtual {v3, v13, v0, v9}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v13

    .line 314
    :cond_0
    invoke-static {v13, v2, v12}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    if-eqz v15, :cond_1

    .line 317
    invoke-virtual {v3, v15}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, p2

    .line 318
    invoke-static {v9, v10}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 319
    invoke-virtual {v0, v9}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v15

    goto :goto_1

    :cond_1
    move-object/from16 v10, p2

    .line 322
    :goto_1
    invoke-static {v15, v2, v14}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 323
    invoke-static {v7, v2, v4}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    add-int/lit8 v8, v8, 0xa

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, p0

    move/from16 v7, v16

    goto :goto_0

    :cond_2
    return-object v5
.end method

.method public descriptor(I)Ljava/lang/String;
    .locals 1

    .line 258
    invoke-virtual {p0}, Ljavassist/bytecode/LocalVariableAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljavassist/bytecode/LocalVariableAttribute;->descriptorIndex(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public descriptorIndex(I)I
    .locals 1

    .line 230
    iget-object v0, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x8

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    return p1
.end method

.method public index(I)I
    .locals 1

    .line 285
    iget-object v0, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0xa

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    return p1
.end method

.method makeThisAttr(Ljavassist/bytecode/ConstPool;[B)Ljavassist/bytecode/LocalVariableAttribute;
    .locals 2

    .line 332
    new-instance v0, Ljavassist/bytecode/LocalVariableAttribute;

    const-string v1, "LocalVariableTable"

    invoke-direct {v0, p1, v1, p2}, Ljavassist/bytecode/LocalVariableAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public nameIndex(I)I
    .locals 1

    .line 204
    iget-object v0, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x6

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    return p1
.end method

.method renameClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 97
    invoke-virtual {p0}, Ljavassist/bytecode/LocalVariableAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Ljavassist/bytecode/LocalVariableAttribute;->tableLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x2

    .line 101
    iget-object v4, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    add-int/lit8 v3, v3, 0x6

    invoke-static {v4, v3}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    invoke-virtual {v0, v4}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-virtual {p0, v4, p1, p2}, Ljavassist/bytecode/LocalVariableAttribute;->renameEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-virtual {v0, v4}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    invoke-static {v4, v5, v3}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method renameClass(Ljava/util/Map;)V
    .locals 6

    .line 115
    invoke-virtual {p0}, Ljavassist/bytecode/LocalVariableAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Ljavassist/bytecode/LocalVariableAttribute;->tableLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x2

    .line 119
    iget-object v4, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    add-int/lit8 v3, v3, 0x6

    invoke-static {v4, v3}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    invoke-virtual {v0, v4}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-virtual {p0, v4, p1}, Ljavassist/bytecode/LocalVariableAttribute;->renameEntry(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 123
    invoke-virtual {v0, v4}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    invoke-static {v4, v5, v3}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method renameEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 111
    invoke-static {p1, p2, p3}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method renameEntry(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 129
    invoke-static {p1, p2}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public shiftIndex(II)V
    .locals 5

    .line 140
    iget-object v0, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    array-length v0, v0

    const/4 v1, 0x2

    :goto_0
    if-ge v1, v0, :cond_1

    .line 142
    iget-object v2, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    add-int/lit8 v3, v1, 0x8

    invoke-static {v2, v3}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v2

    if-lt v2, p1, :cond_0

    add-int/2addr v2, p2

    .line 144
    iget-object v4, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    invoke-static {v2, v4, v3}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    :cond_0
    add-int/lit8 v1, v1, 0xa

    goto :goto_0

    :cond_1
    return-void
.end method

.method shiftPc(IIZ)V
    .locals 6

    .line 182
    invoke-virtual {p0}, Ljavassist/bytecode/LocalVariableAttribute;->tableLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    mul-int/lit8 v2, v1, 0xa

    add-int/lit8 v2, v2, 0x2

    .line 185
    iget-object v3, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    invoke-static {v3, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v3

    .line 186
    iget-object v4, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    add-int/lit8 v5, v2, 0x2

    invoke-static {v4, v5}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v4

    if-gt v3, p1, :cond_2

    if-eqz p3, :cond_0

    if-ne v3, p1, :cond_0

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v3, v4

    if-gt v3, p1, :cond_1

    if-eqz p3, :cond_3

    if-ne v3, p1, :cond_3

    :cond_1
    add-int/2addr v4, p2

    .line 193
    iget-object v2, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    invoke-static {v4, v2, v5}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    goto :goto_2

    :cond_2
    :goto_1
    add-int/2addr v3, p2

    .line 191
    iget-object v4, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    invoke-static {v3, v4, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public signature(I)Ljava/lang/String;
    .locals 0

    .line 275
    invoke-virtual {p0, p1}, Ljavassist/bytecode/LocalVariableAttribute;->descriptor(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public signatureIndex(I)I
    .locals 0

    .line 244
    invoke-virtual {p0, p1}, Ljavassist/bytecode/LocalVariableAttribute;->descriptorIndex(I)I

    move-result p1

    return p1
.end method

.method public startPc(I)I
    .locals 1

    .line 164
    iget-object v0, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x2

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    return p1
.end method

.method public tableLength()I
    .locals 2

    .line 153
    iget-object v0, p0, Ljavassist/bytecode/LocalVariableAttribute;->info:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method public variableName(I)Ljava/lang/String;
    .locals 1

    .line 214
    invoke-virtual {p0}, Ljavassist/bytecode/LocalVariableAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljavassist/bytecode/LocalVariableAttribute;->nameIndex(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
