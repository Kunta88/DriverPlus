.class Ljavassist/bytecode/StackMap$Shifter;
.super Ljavassist/bytecode/StackMap$Walker;
.source "StackMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Shifter"
.end annotation


# instance fields
.field private exclusive:Z

.field private gap:I

.field private where:I


# direct methods
.method public constructor <init>(Ljavassist/bytecode/StackMap;IIZ)V
    .locals 0

    .line 387
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMap$Walker;-><init>(Ljavassist/bytecode/StackMap;)V

    .line 388
    iput p2, p0, Ljavassist/bytecode/StackMap$Shifter;->where:I

    .line 389
    iput p3, p0, Ljavassist/bytecode/StackMap$Shifter;->gap:I

    .line 390
    iput-boolean p4, p0, Ljavassist/bytecode/StackMap$Shifter;->exclusive:Z

    return-void
.end method


# virtual methods
.method public locals(III)I
    .locals 3

    .line 394
    iget-boolean v0, p0, Ljavassist/bytecode/StackMap$Shifter;->exclusive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljavassist/bytecode/StackMap$Shifter;->where:I

    if-gt v0, p2, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Ljavassist/bytecode/StackMap$Shifter;->where:I

    if-ge v0, p2, :cond_1

    .line 395
    :goto_0
    iget v0, p0, Ljavassist/bytecode/StackMap$Shifter;->gap:I

    add-int/2addr v0, p2

    iget-object v1, p0, Ljavassist/bytecode/StackMap$Shifter;->info:[B

    add-int/lit8 v2, p1, -0x4

    invoke-static {v0, v1, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 397
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljavassist/bytecode/StackMap$Walker;->locals(III)I

    move-result p1

    return p1
.end method
