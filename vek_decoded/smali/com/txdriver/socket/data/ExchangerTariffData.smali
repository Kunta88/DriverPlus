.class public Lcom/txdriver/socket/data/ExchangerTariffData;
.super Ljava/lang/Object;
.source "ExchangerTariffData.java"

# interfaces
.implements Lcom/txdriver/socket/data/TariffData;
.implements Lcom/txdriver/socket/data/ExternalTariffData;


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field public calcAlgo:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xc
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public calculationMethod:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xe
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public idleDelay:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xb
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public idleSpeed:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xa
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public middleAddressCharge:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x9
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public minPrice:D
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public minPriceIncludesKms:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public minPriceIncludesMinutes:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x4
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public minPriceIncludesWaitMinutes:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x5
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public minPriceOperation:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xd
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public orderId:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field public pricePerKm:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x6
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public pricePerMinute:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x7
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public pricePerWaitMinute:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x8
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public tariffName:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Lcom/txdriver/db/Tariff$Algorithm;
    .locals 1

    .line 166
    iget v0, p0, Lcom/txdriver/socket/data/ExchangerTariffData;->calcAlgo:I

    invoke-static {v0}, Lcom/txdriver/db/Tariff$Algorithm;->get(I)Lcom/txdriver/db/Tariff$Algorithm;

    move-result-object v0

    return-object v0
.end method

.method public getAutoTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getCarExtras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/TariffExtraData;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getDays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getDistancePrices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/DistancePriceData;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getDriverExtras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/TariffExtraData;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getEndTimeStamp()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIdleDelay()D
    .locals 2

    .line 161
    iget v0, p0, Lcom/txdriver/socket/data/ExchangerTariffData;->idleDelay:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getIdleSpeed()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/txdriver/socket/data/ExchangerTariffData;->idleSpeed:I

    return v0
.end method

.method public getMinPrice()D
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/txdriver/socket/data/ExchangerTariffData;->minPrice:D

    return-wide v0
.end method

.method public getMinPriceIncludesKms()F
    .locals 1

    .line 86
    iget v0, p0, Lcom/txdriver/socket/data/ExchangerTariffData;->minPriceIncludesKms:F

    return v0
.end method

.method public getMinPriceIncludesMinutes()F
    .locals 1

    .line 91
    iget v0, p0, Lcom/txdriver/socket/data/ExchangerTariffData;->minPriceIncludesMinutes:F

    return v0
.end method

.method public getMinPriceIncludesWaitMinutes()F
    .locals 1

    .line 96
    iget v0, p0, Lcom/txdriver/socket/data/ExchangerTariffData;->minPriceIncludesWaitMinutes:F

    return v0
.end method

.method public getMinPriceOperation()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/txdriver/socket/data/ExchangerTariffData;->minPriceOperation:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/txdriver/socket/data/ExchangerTariffData;->tariffName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/txdriver/socket/data/ExchangerTariffData;->orderId:I

    return v0
.end method

.method public getPersonal()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getPricePerKm()F
    .locals 1

    .line 101
    iget v0, p0, Lcom/txdriver/socket/data/ExchangerTariffData;->pricePerKm:F

    return v0
.end method

.method public getPricePerMinute()F
    .locals 1

    .line 106
    iget v0, p0, Lcom/txdriver/socket/data/ExchangerTariffData;->pricePerMinute:F

    return v0
.end method

.method public getPricePerWaitMinute()F
    .locals 1

    .line 111
    iget v0, p0, Lcom/txdriver/socket/data/ExchangerTariffData;->pricePerWaitMinute:F

    return v0
.end method

.method public getStartTiemStamp()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTariffId()I
    .locals 1

    const/16 v0, -0x12c

    return v0
.end method

.method public getTariffName()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/txdriver/socket/data/ExchangerTariffData;->tariffName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimePrices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/TimePriceData;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getZones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/TariffZoneData;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
