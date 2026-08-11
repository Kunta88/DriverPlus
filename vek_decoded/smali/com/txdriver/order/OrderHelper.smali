.class public Lcom/txdriver/order/OrderHelper;
.super Ljava/lang/Object;
.source "OrderHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canCancelOrder(Lcom/txdriver/db/Order;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-boolean p0, p0, Lcom/txdriver/db/OrderType;->driverCanCancel:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static canStartPerforming(Lcom/txdriver/db/Order;)Z
    .locals 5

    .line 64
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lcom/txdriver/db/Order;->getReminderTime()I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 66
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 67
    iget-object p0, p0, Lcom/txdriver/db/Order;->date:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static doneOrder(Lcom/txdriver/App;Landroidx/fragment/app/FragmentActivity;Lcom/txdriver/db/Order;)Z
    .locals 2

    .line 29
    invoke-virtual {p0}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/txdriver/order/OrderHelper;->isFarFromDestination(Lcom/txdriver/App;Landroid/location/Location;Lcom/txdriver/db/Order;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const p1, 0x7f100288

    .line 30
    invoke-virtual {p0, p1}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 33
    :cond_0
    invoke-static {p0, p2}, Lcom/txdriver/order/OrderHelper;->isTravelToShort(Lcom/txdriver/App;Lcom/txdriver/db/Order;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f100260

    .line 34
    invoke-virtual {p0, p1}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    :cond_1
    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {p2}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->show(JLandroidx/fragment/app/FragmentActivity;)V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static getDiscountAmount(Lcom/txdriver/db/Order;D)D
    .locals 4

    if-eqz p0, :cond_0

    .line 122
    iget-wide v0, p0, Lcom/txdriver/db/Order;->discountSum:D

    .line 123
    iget-wide v2, p0, Lcom/txdriver/db/Order;->discountPercent:D

    mul-double p1, p1, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr p1, v2

    add-double/2addr v0, p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static getDiscountAmountFromPriceWithDiscount(Lcom/txdriver/db/Order;D)D
    .locals 8

    if-eqz p0, :cond_0

    .line 131
    iget-wide v0, p0, Lcom/txdriver/db/Order;->discountSum:D

    add-double/2addr v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lcom/txdriver/db/Order;->discountPercent:D

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    sub-double/2addr v0, p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static getDiscountText(Lcom/txdriver/App;Lcom/txdriver/db/Order;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    iget-wide v1, p1, Lcom/txdriver/db/Order;->discountPercent:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    .line 249
    iget-wide v1, p1, Lcom/txdriver/db/Order;->discountPercent:D

    invoke-static {v1, v2}, Lcom/txdriver/utils/Format;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_0
    iget-wide v1, p1, Lcom/txdriver/db/Order;->discountPercent:D

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    iget-wide v1, p1, Lcom/txdriver/db/Order;->discountSum:D

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    const-string v1, " "

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f100031

    .line 254
    invoke-virtual {p0, v2}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_1
    iget-wide v1, p1, Lcom/txdriver/db/Order;->discountSum:D

    cmpl-double p0, v1, v3

    if-lez p0, :cond_2

    const-string p0, "-"

    .line 258
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-wide p0, p1, Lcom/txdriver/db/Order;->discountSum:D

    invoke-static {p0, p1, p2}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtrasPrice(Lcom/txdriver/db/Order;Lcom/txdriver/db/Tariff;D)D
    .locals 8

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 84
    invoke-virtual {p1}, Lcom/txdriver/db/Tariff;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/txdriver/db/TariffDriverExtra;->getTariffExtras(JJ)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txdriver/db/TariffDriverExtra;

    .line 85
    iget v6, v3, Lcom/txdriver/db/TariffDriverExtra;->price:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v6

    .line 86
    iget v3, v3, Lcom/txdriver/db/TariffDriverExtra;->percent:F

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, p2

    div-double/2addr v6, v4

    add-double/2addr v0, v6

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/txdriver/db/Tariff;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Lcom/txdriver/db/TariffCarExtra;->getTariffExtras(JJ)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/TariffCarExtra;

    .line 89
    iget v2, p1, Lcom/txdriver/db/TariffCarExtra;->price:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    .line 90
    iget p1, p1, Lcom/txdriver/db/TariffCarExtra;->percent:F

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, p2

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    goto :goto_1

    :cond_1
    return-wide v0
.end method

.method public static getExtrasPriceFromPriceExtrasPrice(Lcom/txdriver/db/Order;Lcom/txdriver/db/Tariff;D)D
    .locals 11

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 102
    invoke-virtual {p1}, Lcom/txdriver/db/Tariff;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/txdriver/db/TariffDriverExtra;->getTariffExtras(JJ)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-wide v3, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/txdriver/db/TariffDriverExtra;

    .line 103
    iget v6, v5, Lcom/txdriver/db/TariffDriverExtra;->price:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v6

    .line 104
    iget v5, v5, Lcom/txdriver/db/TariffDriverExtra;->percent:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v5

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/txdriver/db/Tariff;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/txdriver/db/TariffCarExtra;->getTariffExtras(JJ)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-wide v9, v0

    move-wide v0, v3

    move-wide v2, v9

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/txdriver/db/TariffCarExtra;

    .line 107
    iget v5, v4, Lcom/txdriver/db/TariffCarExtra;->price:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v5

    .line 108
    iget v4, v4, Lcom/txdriver/db/TariffCarExtra;->percent:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v4

    goto :goto_1

    :cond_1
    move-wide v9, v0

    move-wide v0, v2

    move-wide v2, v9

    goto :goto_2

    :cond_2
    move-wide v2, v0

    :goto_2
    if-eqz p0, :cond_3

    sub-double p0, p2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    add-double/2addr v2, v0

    div-double/2addr p0, v2

    goto :goto_3

    :cond_3
    move-wide p0, p2

    :goto_3
    sub-double/2addr p2, p0

    return-wide p2
.end method

.method public static getMarkupAmount(Lcom/txdriver/db/Order;D)D
    .locals 4

    if-eqz p0, :cond_0

    .line 188
    iget v0, p0, Lcom/txdriver/db/Order;->markupAmount:F

    float-to-double v0, v0

    .line 189
    iget p0, p0, Lcom/txdriver/db/Order;->markupPercent:F

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr p1, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static getMarkupAmountFromPriceWithMarkup(Lcom/txdriver/db/Order;D)D
    .locals 4

    if-eqz p0, :cond_0

    .line 197
    iget v0, p0, Lcom/txdriver/db/Order;->markupAmount:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v0, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iget p0, p0, Lcom/txdriver/db/Order;->markupPercent:F

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p0, v3

    add-float/2addr p0, v2

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    sub-double/2addr p1, v0

    return-wide p1
.end method

.method public static getMarkupText(Lcom/txdriver/App;Lcom/txdriver/db/Order;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 203
    invoke-virtual {p0}, Lcom/txdriver/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    iget v1, p1, Lcom/txdriver/db/Order;->markupPercent:F

    const-string v2, "+"

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 208
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget v1, p1, Lcom/txdriver/db/Order;->markupPercent:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Lcom/txdriver/utils/Format;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_1
    iget v1, p1, Lcom/txdriver/db/Order;->markupPercent:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    iget v1, p1, Lcom/txdriver/db/Order;->markupAmount:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    const-string v1, " "

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f100031

    .line 214
    invoke-virtual {p0, v4}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_2
    iget p0, p1, Lcom/txdriver/db/Order;->markupAmount:F

    cmpl-float p0, p0, v3

    if-lez p0, :cond_3

    .line 218
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget p0, p1, Lcom/txdriver/db/Order;->markupAmount:F

    float-to-double p0, p0

    invoke-static {p0, p1, p2}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMarkupTextWithoutCurrency(Lcom/txdriver/App;Lcom/txdriver/db/Order;)Ljava/lang/String;
    .locals 6

    .line 225
    invoke-virtual {p0}, Lcom/txdriver/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    iget v1, p1, Lcom/txdriver/db/Order;->markupPercent:F

    const-string v2, "+"

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 230
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget v1, p1, Lcom/txdriver/db/Order;->markupPercent:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Lcom/txdriver/utils/Format;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_1
    iget v1, p1, Lcom/txdriver/db/Order;->markupPercent:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    iget v1, p1, Lcom/txdriver/db/Order;->markupAmount:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    const-string v1, " "

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f100031

    .line 236
    invoke-virtual {p0, v4}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_2
    iget p0, p1, Lcom/txdriver/db/Order;->markupAmount:F

    cmpl-float p0, p0, v3

    if-lez p0, :cond_3

    .line 240
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget p0, p1, Lcom/txdriver/db/Order;->markupAmount:F

    float-to-double p0, p0

    invoke-static {p0, p1}, Lcom/txdriver/utils/Format;->formatDouble(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPricePerWaitMinute(Lcom/txdriver/db/Tariff;)D
    .locals 2

    if-eqz p0, :cond_0

    .line 164
    iget p0, p0, Lcom/txdriver/db/Tariff;->pricePerWaitMinute:F

    float-to-double v0, p0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static getWaitPrice(Lcom/txdriver/App;Lcom/txdriver/db/Order;Lcom/txdriver/db/Tariff;)D
    .locals 2

    .line 137
    invoke-static {p0, p1, p2}, Lcom/txdriver/order/OrderHelper;->getWaitTime(Lcom/txdriver/App;Lcom/txdriver/db/Order;Lcom/txdriver/db/Tariff;)D

    move-result-wide p0

    invoke-static {p2}, Lcom/txdriver/order/OrderHelper;->getPricePerWaitMinute(Lcom/txdriver/db/Tariff;)D

    move-result-wide v0

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static getWaitTime(Lcom/txdriver/App;Lcom/txdriver/db/Order;Lcom/txdriver/db/Tariff;)D
    .locals 6

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 145
    :cond_0
    iget v2, p1, Lcom/txdriver/db/Order;->waitTime:I

    if-lez v2, :cond_1

    .line 146
    iget p0, p1, Lcom/txdriver/db/Order;->waitTime:I

    int-to-double p0, p0

    return-wide p0

    .line 148
    :cond_1
    iget-object v2, p1, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    sget-object v3, Lcom/txdriver/db/Order$Status;->ON_ROUTE:Lcom/txdriver/db/Order$Status;

    if-ne v2, v3, :cond_3

    if-eqz p2, :cond_3

    iget-object v2, p1, Lcom/txdriver/db/Order;->onRouteDate:Ljava/util/Date;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/txdriver/db/Order;->arrivedDate:Ljava/util/Date;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/txdriver/db/Order;->date:Ljava/util/Date;

    if-eqz v2, :cond_3

    .line 150
    invoke-virtual {p0}, Lcom/txdriver/App;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f100053

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "arrived"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 151
    iget-object p0, p1, Lcom/txdriver/db/Order;->arrivedDate:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_0

    .line 153
    :cond_2
    iget-object p0, p1, Lcom/txdriver/db/Order;->arrivedDate:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object p0, p1, Lcom/txdriver/db/Order;->date:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 155
    :goto_0
    iget-object p0, p1, Lcom/txdriver/db/Order;->onRouteDate:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr p0, v2

    invoke-static {p0, p1}, Lcom/txdriver/utils/TimeUtils;->millisecondsToSecconds(J)D

    move-result-wide p0

    double-to-int p0, p0

    invoke-static {p0}, Lcom/txdriver/utils/TimeUtils;->secondsToMinutes(I)D

    move-result-wide p0

    iget p2, p2, Lcom/txdriver/db/Tariff;->minPriceIncludesWaitMinutes:F

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p0, v2

    cmpl-double p2, p0, v0

    if-lez p2, :cond_3

    move-wide v0, p0

    :cond_3
    return-wide v0
.end method

.method public static isFarFromClient(Lcom/txdriver/App;Lcom/txdriver/db/Order;)Z
    .locals 4

    .line 75
    invoke-virtual {p1}, Lcom/txdriver/db/Order;->getAddress()Lcom/txdriver/db/Address;

    move-result-object p1

    .line 77
    invoke-virtual {p0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getArrivedStateDistance()I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/txdriver/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/txdriver/utils/DistanceUtils;->getDistance(Landroid/location/Location;Lcom/txdriver/db/Address;)D

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmpl-double v3, p0, v1

    if-lez v3, :cond_0

    int-to-double v0, v0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFarFromDestination(Lcom/txdriver/App;Landroid/location/Location;Lcom/txdriver/db/Order;)Z
    .locals 4

    .line 44
    invoke-virtual {p0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p0

    invoke-virtual {p0}, Lcom/txdriver/preferences/Preferences;->getDoneStateDistance()I

    move-result p0

    if-lez p0, :cond_0

    .line 46
    invoke-virtual {p2}, Lcom/txdriver/db/Order;->destinations()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 47
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/txdriver/db/Address;

    .line 49
    invoke-static {p1, p2}, Lcom/txdriver/utils/DistanceUtils;->getDistance(Landroid/location/Location;Lcom/txdriver/db/Address;)D

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmpl-double v0, p1, v2

    if-lez v0, :cond_0

    int-to-double v2, p0

    cmpl-double p0, p1, v2

    if-lez p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isTravelToShort(Lcom/txdriver/App;Lcom/txdriver/db/Order;)Z
    .locals 4

    .line 57
    invoke-virtual {p0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p0

    invoke-virtual {p0}, Lcom/txdriver/preferences/Preferences;->getTravelMinTime()I

    move-result p0

    if-lez p0, :cond_0

    .line 58
    iget-object v0, p1, Lcom/txdriver/db/Order;->onRouteDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p1, Lcom/txdriver/db/Order;->onRouteDate:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 59
    invoke-static {v0, v1}, Lcom/txdriver/utils/TimeUtils;->millisecondsToMinutes(J)D

    move-result-wide v0

    int-to-double p0, p0

    cmpg-double v2, v0, p0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static maybeHasExternalTariff(Lcom/txdriver/db/Order;)Z
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/txdriver/db/Order;->source:Lcom/txdriver/db/Order$Source;

    sget-object v1, Lcom/txdriver/db/Order$Source;->RBT:Lcom/txdriver/db/Order$Source;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/txdriver/db/Order;->source:Lcom/txdriver/db/Order$Source;

    sget-object v1, Lcom/txdriver/db/Order$Source;->UPUP:Lcom/txdriver/db/Order$Source;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/txdriver/db/Order;->source:Lcom/txdriver/db/Order$Source;

    sget-object v0, Lcom/txdriver/db/Order$Source;->EXCHANGE:Lcom/txdriver/db/Order$Source;

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

.method public static roundPrice(Lcom/txdriver/App;D)D
    .locals 3

    .line 170
    invoke-virtual {p0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getRoundPrice()F

    move-result v0

    .line 171
    invoke-virtual {p0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p0

    invoke-virtual {p0}, Lcom/txdriver/preferences/Preferences;->getRoundPriceUp()Z

    move-result p0

    if-nez p0, :cond_0

    float-to-double v1, v0

    .line 174
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-float p0, p0

    mul-float p0, p0, v0

    float-to-double p0, p0

    goto :goto_0

    :cond_0
    float-to-double v0, v0

    .line 176
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, v0

    .line 178
    :goto_0
    invoke-static {p0, p1}, Lcom/txdriver/utils/Format;->formatDouble(D)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method
