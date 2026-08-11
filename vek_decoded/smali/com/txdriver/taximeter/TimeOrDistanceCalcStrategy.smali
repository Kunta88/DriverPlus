.class public Lcom/txdriver/taximeter/TimeOrDistanceCalcStrategy;
.super Ljava/lang/Object;
.source "TimeOrDistanceCalcStrategy.java"

# interfaces
.implements Lcom/txdriver/taximeter/TaximeterCalcStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDistance(Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/taximeter/Statement;DD)V
    .locals 2

    .line 15
    invoke-virtual {p2}, Lcom/txdriver/taximeter/Statement;->isTariff()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-virtual {p2, p3, p4}, Lcom/txdriver/taximeter/Statement;->isResetTimeInMinPrice(D)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p2}, Lcom/txdriver/taximeter/Statement;->getTimeInMinPrice()I

    move-result p1

    int-to-double v0, p1

    iput-wide v0, p2, Lcom/txdriver/taximeter/Statement;->paidTime:D

    .line 21
    :cond_1
    iget-wide v0, p2, Lcom/txdriver/taximeter/Statement;->distance:D

    add-double/2addr v0, p3

    iput-wide v0, p2, Lcom/txdriver/taximeter/Statement;->distance:D

    .line 22
    invoke-virtual {p2}, Lcom/txdriver/taximeter/Statement;->isPaidDistance()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 23
    invoke-virtual {p2, p5, p6}, Lcom/txdriver/taximeter/Statement;->isOverIdleSpeed(D)Z

    move-result p1

    .line 24
    iget-wide v0, p2, Lcom/txdriver/taximeter/Statement;->paidDistance:D

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p5, p6}, Lcom/txdriver/taximeter/Statement;->getPercentOfIdleSpeed(D)D

    move-result-wide p5

    mul-double p3, p3, p5

    :goto_0
    add-double/2addr v0, p3

    iput-wide v0, p2, Lcom/txdriver/taximeter/Statement;->paidDistance:D

    :cond_3
    return-void
.end method

.method public addTime(Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/taximeter/Statement;DD)V
    .locals 2

    .line 30
    invoke-virtual {p2}, Lcom/txdriver/taximeter/Statement;->isTariff()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-virtual {p2}, Lcom/txdriver/taximeter/Statement;->isDistanceType()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 37
    :cond_1
    iget p1, p2, Lcom/txdriver/taximeter/Statement;->overIdleSpeedCounter:I

    const/4 v0, 0x5

    if-lt p1, v0, :cond_2

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p2, Lcom/txdriver/taximeter/Statement;->idleTime:D

    .line 40
    :cond_2
    invoke-virtual {p2, p5, p6}, Lcom/txdriver/taximeter/Statement;->isOverIdleSpeed(D)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 41
    iget p1, p2, Lcom/txdriver/taximeter/Statement;->overIdleSpeedCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p2, Lcom/txdriver/taximeter/Statement;->overIdleSpeedCounter:I

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 44
    iput p1, p2, Lcom/txdriver/taximeter/Statement;->overIdleSpeedCounter:I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 45
    invoke-virtual {p2, p5, p6}, Lcom/txdriver/taximeter/Statement;->getPercentOfIdleSpeed(D)D

    move-result-wide p5

    sub-double/2addr v0, p5

    mul-double p3, p3, v0

    .line 46
    iget-wide p5, p2, Lcom/txdriver/taximeter/Statement;->idleTime:D

    iget-object p1, p2, Lcom/txdriver/taximeter/Statement;->tariff:Lcom/txdriver/db/Tariff;

    iget p1, p1, Lcom/txdriver/db/Tariff;->idleDelay:I

    int-to-double v0, p1

    cmpg-double p1, p5, v0

    if-gtz p1, :cond_4

    iget-wide p5, p2, Lcom/txdriver/taximeter/Statement;->idleTime:D

    add-double/2addr p5, p3

    iget-object p1, p2, Lcom/txdriver/taximeter/Statement;->tariff:Lcom/txdriver/db/Tariff;

    iget p1, p1, Lcom/txdriver/db/Tariff;->idleDelay:I

    int-to-double v0, p1

    cmpl-double p1, p5, v0

    if-lez p1, :cond_4

    .line 47
    iget-wide p5, p2, Lcom/txdriver/taximeter/Statement;->paidTime:D

    iget-wide v0, p2, Lcom/txdriver/taximeter/Statement;->idleTime:D

    add-double/2addr p5, v0

    iput-wide p5, p2, Lcom/txdriver/taximeter/Statement;->paidTime:D

    .line 49
    :cond_4
    iget-wide p5, p2, Lcom/txdriver/taximeter/Statement;->idleTime:D

    add-double/2addr p5, p3

    iput-wide p5, p2, Lcom/txdriver/taximeter/Statement;->idleTime:D

    .line 50
    iget-wide p5, p2, Lcom/txdriver/taximeter/Statement;->idleTime:D

    iget-object p1, p2, Lcom/txdriver/taximeter/Statement;->tariff:Lcom/txdriver/db/Tariff;

    iget p1, p1, Lcom/txdriver/db/Tariff;->idleDelay:I

    int-to-double v0, p1

    cmpl-double p1, p5, v0

    if-lez p1, :cond_5

    .line 51
    iget-wide p5, p2, Lcom/txdriver/taximeter/Statement;->paidTime:D

    add-double/2addr p5, p3

    iput-wide p5, p2, Lcom/txdriver/taximeter/Statement;->paidTime:D

    :cond_5
    return-void
.end method
