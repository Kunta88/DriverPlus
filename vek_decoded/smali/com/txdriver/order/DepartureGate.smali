.class public final Lcom/txdriver/order/DepartureGate;
.super Ljava/lang/Object;
.source "DepartureGate.java"


# instance fields
.field private first:J

.field private last:J

.field private samples:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/txdriver/order/DepartureGate;->first:J

    iput-wide v0, p0, Lcom/txdriver/order/DepartureGate;->last:J

    return-void
.end method


# virtual methods
.method public accept(JJJDFZ)Z
    .registers 26

    .line 12
    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p9

    sub-long v6, v3, v1

    .line 14
    const/4 v8, 0x0

    if-eqz p10, :cond_87

    invoke-static/range {p9 .. p9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_87

    invoke-static/range {p9 .. p9}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v9

    if-nez v9, :cond_87

    const/4 v9, 0x0

    cmpg-float v9, v5, v9

    if-ltz v9, :cond_87

    const/high16 v9, 0x42480000    # 50.0f

    cmpl-float v9, v5, v9

    if-gtz v9, :cond_87

    const-wide/16 v9, 0x0

    cmp-long v11, v6, v9

    if-ltz v11, :cond_87

    const-wide/16 v11, 0x7530

    cmp-long v13, v6, v11

    if-gtz v13, :cond_87

    cmp-long v6, v1, p5

    if-ltz v6, :cond_87

    .line 16
    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_87

    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-nez v6, :cond_87

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v5, p7, v5

    const-wide/high16 v13, 0x4069000000000000L    # 200.0

    cmpg-double v7, v5, v13

    if-gez v7, :cond_4c

    goto :goto_87

    .line 21
    :cond_4c
    iget-wide v5, v0, Lcom/txdriver/order/DepartureGate;->first:J

    cmp-long v7, v5, v9

    if-ltz v7, :cond_60

    iget-wide v5, v0, Lcom/txdriver/order/DepartureGate;->last:J

    cmp-long v7, v1, v5

    if-ltz v7, :cond_60

    iget-wide v5, v0, Lcom/txdriver/order/DepartureGate;->first:J

    sub-long v5, v3, v5

    cmp-long v7, v5, v11

    if-lez v7, :cond_68

    .line 22
    :cond_60
    iput-wide v3, v0, Lcom/txdriver/order/DepartureGate;->first:J

    .line 23
    const-wide/16 v5, -0x1

    iput-wide v5, v0, Lcom/txdriver/order/DepartureGate;->last:J

    .line 24
    iput v8, v0, Lcom/txdriver/order/DepartureGate;->samples:I

    .line 26
    :cond_68
    iget-wide v5, v0, Lcom/txdriver/order/DepartureGate;->last:J

    const/4 v7, 0x1

    cmp-long v9, v1, v5

    if-eqz v9, :cond_76

    iget v5, v0, Lcom/txdriver/order/DepartureGate;->samples:I

    add-int/2addr v5, v7

    iput v5, v0, Lcom/txdriver/order/DepartureGate;->samples:I

    iput-wide v1, v0, Lcom/txdriver/order/DepartureGate;->last:J

    .line 27
    :cond_76
    iget v1, v0, Lcom/txdriver/order/DepartureGate;->samples:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_86

    iget-wide v1, v0, Lcom/txdriver/order/DepartureGate;->first:J

    sub-long v1, v3, v1

    const-wide/16 v3, 0x7d0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_86

    const/4 v8, 0x1

    :cond_86
    return v8

    .line 18
    :cond_87
    :goto_87
    invoke-virtual {p0}, Lcom/txdriver/order/DepartureGate;->reset()V

    .line 19
    return v8
.end method

.method public reset()V
    .registers 3

    .line 8
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/txdriver/order/DepartureGate;->first:J

    iput-wide v0, p0, Lcom/txdriver/order/DepartureGate;->last:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/txdriver/order/DepartureGate;->samples:I

    return-void
.end method
