.class public Ljavassist/compiler/Lex;
.super Ljava/lang/Object;
.source "Lex.java"

# interfaces
.implements Ljavassist/compiler/TokenId;


# static fields
.field private static final equalOps:[I

.field private static final ktable:Ljavassist/compiler/KeywordTable;


# instance fields
.field private currentToken:Ljavassist/compiler/Token;

.field private input:Ljava/lang/String;

.field private lastChar:I

.field private lineNumber:I

.field private lookAheadTokens:Ljavassist/compiler/Token;

.field private maxlen:I

.field private position:I

.field private textBuffer:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x1f

    new-array v0, v0, [I

    .line 355
    fill-array-data v0, :array_0

    sput-object v0, Ljavassist/compiler/Lex;->equalOps:[I

    .line 458
    new-instance v0, Ljavassist/compiler/KeywordTable;

    invoke-direct {v0}, Ljavassist/compiler/KeywordTable;-><init>()V

    sput-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    const-string v1, "abstract"

    const/16 v2, 0x12c

    .line 461
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "boolean"

    const/16 v2, 0x12d

    .line 462
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "break"

    const/16 v2, 0x12e

    .line 463
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "byte"

    const/16 v2, 0x12f

    .line 464
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "case"

    const/16 v2, 0x130

    .line 465
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "catch"

    const/16 v2, 0x131

    .line 466
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "char"

    const/16 v2, 0x132

    .line 467
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "class"

    const/16 v2, 0x133

    .line 468
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "const"

    const/16 v2, 0x134

    .line 469
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "continue"

    const/16 v2, 0x135

    .line 470
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "default"

    const/16 v2, 0x136

    .line 471
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "do"

    const/16 v2, 0x137

    .line 472
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "double"

    const/16 v2, 0x138

    .line 473
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "else"

    const/16 v2, 0x139

    .line 474
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "extends"

    const/16 v2, 0x13a

    .line 475
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "false"

    const/16 v2, 0x19b

    .line 476
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "final"

    const/16 v2, 0x13b

    .line 477
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "finally"

    const/16 v2, 0x13c

    .line 478
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "float"

    const/16 v2, 0x13d

    .line 479
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "for"

    const/16 v2, 0x13e

    .line 480
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "goto"

    const/16 v2, 0x13f

    .line 481
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "if"

    const/16 v2, 0x140

    .line 482
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "implements"

    const/16 v2, 0x141

    .line 483
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "import"

    const/16 v2, 0x142

    .line 484
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "instanceof"

    const/16 v2, 0x143

    .line 485
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "int"

    const/16 v2, 0x144

    .line 486
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "interface"

    const/16 v2, 0x145

    .line 487
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "long"

    const/16 v2, 0x146

    .line 488
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "native"

    const/16 v2, 0x147

    .line 489
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "new"

    const/16 v2, 0x148

    .line 490
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "null"

    const/16 v2, 0x19c

    .line 491
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "package"

    const/16 v2, 0x149

    .line 492
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "private"

    const/16 v2, 0x14a

    .line 493
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "protected"

    const/16 v2, 0x14b

    .line 494
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "public"

    const/16 v2, 0x14c

    .line 495
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "return"

    const/16 v2, 0x14d

    .line 496
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "short"

    const/16 v2, 0x14e

    .line 497
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "static"

    const/16 v2, 0x14f

    .line 498
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "strictfp"

    const/16 v2, 0x15b

    .line 499
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "super"

    const/16 v2, 0x150

    .line 500
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "switch"

    const/16 v2, 0x151

    .line 501
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "synchronized"

    const/16 v2, 0x152

    .line 502
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "this"

    const/16 v2, 0x153

    .line 503
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "throw"

    const/16 v2, 0x154

    .line 504
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "throws"

    const/16 v2, 0x155

    .line 505
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "transient"

    const/16 v2, 0x156

    .line 506
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "true"

    const/16 v2, 0x19a

    .line 507
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "try"

    const/16 v2, 0x157

    .line 508
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "void"

    const/16 v2, 0x158

    .line 509
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "volatile"

    const/16 v2, 0x159

    .line 510
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    const-string v1, "while"

    const/16 v2, 0x15a

    .line 511
    invoke-virtual {v0, v1, v2}, Ljavassist/compiler/KeywordTable;->append(Ljava/lang/String;I)V

    return-void

    :array_0
    .array-data 4
        0x15e
        0x0
        0x0
        0x0
        0x15f
        0x160
        0x0
        0x0
        0x0
        0x161
        0x162
        0x0
        0x163
        0x0
        0x164
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x165
        0x166
        0x167
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Ljavassist/compiler/Lex;->lastChar:I

    .line 42
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljavassist/compiler/Lex;->textBuffer:Ljava/lang/StringBuffer;

    .line 43
    new-instance v0, Ljavassist/compiler/Token;

    invoke-direct {v0}, Ljavassist/compiler/Token;-><init>()V

    iput-object v0, p0, Ljavassist/compiler/Lex;->currentToken:Ljavassist/compiler/Token;

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Ljavassist/compiler/Lex;->lookAheadTokens:Ljavassist/compiler/Token;

    .line 46
    iput-object p1, p0, Ljavassist/compiler/Lex;->input:Ljava/lang/String;

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Ljavassist/compiler/Lex;->position:I

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Ljavassist/compiler/Lex;->maxlen:I

    .line 49
    iput v0, p0, Ljavassist/compiler/Lex;->lineNumber:I

    return-void
.end method

.method private get(Ljavassist/compiler/Token;)I
    .locals 2

    .line 104
    :cond_0
    invoke-direct {p0, p1}, Ljavassist/compiler/Lex;->readLine(Ljavassist/compiler/Token;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 106
    iput v0, p1, Ljavassist/compiler/Token;->tokenId:I

    return v0
.end method

.method private getNextNonWhiteChar()I
    .locals 4

    .line 146
    :cond_0
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_7

    .line 148
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v1, :cond_2

    .line 151
    :cond_1
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const/16 v1, 0xd

    if-eq v0, v1, :cond_7

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_2
    const/16 v3, 0x2a

    if-ne v0, v3, :cond_6

    .line 155
    :cond_3
    :goto_0
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    if-ne v0, v3, :cond_3

    .line 159
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    if-ne v0, v1, :cond_5

    const/16 v0, 0x20

    goto :goto_1

    .line 164
    :cond_5
    invoke-direct {p0, v0}, Ljavassist/compiler/Lex;->ungetc(I)V

    goto :goto_0

    .line 167
    :cond_6
    invoke-direct {p0, v0}, Ljavassist/compiler/Lex;->ungetc(I)V

    const/16 v0, 0x2f

    .line 171
    :cond_7
    :goto_1
    invoke-static {v0}, Ljavassist/compiler/Lex;->isBlank(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0
.end method

.method private getc()I
    .locals 3

    .line 540
    iget v0, p0, Ljavassist/compiler/Lex;->lastChar:I

    const/4 v1, -0x1

    if-gez v0, :cond_1

    .line 541
    iget v0, p0, Ljavassist/compiler/Lex;->position:I

    iget v2, p0, Ljavassist/compiler/Lex;->maxlen:I

    if-ge v0, v2, :cond_0

    .line 542
    iget-object v1, p0, Ljavassist/compiler/Lex;->input:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljavassist/compiler/Lex;->position:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    return v1

    .line 547
    :cond_1
    iput v1, p0, Ljavassist/compiler/Lex;->lastChar:I

    return v0
.end method

.method private static isBlank(I)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

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

.method private static isDigit(I)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private readCharConst(Ljavassist/compiler/Token;)I
    .locals 3

    const/4 v0, 0x0

    .line 178
    :goto_0
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v1

    const/16 v2, 0x27

    if-eq v1, v2, :cond_3

    const/16 v0, 0x5c

    if-ne v1, v0, :cond_0

    .line 180
    invoke-direct {p0}, Ljavassist/compiler/Lex;->readEscapeChar()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    if-ge v1, v0, :cond_2

    const/16 p1, 0xa

    if-ne v1, p1, :cond_1

    .line 183
    iget p1, p0, Ljavassist/compiler/Lex;->lineNumber:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljavassist/compiler/Lex;->lineNumber:I

    :cond_1
    const/16 p1, 0x1f4

    return p1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    int-to-long v0, v0

    .line 190
    iput-wide v0, p1, Ljavassist/compiler/Token;->longValue:J

    const/16 p1, 0x191

    return p1
.end method

.method private readDouble(Ljava/lang/StringBuffer;ILjavassist/compiler/Token;)I
    .locals 6

    const/16 v0, 0x39

    const/16 v1, 0x30

    const/16 v2, 0x64

    const/16 v3, 0x44

    const/16 v4, 0x65

    const/16 v5, 0x45

    if-eq p2, v5, :cond_0

    if-eq p2, v4, :cond_0

    if-eq p2, v3, :cond_0

    if-eq p2, v2, :cond_0

    int-to-char p2, p2

    .line 313
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 315
    :goto_0
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result p2

    if-gt v1, p2, :cond_0

    if-gt p2, v0, :cond_0

    int-to-char p2, p2

    .line 317
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    if-eq p2, v5, :cond_1

    if-ne p2, v4, :cond_4

    :cond_1
    int-to-char p2, p2

    .line 324
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 325
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result p2

    const/16 v4, 0x2b

    if-eq p2, v4, :cond_2

    const/16 v4, 0x2d

    if-ne p2, v4, :cond_3

    :cond_2
    int-to-char p2, p2

    .line 327
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 328
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result p2

    :cond_3
    :goto_1
    if-gt v1, p2, :cond_4

    if-gt p2, v0, :cond_4

    int-to-char p2, p2

    .line 332
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 333
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result p2

    goto :goto_1

    .line 338
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Ljavassist/compiler/Token;->doubleValue:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x46

    if-eq p2, p1, :cond_7

    const/16 p1, 0x66

    if-ne p2, p1, :cond_5

    goto :goto_2

    :cond_5
    if-eq p2, v3, :cond_6

    if-eq p2, v2, :cond_6

    .line 348
    invoke-direct {p0, p2}, Ljavassist/compiler/Lex;->ungetc(I)V

    :cond_6
    const/16 p1, 0x195

    return p1

    :cond_7
    :goto_2
    const/16 p1, 0x194

    return p1

    :catch_0
    const/16 p1, 0x1f4

    return p1
.end method

.method private readEscapeChar()I
    .locals 3

    .line 195
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    const/16 v1, 0xa

    const/16 v2, 0x6e

    if-ne v0, v2, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/16 v2, 0x74

    if-ne v0, v2, :cond_1

    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    const/16 v2, 0x72

    if-ne v0, v2, :cond_2

    const/16 v0, 0xd

    goto :goto_0

    :cond_2
    const/16 v2, 0x66

    if-ne v0, v2, :cond_3

    const/16 v0, 0xc

    goto :goto_0

    :cond_3
    if-ne v0, v1, :cond_4

    .line 205
    iget v1, p0, Ljavassist/compiler/Lex;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavassist/compiler/Lex;->lineNumber:I

    :cond_4
    :goto_0
    return v0
.end method

.method private readIdentifier(ILjavassist/compiler/Token;)I
    .locals 2

    .line 431
    iget-object v0, p0, Ljavassist/compiler/Lex;->textBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_0
    int-to-char p1, p1

    .line 435
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 436
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result p1

    int-to-char v1, p1

    .line 437
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    invoke-direct {p0, p1}, Ljavassist/compiler/Lex;->ungetc(I)V

    .line 441
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 442
    sget-object v0, Ljavassist/compiler/Lex;->ktable:Ljavassist/compiler/KeywordTable;

    invoke-virtual {v0, p1}, Ljavassist/compiler/KeywordTable;->lookup(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    return v0

    .line 453
    :cond_1
    iput-object p1, p2, Ljavassist/compiler/Token;->textValue:Ljava/lang/String;

    const/16 p1, 0x190

    return p1
.end method

.method private readLine(Ljavassist/compiler/Token;)I
    .locals 4

    .line 111
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getNextNonWhiteChar()I

    move-result v0

    if-gez v0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 115
    iget p1, p0, Ljavassist/compiler/Lex;->lineNumber:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljavassist/compiler/Lex;->lineNumber:I

    return v1

    :cond_1
    const/16 v1, 0x27

    if-ne v0, v1, :cond_2

    .line 119
    invoke-direct {p0, p1}, Ljavassist/compiler/Lex;->readCharConst(Ljavassist/compiler/Token;)I

    move-result p1

    return p1

    :cond_2
    const/16 v1, 0x22

    if-ne v0, v1, :cond_3

    .line 121
    invoke-direct {p0, p1}, Ljavassist/compiler/Lex;->readStringL(Ljavassist/compiler/Token;)I

    move-result p1

    return p1

    :cond_3
    const/16 v1, 0x39

    const/16 v2, 0x30

    if-gt v2, v0, :cond_4

    if-gt v0, v1, :cond_4

    .line 123
    invoke-direct {p0, v0, p1}, Ljavassist/compiler/Lex;->readNumber(ILjavassist/compiler/Token;)I

    move-result p1

    return p1

    :cond_4
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_6

    .line 125
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    if-gt v2, v0, :cond_5

    if-gt v0, v1, :cond_5

    .line 127
    iget-object v1, p0, Ljavassist/compiler/Lex;->textBuffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 129
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 130
    invoke-direct {p0, v1, v0, p1}, Ljavassist/compiler/Lex;->readDouble(Ljava/lang/StringBuffer;ILjavassist/compiler/Token;)I

    move-result p1

    return p1

    .line 133
    :cond_5
    invoke-direct {p0, v0}, Ljavassist/compiler/Lex;->ungetc(I)V

    .line 134
    invoke-direct {p0, v3}, Ljavassist/compiler/Lex;->readSeparator(I)I

    move-result p1

    return p1

    :cond_6
    int-to-char v1, v0

    .line 137
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 138
    invoke-direct {p0, v0, p1}, Ljavassist/compiler/Lex;->readIdentifier(ILjavassist/compiler/Token;)I

    move-result p1

    return p1

    .line 140
    :cond_7
    invoke-direct {p0, v0}, Ljavassist/compiler/Lex;->readSeparator(I)I

    move-result p1

    return p1
.end method

.method private readNumber(ILjavassist/compiler/Token;)I
    .locals 13

    .line 246
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    const/16 v1, 0x66

    const/16 v2, 0x39

    const/16 v3, 0x46

    const/16 v4, 0x192

    const/16 v5, 0x6c

    const/16 v6, 0x193

    const/16 v7, 0x4c

    const/16 v8, 0x30

    if-ne p1, v8, :cond_a

    const/16 v9, 0x58

    if-eq v0, v9, :cond_4

    const/16 v9, 0x78

    if-ne v0, v9, :cond_0

    goto :goto_2

    :cond_0
    if-gt v8, v0, :cond_a

    const/16 v9, 0x37

    if-gt v0, v9, :cond_a

    sub-int/2addr v0, v8

    int-to-long v0, v0

    .line 270
    :goto_0
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result p1

    if-gt v8, p1, :cond_1

    if-gt p1, v9, :cond_1

    const-wide/16 v2, 0x8

    mul-long v0, v0, v2

    add-int/lit8 p1, p1, -0x30

    int-to-long v2, p1

    add-long/2addr v0, v2

    goto :goto_0

    .line 274
    :cond_1
    iput-wide v0, p2, Ljavassist/compiler/Token;->longValue:J

    if-eq p1, v7, :cond_3

    if-ne p1, v5, :cond_2

    goto :goto_1

    .line 278
    :cond_2
    invoke-direct {p0, p1}, Ljavassist/compiler/Lex;->ungetc(I)V

    return v4

    :cond_3
    :goto_1
    return v6

    :cond_4
    :goto_2
    const-wide/16 v9, 0x0

    .line 250
    :goto_3
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result p1

    const-wide/16 v11, 0x10

    if-gt v8, p1, :cond_5

    if-gt p1, v2, :cond_5

    mul-long v9, v9, v11

    add-int/lit8 p1, p1, -0x30

    :goto_4
    int-to-long v11, p1

    add-long/2addr v9, v11

    goto :goto_3

    :cond_5
    const/16 v0, 0x41

    if-gt v0, p1, :cond_6

    if-gt p1, v3, :cond_6

    mul-long v9, v9, v11

    add-int/lit8 p1, p1, -0x41

    :goto_5
    add-int/lit8 p1, p1, 0xa

    goto :goto_4

    :cond_6
    const/16 v0, 0x61

    if-gt v0, p1, :cond_7

    if-gt p1, v1, :cond_7

    mul-long v9, v9, v11

    add-int/lit8 p1, p1, -0x61

    goto :goto_5

    .line 258
    :cond_7
    iput-wide v9, p2, Ljavassist/compiler/Token;->longValue:J

    if-eq p1, v7, :cond_9

    if-ne p1, v5, :cond_8

    goto :goto_6

    .line 262
    :cond_8
    invoke-direct {p0, p1}, Ljavassist/compiler/Lex;->ungetc(I)V

    return v4

    :cond_9
    :goto_6
    return v6

    :cond_a
    sub-int/2addr p1, v8

    int-to-long v9, p1

    :goto_7
    if-gt v8, v0, :cond_b

    if-gt v0, v2, :cond_b

    const-wide/16 v11, 0xa

    mul-long v9, v9, v11

    int-to-long v11, v0

    add-long/2addr v9, v11

    const-wide/16 v11, 0x30

    sub-long/2addr v9, v11

    .line 288
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v0

    goto :goto_7

    .line 291
    :cond_b
    iput-wide v9, p2, Ljavassist/compiler/Token;->longValue:J

    if-eq v0, v3, :cond_11

    if-ne v0, v1, :cond_c

    goto :goto_a

    :cond_c
    const/16 p1, 0x45

    if-eq v0, p1, :cond_10

    const/16 p1, 0x65

    if-eq v0, p1, :cond_10

    const/16 p1, 0x44

    if-eq v0, p1, :cond_10

    const/16 p1, 0x64

    if-eq v0, p1, :cond_10

    const/16 p1, 0x2e

    if-ne v0, p1, :cond_d

    goto :goto_9

    :cond_d
    if-eq v0, v7, :cond_f

    if-ne v0, v5, :cond_e

    goto :goto_8

    .line 306
    :cond_e
    invoke-direct {p0, v0}, Ljavassist/compiler/Lex;->ungetc(I)V

    return v4

    :cond_f
    :goto_8
    return v6

    .line 298
    :cond_10
    :goto_9
    iget-object p1, p0, Ljavassist/compiler/Lex;->textBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 299
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 300
    invoke-virtual {p1, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 301
    invoke-direct {p0, p1, v0, p2}, Ljavassist/compiler/Lex;->readDouble(Ljava/lang/StringBuffer;ILjavassist/compiler/Token;)I

    move-result p1

    return p1

    :cond_11
    :goto_a
    long-to-double v0, v9

    .line 293
    iput-wide v0, p2, Ljavassist/compiler/Token;->doubleValue:D

    const/16 p1, 0x194

    return p1
.end method

.method private readSeparator(I)I
    .locals 3

    const/16 v0, 0x21

    const/16 v1, 0x3d

    if-gt v0, p1, :cond_9

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_9

    .line 364
    sget-object v0, Ljavassist/compiler/Lex;->equalOps:[I

    add-int/lit8 v2, p1, -0x21

    aget v0, v0, v2

    if-nez v0, :cond_0

    return p1

    .line 368
    :cond_0
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v2

    if-ne p1, v2, :cond_8

    const/16 v0, 0x26

    if-eq p1, v0, :cond_7

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_6

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_5

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 388
    :pswitch_0
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result p1

    if-ne p1, v1, :cond_1

    const/16 p1, 0x16f

    return p1

    :cond_1
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_3

    .line 392
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result p1

    if-ne p1, v1, :cond_2

    const/16 p1, 0x173

    return p1

    .line 396
    :cond_2
    invoke-direct {p0, p1}, Ljavassist/compiler/Lex;->ungetc(I)V

    const/16 p1, 0x172

    return p1

    .line 401
    :cond_3
    invoke-direct {p0, p1}, Ljavassist/compiler/Lex;->ungetc(I)V

    const/16 p1, 0x16e

    return p1

    :pswitch_1
    const/16 p1, 0x166

    return p1

    .line 380
    :pswitch_2
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result p1

    if-ne p1, v1, :cond_4

    const/16 p1, 0x16d

    return p1

    .line 384
    :cond_4
    invoke-direct {p0, p1}, Ljavassist/compiler/Lex;->ungetc(I)V

    const/16 p1, 0x16c

    return p1

    :cond_5
    const/16 p1, 0x16b

    return p1

    :cond_6
    const/16 p1, 0x16a

    return p1

    :cond_7
    const/16 p1, 0x171

    return p1

    :cond_8
    if-ne v2, v1, :cond_c

    return v0

    :cond_9
    const/16 v0, 0x5e

    if-ne p1, v0, :cond_a

    .line 412
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v2

    if-ne v2, v1, :cond_c

    const/16 p1, 0x168

    return p1

    :cond_a
    const/16 v0, 0x7c

    if-ne p1, v0, :cond_d

    .line 417
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v2

    if-ne v2, v1, :cond_b

    const/16 p1, 0x169

    return p1

    :cond_b
    if-ne v2, v0, :cond_c

    const/16 p1, 0x170

    return p1

    .line 426
    :cond_c
    :goto_0
    invoke-direct {p0, v2}, Ljavassist/compiler/Lex;->ungetc(I)V

    :cond_d
    return p1

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readStringL(Ljavassist/compiler/Token;)I
    .locals 5

    .line 212
    iget-object v0, p0, Ljavassist/compiler/Lex;->textBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 215
    :cond_0
    :goto_0
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v1

    const/16 v2, 0xa

    const/16 v3, 0x22

    if-eq v1, v3, :cond_4

    const/16 v3, 0x5c

    if-ne v1, v3, :cond_1

    .line 217
    invoke-direct {p0}, Ljavassist/compiler/Lex;->readEscapeChar()I

    move-result v1

    goto :goto_1

    :cond_1
    if-eq v1, v2, :cond_3

    if-gez v1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    int-to-char v1, v1

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 219
    :cond_3
    :goto_2
    iget p1, p0, Ljavassist/compiler/Lex;->lineNumber:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljavassist/compiler/Lex;->lineNumber:I

    const/16 p1, 0x1f4

    return p1

    .line 227
    :cond_4
    :goto_3
    invoke-direct {p0}, Ljavassist/compiler/Lex;->getc()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 229
    iget v1, p0, Ljavassist/compiler/Lex;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavassist/compiler/Lex;->lineNumber:I

    goto :goto_3

    .line 230
    :cond_5
    invoke-static {v1}, Ljavassist/compiler/Lex;->isBlank(I)Z

    move-result v4

    if-nez v4, :cond_4

    if-eq v1, v3, :cond_0

    .line 235
    invoke-direct {p0, v1}, Ljavassist/compiler/Lex;->ungetc(I)V

    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Ljavassist/compiler/Token;->textValue:Ljava/lang/String;

    const/16 p1, 0x196

    return p1
.end method

.method private ungetc(I)V
    .locals 0

    .line 524
    iput p1, p0, Ljavassist/compiler/Lex;->lastChar:I

    return-void
.end method


# virtual methods
.method public get()I
    .locals 2

    .line 53
    iget-object v0, p0, Ljavassist/compiler/Lex;->lookAheadTokens:Ljavassist/compiler/Token;

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Ljavassist/compiler/Lex;->currentToken:Ljavassist/compiler/Token;

    invoke-direct {p0, v0}, Ljavassist/compiler/Lex;->get(Ljavassist/compiler/Token;)I

    move-result v0

    return v0

    .line 57
    :cond_0
    iput-object v0, p0, Ljavassist/compiler/Lex;->currentToken:Ljavassist/compiler/Token;

    .line 58
    iget-object v1, v0, Ljavassist/compiler/Token;->next:Ljavassist/compiler/Token;

    iput-object v1, p0, Ljavassist/compiler/Lex;->lookAheadTokens:Ljavassist/compiler/Token;

    .line 59
    iget v0, v0, Ljavassist/compiler/Token;->tokenId:I

    return v0
.end method

.method public getDouble()D
    .locals 2

    .line 98
    iget-object v0, p0, Ljavassist/compiler/Lex;->currentToken:Ljavassist/compiler/Token;

    iget-wide v0, v0, Ljavassist/compiler/Token;->doubleValue:D

    return-wide v0
.end method

.method public getLong()J
    .locals 2

    .line 94
    iget-object v0, p0, Ljavassist/compiler/Lex;->currentToken:Ljavassist/compiler/Token;

    iget-wide v0, v0, Ljavassist/compiler/Token;->longValue:J

    return-wide v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Ljavassist/compiler/Lex;->currentToken:Ljavassist/compiler/Token;

    iget-object v0, v0, Ljavassist/compiler/Token;->textValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTextAround()Ljava/lang/String;
    .locals 3

    .line 528
    iget v0, p0, Ljavassist/compiler/Lex;->position:I

    add-int/lit8 v1, v0, -0xa

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    add-int/lit8 v0, v0, 0xa

    .line 533
    iget v2, p0, Ljavassist/compiler/Lex;->maxlen:I

    if-le v0, v2, :cond_1

    move v0, v2

    .line 536
    :cond_1
    iget-object v2, p0, Ljavassist/compiler/Lex;->input:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public lookAhead()I
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, v0}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v0

    return v0
.end method

.method public lookAhead(I)I
    .locals 2

    .line 71
    iget-object v0, p0, Ljavassist/compiler/Lex;->lookAheadTokens:Ljavassist/compiler/Token;

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Ljavassist/compiler/Lex;->currentToken:Ljavassist/compiler/Token;

    iput-object v0, p0, Ljavassist/compiler/Lex;->lookAheadTokens:Ljavassist/compiler/Token;

    const/4 v1, 0x0

    .line 74
    iput-object v1, v0, Ljavassist/compiler/Token;->next:Ljavassist/compiler/Token;

    .line 75
    invoke-direct {p0, v0}, Ljavassist/compiler/Lex;->get(Ljavassist/compiler/Token;)I

    :cond_0
    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-lez p1, :cond_2

    .line 79
    iget-object p1, v0, Ljavassist/compiler/Token;->next:Ljavassist/compiler/Token;

    if-nez p1, :cond_1

    .line 81
    new-instance p1, Ljavassist/compiler/Token;

    invoke-direct {p1}, Ljavassist/compiler/Token;-><init>()V

    iput-object p1, v0, Ljavassist/compiler/Token;->next:Ljavassist/compiler/Token;

    .line 82
    invoke-direct {p0, p1}, Ljavassist/compiler/Lex;->get(Ljavassist/compiler/Token;)I

    .line 78
    :cond_1
    iget-object v0, v0, Ljavassist/compiler/Token;->next:Ljavassist/compiler/Token;

    move p1, v1

    goto :goto_0

    .line 85
    :cond_2
    iput-object v0, p0, Ljavassist/compiler/Lex;->currentToken:Ljavassist/compiler/Token;

    .line 86
    iget p1, v0, Ljavassist/compiler/Token;->tokenId:I

    return p1
.end method
