.class public Lbr/com/sapereaude/maskedEditText/MaskedEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "MaskedEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field public static final SPACE:Ljava/lang/String; = " "


# instance fields
.field private allowedChars:Ljava/lang/String;

.field private charRepresentation:C

.field private deniedChars:Ljava/lang/String;

.field private editingAfter:Z

.field private editingBefore:Z

.field private editingOnChanged:Z

.field private focusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private ignore:Z

.field private initialized:Z

.field private keepHint:Z

.field private lastValidMaskPosition:I

.field private mask:Ljava/lang/String;

.field private maskToRaw:[I

.field protected maxRawLength:I

.field private rawText:Lbr/com/sapereaude/maskedEditText/RawText;

.field private rawToMask:[I

.field private selection:I

.field private selectionChanged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->init()V

    .line 53
    sget-object v0, Lbr/com/sapereaude/maskedEditText/R$styleable;->MaskedEditText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 54
    sget p2, Lbr/com/sapereaude/maskedEditText/R$styleable;->MaskedEditText_mask:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->mask:Ljava/lang/String;

    .line 56
    sget p2, Lbr/com/sapereaude/maskedEditText/R$styleable;->MaskedEditText_allowed_chars:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->allowedChars:Ljava/lang/String;

    .line 57
    sget p2, Lbr/com/sapereaude/maskedEditText/R$styleable;->MaskedEditText_denied_chars:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->deniedChars:Ljava/lang/String;

    .line 59
    sget p2, Lbr/com/sapereaude/maskedEditText/R$styleable;->MaskedEditText_char_representation:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/16 p2, 0x23

    .line 62
    iput-char p2, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->charRepresentation:C

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    iput-char p2, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->charRepresentation:C

    .line 67
    :goto_0
    sget p2, Lbr/com/sapereaude/maskedEditText/R$styleable;->MaskedEditText_keep_hint:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->keepHint:Z

    .line 69
    invoke-direct {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->cleanUp()V

    .line 72
    new-instance p2, Lbr/com/sapereaude/maskedEditText/MaskedEditText$1;

    invoke-direct {p2, p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText$1;-><init>(Lbr/com/sapereaude/maskedEditText/MaskedEditText;)V

    invoke-virtual {p0, p2}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 84
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 170
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 171
    invoke-direct {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->init()V

    return-void
.end method

.method static synthetic access$000(Lbr/com/sapereaude/maskedEditText/MaskedEditText;)Landroid/view/View$OnFocusChangeListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object p0
.end method

.method static synthetic access$102(Lbr/com/sapereaude/maskedEditText/MaskedEditText;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->selectionChanged:Z

    return p1
.end method

.method static synthetic access$200(Lbr/com/sapereaude/maskedEditText/MaskedEditText;)I
    .locals 0

    .line 21
    invoke-direct {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->lastValidPosition()I

    move-result p0

    return p0
.end method

.method private calculateRange(II)Lbr/com/sapereaude/maskedEditText/Range;
    .locals 4

    .line 432
    new-instance v0, Lbr/com/sapereaude/maskedEditText/Range;

    invoke-direct {v0}, Lbr/com/sapereaude/maskedEditText/Range;-><init>()V

    move v1, p1

    :goto_0
    if-gt v1, p2, :cond_2

    .line 433
    iget-object v2, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->mask:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 434
    iget-object v2, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->maskToRaw:[I

    aget v2, v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 435
    invoke-virtual {v0}, Lbr/com/sapereaude/maskedEditText/Range;->getStart()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 436
    iget-object v2, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->maskToRaw:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lbr/com/sapereaude/maskedEditText/Range;->setStart(I)V

    .line 438
    :cond_0
    iget-object v2, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->maskToRaw:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lbr/com/sapereaude/maskedEditText/Range;->setEnd(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    :cond_2
    iget-object v1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->mask:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne p2, v1, :cond_3

    .line 442
    iget-object v1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawText:Lbr/com/sapereaude/maskedEditText/RawText;

    invoke-virtual {v1}, Lbr/com/sapereaude/maskedEditText/RawText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lbr/com/sapereaude/maskedEditText/Range;->setEnd(I)V

    .line 444
    :cond_3
    invoke-virtual {v0}, Lbr/com/sapereaude/maskedEditText/Range;->getStart()I

    move-result v1

    invoke-virtual {v0}, Lbr/com/sapereaude/maskedEditText/Range;->getEnd()I

    move-result v2

    if-ne v1, v2, :cond_4

    if-ge p1, p2, :cond_4

    .line 445
    invoke-virtual {v0}, Lbr/com/sapereaude/maskedEditText/Range;->getStart()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->previousValidPosition(I)I

    move-result p1

    .line 446
    invoke-virtual {v0}, Lbr/com/sapereaude/maskedEditText/Range;->getStart()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 447
    invoke-virtual {v0, p1}, Lbr/com/sapereaude/maskedEditText/Range;->setStart(I)V

    :cond_4
    return-object v0
.end method

.method private cleanUp()V
    .locals 3

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->initialized:Z

    .line 122
    invoke-direct {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->generatePositionArrays()V

    .line 124
    new-instance v1, Lbr/com/sapereaude/maskedEditText/RawText;

    invoke-direct {v1}, Lbr/com/sapereaude/maskedEditText/RawText;-><init>()V

    iput-object v1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawText:Lbr/com/sapereaude/maskedEditText/RawText;

    .line 125
    iget-object v1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawToMask:[I

    aget v1, v1, v0

    iput v1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->selection:I

    const/4 v1, 0x1

    .line 127
    iput-boolean v1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->editingBefore:Z

    .line 128
    iput-boolean v1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->editingOnChanged:Z

    .line 129
    iput-boolean v1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->editingAfter:Z

    .line 130
    invoke-direct {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->hasHint()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawText:Lbr/com/sapereaude/maskedEditText/RawText;

    invoke-virtual {v2}, Lbr/com/sapereaude/maskedEditText/RawText;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 131
    invoke-direct {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->makeMaskedTextWithHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-direct {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->makeMaskedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :goto_0
    iput-boolean v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->editingBefore:Z

    .line 136
    iput-boolean v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->editingOnChanged:Z

    .line 137
    iput-boolean v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->editingAfter:Z

    .line 139
    iget-object v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->maskToRaw:[I

    iget-object v2, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->mask:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-direct {p0, v2}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->previousValidPosition(I)I

    move-result v2

    aget v0, v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->maxRawLength:I

    .line 140
    invoke-direct {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->findLastValidMaskPosition()I

    move-result v0

    iput v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->lastValidMaskPosition:I

    .line 141
    iput-boolean v1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->initialized:Z

    .line 143
    new-instance v0, Lbr/com/sapereaude/maskedEditText/MaskedEditText$2;

    invoke-direct {v0, p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText$2;-><init>(Lbr/com/sapereaude/maskedEditText/MaskedEditText;)V

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private clear(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 454
    iget-object v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->deniedChars:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-char v4, v0, v3

    .line 456
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 460
    :cond_0
    iget-object v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->allowedChars:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 463
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v2, p1

    :goto_1
    if-ge v1, v2, :cond_2

    aget-char v3, p1, v1

    .line 464
    iget-object v4, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->allowedChars:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 465
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 469
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private erasingStart(I)I
    .locals 2

    :goto_0
    if-lez p1, :cond_0

    .line 263
    iget-object v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->maskToRaw:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private findLastValidMaskPosition()I
    .locals 3

    .line 159
    iget-object v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->maskToRaw:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 160
    iget-object v1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->maskToRaw:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 162
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Mask must contain at least one representation char"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private fixSelection(I)I
    .locals 1

    .line 356
    invoke-direct {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->lastValidPosition()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 357
    invoke-direct {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->lastValidPosition()I

    move-result p1

    return p1

    .line 359
    :cond_0
    invoke-direct {p0, p1}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->nextValidPosition(I)I

    move-result p1

    return p1
.end method

.method private generatePositionArrays()V
    .locals 7

    .line 205
    iget-object v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->mask:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [I

    .line 206
    iget-object v1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->mask:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->maskToRaw:[I

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 210
    :goto_0
    iget-object v5, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->mask:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 211
    iget-object v5, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->mask:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 212
    iget-char v6, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->charRepresentation:C

    if-ne v5, v6, :cond_0

    .line 213
    aput v3, v0, v4

    .line 214
    iget-object v5, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->maskToRaw:[I

    add-int/lit8 v6, v4, 0x1

    aput v4, v5, v3

    move v4, v6

    goto :goto_1

    .line 217
    :cond_0
    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    .line 218
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 219
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 221
    :cond_1
    iget-object v5, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->maskToRaw:[I

    const/4 v6, -0x1

    aput v6, v5, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/16 v3, 0x20

    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_3

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    .line 230
    new-array v2, v4, [I

    iput-object v2, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawToMask:[I

    :goto_2
    if-ge v1, v4, :cond_4

    .line 232
    iget-object v2, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawToMask:[I

    aget v3, v0, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private hasHint()Z
    .locals 1

    .line 166
    invoke-virtual {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private init()V
    .locals 0

    .line 237
    invoke-virtual {p0, p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private lastValidPosition()I
    .locals 2

    .line 382
    iget-object v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawText:Lbr/com/sapereaude/maskedEditText/RawText;

    invoke-virtual {v0}, Lbr/com/sapereaude/maskedEditText/RawText;->length()I

    move-result v0

    iget v1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->maxRawLength:I

    if-ne v0, v1, :cond_0

    .line 383
    iget-object v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawToMask:[I

    iget-object v1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawText:Lbr/com/sapereaude/maskedEditText/RawText;

    invoke-virtual {v1}, Lbr/com/sapereaude/maskedEditText/RawText;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 385
    :cond_0
    iget-object v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawToMask:[I

    iget-object v1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawText:Lbr/com/sapereaude/maskedEditText/RawText;

    invoke-virtual {v1}, Lbr/com/sapereaude/maskedEditText/RawText;->length()I

    move-result v1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->nextValidPosition(I)I

    move-result v0

    return v0
.end method

.method private makeMaskedText()Ljava/lang/String;
    .locals 5

    .line 391
    iget-object v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawText:Lbr/com/sapereaude/maskedEditText/RawText;

    invoke-virtual {v0}, Lbr/com/sapereaude/maskedEditText/RawText;->length()I

    move-result v0

    iget-object v1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawToMask:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 392
    iget-object v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawText:Lbr/com/sapereaude/maskedEditText/RawText;

    invoke-virtual {v0}, Lbr/com/sapereaude/maskedEditText/RawText;->length()I

    move-result v0

    aget v0, v1, v0

    goto :goto_0

    .line 394
    :cond_0
    iget-object v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->mask:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 396
    :goto_0
    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 398
    iget-object v3, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->maskToRaw:[I

    aget v3, v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 400
    iget-object v3, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->mask:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    goto :goto_2

    .line 402
    :cond_1
    iget-object v4, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawText:Lbr/com/sapereaude/maskedEditText/RawText;

    invoke-virtual {v4, v3}, Lbr/com/sapereaude/maskedEditText/RawText;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 405
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private makeMaskedTextWithHint()Ljava/lang/CharSequence;
    .locals 7

    .line 409
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 411
    iget-object v1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawToMask:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v3, 0x0

    .line 412
    :goto_0
    iget-object v4, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->mask:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 413
    iget-object v4, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->maskToRaw:[I

    aget v4, v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 415
    iget-object v5, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawText:Lbr/com/sapereaude/maskedEditText/RawText;

    invoke-virtual {v5}, Lbr/com/sapereaude/maskedEditText/RawText;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 416
    iget-object v5, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawText:Lbr/com/sapereaude/maskedEditText/RawText;

    invoke-virtual {v5, v4}, Lbr/com/sapereaude/maskedEditText/RawText;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 418
    :cond_0
    invoke-virtual {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->maskToRaw:[I

    aget v5, v5, v3

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 421
    :cond_1
    iget-object v4, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->mask:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 423
    :goto_1
    iget-boolean v4, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->keepHint:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawText:Lbr/com/sapereaude/maskedEditText/RawText;

    invoke-virtual {v4}, Lbr/com/sapereaude/maskedEditText/RawText;->length()I

    move-result v4

    iget-object v5, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawToMask:[I

    array-length v6, v5

    if-ge v4, v6, :cond_2

    iget-object v4, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawText:Lbr/com/sapereaude/maskedEditText/RawText;

    invoke-virtual {v4}, Lbr/com/sapereaude/maskedEditText/RawText;->length()I

    move-result v4

    aget v4, v5, v4

    if-ge v3, v4, :cond_3

    :cond_2
    iget-boolean v4, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->keepHint:Z

    if-nez v4, :cond_4

    if-lt v3, v1, :cond_4

    .line 425
    :cond_3
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->getCurrentHintTextColor()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v4, v3, v5, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private nextValidPosition(I)I
    .locals 3

    .line 364
    :goto_0
    iget v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->lastValidMaskPosition:I

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->maskToRaw:[I

    aget v1, v1, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return p1
.end method

.method private previousValidPosition(I)I
    .locals 2

    :cond_0
    if-ltz p1, :cond_1

    .line 372
    iget-object v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->maskToRaw:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 375
    invoke-direct {p0, p1}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->nextValidPosition(I)I

    move-result p1

    :cond_1
    return p1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 294
    iget-boolean p1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->editingAfter:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->editingBefore:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->editingOnChanged:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 295
    iput-boolean p1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->editingAfter:Z

    .line 296
    invoke-direct {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->hasHint()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->keepHint:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawText:Lbr/com/sapereaude/maskedEditText/RawText;

    invoke-virtual {p1}, Lbr/com/sapereaude/maskedEditText/RawText;->length()I

    move-result p1

    if-nez p1, :cond_1

    .line 297
    :cond_0
    invoke-direct {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->makeMaskedTextWithHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 299
    :cond_1
    invoke-direct {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->makeMaskedText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p1, 0x0

    .line 302
    iput-boolean p1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->selectionChanged:Z

    .line 303
    iget v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->selection:I

    invoke-virtual {p0, v0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->setSelection(I)V

    .line 305
    iput-boolean p1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->editingBefore:Z

    .line 306
    iput-boolean p1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->editingOnChanged:Z

    .line 307
    iput-boolean p1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->editingAfter:Z

    .line 308
    iput-boolean p1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->ignore:Z

    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 243
    iget-boolean p1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->editingBefore:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 244
    iput-boolean p1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->editingBefore:Z

    .line 245
    iget v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->lastValidMaskPosition:I

    if-le p2, v0, :cond_0

    .line 246
    iput-boolean p1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->ignore:Z

    :cond_0
    if-nez p4, :cond_1

    .line 250
    invoke-direct {p0, p2}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->erasingStart(I)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    add-int p4, p2, p3

    .line 252
    invoke-direct {p0, p1, p4}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->calculateRange(II)Lbr/com/sapereaude/maskedEditText/Range;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Lbr/com/sapereaude/maskedEditText/Range;->getStart()I

    move-result p4

    const/4 v0, -0x1

    if-eq p4, v0, :cond_2

    .line 254
    iget-object p4, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawText:Lbr/com/sapereaude/maskedEditText/RawText;

    invoke-virtual {p4, p1}, Lbr/com/sapereaude/maskedEditText/RawText;->subtractFromString(Lbr/com/sapereaude/maskedEditText/Range;)V

    :cond_2
    if-lez p3, :cond_3

    .line 257
    invoke-direct {p0, p2}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->previousValidPosition(I)I

    move-result p1

    iput p1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->selection:I

    :cond_3
    return-void
.end method

.method public getCharRepresentation()C
    .locals 1

    .line 193
    iget-char v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->charRepresentation:C

    return v0
.end method

.method public getMask()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->mask:Ljava/lang/String;

    return-object v0
.end method

.method public getRawText()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawText:Lbr/com/sapereaude/maskedEditText/RawText;

    invoke-virtual {v0}, Lbr/com/sapereaude/maskedEditText/RawText;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isKeepHint()Z
    .locals 1

    .line 313
    iget-boolean v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->keepHint:Z

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 98
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "super"

    .line 99
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatEditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "text"

    .line 100
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRestoreInstanceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentValues"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0, p1}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 89
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 90
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "super"

    .line 91
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 92
    invoke-virtual {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->getRawText()Ljava/lang/String;

    move-result-object v0

    const-string v2, "text"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected onSelectionChanged(II)V
    .locals 3

    .line 326
    iget-boolean v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->initialized:Z

    if-eqz v0, :cond_5

    .line 327
    iget-boolean v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->selectionChanged:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 328
    invoke-direct {p0, p1}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->fixSelection(I)I

    move-result p1

    .line 329
    invoke-direct {p0, p2}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->fixSelection(I)I

    move-result p2

    .line 332
    invoke-virtual {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 336
    :cond_1
    invoke-virtual {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-le p2, v2, :cond_2

    invoke-virtual {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    :cond_2
    if-gez p2, :cond_3

    const/4 p2, 0x0

    .line 339
    :cond_3
    invoke-virtual {p0, p1, p2}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->setSelection(II)V

    .line 340
    iput-boolean v1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->selectionChanged:Z

    goto :goto_0

    .line 343
    :cond_4
    iget-object v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawText:Lbr/com/sapereaude/maskedEditText/RawText;

    invoke-virtual {v0}, Lbr/com/sapereaude/maskedEditText/RawText;->length()I

    move-result v0

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_5

    .line 344
    invoke-direct {p0, p1}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->fixSelection(I)I

    move-result v0

    .line 345
    invoke-direct {p0, p2}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->fixSelection(I)I

    move-result v1

    if-ltz v0, :cond_5

    .line 346
    invoke-virtual {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 347
    invoke-virtual {p0, v0, v1}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->setSelection(II)V

    .line 352
    :cond_5
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->onSelectionChanged(II)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 271
    iget-boolean p3, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->editingOnChanged:Z

    if-nez p3, :cond_2

    iget-boolean p3, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->editingBefore:Z

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    .line 272
    iput-boolean p3, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->editingOnChanged:Z

    .line 273
    iget-boolean v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->ignore:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-lez p4, :cond_2

    .line 277
    iget-object v0, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->maskToRaw:[I

    invoke-direct {p0, p2}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->nextValidPosition(I)I

    move-result v1

    aget v0, v0, v1

    add-int/2addr p4, p2

    .line 278
    invoke-interface {p1, p2, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 279
    iget-object p2, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawText:Lbr/com/sapereaude/maskedEditText/RawText;

    invoke-direct {p0, p1}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->clear(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p4, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->maxRawLength:I

    invoke-virtual {p2, p1, v0, p4}, Lbr/com/sapereaude/maskedEditText/RawText;->addToString(Ljava/lang/String;II)I

    move-result p1

    .line 280
    iget-boolean p2, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->initialized:Z

    if-eqz p2, :cond_2

    add-int/2addr v0, p1

    .line 282
    iget-object p1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->rawToMask:[I

    array-length p2, p1

    if-ge v0, p2, :cond_1

    .line 283
    aget p1, p1, v0

    goto :goto_0

    .line 285
    :cond_1
    iget p1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->lastValidMaskPosition:I

    add-int/2addr p1, p3

    .line 286
    :goto_0
    invoke-direct {p0, p1}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->nextValidPosition(I)I

    move-result p1

    iput p1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->selection:I

    :cond_2
    return-void
.end method

.method public setCharRepresentation(C)V
    .locals 0

    .line 188
    iput-char p1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->charRepresentation:C

    .line 189
    invoke-direct {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->cleanUp()V

    return-void
.end method

.method public setKeepHint(Z)V
    .locals 0

    .line 317
    iput-boolean p1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->keepHint:Z

    .line 318
    invoke-virtual {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->getRawText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMask(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->mask:Ljava/lang/String;

    .line 176
    invoke-direct {p0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->cleanUp()V

    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 109
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
