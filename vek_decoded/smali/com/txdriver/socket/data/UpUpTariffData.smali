.class public Lcom/txdriver/socket/data/UpUpTariffData;
.super Ljava/lang/Object;
.source "UpUpTariffData.java"

# interfaces
.implements Lcom/txdriver/socket/data/TariffData;
.implements Lcom/txdriver/socket/data/ExternalTariffData;


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field public countrySidePricePerKm:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xa
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public countrySideZone:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xb
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public idleSpeed:I
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

    .line 162
    sget-object v0, Lcom/txdriver/db/Tariff$Algorithm;->TIME_OR_DISTANCE:Lcom/txdriver/db/Tariff$Algorithm;

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

    .line 126
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

    .line 136
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

    .line 111
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

    .line 167
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

    .line 131
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

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getIdleSpeed()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/txdriver/socket/data/UpUpTariffData;->idleSpeed:I

    return v0
.end method

.method public getMinPrice()D
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/txdriver/socket/data/UpUpTariffData;->minPrice:D

    return-wide v0
.end method

.method public getMinPriceIncludesKms()F
    .locals 1

    .line 76
    iget v0, p0, Lcom/txdriver/socket/data/UpUpTariffData;->minPriceIncludesKms:F

    return v0
.end method

.method public getMinPriceIncludesMinutes()F
    .locals 1

    .line 81
    iget v0, p0, Lcom/txdriver/socket/data/UpUpTariffData;->minPriceIncludesMinutes:F

    return v0
.end method

.method public getMinPriceIncludesWaitMinutes()F
    .locals 1

    .line 86
    iget v0, p0, Lcom/txdriver/socket/data/UpUpTariffData;->minPriceIncludesWaitMinutes:F

    return v0
.end method

.method public getMinPriceOperation()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/txdriver/socket/data/UpUpTariffData;->tariffName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/txdriver/socket/data/UpUpTariffData;->orderId:I

    return v0
.end method

.method public getPersonal()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getPricePerKm()F
    .locals 1

    .line 91
    iget v0, p0, Lcom/txdriver/socket/data/UpUpTariffData;->pricePerKm:F

    return v0
.end method

.method public getPricePerMinute()F
    .locals 1

    .line 96
    iget v0, p0, Lcom/txdriver/socket/data/UpUpTariffData;->pricePerMinute:F

    return v0
.end method

.method public getPricePerWaitMinute()F
    .locals 1

    .line 101
    iget v0, p0, Lcom/txdriver/socket/data/UpUpTariffData;->pricePerWaitMinute:F

    return v0
.end method

.method public getStartTiemStamp()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTariffId()I
    .locals 1

    const/16 v0, -0x64

    return v0
.end method

.method public getTariffName()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/txdriver/socket/data/UpUpTariffData;->tariffName:Ljava/lang/String;

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

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getZones()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/TariffZoneData;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    iget v1, p0, Lcom/txdriver/socket/data/UpUpTariffData;->countrySideZone:I

    if-lez v1, :cond_0

    .line 143
    new-instance v1, Lcom/txdriver/socket/data/TariffZoneData;

    invoke-direct {v1}, Lcom/txdriver/socket/data/TariffZoneData;-><init>()V

    .line 144
    iget v2, p0, Lcom/txdriver/socket/data/UpUpTariffData;->countrySidePricePerKm:F

    iput v2, v1, Lcom/txdriver/socket/data/TariffZoneData;->pricePerKm:F

    .line 145
    iget v2, p0, Lcom/txdriver/socket/data/UpUpTariffData;->countrySideZone:I

    iput v2, v1, Lcom/txdriver/socket/data/TariffZoneData;->zoneId:I

    :cond_0
    return-object v0
.end method
