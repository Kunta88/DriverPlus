.class public final Lcom/txdriver/order/ArrivalGate;
.super Ljava/lang/Object;
.source "ArrivalGate.java"


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

    iput-wide v0, p0, Lcom/txdriver/order/ArrivalGate;->first:J

    iput-wide v0, p0, Lcom/txdriver/order/ArrivalGate;->last:J

    return-void
.end method


# virtual methods
.method public accept(JJDIFZ)Z
    .registers 16

    .line 9
    sub-long v0, p3, p1

    .line 10
    const/4 v2, 0x0

    if-eqz p9, :cond_81

    invoke-static {p8}, Ljava/lang/Float;->isNaN(F)Z

    move-result p9

    if-nez p9, :cond_81

    invoke-static {p8}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p9

    if-nez p9, :cond_81

    const/4 p9, 0x0

    cmpg-float p9, p8, p9

    if-ltz p9, :cond_81

    div-int/lit8 p9, p7, 0x2

    .line 11
    const/16 v3, 0xa

    invoke-static {v3, p9}, Ljava/lang/Math;->max(II)I

    move-result p9

    const/16 v3, 0x32

    invoke-static {v3, p9}, Ljava/lang/Math;->min(II)I

    move-result p9

    int-to-float p9, p9

    cmpl-float p8, p8, p9

    if-gtz p8, :cond_81

    const-wide/16 p8, 0x0

    cmp-long v3, v0, p8

    if-ltz v3, :cond_81

    const-wide/16 v3, 0x7530

    cmp-long v5, v0, v3

    if-gtz v5, :cond_81

    .line 12
    invoke-static {p5, p6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_81

    const-wide/16 v0, 0x0

    cmpg-double v5, p5, v0

    if-ltz v5, :cond_81

    int-to-double v0, p7

    cmpl-double p7, p5, v0

    if-lez p7, :cond_47

    goto :goto_81

    .line 13
    :cond_47
    iget-wide p5, p0, Lcom/txdriver/order/ArrivalGate;->first:J

    cmp-long p7, p5, p8

    if-ltz p7, :cond_5b

    iget-wide p5, p0, Lcom/txdriver/order/ArrivalGate;->last:J

    cmp-long p7, p1, p5

    if-ltz p7, :cond_5b

    iget-wide p5, p0, Lcom/txdriver/order/ArrivalGate;->first:J

    sub-long p5, p3, p5

    cmp-long p7, p5, v3

    if-lez p7, :cond_63

    :cond_5b
    iput-wide p3, p0, Lcom/txdriver/order/ArrivalGate;->first:J

    iput v2, p0, Lcom/txdriver/order/ArrivalGate;->samples:I

    const-wide/16 p5, -0x1

    iput-wide p5, p0, Lcom/txdriver/order/ArrivalGate;->last:J

    .line 14
    :cond_63
    iget-wide p5, p0, Lcom/txdriver/order/ArrivalGate;->last:J

    const/4 p7, 0x1

    cmp-long p8, p1, p5

    if-eqz p8, :cond_71

    iget p5, p0, Lcom/txdriver/order/ArrivalGate;->samples:I

    add-int/2addr p5, p7

    iput p5, p0, Lcom/txdriver/order/ArrivalGate;->samples:I

    iput-wide p1, p0, Lcom/txdriver/order/ArrivalGate;->last:J

    .line 15
    :cond_71
    iget p1, p0, Lcom/txdriver/order/ArrivalGate;->samples:I

    const/4 p2, 0x2

    if-lt p1, p2, :cond_80

    iget-wide p1, p0, Lcom/txdriver/order/ArrivalGate;->first:J

    sub-long/2addr p3, p1

    const-wide/16 p1, 0x7d0

    cmp-long p5, p3, p1

    if-ltz p5, :cond_80

    const/4 v2, 0x1

    :cond_80
    return v2

    .line 12
    :cond_81
    :goto_81
    invoke-virtual {p0}, Lcom/txdriver/order/ArrivalGate;->reset()V

    return v2
.end method

.method public reset()V
    .registers 3

    .line 7
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/txdriver/order/ArrivalGate;->first:J

    iput-wide v0, p0, Lcom/txdriver/order/ArrivalGate;->last:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/txdriver/order/ArrivalGate;->samples:I

    return-void
.end method
