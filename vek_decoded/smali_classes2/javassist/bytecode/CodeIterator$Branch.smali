.class abstract Ljavassist/bytecode/CodeIterator$Branch;
.super Ljava/lang/Object;
.source "CodeIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/CodeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Branch"
.end annotation


# instance fields
.field orgPos:I

.field pos:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljavassist/bytecode/CodeIterator$Branch;->orgPos:I

    iput p1, p0, Ljavassist/bytecode/CodeIterator$Branch;->pos:I

    return-void
.end method

.method static shiftOffset(IIIIZ)I
    .locals 1

    add-int v0, p0, p1

    if-ge p0, p2, :cond_1

    if-lt p2, v0, :cond_0

    if-eqz p4, :cond_5

    if-ne p2, v0, :cond_5

    :cond_0
    :goto_0
    add-int/2addr p1, p3

    goto :goto_2

    :cond_1
    if-ne p0, p2, :cond_3

    if-ge v0, p2, :cond_2

    if-eqz p4, :cond_2

    goto :goto_1

    :cond_2
    if-ge p2, v0, :cond_5

    if-nez p4, :cond_5

    goto :goto_0

    :cond_3
    if-lt v0, p2, :cond_4

    if-nez p4, :cond_5

    if-ne p2, v0, :cond_5

    :cond_4
    :goto_1
    sub-int/2addr p1, p3

    :cond_5
    :goto_2
    return p1
.end method


# virtual methods
.method deltaSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method expanded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method gapChanged()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method shift(IIZ)V
    .locals 1

    .line 1272
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Branch;->pos:I

    if-lt p1, v0, :cond_0

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_1

    :cond_0
    add-int/2addr v0, p2

    .line 1273
    iput v0, p0, Ljavassist/bytecode/CodeIterator$Branch;->pos:I

    :cond_1
    return-void
.end method

.method abstract write(I[BI[B)I
.end method
