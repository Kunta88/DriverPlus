.class public Lcom/txdriver/taximeter/TimeAndDistanceCalcStrategy;
.super Ljava/lang/Object;
.source "TimeAndDistanceCalcStrategy.java"

# interfaces
.implements Lcom/txdriver/taximeter/TaximeterCalcStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDistance(Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/taximeter/Statement;DD)V
    .locals 0

    .line 10
    invoke-virtual {p2}, Lcom/txdriver/taximeter/Statement;->isTariff()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-virtual {p2, p3, p4}, Lcom/txdriver/taximeter/Statement;->isResetTimeInMinPrice(D)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p2}, Lcom/txdriver/taximeter/Statement;->getTimeInMinPrice()I

    move-result p1

    int-to-double p5, p1

    iput-wide p5, p2, Lcom/txdriver/taximeter/Statement;->paidTime:D

    .line 16
    :cond_1
    iget-wide p5, p2, Lcom/txdriver/taximeter/Statement;->distance:D

    add-double/2addr p5, p3

    iput-wide p5, p2, Lcom/txdriver/taximeter/Statement;->distance:D

    .line 17
    invoke-virtual {p2}, Lcom/txdriver/taximeter/Statement;->isPaidDistance()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    iget-wide p5, p2, Lcom/txdriver/taximeter/Statement;->paidDistance:D

    add-double/2addr p5, p3

    iput-wide p5, p2, Lcom/txdriver/taximeter/Statement;->paidDistance:D

    :cond_2
    return-void
.end method

.method public addTime(Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/taximeter/Statement;DD)V
    .locals 0

    .line 24
    invoke-virtual {p2}, Lcom/txdriver/taximeter/Statement;->isTariff()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 27
    :cond_0
    iget-wide p5, p2, Lcom/txdriver/taximeter/Statement;->paidTime:D

    add-double/2addr p5, p3

    iput-wide p5, p2, Lcom/txdriver/taximeter/Statement;->paidTime:D

    return-void
.end method
