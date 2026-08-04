.class public Ljavassist/compiler/ast/IntConst;
.super Ljavassist/compiler/ast/ASTree;
.source "IntConst.java"


# instance fields
.field protected type:I

.field protected value:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljavassist/compiler/ast/ASTree;-><init>()V

    iput-wide p1, p0, Ljavassist/compiler/ast/IntConst;->value:J

    iput p3, p0, Ljavassist/compiler/ast/IntConst;->type:I

    return-void
.end method

.method private compute0(ILjavassist/compiler/ast/DoubleConst;)Ljavassist/compiler/ast/DoubleConst;
    .locals 5

    .line 114
    iget-wide v0, p0, Ljavassist/compiler/ast/IntConst;->value:J

    long-to-double v0, v0

    .line 115
    iget-wide v2, p2, Ljavassist/compiler/ast/DoubleConst;->value:D

    const/16 v4, 0x25

    if-eq p1, v4, :cond_4

    const/16 v4, 0x2d

    if-eq p1, v4, :cond_3

    const/16 v4, 0x2f

    if-eq p1, v4, :cond_2

    const/16 v4, 0x2a

    if-eq p1, v4, :cond_1

    const/16 v4, 0x2b

    if-eq p1, v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 119
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    goto :goto_0

    .line 125
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    goto :goto_0

    .line 128
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    goto :goto_0

    .line 122
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    goto :goto_0

    .line 131
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    rem-double/2addr v0, v2

    .line 137
    :goto_0
    new-instance p1, Ljavassist/compiler/ast/DoubleConst;

    iget p2, p2, Ljavassist/compiler/ast/DoubleConst;->type:I

    invoke-direct {p1, v0, v1, p2}, Ljavassist/compiler/ast/DoubleConst;-><init>(DI)V

    return-object p1
.end method

.method private compute0(ILjavassist/compiler/ast/IntConst;)Ljavassist/compiler/ast/IntConst;
    .locals 7

    .line 55
    iget v0, p0, Ljavassist/compiler/ast/IntConst;->type:I

    .line 56
    iget v1, p2, Ljavassist/compiler/ast/IntConst;->type:I

    const/16 v2, 0x191

    const/16 v3, 0x193

    if-eq v0, v3, :cond_2

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x192

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v2, 0x193

    .line 66
    :goto_1
    iget-wide v3, p0, Ljavassist/compiler/ast/IntConst;->value:J

    .line 67
    iget-wide v5, p2, Ljavassist/compiler/ast/IntConst;->value:J

    const/16 p2, 0x25

    if-eq p1, p2, :cond_d

    const/16 p2, 0x26

    if-eq p1, p2, :cond_c

    const/16 p2, 0x2a

    if-eq p1, p2, :cond_b

    const/16 p2, 0x2b

    if-eq p1, p2, :cond_a

    const/16 p2, 0x2d

    if-eq p1, p2, :cond_9

    const/16 p2, 0x2f

    if-eq p1, p2, :cond_8

    const/16 p2, 0x5e

    if-eq p1, p2, :cond_7

    const/16 p2, 0x7c

    if-eq p1, p2, :cond_6

    const/16 p2, 0x16c

    if-eq p1, p2, :cond_5

    const/16 p2, 0x16e

    if-eq p1, p2, :cond_4

    const/16 p2, 0x172

    if-eq p1, p2, :cond_3

    const/4 p1, 0x0

    return-object p1

    :cond_3
    long-to-int p1, v5

    ushr-long p1, v3, p1

    goto :goto_3

    :cond_4
    long-to-int p1, v5

    shr-long p1, v3, p1

    goto :goto_3

    :cond_5
    long-to-int p1, v5

    shl-long p1, v3, p1

    goto :goto_3

    :cond_6
    or-long p1, v3, v5

    goto :goto_2

    :cond_7
    xor-long p1, v3, v5

    goto :goto_2

    .line 80
    :cond_8
    div-long p1, v3, v5

    goto :goto_2

    :cond_9
    sub-long p1, v3, v5

    goto :goto_2

    :cond_a
    add-long p1, v3, v5

    goto :goto_2

    :cond_b
    mul-long p1, v3, v5

    goto :goto_2

    :cond_c
    and-long p1, v3, v5

    goto :goto_2

    .line 83
    :cond_d
    rem-long p1, v3, v5

    :goto_2
    move v0, v2

    .line 110
    :goto_3
    new-instance v1, Ljavassist/compiler/ast/IntConst;

    invoke-direct {v1, p1, p2, v0}, Ljavassist/compiler/ast/IntConst;-><init>(JI)V

    return-object v1
.end method


# virtual methods
.method public accept(Ljavassist/compiler/ast/Visitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 42
    invoke-virtual {p1, p0}, Ljavassist/compiler/ast/Visitor;->atIntConst(Ljavassist/compiler/ast/IntConst;)V

    return-void
.end method

.method public compute(ILjavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;
    .locals 1

    .line 46
    instance-of v0, p2, Ljavassist/compiler/ast/IntConst;

    if-eqz v0, :cond_0

    .line 47
    check-cast p2, Ljavassist/compiler/ast/IntConst;

    invoke-direct {p0, p1, p2}, Ljavassist/compiler/ast/IntConst;->compute0(ILjavassist/compiler/ast/IntConst;)Ljavassist/compiler/ast/IntConst;

    move-result-object p1

    return-object p1

    .line 48
    :cond_0
    instance-of v0, p2, Ljavassist/compiler/ast/DoubleConst;

    if-eqz v0, :cond_1

    .line 49
    check-cast p2, Ljavassist/compiler/ast/DoubleConst;

    invoke-direct {p0, p1, p2}, Ljavassist/compiler/ast/IntConst;->compute0(ILjavassist/compiler/ast/DoubleConst;)Ljavassist/compiler/ast/DoubleConst;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public get()J
    .locals 2

    .line 31
    iget-wide v0, p0, Ljavassist/compiler/ast/IntConst;->value:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 37
    iget v0, p0, Ljavassist/compiler/ast/IntConst;->type:I

    return v0
.end method

.method public set(J)V
    .locals 0

    .line 33
    iput-wide p1, p0, Ljavassist/compiler/ast/IntConst;->value:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    iget-wide v0, p0, Ljavassist/compiler/ast/IntConst;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
