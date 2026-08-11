.class public Lbr/com/sapereaude/maskedEditText/Range;
.super Ljava/lang/Object;
.source "Range.java"


# instance fields
.field private end:I

.field private start:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lbr/com/sapereaude/maskedEditText/Range;->start:I

    .line 9
    iput v0, p0, Lbr/com/sapereaude/maskedEditText/Range;->end:I

    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    .line 21
    iget v0, p0, Lbr/com/sapereaude/maskedEditText/Range;->end:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 13
    iget v0, p0, Lbr/com/sapereaude/maskedEditText/Range;->start:I

    return v0
.end method

.method public setEnd(I)V
    .locals 0

    .line 25
    iput p1, p0, Lbr/com/sapereaude/maskedEditText/Range;->end:I

    return-void
.end method

.method public setStart(I)V
    .locals 0

    .line 17
    iput p1, p0, Lbr/com/sapereaude/maskedEditText/Range;->start:I

    return-void
.end method
