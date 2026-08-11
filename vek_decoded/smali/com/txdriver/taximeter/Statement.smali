.class public Lcom/txdriver/taximeter/Statement;
.super Ljava/lang/Object;
.source "Statement.java"


# instance fields
.field distance:D

.field endTime:J

.field idleTime:D

.field order:Lcom/txdriver/db/Order;

.field overIdleSpeedCounter:I

.field public paidDistance:D

.field public paidTime:D

.field previousDistance:D

.field previousPaidDistance:D

.field previousPaidTime:D

.field previousTime:D

.field startTime:J

.field tariff:Lcom/txdriver/db/Tariff;

.field tariffZone:Lcom/txdriver/db/TariffZone;

.field time:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isTimeOrDistanceAlgorithm()Z
    .locals 2

    .line 266
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->isTariff()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txdriver/taximeter/Statement;->tariff:Lcom/txdriver/db/Tariff;

    iget-object v0, v0, Lcom/txdriver/db/Tariff;->algorithm:Lcom/txdriver/db/Tariff$Algorithm;

    sget-object v1, Lcom/txdriver/db/Tariff$Algorithm;->TIME_OR_DISTANCE:Lcom/txdriver/db/Tariff$Algorithm;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addTime(D)V
    .locals 2

    .line 248
    iget-wide v0, p0, Lcom/txdriver/taximeter/Statement;->time:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/txdriver/taximeter/Statement;->time:D

    .line 249
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->isTariff()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->isDistanceType()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/txdriver/taximeter/Statement;->isTimeOrDistanceAlgorithm()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 255
    :cond_1
    iget-wide v0, p0, Lcom/txdriver/taximeter/Statement;->paidTime:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/txdriver/taximeter/Statement;->paidTime:D

    :cond_2
    :goto_0
    return-void
.end method

.method public end()V
    .locals 2

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/taximeter/Statement;->endTime:J

    return-void
.end method

.method public getDistance()D
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/txdriver/taximeter/Statement;->distance:D

    return-wide v0
.end method

.method getDistanceInMinPrice()D
    .locals 7

    .line 306
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->isTariff()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/txdriver/taximeter/Statement;->tariff:Lcom/txdriver/db/Tariff;

    iget v0, v0, Lcom/txdriver/db/Tariff;->minPriceIncludesKms:F

    float-to-double v3, v0

    invoke-static {v3, v4}, Lcom/txdriver/utils/DistanceUtils;->kmToM(D)D

    move-result-wide v3

    iget-wide v5, p0, Lcom/txdriver/taximeter/Statement;->previousDistance:D

    sub-double/2addr v3, v5

    cmpl-double v0, v3, v1

    if-lez v0, :cond_0

    move-wide v1, v3

    :cond_0
    return-wide v1
.end method

