.class public Lcom/txdriver/socket/data/CommonTariffData;
.super Ljava/lang/Object;
.source "CommonTariffData.java"

# interfaces
.implements Lcom/txdriver/socket/data/TariffData;


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field public algorithm:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x14
    .end annotation
.end field

.field public autoTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xe
    .end annotation
.end field

.field public carExtras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/TariffExtraData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x10
    .end annotation
.end field

.field public days:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xb
    .end annotation
.end field

.field public distancePrices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/DistancePriceData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x15
    .end annotation
.end field

.field public driverExtras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/TariffExtraData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xf
    .end annotation
.end field

.field public endTimeStamp:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xd
    .end annotation
.end field

.field public idleDelay:D
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x13
    .end annotation
.end field

.field public idleSpeed:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xa
    .end annotation
.end field

.field public minPrice:D
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field

.field public minPriceIncludesKms:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x4
    .end annotation
.end field

.field public minPriceIncludesMinutes:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x5
    .end annotation
.end field

.field public minPriceIncludesWaitMinutes:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x6
    .end annotation
.end field

.field public minPriceOperation:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x12
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field public personal:Ljava/lang/Boolean;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field public pricePerKm:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x7
    .end annotation
.end field

.field public pricePerMinute:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x8
    .end annotation
.end field

.field public pricePerWaitMinute:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x9
    .end annotation
.end field

.field public startTiemStamp:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xc
    .end annotation
.end field

.field public tariffId:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field public timePrices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/TimePriceData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x16
    .end annotation
.end field

.field public zones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/TariffZoneData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x11
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Lcom/txdriver/db/Tariff$Algorithm;
    .locals 1

    .line 163
    iget v0, p0, Lcom/txdriver/socket/data/CommonTariffData;->algorithm:I

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

    .line 133
    iget-object v0, p0, Lcom/txdriver/socket/data/CommonTariffData;->autoTypes:Ljava/util/List;

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

    .line 143
    iget-object v0, p0, Lcom/txdriver/socket/data/CommonTariffData;->carExtras:Ljava/util/List;

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

    .line 118
    iget-object v0, p0, Lcom/txdriver/socket/data/CommonTariffData;->days:Ljava/util/List;

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

    .line 168
    iget-object v0, p0, Lcom/txdriver/socket/data/CommonTariffData;->distancePrices:Ljava/util/List;

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

    .line 138
    iget-object v0, p0, Lcom/txdriver/socket/data/CommonTariffData;->driverExtras:Ljava/util/List;

    return-object v0
.end method

.method public getEndTimeStamp()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/txdriver/socket/data/CommonTariffData;->endTimeStamp:I

    return v0
.end method

.method public getIdleDelay()D
    .locals 2

    .line 158
    iget-wide v0, p0, Lcom/txdriver/socket/data/CommonTariffData;->idleDelay:D

    return-wide v0
.end method

.method public getIdleSpeed()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/txdriver/socket/data/CommonTariffData;->idleSpeed:I

    return v0
.end method

.method public getMinPrice()D
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/txdriver/socket/data/CommonTariffData;->minPrice:D

    return-wide v0
.end method

.method public getMinPriceIncludesKms()F
    .locals 1

    .line 83
    iget v0, p0, Lcom/txdriver/socket/data/CommonTariffData;->minPriceIncludesKms:F

    return v0
.end method

.method public getMinPriceIncludesMinutes()F
    .locals 1

    .line 88
    iget v0, p0, Lcom/txdriver/socket/data/CommonTariffData;->minPriceIncludesMinutes:F

    return v0
.end method

.method public getMinPriceIncludesWaitMinutes()F
    .locals 1

    .line 93
    iget v0, p0, Lcom/txdriver/socket/data/CommonTariffData;->minPriceIncludesWaitMinutes:F

    return v0
.end method

.method public getMinPriceOperation()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/txdriver/socket/data/CommonTariffData;->minPriceOperation:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/txdriver/socket/data/CommonTariffData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonal()Ljava/lang/Boolean;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/txdriver/socket/data/CommonTariffData;->personal:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPricePerKm()F
    .locals 1

    .line 98
    iget v0, p0, Lcom/txdriver/socket/data/CommonTariffData;->pricePerKm:F

    return v0
.end method

.method public getPricePerMinute()F
    .locals 1

    .line 103
    iget v0, p0, Lcom/txdriver/socket/data/CommonTariffData;->pricePerMinute:F

    return v0
.end method

.method public getPricePerWaitMinute()F
    .locals 1

    .line 108
    iget v0, p0, Lcom/txdriver/socket/data/CommonTariffData;->pricePerWaitMinute:F

    return v0
.end method

.method public getStartTiemStamp()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/txdriver/socket/data/CommonTariffData;->startTiemStamp:I

    return v0
.end method

.method public getTariffId()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/txdriver/socket/data/CommonTariffData;->tariffId:I

    return v0
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

    .line 173
    iget-object v0, p0, Lcom/txdriver/socket/data/CommonTariffData;->timePrices:Ljava/util/List;

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

    .line 148
    iget-object v0, p0, Lcom/txdriver/socket/data/CommonTariffData;->zones:Ljava/util/List;

    return-object v0
.end method
