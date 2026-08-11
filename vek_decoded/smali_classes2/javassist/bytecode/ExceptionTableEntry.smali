.class Ljavassist/bytecode/ExceptionTableEntry;
.super Ljava/lang/Object;
.source "ExceptionTable.java"


# instance fields
.field catchType:I

.field endPc:I

.field handlerPc:I

.field startPc:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Ljavassist/bytecode/ExceptionTableEntry;->startPc:I

    .line 33
    iput p2, p0, Ljavassist/bytecode/ExceptionTableEntry;->endPc:I

    .line 34
    iput p3, p0, Ljavassist/bytecode/ExceptionTableEntry;->handlerPc:I

    .line 35
    iput p4, p0, Ljavassist/bytecode/ExceptionTableEntry;->catchType:I

    return-void
.end method
