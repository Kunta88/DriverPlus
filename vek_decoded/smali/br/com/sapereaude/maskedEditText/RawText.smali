.class public Lbr/com/sapereaude/maskedEditText/RawText;
.super Ljava/lang/Object;
.source "RawText.java"


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lbr/com/sapereaude/maskedEditText/RawText;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addToString(Ljava/lang/String;II)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const-string v1, ""

    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    if-ltz p2, :cond_5

    .line 47
    iget-object v2, p0, Lbr/com/sapereaude/maskedEditText/RawText;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p2, v2, :cond_4

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez p2, :cond_1

    .line 54
    iget-object v3, p0, Lbr/com/sapereaude/maskedEditText/RawText;->text:Ljava/lang/String;

    invoke-virtual {v3, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    if-ltz p2, :cond_2

    .line 56
    iget-object v4, p0, Lbr/com/sapereaude/maskedEditText/RawText;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p2, v4, :cond_2

    .line 57
    iget-object v1, p0, Lbr/com/sapereaude/maskedEditText/RawText;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, p2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 59
    :cond_2
    iget-object p2, p0, Lbr/com/sapereaude/maskedEditText/RawText;->text:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr p2, v4

    if-le p2, p3, :cond_3

    .line 60
    iget-object p2, p0, Lbr/com/sapereaude/maskedEditText/RawText;->text:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int v2, p3, p2

    .line 61
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 63
    :cond_3
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbr/com/sapereaude/maskedEditText/RawText;->text:Ljava/lang/String;

    return v2

    .line 48
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Start position must be less than the actual text length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Start position must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    return v0
.end method

.method public charAt(I)C
    .locals 1

    .line 76
    iget-object v0, p0, Lbr/com/sapereaude/maskedEditText/RawText;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lbr/com/sapereaude/maskedEditText/RawText;->text:Ljava/lang/String;

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 72
    iget-object v0, p0, Lbr/com/sapereaude/maskedEditText/RawText;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public subtractFromString(Lbr/com/sapereaude/maskedEditText/Range;)V
    .locals 4

    .line 21
    invoke-virtual {p1}, Lbr/com/sapereaude/maskedEditText/Range;->getStart()I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lbr/com/sapereaude/maskedEditText/Range;->getStart()I

    move-result v0

    iget-object v2, p0, Lbr/com/sapereaude/maskedEditText/RawText;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 22
    iget-object v0, p0, Lbr/com/sapereaude/maskedEditText/RawText;->text:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lbr/com/sapereaude/maskedEditText/Range;->getStart()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 24
    :goto_0
    invoke-virtual {p1}, Lbr/com/sapereaude/maskedEditText/Range;->getEnd()I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Lbr/com/sapereaude/maskedEditText/Range;->getEnd()I

    move-result v2

    iget-object v3, p0, Lbr/com/sapereaude/maskedEditText/RawText;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 25
    iget-object v1, p0, Lbr/com/sapereaude/maskedEditText/RawText;->text:Ljava/lang/String;

    invoke-virtual {p1}, Lbr/com/sapereaude/maskedEditText/Range;->getEnd()I

    move-result p1

    iget-object v2, p0, Lbr/com/sapereaude/maskedEditText/RawText;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 27
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbr/com/sapereaude/maskedEditText/RawText;->text:Ljava/lang/String;

    return-void
.end method
