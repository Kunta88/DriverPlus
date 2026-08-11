.class Ljavassist/bytecode/StackMap$Copier;
.super Ljavassist/bytecode/StackMap$Walker;
.source "StackMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Copier"
.end annotation


# instance fields
.field classnames:Ljava/util/Map;

.field dest:[B

.field destCp:Ljavassist/bytecode/ConstPool;

.field srcCp:Ljavassist/bytecode/ConstPool;


# direct methods
.method constructor <init>(Ljavassist/bytecode/StackMap;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)V
    .locals 0

    .line 230
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMap$Walker;-><init>(Ljavassist/bytecode/StackMap;)V

    .line 231
    invoke-virtual {p1}, Ljavassist/bytecode/StackMap;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object p1

    iput-object p1, p0, Ljavassist/bytecode/StackMap$Copier;->srcCp:Ljavassist/bytecode/ConstPool;

    .line 232
    iget-object p1, p0, Ljavassist/bytecode/StackMap$Copier;->info:[B

    array-length p1, p1

    new-array p1, p1, [B

    iput-object p1, p0, Ljavassist/bytecode/StackMap$Copier;->dest:[B

    .line 233
    iput-object p2, p0, Ljavassist/bytecode/StackMap$Copier;->destCp:Ljavassist/bytecode/ConstPool;

    .line 234
    iput-object p3, p0, Ljavassist/bytecode/StackMap$Copier;->classnames:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getStackMap()Ljavassist/bytecode/StackMap;
    .locals 3

    .line 269
    new-instance v0, Ljavassist/bytecode/StackMap;

    iget-object v1, p0, Ljavassist/bytecode/StackMap$Copier;->destCp:Ljavassist/bytecode/ConstPool;

    iget-object v2, p0, Ljavassist/bytecode/StackMap$Copier;->dest:[B

    invoke-direct {v0, v1, v2}, Ljavassist/bytecode/StackMap;-><init>(Ljavassist/bytecode/ConstPool;[B)V

    return-object v0
.end method

.method public locals(III)I
    .locals 2

    .line 244
    iget-object v0, p0, Ljavassist/bytecode/StackMap$Copier;->dest:[B

    add-int/lit8 v1, p1, -0x4

    invoke-static {p2, v0, v1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 245
    invoke-super {p0, p1, p2, p3}, Ljavassist/bytecode/StackMap$Walker;->locals(III)I

    move-result p1

    return p1
.end method

.method public objectVariable(II)V
    .locals 3

    .line 258
    iget-object v0, p0, Ljavassist/bytecode/StackMap$Copier;->dest:[B

    const/4 v1, 0x7

    aput-byte v1, v0, p1

    .line 259
    iget-object v0, p0, Ljavassist/bytecode/StackMap$Copier;->srcCp:Ljavassist/bytecode/ConstPool;

    iget-object v1, p0, Ljavassist/bytecode/StackMap$Copier;->destCp:Ljavassist/bytecode/ConstPool;

    iget-object v2, p0, Ljavassist/bytecode/StackMap$Copier;->classnames:Ljava/util/Map;

    invoke-virtual {v0, p2, v1, v2}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result p2

    .line 260
    iget-object v0, p0, Ljavassist/bytecode/StackMap$Copier;->dest:[B

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, v0, p1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    return-void
.end method

.method public typeInfo(IB)V
    .locals 1

    .line 254
    iget-object v0, p0, Ljavassist/bytecode/StackMap$Copier;->dest:[B

    aput-byte p2, v0, p1

    return-void
.end method

.method public typeInfoArray(IIIZ)I
    .locals 2

    .line 249
    iget-object v0, p0, Ljavassist/bytecode/StackMap$Copier;->dest:[B

    add-int/lit8 v1, p1, -0x2

    invoke-static {p3, v0, v1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 250
    invoke-super {p0, p1, p2, p3, p4}, Ljavassist/bytecode/StackMap$Walker;->typeInfoArray(IIIZ)I

    move-result p1

    return p1
.end method

.method public uninitialized(II)V
    .locals 2

    .line 264
    iget-object v0, p0, Ljavassist/bytecode/StackMap$Copier;->dest:[B

    const/16 v1, 0x8

    aput-byte v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    .line 265
    invoke-static {p2, v0, p1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    return-void
.end method

.method public visit()V
    .locals 3

    .line 238
    iget-object v0, p0, Ljavassist/bytecode/StackMap$Copier;->info:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 239
    iget-object v2, p0, Ljavassist/bytecode/StackMap$Copier;->dest:[B

    invoke-static {v0, v2, v1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 240
    invoke-super {p0}, Ljavassist/bytecode/StackMap$Walker;->visit()V

    return-void
.end method
