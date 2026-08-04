.class public Ljavassist/bytecode/ExceptionTable;
.super Ljava/lang/Object;
.source "ExceptionTable.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private constPool:Ljavassist/bytecode/ConstPool;

.field private entries:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Ljavassist/bytecode/ExceptionTable;->constPool:Ljavassist/bytecode/ConstPool;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Ljavassist/bytecode/ExceptionTable;->constPool:Ljavassist/bytecode/ConstPool;

    .line 58
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 61
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 62
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    .line 63
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    .line 64
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    .line 65
    new-instance v6, Ljavassist/bytecode/ExceptionTableEntry;

    invoke-direct {v6, v2, v3, v4, v5}, Ljavassist/bytecode/ExceptionTableEntry;-><init>(IIII)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    iput-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/ArrayList;

    return-void
.end method

.method private static shiftPc(IIIZ)I
    .locals 0

    if-gt p0, p1, :cond_0

    if-eqz p3, :cond_1

    if-ne p0, p1, :cond_1

    :cond_0
    add-int/2addr p0, p2

    :cond_1
    return p0
.end method


# virtual methods
.method public add(IIII)V
    .locals 2

    if-ge p1, p2, :cond_0

    .line 218
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/ArrayList;

    new-instance v1, Ljavassist/bytecode/ExceptionTableEntry;

    invoke-direct {v1, p1, p2, p3, p4}, Ljavassist/bytecode/ExceptionTableEntry;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public add(IIIII)V
    .locals 2

    if-ge p2, p3, :cond_0

    .line 204
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/ArrayList;

    new-instance v1, Ljavassist/bytecode/ExceptionTableEntry;

    invoke-direct {v1, p2, p3, p4, p5}, Ljavassist/bytecode/ExceptionTableEntry;-><init>(IIII)V

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public add(ILjavassist/bytecode/ExceptionTable;I)V
    .locals 9

    .line 184
    invoke-virtual {p2}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 186
    iget-object v1, p2, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/ExceptionTableEntry;

    .line 188
    iget v2, v1, Ljavassist/bytecode/ExceptionTableEntry;->startPc:I

    add-int v5, v2, p3

    iget v2, v1, Ljavassist/bytecode/ExceptionTableEntry;->endPc:I

    add-int v6, v2, p3

    iget v2, v1, Ljavassist/bytecode/ExceptionTableEntry;->handlerPc:I

    add-int v7, v2, p3

    iget v8, v1, Ljavassist/bytecode/ExceptionTableEntry;->catchType:I

    move-object v3, p0

    move v4, p1

    invoke-virtual/range {v3 .. v8}, Ljavassist/bytecode/ExceptionTable;->add(IIIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public catchType(I)I
    .locals 1

    .line 161
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/ExceptionTableEntry;

    .line 162
    iget p1, p1, Ljavassist/bytecode/ExceptionTableEntry;->catchType:I

    return p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 77
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/ExceptionTable;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/ArrayList;

    return-object v0
.end method

.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/ExceptionTable;
    .locals 8

    .line 240
    new-instance v0, Ljavassist/bytecode/ExceptionTable;

    invoke-direct {v0, p1}, Ljavassist/bytecode/ExceptionTable;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 241
    iget-object v1, p0, Ljavassist/bytecode/ExceptionTable;->constPool:Ljavassist/bytecode/ConstPool;

    .line 242
    invoke-virtual {p0}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 244
    iget-object v4, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavassist/bytecode/ExceptionTableEntry;

    .line 245
    iget v5, v4, Ljavassist/bytecode/ExceptionTableEntry;->catchType:I

    invoke-virtual {v1, v5, p1, p2}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v5

    .line 246
    iget v6, v4, Ljavassist/bytecode/ExceptionTableEntry;->startPc:I

    iget v7, v4, Ljavassist/bytecode/ExceptionTableEntry;->endPc:I

    iget v4, v4, Ljavassist/bytecode/ExceptionTableEntry;->handlerPc:I

    invoke-virtual {v0, v6, v7, v4, v5}, Ljavassist/bytecode/ExceptionTable;->add(IIII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public endPc(I)I
    .locals 1

    .line 117
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/ExceptionTableEntry;

    .line 118
    iget p1, p1, Ljavassist/bytecode/ExceptionTableEntry;->endPc:I

    return p1
.end method

.method public handlerPc(I)I
    .locals 1

    .line 138
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/ExceptionTableEntry;

    .line 139
    iget p1, p1, Ljavassist/bytecode/ExceptionTableEntry;->handlerPc:I

    return p1
.end method

.method public remove(I)V
    .locals 1

    .line 227
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public setCatchType(II)V
    .locals 1

    .line 172
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/ExceptionTableEntry;

    .line 173
    iput p2, p1, Ljavassist/bytecode/ExceptionTableEntry;->catchType:I

    return-void
.end method

.method public setEndPc(II)V
    .locals 1

    .line 128
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/ExceptionTableEntry;

    .line 129
    iput p2, p1, Ljavassist/bytecode/ExceptionTableEntry;->endPc:I

    return-void
.end method

.method public setHandlerPc(II)V
    .locals 1

    .line 149
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/ExceptionTableEntry;

    .line 150
    iput p2, p1, Ljavassist/bytecode/ExceptionTableEntry;->handlerPc:I

    return-void
.end method

.method public setStartPc(II)V
    .locals 1

    .line 107
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/ExceptionTableEntry;

    .line 108
    iput p2, p1, Ljavassist/bytecode/ExceptionTableEntry;->startPc:I

    return-void
.end method

.method shiftPc(IIZ)V
    .locals 4

    .line 253
    invoke-virtual {p0}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 255
    iget-object v2, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/ExceptionTableEntry;

    .line 256
    iget v3, v2, Ljavassist/bytecode/ExceptionTableEntry;->startPc:I

    invoke-static {v3, p1, p2, p3}, Ljavassist/bytecode/ExceptionTable;->shiftPc(IIIZ)I

    move-result v3

    iput v3, v2, Ljavassist/bytecode/ExceptionTableEntry;->startPc:I

    .line 257
    iget v3, v2, Ljavassist/bytecode/ExceptionTableEntry;->endPc:I

    invoke-static {v3, p1, p2, p3}, Ljavassist/bytecode/ExceptionTable;->shiftPc(IIIZ)I

    move-result v3

    iput v3, v2, Ljavassist/bytecode/ExceptionTableEntry;->endPc:I

    .line 258
    iget v3, v2, Ljavassist/bytecode/ExceptionTableEntry;->handlerPc:I

    invoke-static {v3, p1, p2, p3}, Ljavassist/bytecode/ExceptionTable;->shiftPc(IIIZ)I

    move-result v3

    iput v3, v2, Ljavassist/bytecode/ExceptionTableEntry;->handlerPc:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 87
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startPc(I)I
    .locals 1

    .line 96
    iget-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/ExceptionTableEntry;

    .line 97
    iget p1, p1, Ljavassist/bytecode/ExceptionTableEntry;->startPc:I

    return p1
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    invoke-virtual {p0}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v0

    .line 272
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 274
    iget-object v2, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/ExceptionTableEntry;

    .line 275
    iget v3, v2, Ljavassist/bytecode/ExceptionTableEntry;->startPc:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 276
    iget v3, v2, Ljavassist/bytecode/ExceptionTableEntry;->endPc:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 277
    iget v3, v2, Ljavassist/bytecode/ExceptionTableEntry;->handlerPc:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 278
    iget v2, v2, Ljavassist/bytecode/ExceptionTableEntry;->catchType:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
