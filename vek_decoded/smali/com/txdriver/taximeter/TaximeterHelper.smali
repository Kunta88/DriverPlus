.class public Lcom/txdriver/taximeter/TaximeterHelper;
.super Ljava/lang/Object;
.source "TaximeterHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeTaximeterTariff(Lcom/txdriver/App;Lcom/txdriver/db/Order;Lcom/txdriver/taximeter/Taximeter;)V
    .locals 1

    .line 35
    iget-object v0, p1, Lcom/txdriver/db/Order;->tariff:Lcom/txdriver/db/Tariff;

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/txdriver/taximeter/TaximeterHelper;->isUseTaximeter(Lcom/txdriver/App;Lcom/txdriver/db/Order;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/txdriver/db/Order;->tariff:Lcom/txdriver/db/Tariff;

    invoke-virtual {p2}, Lcom/txdriver/taximeter/Taximeter;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/txdriver/db/Tariff;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 36
    iget-object p0, p1, Lcom/txdriver/db/Order;->tariff:Lcom/txdriver/db/Tariff;

    invoke-static {p2, p1, p0}, Lcom/txdriver/taximeter/TaximeterHelper;->setTariff(Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;Lcom/txdriver/db/Tariff;)V

    :cond_0
    return-void
.end method

.method public static getDiscountAmount(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;)D
    .locals 1

    const/4 v0, 0x1

    .line 148
    invoke-static {p0, p1, p2, v0}, Lcom/txdriver/taximeter/TaximeterHelper;->getTripPrice(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;Z)D

    move-result-wide p0

    invoke-static {p2, p0, p1}, Lcom/txdriver/order/OrderHelper;->getDiscountAmount(Lcom/txdriver/db/Order;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getExtrasPrice(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;)D
    .locals 2

    .line 128
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1}, Lcom/txdriver/taximeter/TaximeterHelper;->getTripPrice(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;Z)D

    move-result-wide p0

    invoke-static {p2, v0, p0, p1}, Lcom/txdriver/order/OrderHelper;->getExtrasPrice(Lcom/txdriver/db/Order;Lcom/txdriver/db/Tariff;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getMarkupAmount(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;)D
    .locals 2

    const/4 v0, 0x1

    .line 152
    invoke-static {p0, p1, p2, v0}, Lcom/txdriver/taximeter/TaximeterHelper;->getTripPrice(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;Z)D

    move-result-wide v0

    .line 153
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object p0

    invoke-static {p2, p0, v0, v1}, Lcom/txdriver/order/OrderHelper;->getExtrasPrice(Lcom/txdriver/db/Order;Lcom/txdriver/db/Tariff;D)D

    move-result-wide p0

    add-double/2addr v0, p0

    .line 154
    invoke-static {p2, v0, v1}, Lcom/txdriver/order/OrderHelper;->getMarkupAmount(Lcom/txdriver/db/Order;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getPrice(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;)D
    .locals 1

    const/4 v0, 0x1

    .line 177
    invoke-static {p0, p1, p2, v0}, Lcom/txdriver/taximeter/TaximeterHelper;->getPrice(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;Z)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getPrice(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;Z)D
    .locals 4

    .line 181
    invoke-static {p0, p1, p2, p3}, Lcom/txdriver/taximeter/TaximeterHelper;->getTripPrice(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;Z)D

    move-result-wide v0

    if-nez p2, :cond_0

    return-wide v0

    .line 185
    :cond_0
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object p1

    invoke-static {p2, p1, v0, v1}, Lcom/txdriver/order/OrderHelper;->getExtrasPrice(Lcom/txdriver/db/Order;Lcom/txdriver/db/Tariff;D)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 186
    invoke-static {p2, v0, v1}, Lcom/txdriver/order/OrderHelper;->getMarkupAmount(Lcom/txdriver/db/Order;D)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 187
    invoke-static {p2, v0, v1}, Lcom/txdriver/order/OrderHelper;->getDiscountAmount(Lcom/txdriver/db/Order;D)D

    move-result-wide p1

    sub-double/2addr v0, p1

    if-eqz p3, :cond_1

    .line 189
    invoke-static {p0, v0, v1}, Lcom/txdriver/order/OrderHelper;->roundPrice(Lcom/txdriver/App;D)D

    move-result-wide v0

    :cond_1
    const-wide/16 p0, 0x0

    .line 191
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getTripPrice(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;Z)D
    .locals 6

    .line 132
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getMinPrice()D

    move-result-wide v0

    invoke-virtual {p1, p2}, Lcom/txdriver/taximeter/Taximeter;->getStatementsPrice(Lcom/txdriver/db/Order;)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object v2

    invoke-static {p0, p2, v2}, Lcom/txdriver/order/OrderHelper;->getWaitPrice(Lcom/txdriver/App;Lcom/txdriver/db/Order;Lcom/txdriver/db/Tariff;)D

    move-result-wide v2

    add-double/2addr v0, v2

    if-eqz p2, :cond_1

    .line 135
    iget-object p0, p2, Lcom/txdriver/db/Order;->taximeterCalcMethod:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    if-eqz p0, :cond_0

    iget-object p0, p2, Lcom/txdriver/db/Order;->taximeterCalcMethod:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-object p0, p0, Lcom/txdriver/db/OrderType;->taximeterWithPrice:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const/4 p2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p0, :cond_2

    new-array v4, v3, [Lcom/txdriver/taximeter/TaximeterCalcMethod;

    .line 137
    sget-object v5, Lcom/txdriver/taximeter/TaximeterCalcMethod;->ONLY_TIME_ENABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    aput-object v5, v4, v2

    sget-object v5, Lcom/txdriver/taximeter/TaximeterCalcMethod;->ONLY_TIME_TRANSFERS_DISABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    aput-object v5, v4, p2

    invoke-virtual {p0, v4}, Lcom/txdriver/taximeter/TaximeterCalcMethod;->in([Lcom/txdriver/taximeter/TaximeterCalcMethod;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 138
    :cond_2
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getStartCharge()F

    move-result v4

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getZonesCharge()F

    move-result v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v4

    :cond_3
    if-eqz p3, :cond_5

    if-eqz p0, :cond_4

    new-array p3, v3, [Lcom/txdriver/taximeter/TaximeterCalcMethod;

    .line 141
    sget-object v3, Lcom/txdriver/taximeter/TaximeterCalcMethod;->ONLY_TIME_ENABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    aput-object v3, p3, v2

    sget-object v2, Lcom/txdriver/taximeter/TaximeterCalcMethod;->ONLY_TIME_TRANSFERS_DISABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    aput-object v2, p3, p2

    invoke-virtual {p0, p3}, Lcom/txdriver/taximeter/TaximeterCalcMethod;->in([Lcom/txdriver/taximeter/TaximeterCalcMethod;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 142
    :cond_4
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getEndCharge()F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, p0

    :cond_5
    const-wide/16 p0, 0x0

    .line 144
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static isUseTaximeter(Lcom/txdriver/App;Lcom/txdriver/db/Order;)Z
    .locals 7

    if-nez p1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p0

    invoke-virtual {p0}, Lcom/txdriver/preferences/Preferences;->isTaximeterEnabled()Z

    move-result p0

    return p0

    .line 44
    :cond_0
    iget-object p0, p1, Lcom/txdriver/db/Order;->bankCardPaymentState:Lcom/txdriver/db/Order$BankCardPaymentState;

    sget-object v0, Lcom/txdriver/db/Order$BankCardPaymentState;->NEW:Lcom/txdriver/db/Order$BankCardPaymentState;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    return v1

    .line 47
    :cond_1
    iget-object p0, p1, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    sget-object v0, Lcom/txdriver/db/Order$Status;->ON_ROUTE:Lcom/txdriver/db/Order$Status;

    if-ne p0, v0, :cond_9

    iget-object p0, p1, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    if-nez p0, :cond_2

    goto :goto_0

    .line 50
    :cond_2
    iget-object p0, p1, Lcom/txdriver/db/Order;->source:Lcom/txdriver/db/Order$Source;

    sget-object v0, Lcom/txdriver/db/Order$Source;->OWN:Lcom/txdriver/db/Order$Source;

    const/4 v2, 0x1

    if-eq p0, v0, :cond_3

    iget-object p0, p1, Lcom/txdriver/db/Order;->tariff:Lcom/txdriver/db/Tariff;

    if-eqz p0, :cond_3

    iget-object p0, p1, Lcom/txdriver/db/Order;->tariff:Lcom/txdriver/db/Tariff;

    iget p0, p0, Lcom/txdriver/db/Tariff;->tariffId:I

    if-gez p0, :cond_3

    return v2

    .line 53
    :cond_3
    iget-wide v3, p1, Lcom/txdriver/db/Order;->price:D

    const-wide/16 v5, 0x0

    cmpl-double p0, v3, v5

    if-nez p0, :cond_4

    iget-object p0, p1, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-boolean p0, p0, Lcom/txdriver/db/OrderType;->taximeter:Z

    if-eqz p0, :cond_4

    return v2

    .line 56
    :cond_4
    iget-wide v3, p1, Lcom/txdriver/db/Order;->price:D

    cmpl-double p0, v3, v5

    if-nez p0, :cond_5

    return v1

    .line 59
    :cond_5
    sget-object p0, Lcom/txdriver/taximeter/TaximeterHelper$3;->$SwitchMap$com$txdriver$taximeter$TaximeterCalcMethod:[I

    iget-object v0, p1, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-object v0, v0, Lcom/txdriver/db/OrderType;->taximeterWithPrice:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    invoke-virtual {v0}, Lcom/txdriver/taximeter/TaximeterCalcMethod;->ordinal()I

    move-result v0

    aget p0, p0, v0

    if-eq p0, v2, :cond_8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 v0, 0x3

    if-eq p0, v0, :cond_8

    const/4 v0, 0x5

    if-eq p0, v0, :cond_7

    const/4 v0, 0x6

    if-eq p0, v0, :cond_7

    const/4 v0, 0x7

    if-eq p0, v0, :cond_6

    return v1

    .line 71
    :cond_6
    iget-boolean p0, p1, Lcom/txdriver/db/Order;->transfer:Z

    return p0

    .line 69
    :cond_7
    iget-boolean p0, p1, Lcom/txdriver/db/Order;->transfer:Z

    xor-int/2addr p0, v2

    return p0

    :cond_8
    return v2

    :cond_9
    :goto_0
    return v1
.end method

.method public static restoreTaximeterState(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;)V
    .locals 1

    .line 210
    new-instance v0, Lcom/txdriver/taximeter/TaximeterHelper$2;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/taximeter/TaximeterHelper$2;-><init>(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 227
    invoke-virtual {v0, p0}, Lcom/txdriver/taximeter/TaximeterHelper$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static saveTaximeterState(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;)V
    .locals 1

    .line 195
    new-instance v0, Lcom/txdriver/taximeter/TaximeterHelper$1;

    invoke-direct {v0, p1, p0}, Lcom/txdriver/taximeter/TaximeterHelper$1;-><init>(Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/App;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 206
    invoke-virtual {v0, p0}, Lcom/txdriver/taximeter/TaximeterHelper$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static serializeTaximeter(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;)Lcom/txdriver/socket/data/TaximeterStateData;
    .locals 4

    .line 158
    new-instance v0, Lcom/txdriver/socket/data/TaximeterStateData;

    invoke-direct {v0}, Lcom/txdriver/socket/data/TaximeterStateData;-><init>()V

    .line 159
    iget v1, p2, Lcom/txdriver/db/Order;->orderId:I

    invoke-static {v1}, Lcom/txdriver/db/Order;->getOrderById(I)Lcom/txdriver/db/Order;

    move-result-object v1

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/txdriver/order/OrderHelper;->getWaitTime(Lcom/txdriver/App;Lcom/txdriver/db/Order;Lcom/txdriver/db/Tariff;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/txdriver/socket/data/TaximeterStateData;->waitingMinutes:D

    .line 160
    invoke-static {p0, p1, p2}, Lcom/txdriver/taximeter/TaximeterHelper;->getPrice(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/txdriver/socket/data/TaximeterStateData;->price:D

    .line 161
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getStatements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/txdriver/taximeter/Statement;

    .line 163
    new-instance v1, Lcom/txdriver/socket/data/TaximeterStatementData;

    invoke-direct {v1}, Lcom/txdriver/socket/data/TaximeterStatementData;-><init>()V

    .line 164
    invoke-virtual {p2}, Lcom/txdriver/taximeter/Statement;->getDistance()D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lcom/txdriver/socket/data/TaximeterStatementData;->distance:I

    .line 165
    invoke-virtual {p2}, Lcom/txdriver/taximeter/Statement;->getPaidDistance()D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lcom/txdriver/socket/data/TaximeterStatementData;->paidDistance:I

    .line 166
    invoke-virtual {p2}, Lcom/txdriver/taximeter/Statement;->getPaidTime()I

    move-result v2

    iput v2, v1, Lcom/txdriver/socket/data/TaximeterStatementData;->paidTime:I

    .line 167
    invoke-virtual {p2}, Lcom/txdriver/taximeter/Statement;->getTime()I

    move-result v2

    iput v2, v1, Lcom/txdriver/socket/data/TaximeterStatementData;->time:I

    .line 168
    invoke-virtual {p2}, Lcom/txdriver/taximeter/Statement;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/txdriver/taximeter/Statement;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object v2

    iget v2, v2, Lcom/txdriver/db/Tariff;->tariffId:I

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    :goto_1
    iput v2, v1, Lcom/txdriver/socket/data/TaximeterStatementData;->tariff:I

    .line 169
    invoke-virtual {p2}, Lcom/txdriver/taximeter/Statement;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/txdriver/taximeter/Statement;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object p2

    iget-object p2, p2, Lcom/txdriver/db/TariffZone;->zone:Lcom/txdriver/db/Zone;

    iget v3, p2, Lcom/txdriver/db/Zone;->zoneId:I

    :cond_1
    iput v3, v1, Lcom/txdriver/socket/data/TaximeterStatementData;->tariffZone:I

    .line 170
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    :cond_2
    iput-object p0, v0, Lcom/txdriver/socket/data/TaximeterStateData;->statements:Ljava/util/List;

    return-object v0
.end method

.method public static setTariff(Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;Lcom/txdriver/db/Tariff;)V
    .locals 0

    .line 78
    invoke-static {p2, p1}, Lcom/txdriver/taximeter/TaximeterCalcMethod;->adaptTariff(Lcom/txdriver/db/Tariff;Lcom/txdriver/db/Order;)Lcom/txdriver/db/Tariff;

    move-result-object p2

    .line 79
    invoke-virtual {p0, p2, p1}, Lcom/txdriver/taximeter/Taximeter;->setTariff(Lcom/txdriver/db/Tariff;Lcom/txdriver/db/Order;)V

    return-void
.end method

.method public static setTariffZone(Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;Lcom/txdriver/db/TariffZone;)V
    .locals 0

    .line 123
    invoke-static {p2, p1}, Lcom/txdriver/taximeter/TaximeterCalcMethod;->adaptTariffZone(Lcom/txdriver/db/TariffZone;Lcom/txdriver/db/Order;)Lcom/txdriver/db/TariffZone;

    move-result-object p2

    .line 124
    invoke-virtual {p0, p2, p1}, Lcom/txdriver/taximeter/Taximeter;->setTariffZone(Lcom/txdriver/db/TariffZone;Lcom/txdriver/db/Order;)V

    return-void
.end method

.method public static startTaximeter(Lcom/txdriver/App;Lcom/txdriver/db/Order;)V
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Taximeter;->stopAndReset()V

    .line 84
    sget-object v0, Lcom/txdriver/taximeter/TaximeterHelper$3;->$SwitchMap$com$txdriver$db$Order$Source:[I

    iget-object v1, p1, Lcom/txdriver/db/Order;->source:Lcom/txdriver/db/Order$Source;

    invoke-virtual {v1}, Lcom/txdriver/db/Order$Source;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 98
    invoke-static {p0, p1}, Lcom/txdriver/taximeter/TaximeterHelper;->isUseTaximeter(Lcom/txdriver/App;Lcom/txdriver/db/Order;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget-boolean v0, p1, Lcom/txdriver/db/Order;->transfer:Z

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p0

    new-instance v0, Lcom/txdriver/socket/packet/TransferPacket;

    iget p1, p1, Lcom/txdriver/db/Order;->orderId:I

    invoke-direct {v0, p1}, Lcom/txdriver/socket/packet/TransferPacket;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    return-void

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object v0

    iget-object v1, p1, Lcom/txdriver/db/Order;->tariff:Lcom/txdriver/db/Tariff;

    invoke-static {p0, v0, p1, v1}, Lcom/txdriver/taximeter/TaximeterHelper;->startTaximeter(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;Lcom/txdriver/db/Tariff;)V

    return-void

    .line 95
    :cond_2
    invoke-virtual {p0}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p0

    new-instance v0, Lcom/txdriver/socket/packet/ExchangeTariffPacket;

    iget p1, p1, Lcom/txdriver/db/Order;->orderId:I

    invoke-direct {v0, p1}, Lcom/txdriver/socket/packet/ExchangeTariffPacket;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    return-void

    .line 92
    :cond_3
    invoke-virtual {p0}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p0

    new-instance v0, Lcom/txdriver/socket/packet/RbtTariffPacket;

    iget p1, p1, Lcom/txdriver/db/Order;->orderId:I

    invoke-direct {v0, p1}, Lcom/txdriver/socket/packet/RbtTariffPacket;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    return-void

    .line 89
    :cond_4
    invoke-virtual {p0}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p0

    new-instance v0, Lcom/txdriver/socket/packet/MultiTaxiTariffPacket;

    iget p1, p1, Lcom/txdriver/db/Order;->orderId:I

    invoke-direct {v0, p1}, Lcom/txdriver/socket/packet/MultiTaxiTariffPacket;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    return-void

    .line 86
    :cond_5
    invoke-virtual {p0}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p0

    new-instance v0, Lcom/txdriver/socket/packet/UpUpTariffPacket;

    iget p1, p1, Lcom/txdriver/db/Order;->orderId:I

    invoke-direct {v0, p1}, Lcom/txdriver/socket/packet/UpUpTariffPacket;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    return-void
.end method

.method public static startTaximeter(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;Lcom/txdriver/db/Tariff;)V
    .locals 6

    .line 109
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->stopAndReset()V

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    .line 111
    iget-object v0, p2, Lcom/txdriver/db/Order;->carType:Lcom/txdriver/db/CarType;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    if-eqz v0, :cond_0

    .line 112
    iget-object p3, p2, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    invoke-virtual {p3}, Lcom/txdriver/db/OrderType;->getId()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p3, p2, Lcom/txdriver/db/Order;->carType:Lcom/txdriver/db/CarType;

    invoke-virtual {p3}, Lcom/txdriver/db/CarType;->getId()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->getWeekDay()I

    move-result v4

    iget-object p3, p2, Lcom/txdriver/db/Order;->date:Ljava/util/Date;

    invoke-static {p3}, Lcom/txdriver/utils/TimeUtils;->minutesFromMidnight(Ljava/util/Date;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/txdriver/db/Tariff;->getTariff(JJII)Lcom/txdriver/db/Tariff;

    move-result-object p3

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p0

    new-instance v0, Lcom/txdriver/socket/packet/PullTaximeterStatePacket;

    iget v1, p2, Lcom/txdriver/db/Order;->orderId:I

    invoke-direct {v0, v1}, Lcom/txdriver/socket/packet/PullTaximeterStatePacket;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 117
    invoke-static {p3, p2}, Lcom/txdriver/taximeter/TaximeterCalcMethod;->adaptTariff(Lcom/txdriver/db/Tariff;Lcom/txdriver/db/Order;)Lcom/txdriver/db/Tariff;

    move-result-object p0

    .line 118
    invoke-virtual {p1, p0, p2}, Lcom/txdriver/taximeter/Taximeter;->start(Lcom/txdriver/db/Tariff;Lcom/txdriver/db/Order;)V

    :cond_2
    return-void
.end method
