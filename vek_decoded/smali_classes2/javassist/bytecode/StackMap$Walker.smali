.class public Ljavassist/bytecode/StackMap$Walker;
.super Ljava/lang/Object;
.source "StackMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Walker"
.end annotation


# instance fields
.field info:[B


# direct methods
.method public constructor <init>(Ljavassist/bytecode/StackMap;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, Ljavassist/bytecode/StackMap;->get()[B

    move-result-object p1

    iput-object p1, p0, Ljavassist/bytecode/StackMap$Walker;->info:[B

    return-void
.end method


# virtual methods
.method public locals(III)I
    .locals 1

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p0, p1, p2, p3, v0}, Ljavassist/bytecode/StackMap$Walker;->typeInfoArray(IIIZ)I

    move-result p1

    return p1
.end method

.method public objectVariable(II)V
    .locals 0

    return-void
.end method

.method public stack(III)I
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, p1, p2, p3, v0}, Ljavassist/bytecode/StackMap$Walker;->typeInfoArray(IIIZ)I

    move-result p1

    return p1
.end method

.method public typeInfo(IB)V
    .locals 0

    return-void
.end method

.method public typeInfoArray(IIIZ)I
    .locals 0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 179
    invoke-virtual {p0, p2, p1}, Ljavassist/bytecode/StackMap$Walker;->typeInfoArray2(II)I

    move-result p1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method typeInfoArray2(II)I
    .locals 2

    .line 185
    iget-object p1, p0, Ljavassist/bytecode/StackMap$Walker;->info:[B

    aget-byte v0, p1, p2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 187
    invoke-static {p1, v0}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    .line 188
    invoke-virtual {p0, p2, p1}, Ljavassist/bytecode/StackMap$Walker;->objectVariable(II)V

    :goto_0
    add-int/lit8 p2, p2, 0x3

    goto :goto_1

    :cond_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, p2, 0x1

    .line 192
    invoke-static {p1, v0}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result p1

    .line 193
    invoke-virtual {p0, p2, p1}, Ljavassist/bytecode/StackMap$Walker;->uninitialized(II)V

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p0, p2, v0}, Ljavassist/bytecode/StackMap$Walker;->typeInfo(IB)V

    add-int/lit8 p2, p2, 0x1

    :goto_1
    return p2
.end method

.method public uninitialized(II)V
    .locals 0

    return-void
.end method

.method public visit()V
    .locals 7

    .line 142
    iget-object v0, p0, Ljavassist/bytecode/StackMap$Walker;->info:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x2

    :goto_0
    if-ge v1, v0, :cond_0

    .line 145
    iget-object v4, p0, Ljavassist/bytecode/StackMap$Walker;->info:[B

    invoke-static {v4, v3}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v4

    .line 146
    iget-object v5, p0, Ljavassist/bytecode/StackMap$Walker;->info:[B

    add-int/lit8 v6, v3, 0x2

    invoke-static {v5, v6}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v5

    add-int/lit8 v3, v3, 0x4

    .line 147
    invoke-virtual {p0, v3, v4, v5}, Ljavassist/bytecode/StackMap$Walker;->locals(III)I

    move-result v3

    .line 148
    iget-object v5, p0, Ljavassist/bytecode/StackMap$Walker;->info:[B

    invoke-static {v5, v3}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v5

    add-int/2addr v3, v2

    .line 149
    invoke-virtual {p0, v3, v4, v5}, Ljavassist/bytecode/StackMap$Walker;->stack(III)I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
