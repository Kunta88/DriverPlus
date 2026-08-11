.class Ljavassist/bytecode/StackMapTable$SimpleCopy;
.super Ljavassist/bytecode/StackMapTable$Walker;
.source "StackMapTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMapTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleCopy"
.end annotation


# instance fields
.field private writer:Ljavassist/bytecode/StackMapTable$Writer;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 361
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMapTable$Walker;-><init>([B)V

    .line 362
    new-instance v0, Ljavassist/bytecode/StackMapTable$Writer;

    array-length p1, p1

    invoke-direct {v0, p1}, Ljavassist/bytecode/StackMapTable$Writer;-><init>(I)V

    iput-object v0, p0, Ljavassist/bytecode/StackMapTable$SimpleCopy;->writer:Ljavassist/bytecode/StackMapTable$Writer;

    return-void
.end method


# virtual methods
.method public appendFrame(II[I[I)V
    .locals 0

    .line 383
    iget-object p1, p0, Ljavassist/bytecode/StackMapTable$SimpleCopy;->writer:Ljavassist/bytecode/StackMapTable$Writer;

    invoke-virtual {p0, p3, p4}, Ljavassist/bytecode/StackMapTable$SimpleCopy;->copyData([I[I)[I

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4}, Ljavassist/bytecode/StackMapTable$Writer;->appendFrame(I[I[I)V

    return-void
.end method

.method public chopFrame(III)V
    .locals 0

    .line 379
    iget-object p1, p0, Ljavassist/bytecode/StackMapTable$SimpleCopy;->writer:Ljavassist/bytecode/StackMapTable$Writer;

    invoke-virtual {p1, p2, p3}, Ljavassist/bytecode/StackMapTable$Writer;->chopFrame(II)V

    return-void
.end method

.method protected copyData(II)I
    .locals 0

    return p2
.end method

.method protected copyData([I[I)[I
    .locals 0

    return-object p2
.end method

.method public doit()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 366
    invoke-virtual {p0}, Ljavassist/bytecode/StackMapTable$SimpleCopy;->parse()V

    .line 367
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$SimpleCopy;->writer:Ljavassist/bytecode/StackMapTable$Writer;

    invoke-virtual {v0}, Ljavassist/bytecode/StackMapTable$Writer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public fullFrame(II[I[I[I[I)V
    .locals 6

    .line 388
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$SimpleCopy;->writer:Ljavassist/bytecode/StackMapTable$Writer;

    invoke-virtual {p0, p3, p4}, Ljavassist/bytecode/StackMapTable$SimpleCopy;->copyData([I[I)[I

    move-result-object v3

    invoke-virtual {p0, p5, p6}, Ljavassist/bytecode/StackMapTable$SimpleCopy;->copyData([I[I)[I

    move-result-object v5

    move v1, p2

    move-object v2, p3

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Ljavassist/bytecode/StackMapTable$Writer;->fullFrame(I[I[I[I[I)V

    return-void
.end method

.method public sameFrame(II)V
    .locals 0

    .line 371
    iget-object p1, p0, Ljavassist/bytecode/StackMapTable$SimpleCopy;->writer:Ljavassist/bytecode/StackMapTable$Writer;

    invoke-virtual {p1, p2}, Ljavassist/bytecode/StackMapTable$Writer;->sameFrame(I)V

    return-void
.end method

.method public sameLocals(IIII)V
    .locals 0

    .line 375
    iget-object p1, p0, Ljavassist/bytecode/StackMapTable$SimpleCopy;->writer:Ljavassist/bytecode/StackMapTable$Writer;

    invoke-virtual {p0, p3, p4}, Ljavassist/bytecode/StackMapTable$SimpleCopy;->copyData(II)I

    move-result p4

    invoke-virtual {p1, p2, p3, p4}, Ljavassist/bytecode/StackMapTable$Writer;->sameLocals(III)V

    return-void
.end method
