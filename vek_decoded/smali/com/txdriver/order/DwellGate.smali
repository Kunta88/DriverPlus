.class public final Lcom/txdriver/order/DwellGate;
.super Ljava/lang/Object;
.source "DwellGate.java"


# instance fields
.field private first:J

.field private last:J

.field private qualified:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/txdriver/order/DwellGate;->first:J

    iput-wide v0, p0, Lcom/txdriver/order/DwellGate;->last:J

    return-void
.end method


# virtual methods
.method public accept(JJJDIFZ)Z
    .registers 26

    .line 11
    move-object v0, p0

    move-wide v1, p1

    move/from16 v3, p9

    move/from16 v4, p10

    iget-boolean v5, v0, Lcom/txdriver/order/DwellGate;->qualified:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_c

    return v6

    .line 12
    :cond_c
    sub-long v7, p3, v1

    .line 13
    const/4 v5, 0x0

    cmp-long v9, v1, p5

    if-ltz v9, :cond_8b

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-ltz v11, :cond_8b

    const-wide/16 v11, 0x2710

    cmp-long v13, v7, v11

    if-gtz v13, :cond_8b

    if-eqz p11, :cond_8b

    .line 14
    invoke-static/range {p10 .. p10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_8b

    invoke-static/range {p10 .. p10}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v7

    if-nez v7, :cond_8b

    const/4 v7, 0x0

    cmpg-float v7, v4, v7

    if-ltz v7, :cond_8b

    div-int/lit8 v7, v3, 0x2

    .line 15
    const/16 v8, 0xa

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/16 v8, 0x32

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v4, v7

    if-gtz v7, :cond_8b

    .line 16
    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_8b

    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-nez v7, :cond_8b

    const-wide/16 v7, 0x0

    cmpg-double v13, p7, v7

    if-ltz v13, :cond_8b

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double v7, p7, v7

    int-to-double v3, v3

    cmpl-double v13, v7, v3

    if-lez v13, :cond_63

    goto :goto_8b

    .line 18
    :cond_63
    iget-wide v3, v0, Lcom/txdriver/order/DwellGate;->last:J

    cmp-long v7, v3, v9

    if-ltz v7, :cond_77

    iget-wide v3, v0, Lcom/txdriver/order/DwellGate;->last:J

    cmp-long v7, v1, v3

    if-ltz v7, :cond_77

    iget-wide v3, v0, Lcom/txdriver/order/DwellGate;->last:J

    sub-long v3, v1, v3

    cmp-long v7, v3, v11

    if-lez v7, :cond_79

    :cond_77
    iput-wide v1, v0, Lcom/txdriver/order/DwellGate;->first:J

    .line 19
    :cond_79
    iput-wide v1, v0, Lcom/txdriver/order/DwellGate;->last:J

    .line 20
    iget-wide v3, v0, Lcom/txdriver/order/DwellGate;->first:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3a98

    cmp-long v7, v1, v3

    if-ltz v7, :cond_85

    goto :goto_86

    :cond_85
    const/4 v6, 0x0

    :goto_86
    iput-boolean v6, v0, Lcom/txdriver/order/DwellGate;->qualified:Z

    .line 21
    iget-boolean v1, v0, Lcom/txdriver/order/DwellGate;->qualified:Z

    return v1

    .line 17
    :cond_8b
    :goto_8b
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/txdriver/order/DwellGate;->first:J

    iput-wide v1, v0, Lcom/txdriver/order/DwellGate;->last:J

    return v5
.end method

.method public reset()V
    .registers 3

    .line 7
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/txdriver/order/DwellGate;->first:J

    iput-wide v0, p0, Lcom/txdriver/order/DwellGate;->last:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txdriver/order/DwellGate;->qualified:Z

    return-void
.end method

.method public restoreQualified()V
    .registers 2

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txdriver/order/DwellGate;->qualified:Z

    return-void
.end method
