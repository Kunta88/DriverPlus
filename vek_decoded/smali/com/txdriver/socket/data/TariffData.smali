.class public interface abstract Lcom/txdriver/socket/data/TariffData;
.super Ljava/lang/Object;
.source "TariffData.java"


# virtual methods
.method public abstract getAlgorithm()Lcom/txdriver/db/Tariff$Algorithm;
.end method

.method public abstract getAutoTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCarExtras()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/TariffExtraData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDays()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDistancePrices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/DistancePriceData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDriverExtras()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/TariffExtraData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEndTimeStamp()I
.end method

.method public abstract getIdleDelay()D
.end method

.method public abstract getIdleSpeed()I
.end method

.method public abstract getMinPrice()D
.end method

.method public abstract getMinPriceIncludesKms()F
.end method

.method public abstract getMinPriceIncludesMinutes()F
.end method

.method public abstract getMinPriceIncludesWaitMinutes()F
.end method

.method public abstract getMinPriceOperation()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPersonal()Ljava/lang/Boolean;
.end method

.method public abstract getPricePerKm()F
.end method

.method public abstract getPricePerMinute()F
.end method

.method public abstract getPricePerWaitMinute()F
.end method

.method public abstract getStartTiemStamp()I
.end method

.method public abstract getTariffId()I
.end method

.method public abstract getTimePrices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/TimePriceData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getZones()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/TariffZoneData;",
            ">;"
        }
    .end annotation
.end method
