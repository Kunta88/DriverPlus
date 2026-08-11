.class public Ljavassist/bytecode/LineNumberAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "LineNumberAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/LineNumberAttribute$Pc;
    }
.end annotation


# static fields
.field public static final tag:Ljava/lang/String; = "LineNumberTable"


# direct methods
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

    const-string v0, "LineNumberTable"

    .line 39
    invoke-direct {p0, p1, v0, p2}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 4

    .line 160
    iget-object p2, p0, Ljavassist/bytecode/LineNumberAttribute;->info:[B

    .line 161
    array-length v0, p2

    .line 162
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 164
    aget-byte v3, p2, v2

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_0
    new-instance p2, Ljavassist/bytecode/LineNumberAttribute;

    invoke-direct {p2, p1, v1}, Ljavassist/bytecode/LineNumberAttribute;-><init>(Ljavassist/bytecode/ConstPool;[B)V

    return-object p2
.end method

.method public lineNumber(I)I
    .locals 1

    .line 69
    iget-object v0, p0, Ljavassist/bytecode/LineNumberAttribute;->info:[B

    mul-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x4

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    return p1
.end method

.method shiftPc(IIZ)V
    .locals 5

    .line 174
    invoke-virtual {p0}, Ljavassist/bytecode/LineNumberAttribute;->tableLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x2

    .line 177
    iget-object v3, p0, Ljavassist/bytecode/LineNumberAttribute;->info:[B

    invoke-static {v3, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v3

    if-gt v3, p1, :cond_0

    if-eqz p3, :cond_1

    if-ne v3, p1, :cond_1

    :cond_0
    add-int/2addr v3, p2

    .line 179
    iget-object v4, p0, Ljavassist/bytecode/LineNumberAttribute;->info:[B

    invoke-static {v3, v4, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public startPc(I)I
    .locals 1

    .line 58
    iget-object v0, p0, Ljavassist/bytecode/LineNumberAttribute;->info:[B

    mul-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x2

    invoke-static {v0, p1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    return p1
.end method

.method public tableLength()I
    .locals 2

    .line 47
    iget-object v0, p0, Ljavassist/bytecode/LineNumberAttribute;->info:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    return v0
.end method

.method public toLineNumber(I)I
    .locals 4

    .line 78
    invoke-virtual {p0}, Ljavassist/bytecode/LineNumberAttribute;->tableLength()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 81
    invoke-virtual {p0, v2}, Ljavassist/bytecode/LineNumberAttribute;->startPc(I)I

    move-result v3

    if-ge p1, v3, :cond_0

    if-nez v2, :cond_1

    .line 83
    invoke-virtual {p0, v1}, Ljavassist/bytecode/LineNumberAttribute;->lineNumber(I)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 87
    invoke-virtual {p0, v2}, Ljavassist/bytecode/LineNumberAttribute;->lineNumber(I)I

    move-result p1

    return p1
.end method

.method public toNearPc(I)Ljavassist/bytecode/LineNumberAttribute$Pc;
    .locals 5

    .line 130
    invoke-virtual {p0}, Ljavassist/bytecode/LineNumberAttribute;->tableLength()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 134
    invoke-virtual {p0, v1}, Ljavassist/bytecode/LineNumberAttribute;->lineNumber(I)I

    move-result v2

    sub-int/2addr v2, p1

    .line 135
    invoke-virtual {p0, v1}, Ljavassist/bytecode/LineNumberAttribute;->startPc(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-ge v3, v0, :cond_4

    .line 139
    invoke-virtual {p0, v3}, Ljavassist/bytecode/LineNumberAttribute;->lineNumber(I)I

    move-result v4

    sub-int/2addr v4, p1

    if-gez v4, :cond_1

    if-gt v4, v2, :cond_2

    :cond_1
    if-ltz v4, :cond_3

    if-lt v4, v2, :cond_2

    if-gez v2, :cond_3

    .line 143
    :cond_2
    invoke-virtual {p0, v3}, Ljavassist/bytecode/LineNumberAttribute;->startPc(I)I

    move-result v1

    move v2, v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 147
    :cond_4
    new-instance v0, Ljavassist/bytecode/LineNumberAttribute$Pc;

    invoke-direct {v0}, Ljavassist/bytecode/LineNumberAttribute$Pc;-><init>()V

    .line 148
    iput v1, v0, Ljavassist/bytecode/LineNumberAttribute$Pc;->index:I

    add-int/2addr p1, v2

    .line 149
    iput p1, v0, Ljavassist/bytecode/LineNumberAttribute$Pc;->line:I

    return-object v0
.end method

.method public toStartPc(I)I
    .locals 3

    .line 98
    invoke-virtual {p0}, Ljavassist/bytecode/LineNumberAttribute;->tableLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 100
    invoke-virtual {p0, v1}, Ljavassist/bytecode/LineNumberAttribute;->lineNumber(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 101
    invoke-virtual {p0, v1}, Ljavassist/bytecode/LineNumberAttribute;->startPc(I)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
