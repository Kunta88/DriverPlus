.class public Ljavassist/bytecode/ExceptionsAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "ExceptionsAttribute.java"


# static fields
.field public static final tag:Ljava/lang/String; = "Exceptions"


# direct methods
.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 1

    const-string v0, "Exceptions"

    .line 56
    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p1, p1, [B

    .line 57
    fill-array-data p1, :array_0

    .line 59
    iput-object p1, p0, Ljavassist/bytecode/ExceptionsAttribute;->info:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
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

.method private constructor <init>(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/ExceptionsAttribute;Ljava/util/Map;)V
    .locals 1

    const-string v0, "Exceptions"

    .line 46
    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p2, p3}, Ljavassist/bytecode/ExceptionsAttribute;->copyFrom(Ljavassist/bytecode/ExceptionsAttribute;Ljava/util/Map;)V

    return-void
.end method

.method private copyFrom(Ljavassist/bytecode/ExceptionsAttribute;Ljava/util/Map;)V
    .locals 6

    .line 83
    iget-object v0, p1, Ljavassist/bytecode/ExceptionsAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    .line 84
    iget-object v1, p0, Ljavassist/bytecode/ExceptionsAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    .line 85
    iget-object p1, p1, Ljavassist/bytecode/ExceptionsAttribute;->info:[B

    .line 86
    array-length v2, p1

    .line 87
    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 88
    aget-byte v5, p1, v4

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    .line 89
    aget-byte v5, p1, v4

    aput-byte v5, v3, v4

    const/4 v4, 0x2

    :goto_0
    if-ge v4, v2, :cond_0

    .line 91
    invoke-static {p1, v4}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v5

    .line 92
    invoke-virtual {v0, v5, v1, p2}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v5

    invoke-static {v5, v3, v4}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 96
    :cond_0
    iput-object v3, p0, Ljavassist/bytecode/ExceptionsAttribute;->info:[B

    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 1

    .line 71
    new-instance v0, Ljavassist/bytecode/ExceptionsAttribute;

    invoke-direct {v0, p1, p0, p2}, Ljavassist/bytecode/ExceptionsAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/ExceptionsAttribute;Ljava/util/Map;)V

    return-object v0
.end method

.method public getException(I)I
    .locals 2

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x2

    .line 172
    iget-object v0, p0, Ljavassist/bytecode/ExceptionsAttribute;->info:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Ljavassist/bytecode/ExceptionsAttribute;->info:[B

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method public getExceptionIndexes()[I
    .locals 8

    .line 103
    iget-object v0, p0, Ljavassist/bytecode/ExceptionsAttribute;->info:[B

    .line 104
    array-length v1, v0

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 108
    :cond_0
    div-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 111
    aget-byte v6, v0, v2

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    aput v6, v3, v4

    add-int/lit8 v2, v2, 0x2

    move v4, v5

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public getExceptions()[Ljava/lang/String;
    .locals 8

    .line 120
    iget-object v0, p0, Ljavassist/bytecode/ExceptionsAttribute;->info:[B

    .line 121
    array-length v1, v0

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_0
    div-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 128
    aget-byte v5, v0, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x1

    .line 129
    iget-object v7, p0, Ljavassist/bytecode/ExceptionsAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v7, v5}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v2, v2, 0x2

    move v4, v6

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public setExceptionIndexes([I)V
    .locals 5

    .line 139
    array-length v0, p1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x2

    .line 140
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 141
    invoke-static {v0, v1, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    :goto_0
    if-ge v2, v0, :cond_0

    .line 143
    aget v3, p1, v2

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-static {v3, v1, v4}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_0
    iput-object v1, p0, Ljavassist/bytecode/ExceptionsAttribute;->info:[B

    return-void
.end method

.method public setExceptions([Ljava/lang/String;)V
    .locals 5

    .line 152
    array-length v0, p1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x2

    .line 153
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 154
    invoke-static {v0, v1, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    :goto_0
    if-ge v2, v0, :cond_0

    .line 156
    iget-object v3, p0, Ljavassist/bytecode/ExceptionsAttribute;->constPool:Ljavassist/bytecode/ConstPool;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-static {v3, v1, v4}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    :cond_0
    iput-object v1, p0, Ljavassist/bytecode/ExceptionsAttribute;->info:[B

    return-void
.end method

.method public tableLength()I
    .locals 1

    .line 165
    iget-object v0, p0, Ljavassist/bytecode/ExceptionsAttribute;->info:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
