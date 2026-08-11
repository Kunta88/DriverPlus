.class public final enum Lcom/txdriver/taximeter/TaximeterCalcMethod;
.super Ljava/lang/Enum;
.source "TaximeterCalcMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/txdriver/taximeter/TaximeterCalcMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/txdriver/taximeter/TaximeterCalcMethod;

.field public static final enum ALWAYS_DISABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

.field public static final enum ALWAYS_ENABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

.field public static final enum FIX_PRICE_AND_ADDITION_TIME_DISTANCE:Lcom/txdriver/taximeter/TaximeterCalcMethod;

.field public static final enum ONLY_TIME_ENABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

.field public static final enum ONLY_TIME_TRANSFERS_DISABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

.field public static final enum TRANSFERS_DISABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

.field public static final enum TRANSFERS_ENABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/txdriver/taximeter/TaximeterCalcMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 18
    new-instance v0, Lcom/txdriver/taximeter/TaximeterCalcMethod;

    const-string v1, "ALWAYS_DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/txdriver/taximeter/TaximeterCalcMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/txdriver/taximeter/TaximeterCalcMethod;->ALWAYS_DISABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    new-instance v1, Lcom/txdriver/taximeter/TaximeterCalcMethod;

    const-string v3, "ALWAYS_ENABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/txdriver/taximeter/TaximeterCalcMethod;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/txdriver/taximeter/TaximeterCalcMethod;->ALWAYS_ENABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    new-instance v3, Lcom/txdriver/taximeter/TaximeterCalcMethod;

    const-string v5, "TRANSFERS_ENABLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/txdriver/taximeter/TaximeterCalcMethod;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/txdriver/taximeter/TaximeterCalcMethod;->TRANSFERS_ENABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    new-instance v5, Lcom/txdriver/taximeter/TaximeterCalcMethod;

    const-string v7, "TRANSFERS_DISABLED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/txdriver/taximeter/TaximeterCalcMethod;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/txdriver/taximeter/TaximeterCalcMethod;->TRANSFERS_DISABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    new-instance v7, Lcom/txdriver/taximeter/TaximeterCalcMethod;

    const-string v9, "ONLY_TIME_ENABLED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/txdriver/taximeter/TaximeterCalcMethod;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/txdriver/taximeter/TaximeterCalcMethod;->ONLY_TIME_ENABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    new-instance v9, Lcom/txdriver/taximeter/TaximeterCalcMethod;

    const-string v11, "ONLY_TIME_TRANSFERS_DISABLED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/txdriver/taximeter/TaximeterCalcMethod;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/txdriver/taximeter/TaximeterCalcMethod;->ONLY_TIME_TRANSFERS_DISABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    new-instance v11, Lcom/txdriver/taximeter/TaximeterCalcMethod;

    const-string v13, "FIX_PRICE_AND_ADDITION_TIME_DISTANCE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/txdriver/taximeter/TaximeterCalcMethod;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/txdriver/taximeter/TaximeterCalcMethod;->FIX_PRICE_AND_ADDITION_TIME_DISTANCE:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/txdriver/taximeter/TaximeterCalcMethod;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 17
    sput-object v13, Lcom/txdriver/taximeter/TaximeterCalcMethod;->$VALUES:[Lcom/txdriver/taximeter/TaximeterCalcMethod;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/txdriver/taximeter/TaximeterCalcMethod;->lookup:Ljava/util/Map;

    .line 23
    invoke-static {}, Lcom/txdriver/taximeter/TaximeterCalcMethod;->values()[Lcom/txdriver/taximeter/TaximeterCalcMethod;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 24
    sget-object v4, Lcom/txdriver/taximeter/TaximeterCalcMethod;->lookup:Ljava/util/Map;

    iget v5, v3, Lcom/txdriver/taximeter/TaximeterCalcMethod;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/txdriver/taximeter/TaximeterCalcMethod;->id:I

    return-void
.end method

.method public static adaptTariff(Lcom/txdriver/db/Tariff;Lcom/txdriver/db/Order;)Lcom/txdriver/db/Tariff;
    .locals 9

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_c

    .line 88
    iget-object v0, p1, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 91
    :cond_1
    iget-wide v0, p1, Lcom/txdriver/db/Order;->price:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_2

    iget-object v0, p1, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-boolean v0, v0, Lcom/txdriver/db/OrderType;->taximeter:Z

    if-eqz v0, :cond_2

    return-object p0

    .line 94
    :cond_2
    iget-wide v0, p1, Lcom/txdriver/db/Order;->price:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_3

    return-object p0

    .line 97
    :cond_3
    iget-object v0, p1, Lcom/txdriver/db/Order;->source:Lcom/txdriver/db/Order$Source;

    sget-object v1, Lcom/txdriver/db/Order$Source;->OWN:Lcom/txdriver/db/Order$Source;

    if-eq v0, v1, :cond_4

    iget-object v0, p1, Lcom/txdriver/db/Order;->taximeterCalcMethod:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    if-nez v0, :cond_4

    return-object p0

    .line 100
    :cond_4
    iget-object v0, p1, Lcom/txdriver/db/Order;->taximeterCalcMethod:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/txdriver/db/Order;->taximeterCalcMethod:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    goto :goto_0

    :cond_5
    iget-object v0, p1, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-object v0, v0, Lcom/txdriver/db/OrderType;->taximeterWithPrice:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    :goto_0
    const/4 v1, 0x2

    new-array v2, v1, [Lcom/txdriver/taximeter/TaximeterCalcMethod;

    .line 101
    sget-object v3, Lcom/txdriver/taximeter/TaximeterCalcMethod;->ONLY_TIME_ENABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/txdriver/taximeter/TaximeterCalcMethod;->ONLY_TIME_TRANSFERS_DISABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Lcom/txdriver/taximeter/TaximeterCalcMethod;->in([Lcom/txdriver/taximeter/TaximeterCalcMethod;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 102
    iget-wide v2, p1, Lcom/txdriver/db/Order;->price:D

    iget-wide v6, p1, Lcom/txdriver/db/Order;->price:D

    invoke-static {p1, v6, v7}, Lcom/txdriver/order/OrderHelper;->getDiscountAmountFromPriceWithDiscount(Lcom/txdriver/db/Order;D)D

    move-result-wide v6

    add-double/2addr v2, v6

    iget-object v6, p1, Lcom/txdriver/db/Order;->tariff:Lcom/txdriver/db/Tariff;

    iget-wide v7, p1, Lcom/txdriver/db/Order;->price:D

    invoke-static {p1, v6, v7, v8}, Lcom/txdriver/order/OrderHelper;->getExtrasPriceFromPriceExtrasPrice(Lcom/txdriver/db/Order;Lcom/txdriver/db/Tariff;D)D

    move-result-wide v6

    sub-double/2addr v2, v6

    iget-wide v6, p1, Lcom/txdriver/db/Order;->price:D

    invoke-static {p1, v6, v7}, Lcom/txdriver/order/OrderHelper;->getMarkupAmountFromPriceWithMarkup(Lcom/txdriver/db/Order;D)D

    move-result-wide v6

    sub-double/2addr v2, v6

    iput-wide v2, p0, Lcom/txdriver/db/Tariff;->minPrice:D

    const v2, 0x38e8c8ac    # 1.11E-4f

    .line 103
    iput v2, p0, Lcom/txdriver/db/Tariff;->pricePerKm:F

    :cond_6
    new-array v2, v5, [Lcom/txdriver/taximeter/TaximeterCalcMethod;

    .line 105
    sget-object v3, Lcom/txdriver/taximeter/TaximeterCalcMethod;->FIX_PRICE_AND_ADDITION_TIME_DISTANCE:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/txdriver/taximeter/TaximeterCalcMethod;->in([Lcom/txdriver/taximeter/TaximeterCalcMethod;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 106
    iget-wide v2, p1, Lcom/txdriver/db/Order;->price:D

    iget-wide v6, p1, Lcom/txdriver/db/Order;->price:D

    invoke-static {p1, v6, v7}, Lcom/txdriver/order/OrderHelper;->getDiscountAmountFromPriceWithDiscount(Lcom/txdriver/db/Order;D)D

    move-result-wide v6

    add-double/2addr v2, v6

    iget-object v6, p1, Lcom/txdriver/db/Order;->tariff:Lcom/txdriver/db/Tariff;

    iget-wide v7, p1, Lcom/txdriver/db/Order;->price:D

    invoke-static {p1, v6, v7, v8}, Lcom/txdriver/order/OrderHelper;->getExtrasPriceFromPriceExtrasPrice(Lcom/txdriver/db/Order;Lcom/txdriver/db/Tariff;D)D

    move-result-wide v6

    sub-double/2addr v2, v6

    iget-wide v6, p1, Lcom/txdriver/db/Order;->price:D

    invoke-static {p1, v6, v7}, Lcom/txdriver/order/OrderHelper;->getMarkupAmountFromPriceWithMarkup(Lcom/txdriver/db/Order;D)D

    move-result-wide v6

    sub-double/2addr v2, v6

    iput-wide v2, p0, Lcom/txdriver/db/Tariff;->minPrice:D

    .line 108
    iget v2, p1, Lcom/txdriver/db/Order;->distance:I

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    iget v6, p0, Lcom/txdriver/db/Tariff;->minPriceIncludesKms:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_7

    .line 109
    iget v2, p1, Lcom/txdriver/db/Order;->distance:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, p0, Lcom/txdriver/db/Tariff;->minPriceIncludesKms:F

    .line 113
    :cond_7
    :try_start_0
    iget v2, p1, Lcom/txdriver/db/Order;->time:F

    iget v3, p0, Lcom/txdriver/db/Tariff;->minPriceIncludesMinutes:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 114
    iget v2, p1, Lcom/txdriver/db/Order;->time:F

    iput v2, p0, Lcom/txdriver/db/Tariff;->minPriceIncludesMinutes:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 118
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    :cond_8
    :goto_1
    iget-boolean v2, p1, Lcom/txdriver/db/Order;->transfer:Z

    if-eqz v2, :cond_c

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/txdriver/taximeter/TaximeterCalcMethod;

    sget-object v3, Lcom/txdriver/taximeter/TaximeterCalcMethod;->ONLY_TIME_ENABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    aput-object v3, v2, v4

    sget-object v3, Lcom/txdriver/taximeter/TaximeterCalcMethod;->TRANSFERS_ENABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    aput-object v3, v2, v5

    sget-object v3, Lcom/txdriver/taximeter/TaximeterCalcMethod;->ALWAYS_ENABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    aput-object v3, v2, v1

    const/4 v3, 0x3

    sget-object v6, Lcom/txdriver/taximeter/TaximeterCalcMethod;->FIX_PRICE_AND_ADDITION_TIME_DISTANCE:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    aput-object v6, v2, v3

    invoke-virtual {v0, v2}, Lcom/txdriver/taximeter/TaximeterCalcMethod;->in([Lcom/txdriver/taximeter/TaximeterCalcMethod;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 124
    invoke-static {p1}, Lcom/txdriver/db/Transfer;->getByOrder(Lcom/txdriver/db/Order;)Lcom/txdriver/db/Transfer;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 126
    iget v2, p1, Lcom/txdriver/db/Transfer;->price:F

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/txdriver/db/Tariff;->minPrice:D

    .line 127
    iget v2, p1, Lcom/txdriver/db/Transfer;->distance:F

    iput v2, p0, Lcom/txdriver/db/Tariff;->minPriceIncludesKms:F

    .line 128
    iget v2, p1, Lcom/txdriver/db/Transfer;->time:F

    iput v2, p0, Lcom/txdriver/db/Tariff;->minPriceIncludesMinutes:F

    .line 129
    iget v2, p1, Lcom/txdriver/db/Transfer;->waitTime:F

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_9

    iget v2, p1, Lcom/txdriver/db/Transfer;->waitTime:F

    goto :goto_2

    :cond_9
    iget v2, p0, Lcom/txdriver/db/Tariff;->minPriceIncludesWaitMinutes:F

    :goto_2
    iput v2, p0, Lcom/txdriver/db/Tariff;->minPriceIncludesWaitMinutes:F

    new-array v2, v1, [Ljava/lang/Object;

    .line 130
    iget-object v3, p0, Lcom/txdriver/db/Tariff;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object p1, p1, Lcom/txdriver/db/Transfer;->name:Ljava/lang/String;

    aput-object p1, v2, v5

    const-string p1, "%s (%s)"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/db/Tariff;->name:Ljava/lang/String;

    .line 132
    :cond_a
    iget p1, p0, Lcom/txdriver/db/Tariff;->minPriceIncludesKms:F

    const/high16 v2, 0x4f000000

    cmpg-float p1, p1, v0

    if-gez p1, :cond_b

    .line 133
    iput v2, p0, Lcom/txdriver/db/Tariff;->minPriceIncludesKms:F

    .line 134
    iput v1, p0, Lcom/txdriver/db/Tariff;->minPriceOperation:I

    .line 136
    :cond_b
    iget p1, p0, Lcom/txdriver/db/Tariff;->minPriceIncludesMinutes:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_c

    .line 137
    iput v2, p0, Lcom/txdriver/db/Tariff;->minPriceIncludesMinutes:F

    .line 138
    iput v1, p0, Lcom/txdriver/db/Tariff;->minPriceOperation:I

    :cond_c
    :goto_3
    return-object p0
.end method

.method public static adaptTariffZone(Lcom/txdriver/db/TariffZone;Lcom/txdriver/db/Order;)Lcom/txdriver/db/TariffZone;
    .locals 5

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_9

    .line 42
    iget-object v0, p1, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    if-nez v0, :cond_1

    goto :goto_1

    .line 45
    :cond_1
    iget-wide v0, p1, Lcom/txdriver/db/Order;->price:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_2

    iget-object v0, p1, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-boolean v0, v0, Lcom/txdriver/db/OrderType;->taximeter:Z

    if-eqz v0, :cond_2

    return-object p0

    .line 48
    :cond_2
    iget-wide v0, p1, Lcom/txdriver/db/Order;->price:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_3

    return-object p0

    .line 51
    :cond_3
    iget-object v0, p1, Lcom/txdriver/db/Order;->source:Lcom/txdriver/db/Order$Source;

    sget-object v1, Lcom/txdriver/db/Order$Source;->OWN:Lcom/txdriver/db/Order$Source;

    if-eq v0, v1, :cond_4

    iget-object v0, p1, Lcom/txdriver/db/Order;->taximeterCalcMethod:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    if-nez v0, :cond_4

    return-object p0

    .line 54
    :cond_4
    iget-object v0, p1, Lcom/txdriver/db/Order;->taximeterCalcMethod:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/txdriver/db/Order;->taximeterCalcMethod:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    goto :goto_0

    :cond_5
    iget-object v0, p1, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-object v0, v0, Lcom/txdriver/db/OrderType;->taximeterWithPrice:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/txdriver/taximeter/TaximeterCalcMethod;

    .line 55
    sget-object v2, Lcom/txdriver/taximeter/TaximeterCalcMethod;->ONLY_TIME_ENABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/txdriver/taximeter/TaximeterCalcMethod;->ONLY_TIME_TRANSFERS_DISABLED:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/txdriver/taximeter/TaximeterCalcMethod;->in([Lcom/txdriver/taximeter/TaximeterCalcMethod;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    const v1, 0x38e8c8ac    # 1.11E-4f

    .line 56
    iput v1, p0, Lcom/txdriver/db/TariffZone;->pricePerKm:F

    .line 57
    iput v2, p0, Lcom/txdriver/db/TariffZone;->charge:F

    .line 58
    iput v2, p0, Lcom/txdriver/db/TariffZone;->endCharge:F

    .line 59
    iput v2, p0, Lcom/txdriver/db/TariffZone;->startCharge:F

    :cond_6
    new-array v1, v4, [Lcom/txdriver/taximeter/TaximeterCalcMethod;

    .line 61
    sget-object v4, Lcom/txdriver/taximeter/TaximeterCalcMethod;->FIX_PRICE_AND_ADDITION_TIME_DISTANCE:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lcom/txdriver/taximeter/TaximeterCalcMethod;->in([Lcom/txdriver/taximeter/TaximeterCalcMethod;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 62
    iput v2, p0, Lcom/txdriver/db/TariffZone;->charge:F

    .line 63
    iput v2, p0, Lcom/txdriver/db/TariffZone;->endCharge:F

    .line 64
    iput v2, p0, Lcom/txdriver/db/TariffZone;->startCharge:F

    .line 66
    :cond_7
    iget-boolean v0, p1, Lcom/txdriver/db/Order;->transfer:Z

    if-eqz v0, :cond_8

    .line 67
    iput v2, p0, Lcom/txdriver/db/TariffZone;->charge:F

    .line 68
    iput v2, p0, Lcom/txdriver/db/TariffZone;->endCharge:F

    .line 69
    iput v2, p0, Lcom/txdriver/db/TariffZone;->startCharge:F

    .line 71
    :cond_8
    iget-object v0, p0, Lcom/txdriver/db/TariffZone;->tariff:Lcom/txdriver/db/Tariff;

    invoke-static {v0, p1}, Lcom/txdriver/taximeter/TaximeterCalcMethod;->adaptTariff(Lcom/txdriver/db/Tariff;Lcom/txdriver/db/Order;)Lcom/txdriver/db/Tariff;

    :cond_9
    :goto_1
    return-object p0
.end method

.method public static get(I)Lcom/txdriver/taximeter/TaximeterCalcMethod;
    .locals 1

    .line 35
    sget-object v0, Lcom/txdriver/taximeter/TaximeterCalcMethod;->lookup:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/txdriver/taximeter/TaximeterCalcMethod;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txdriver/taximeter/TaximeterCalcMethod;
    .locals 1

    .line 17
    const-class v0, Lcom/txdriver/taximeter/TaximeterCalcMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/txdriver/taximeter/TaximeterCalcMethod;

    return-object p0
.end method

.method public static values()[Lcom/txdriver/taximeter/TaximeterCalcMethod;
    .locals 1

    .line 17
    sget-object v0, Lcom/txdriver/taximeter/TaximeterCalcMethod;->$VALUES:[Lcom/txdriver/taximeter/TaximeterCalcMethod;

    invoke-virtual {v0}, [Lcom/txdriver/taximeter/TaximeterCalcMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txdriver/taximeter/TaximeterCalcMethod;

    return-object v0
.end method


# virtual methods
.method public varargs in([Lcom/txdriver/taximeter/TaximeterCalcMethod;)Z
    .locals 4

    .line 76
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-ne p0, v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
