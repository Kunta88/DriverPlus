.class public Ljavassist/bytecode/analysis/Util;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljavassist/bytecode/Opcode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJumpTarget(ILjavassist/bytecode/CodeIterator;)I
    .locals 2

    .line 28
    invoke-virtual {p1, p0}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p0, 0x1

    .line 29
    invoke-virtual {p1, v0}, Ljavassist/bytecode/CodeIterator;->s16bitAt(I)I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    add-int/lit8 v0, p0, 0x1

    invoke-virtual {p1, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result p1

    :goto_1
    add-int/2addr p0, p1

    return p0
.end method

.method public static isGoto(I)Z
    .locals 1

    const/16 v0, 0xa7

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isJsr(I)Z
    .locals 1

    const/16 v0, 0xa8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isJumpInstruction(I)Z
    .locals 1

    const/16 v0, 0x99

    if-lt p0, v0, :cond_0

    const/16 v0, 0xa8

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0xc6

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc7

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isReturn(I)Z
    .locals 1

    const/16 v0, 0xac

    if-lt p0, v0, :cond_0

    const/16 v0, 0xb1

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