.method public getDistancePrice()D
    .locals 15

    .line 131
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->isTariff()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/txdriver/taximeter/Statement;->tariff:Lcom/txdriver/db/Tariff;

    invoke-virtual {v0}, Lcom/txdriver/db/Tariff;->getDistancePrices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->getKilometerPrice()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->getPaidDistance()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/txdriver/utils/DistanceUtils;->mToKm(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    return-wide v0

    .line 138
    :cond_1
    iget-wide v3, p0, Lcom/txdriver/taximeter/Statement;->previousPaidDistance:D

    invoke-static {v3, v4}, Lcom/txdriver/utils/DistanceUtils;->mToKm(D)D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->getPaidDistance()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/txdriver/utils/DistanceUtils;->mToKm(D)D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 139
    iget-wide v5, p0, Lcom/txdriver/taximeter/Statement;->previousPaidDistance:D

    invoke-static {v5, v6}, Lcom/txdriver/utils/DistanceUtils;->mToKm(D)D

    move-result-wide v5

    const-wide v7, 0x3fb999999999999aL    # 0.1

    :goto_0
    cmpg-double v0, v5, v3

    if-gez v0, :cond_a

    const/4 v0, 0x0

    .line 143
    iget-object v9, p0, Lcom/txdriver/taximeter/Statement;->tariff:Lcom/txdriver/db/Tariff;

    invoke-virtual {v9}, Lcom/txdriver/db/Tariff;->getDistancePrices()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/txdriver/db/DistancePrice;

    .line 145
    iget-object v11, p0, Lcom/txdriver/taximeter/Statement;->order:Lcom/txdriver/db/Order;

    if-eqz v11, :cond_4

    .line 146
    iget-object v11, v11, Lcom/txdriver/db/Order;->taximeterCalcMethod:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/txdriver/taximeter/Statement;->order:Lcom/txdriver/db/Order;

    iget-object v11, v11, Lcom/txdriver/db/Order;->taximeterCalcMethod:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    goto :goto_2

    :cond_3
    iget-object v11, p0, Lcom/txdriver/taximeter/Statement;->order:Lcom/txdriver/db/Order;

    iget-object v11, v11, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-object v11, v11, Lcom/txdriver/db/OrderType;->taximeterWithPrice:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    goto :goto_2

    .line 148
    :cond_4
    sget-object v11, Lcom/txdriver/taximeter/TaximeterCalcMethod;->ALWAYS_ENABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    .line 150
    :goto_2
    iget v12, v10, Lcom/txdriver/db/DistancePrice;->fromKm:F

    float-to-double v12, v12

    cmpl-double v14, v12, v5

    if-gtz v14, :cond_2

    iget v12, v10, Lcom/txdriver/db/DistancePrice;->toKm:F

    float-to-double v12, v12

    cmpg-double v14, v12, v5

    if-lez v14, :cond_2

    sget-object v12, Lcom/txdriver/taximeter/TaximeterCalcMethod;->ONLY_TIME_ENABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    if-eq v11, v12, :cond_2

    sget-object v12, Lcom/txdriver/taximeter/TaximeterCalcMethod;->ONLY_TIME_TRANSFERS_DISABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    if-ne v11, v12, :cond_5

    goto :goto_1

    .line 156
    :cond_5
    iget v0, v10, Lcom/txdriver/db/DistancePrice;->fixedPrice:F

    const/4 v9, 0x0

    cmpl-float v0, v0, v9

    if-nez v0, :cond_6

    .line 157
    iget v0, v10, Lcom/txdriver/db/DistancePrice;->pricePerKm:F

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v7

    :goto_3
    add-double/2addr v1, v9

    goto :goto_4

    .line 158
    :cond_6
    iget v0, v10, Lcom/txdriver/db/DistancePrice;->fromKm:F

    float-to-double v11, v0

    cmpg-double v0, v11, v5

    if-gtz v0, :cond_7

    iget v0, v10, Lcom/txdriver/db/DistancePrice;->fromKm:F

    float-to-double v11, v0

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v7

    cmpl-double v0, v11, v5

    if-lez v0, :cond_7

    .line 159
    iget v0, v10, Lcom/txdriver/db/DistancePrice;->fixedPrice:F

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_3

    :cond_7
    :goto_4
    const/4 v0, 0x1

    :cond_8
    if-nez v0, :cond_9

    .line 165
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->getKilometerPrice()F

    move-result v0

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v7

    add-double/2addr v1, v9

    :cond_9
    add-double/2addr v5, v7

    goto/16 :goto_0

    :cond_a
    return-wide v1
.end method

.method public getEndTime()J
    .locals 5

    .line 321
    iget-wide v0, p0, Lcom/txdriver/taximeter/Statement;->endTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getKilometerPrice()F
    .locals 3

    .line 270
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->isTariff()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txdriver/taximeter/Statement;->tariff:Lcom/txdriver/db/Tariff;

    iget v0, v0, Lcom/txdriver/db/Tariff;->pricePerKm:F

    const v2, 0x38e8c8ac    # 1.11E-4f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    return v1

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->isTariffZone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v0

    iget v0, v0, Lcom/txdriver/db/TariffZone;->pricePerKm:F

    return v0

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->isTariff()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/txdriver/taximeter/Statement;->tariff:Lcom/txdriver/db/Tariff;

    iget v0, v0, Lcom/txdriver/db/Tariff;->pricePerKm:F

    return v0

    :cond_2
    return v1
.end method

.method public getMinutePrice()F
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->isTariffZone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v0

    iget v0, v0, Lcom/txdriver/db/TariffZone;->pricePerMinute:F

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->isTariff()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/txdriver/taximeter/Statement;->tariff:Lcom/txdriver/db/Tariff;

    iget v0, v0, Lcom/txdriver/db/Tariff;->pricePerMinute:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPaidDistance()D
    .locals 2

    .line 207
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->isDistanceType()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/txdriver/taximeter/Statement;->isTimeOrDistanceAlgorithm()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    .line 208
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/txdriver/taximeter/Statement;->paidDistance:D

    return-wide v0
.end method

.method public getPaidTime()I
    .locals 6

    .line 117
    iget-wide v0, p0, Lcom/txdriver/taximeter/Statement;->paidTime:D

    .line 118
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->getTimeInMinPrice()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 119
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 120
    iget-wide v2, p0, Lcom/txdriver/taximeter/Statement;->time:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    add-double/2addr v2, v4

    .line 121
    iput-wide v2, p0, Lcom/txdriver/taximeter/Statement;->time:D

    :cond_0
    double-to-int v0, v0

    return v0
.end method

.method getPercentOfIdleSpeed(D)D
    .locals 5

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpg-double v4, p1, v2

    if-gez v4, :cond_0

    return-wide v0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->isTariff()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/txdriver/taximeter/Statement;->tariff:Lcom/txdriver/db/Tariff;

    iget v0, v0, Lcom/txdriver/db/Tariff;->idleSpeed:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v0, p1, v0

    :cond_1
    return-wide v0
.end method

.method public getPreviousDistance()D
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/txdriver/taximeter/Statement;->previousDistance:D

    return-wide v0
.end method

.method public getPreviousPaidDistance()D
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/txdriver/taximeter/Statement;->previousPaidDistance:D

    return-wide v0
.end method

.method public getPreviousPaidTime()D
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/txdriver/taximeter/Statement;->previousPaidTime:D

    return-wide v0
.end method

.method public getPreviousTime()D
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/txdriver/taximeter/Statement;->previousTime:D

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/txdriver/taximeter/Statement;->startTime:J

    return-wide v0
.end method

.method public getSum()D
    .locals 4

    .line 222
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->getDistancePrice()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->getTimePrice()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getTariff()Lcom/txdriver/db/Tariff;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/txdriver/taximeter/Statement;->tariff:Lcom/txdriver/db/Tariff;

    return-object v0
.end method

.method public getTariffZone()Lcom/txdriver/db/TariffZone;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/txdriver/taximeter/Statement;->tariffZone:Lcom/txdriver/db/TariffZone;

    return-object v0
.end method

.method public getTime()I
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/txdriver/taximeter/Statement;->time:D

    double-to-int v0, v0

    return v0
.end method

.method getTimeInMinPrice()I
    .locals 6

    .line 299
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->isTariff()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/txdriver/taximeter/Statement;->tariff:Lcom/txdriver/db/Tariff;

    iget v0, v0, Lcom/txdriver/db/Tariff;->minPriceIncludesMinutes:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Lcom/txdriver/utils/TimeUtils;->minutesToSeconds(D)I

    move-result v0

    int-to-double v2, v0

    iget-wide v4, p0, Lcom/txdriver/taximeter/Statement;->previousTime:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    double-to-int v0, v2

    if-lez v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public getTimePrice()D
    .locals 14

    .line 174
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->isTariff()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/txdriver/taximeter/Statement;->tariff:Lcom/txdriver/db/Tariff;

    invoke-virtual {v0}, Lcom/txdriver/db/Tariff;->getTimePrices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->getMinutePrice()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->getPaidTime()I

    move-result v2

    invoke-static {v2}, Lcom/txdriver/utils/TimeUtils;->secondsToMinutes(I)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    return-wide v0

    .line 181
    :cond_1
    iget-wide v3, p0, Lcom/txdriver/taximeter/Statement;->previousPaidTime:D

    double-to-int v0, v3

    invoke-static {v0}, Lcom/txdriver/utils/TimeUtils;->secondsToMinutes(I)D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->getPaidTime()I

    move-result v0

    invoke-static {v0}, Lcom/txdriver/utils/TimeUtils;->secondsToMinutes(I)D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 182
    iget-wide v5, p0, Lcom/txdriver/taximeter/Statement;->previousPaidTime:D

    double-to-int v0, v5

    invoke-static {v0}, Lcom/txdriver/utils/TimeUtils;->secondsToMinutes(I)D

    move-result-wide v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    :goto_0
    cmpg-double v0, v5, v3

    if-gez v0, :cond_8

    const/4 v0, 0x0

    .line 186
    iget-object v9, p0, Lcom/txdriver/taximeter/Statement;->tariff:Lcom/txdriver/db/Tariff;

    invoke-virtual {v9}, Lcom/txdriver/db/Tariff;->getTimePrices()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/txdriver/db/TimePrice;

    .line 187
    iget v11, v10, Lcom/txdriver/db/TimePrice;->fromMinute:F

    float-to-double v11, v11

    cmpl-double v13, v11, v5

    if-gtz v13, :cond_2

    iget v11, v10, Lcom/txdriver/db/TimePrice;->toMinute:F

    float-to-double v11, v11

    cmpg-double v13, v11, v5

    if-gtz v13, :cond_3

    goto :goto_1

    .line 190
    :cond_3
    iget v0, v10, Lcom/txdriver/db/TimePrice;->fixedPrice:F

    const/4 v9, 0x0

    cmpl-float v0, v0, v9

    if-nez v0, :cond_4

    .line 191
    iget v0, v10, Lcom/txdriver/db/TimePrice;->pricePerMinute:F

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v7

    :goto_2
    add-double/2addr v1, v9

    goto :goto_3

    .line 192
    :cond_4
    iget v0, v10, Lcom/txdriver/db/TimePrice;->fromMinute:F

    float-to-double v11, v0

    cmpg-double v0, v11, v5

    if-gtz v0, :cond_5

    iget v0, v10, Lcom/txdriver/db/TimePrice;->fromMinute:F

    float-to-double v11, v0

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v7

    cmpl-double v0, v11, v5

    if-lez v0, :cond_5

    .line 193
    iget v0, v10, Lcom/txdriver/db/TimePrice;->fixedPrice:F

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_2

    :cond_5
    :goto_3
    const/4 v0, 0x1

    :cond_6
    if-nez v0, :cond_7

    .line 199
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->getMinutePrice()F

    move-result v0

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v7

    add-double/2addr v1, v9

    :cond_7
    add-double/2addr v5, v7

    goto :goto_0

    :cond_8
    return-wide v1
.end method

.method public getZoneCharge()D
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/txdriver/taximeter/Statement;->tariffZone:Lcom/txdriver/db/TariffZone;

    if-eqz v0, :cond_0

    .line 227
    iget v0, v0, Lcom/txdriver/db/TariffZone;->charge:F

    float-to-double v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isDistanceType()Z
    .locals 3

    .line 259
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->isTariff()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txdriver/taximeter/Statement;->tariff:Lcom/txdriver/db/Tariff;

    iget v0, v0, Lcom/txdriver/db/Tariff;->pricePerKm:F

    const v2, 0x38e8c8ac    # 1.11E-4f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    return v1

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->getKilometerPrice()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isOverIdleSpeed(D)Z
    .locals 3

    .line 233
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->isTariff()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txdriver/taximeter/Statement;->tariff:Lcom/txdriver/db/Tariff;

    iget v0, v0, Lcom/txdriver/db/Tariff;->idleSpeed:I

    int-to-double v0, v0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPaidDistance()Z
    .locals 5

    .line 295
    iget-object v0, p0, Lcom/txdriver/taximeter/Statement;->tariff:Lcom/txdriver/db/Tariff;

    invoke-virtual {v0}, Lcom/txdriver/db/Tariff;->isMinPriceOperationOr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/txdriver/taximeter/Statement;->paidTime:D

    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->getTimeInMinPrice()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/txdriver/taximeter/Statement;->distance:D

    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->getDistanceInMinPrice()D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResetTimeInMinPrice(D)Z
    .locals 5

    .line 317
    iget-object v0, p0, Lcom/txdriver/taximeter/Statement;->tariff:Lcom/txdriver/db/Tariff;

    invoke-virtual {v0}, Lcom/txdriver/db/Tariff;->isMinPriceOperationOr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/txdriver/taximeter/Statement;->distance:D

    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->getDistanceInMinPrice()D

    move-result-wide v2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    iget-wide v0, p0, Lcom/txdriver/taximeter/Statement;->distance:D

    add-double/2addr v0, p1

    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->getDistanceInMinPrice()D

    move-result-wide p1

    cmpl-double v2, v0, p1

    if-lez v2, :cond_0

    iget-wide p1, p0, Lcom/txdriver/taximeter/Statement;->paidTime:D

    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->getTimeInMinPrice()I

    move-result v0

    int-to-double v0, v0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isTariff()Z
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/txdriver/taximeter/Statement;->tariff:Lcom/txdriver/db/Tariff;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTariffZone()Z
    .locals 1

    .line 283
    invoke-virtual {p0}, Lcom/txdriver/taximeter/Statement;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDistance(D)V
    .locals 0

    .line 95
    iput-wide p1, p0, Lcom/txdriver/taximeter/Statement;->distance:D

    return-void
.end method

.method public setEndTime(J)V
    .locals 0

    .line 325
    iput-wide p1, p0, Lcom/txdriver/taximeter/Statement;->endTime:J

    return-void
.end method

.method public setOrder(Lcom/txdriver/db/Order;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/txdriver/taximeter/Statement;->order:Lcom/txdriver/db/Order;

    return-void
.end method

.method public setPaidDistance(D)V
    .locals 0

    .line 313
    iput-wide p1, p0, Lcom/txdriver/taximeter/Statement;->paidDistance:D

    return-void
.end method

.method public setPaidTime(D)V
    .locals 0

    .line 127
    iput-wide p1, p0, Lcom/txdriver/taximeter/Statement;->paidTime:D

    return-void
.end method

.method public setPreviousDistance(D)V
    .locals 0

    .line 71
    iput-wide p1, p0, Lcom/txdriver/taximeter/Statement;->previousDistance:D

    return-void
.end method

.method public setPreviousPaidDistance(D)V
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/txdriver/taximeter/Statement;->previousPaidDistance:D

    return-void
.end method

.method public setPreviousPaidTime(D)V
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/txdriver/taximeter/Statement;->previousPaidTime:D

    return-void
.end method

.method public setPreviousTime(D)V
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/txdriver/taximeter/Statement;->previousTime:D

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 87
    iput-wide p1, p0, Lcom/txdriver/taximeter/Statement;->startTime:J

    return-void
.end method

.method public setTariff(Lcom/txdriver/db/Tariff;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/txdriver/taximeter/Statement;->tariff:Lcom/txdriver/db/Tariff;

    return-void
.end method

.method public setTariffZone(Lcom/txdriver/db/TariffZone;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/txdriver/taximeter/Statement;->tariffZone:Lcom/txdriver/db/TariffZone;

    return-void
.end method

.method public setTime(I)V
    .locals 2

    int-to-double v0, p1

    .line 103
    iput-wide v0, p0, Lcom/txdriver/taximeter/Statement;->time:D

    return-void
.end method

.method public start()V
    .locals 2

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/taximeter/Statement;->startTime:J

    return-void
.end method
