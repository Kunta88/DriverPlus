.class Ljavassist/bytecode/CodeIterator$LdcW;
.super Ljavassist/bytecode/CodeIterator$Branch;
.source "CodeIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/CodeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LdcW"
.end annotation


# instance fields
.field index:I

.field state:Z


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1312
    invoke-direct {p0, p1}, Ljavassist/bytecode/CodeIterator$Branch;-><init>(I)V

    .line 1313
    iput p2, p0, Ljavassist/bytecode/CodeIterator$LdcW;->index:I

    const/4 p1, 0x1

    .line 1314
    iput-boolean p1, p0, Ljavassist/bytecode/CodeIterator$LdcW;->state:Z

    return-void
.end method


# virtual methods
.method deltaSize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method expanded()Z
    .locals 2

    .line 1318
    iget-boolean v0, p0, Ljavassist/bytecode/CodeIterator$LdcW;->state:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1319
    iput-boolean v1, p0, Ljavassist/bytecode/CodeIterator$LdcW;->state:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method write(I[BI[B)I
    .locals 0

    const/16 p1, 0x13

    .line 1329
    aput-byte p1, p4, p3

    .line 1330
    iget p1, p0, Ljavassist/bytecode/CodeIterator$LdcW;->index:I

    add-int/lit8 p3, p3, 0x1

    invoke-static {p1, p4, p3}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    const/4 p1, 0x2

    return p1
.end method
