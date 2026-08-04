.class public Lcom/txdriver/db/Tariff;
.super Lcom/activeandroid/Model;
.source "Tariff.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "Tariffs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/db/Tariff$Algorithm;
    }
.end annotation


# static fields
.field private static final DAY:I = 0x5a0

.field public static final EXCHANGE_TARIFF_ID:I = -0x12c

.field public static final MIN_PRICE_OPERATION_AND:I = 0x1

.field public static final MIN_PRICE_OPERATION_OR:I = 0x2

.field public static final MULTI_TAXI_TARIFF_ID:I = -0x190

.field public static final ONLY_TIME_DISTANCE_PRICE:F = 1.11E-4f

.field public static final RBT_TARIFF_ID:I = -0xc8

.field private static final TARIFF_WHERE_CAUSE:Ljava/lang/String; = "TariffAutoTypes.AutoType = ? AND (TariffDays.Day = ? AND (? BETWEEN Tariffs.StartTimeStamp AND Tariffs.EndTimeStamp) OR TariffDays.Day = ? AND (? BETWEEN Tariffs.StartTimeStamp AND Tariffs.EndTimeStamp))"

.field public static final UPUP_TARIFF_ID:I = -0x64


# instance fields
.field public algorithm:Lcom/txdriver/db/Tariff$Algorithm;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Algorithm"
    .end annotation
.end field

.field private distancePrices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/db/DistancePrice;",
            ">;"
        }
    .end annotation
.end field

.field public endTimeStamp:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "EndTimeStamp"
    .end annotation
.end field

.field public idleDelay:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "IdleDelay"
    .end annotation
.end field

.field public idleSpeed:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "IdleSpeed"
    .end annotation
.end field

.field public minPrice:D
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "MinPrice"
    .end annotation
.end field

.field public minPriceIncludesKms:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "MinPriceIncludesKms"
    .end annotation
.end field

.field public minPriceIncludesMinutes:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "MinPriceIncludesMinutes"
    .end annotation
.end field

.field public minPriceIncludesWaitMinutes:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "MinPriceIncludesWaitMinutes"
    .end annotation
.end field

.field public minPriceOperation:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "MinPriceOperation"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Name"
    .end annotation
.end field

.field public personal:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Personal"
    .end annotation
.end field

.field public pricePerKm:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "PricePerKm"
    .end annotation
.end field

.field public pricePerMinute:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "PricePerMinute"
    .end annotation
.end field

.field public pricePerWaitMinute:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "PricePerWaitMinute"
    .end annotation
.end field

.field public startTimeStamp:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "StartTimeStamp"
    .end annotation
.end field

.field public tariffId:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "TariffId"
        onUniqueConflict = .enum Lcom/activeandroid/annotation/Column$ConflictAction;->REPLACE:Lcom/activeandroid/annotation/Column$ConflictAction;
        unique = true
    .end annotation
.end field

.field private tariffZones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/db/TariffZone;",
            ">;"
        }
    .end annotation
.end field

.field private timePrices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/db/TimePrice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/txdriver/db/Tariff;->pricePerKm:F

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/txdriver/db/Tariff;->tariffId:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/db/Tariff;->name:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/db/Tariff;->minPrice:D

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/txdriver/db/Tariff;->minPriceIncludesKms:F

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/txdriver/db/Tariff;->pricePerMinute:F

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/txdriver/db/Tariff;->minPriceIncludesMinutes:F

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/txdriver/db/Tariff;->idleSpeed:I

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/socket/data/TariffData;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 75
    invoke-interface {p1}, Lcom/txdriver/socket/data/TariffData;->getPricePerKm()F

    move-result v0

    iput v0, p0, Lcom/txdriver/db/Tariff;->pricePerKm:F

    .line 76
    invoke-interface {p1}, Lcom/txdriver/socket/data/TariffData;->getTariffId()I

    move-result v0

    iput v0, p0, Lcom/txdriver/db/Tariff;->tariffId:I

    .line 77
    invoke-interface {p1}, Lcom/txdriver/socket/data/TariffData;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/db/Tariff;->name:Ljava/lang/String;

    .line 78
    invoke-interface {p1}, Lcom/txdriver/socket/data/TariffData;->getMinPrice()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/db/Tariff;->minPrice:D

    .line 79
    invoke-interface {p1}, Lcom/txdriver/socket/data/TariffData;->getMinPriceIncludesKms()F

    move-result v0

    iput v0, p0, Lcom/txdriver/db/Tariff;->minPriceIncludesKms:F

    .line 80
    invoke-interface {p1}, Lcom/txdriver/socket/data/TariffData;->getMinPriceIncludesMinutes()F

    move-result v0

    iput v0, p0, Lcom/txdriver/db/Tariff;->minPriceIncludesMinutes:F

    .line 81
    invoke-interface {p1}, Lcom/txdriver/socket/data/TariffData;->getIdleSpeed()I

    move-result v0

    iput v0, p0, Lcom/txdriver/db/Tariff;->idleSpeed:I

    .line 82
    invoke-interface {p1}, Lcom/txdriver/socket/data/TariffData;->getPricePerMinute()F

    move-result v0

    iput v0, p0, Lcom/txdriver/db/Tariff;->pricePerMinute:F

    .line 83
    invoke-interface {p1}, Lcom/txdriver/socket/data/TariffData;->getPersonal()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/txdriver/db/Tariff;->personal:Z

    .line 84
    invoke-interface {p1}, Lcom/txdriver/socket/data/TariffData;->getMinPriceIncludesWaitMinutes()F

    move-result v0

    iput v0, p0, Lcom/txdriver/db/Tariff;->minPriceIncludesWaitMinutes:F

    .line 85
    invoke-interface {p1}, Lcom/txdriver/socket/data/TariffData;->getPricePerWaitMinute()F

    move-result v0

    iput v0, p0, Lcom/txdriver/db/Tariff;->pricePerWaitMinute:F

    .line 86
    invoke-interface {p1}, Lcom/txdriver/socket/data/TariffData;->getStartTiemStamp()I

    move-result v0

    iput v0, p0, Lcom/txdriver/db/Tariff;->startTimeStamp:I

    .line 87
    invoke-interface {p1}, Lcom/txdriver/socket/data/TariffData;->getEndTimeStamp()I

    move-result v0

    iput v0, p0, Lcom/txdriver/db/Tariff;->endTimeStamp:I

    .line 88
    invoke-interface {p1}, Lcom/txdriver/socket/data/TariffData;->getMinPriceOperation()I

    move-result v0

    iput v0, p0, Lcom/txdriver/db/Tariff;->minPriceOperation:I

    .line 89
    invoke-interface {p1}, Lcom/txdriver/socket/data/TariffData;->getIdleDelay()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/txdriver/utils/TimeUtils;->minutesToSeconds(D)I

    move-result v0

    iput v0, p0, Lcom/txdriver/db/Tariff;->idleDelay:I

    .line 90
    invoke-interface {p1}, Lcom/txdriver/socket/data/TariffData;->getAlgorithm()Lcom/txdriver/db/Tariff$Algorithm;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/db/Tariff;->algorithm:Lcom/txdriver/db/Tariff$Algorithm;

    return-void
.end method

.method public static createTariff(Lcom/txdriver/socket/data/TariffData;)Lcom/txdriver/db/Tariff;
    .locals 3

    .line 108
    new-instance v0, Lcom/txdriver/db/Tariff;

    invoke-direct {v0, p0}, Lcom/txdriver/db/Tariff;-><init>(Lcom/txdriver/socket/data/TariffData;)V

    .line 109
    invoke-virtual {v0}, Lcom/txdriver/db/Tariff;->save()V

    .line 110
    invoke-interface {p0}, Lcom/txdriver/socket/data/TariffData;->getDays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 111
    invoke-static {v0, v2}, Lcom/txdriver/db/TariffDay;->createDay(Lcom/txdriver/db/Tariff;I)Lcom/txdriver/db/TariffDay;

    goto :goto_0

    .line 113
    :cond_0
    invoke-interface {p0}, Lcom/txdriver/socket/data/TariffData;->getDriverExtras()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/socket/data/TariffExtraData;

    .line 114
    invoke-static {v0, v2}, Lcom/txdriver/db/TariffDriverExtra;->createTariffExtra(Lcom/txdriver/db/Tariff;Lcom/txdriver/socket/data/TariffExtraData;)Lcom/txdriver/db/TariffDriverExtra;

    goto :goto_1

    .line 116
    :cond_1
    invoke-interface {p0}, Lcom/txdriver/socket/data/TariffData;->getCarExtras()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/socket/data/TariffExtraData;

    .line 117
    invoke-static {v0, v2}, Lcom/txdriver/db/TariffCarExtra;->createTariffExtra(Lcom/txdriver/db/Tariff;Lcom/txdriver/socket/data/TariffExtraData;)Lcom/txdriver/db/TariffCarExtra;

    goto :goto_2

    .line 119
    :cond_2
    invoke-interface {p0}, Lcom/txdriver/socket/data/TariffData;->getZones()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/socket/data/TariffZoneData;

    .line 120
    invoke-static {v0, v2}, Lcom/txdriver/db/TariffZone;->createTariffZone(Lcom/txdriver/db/Tariff;Lcom/txdriver/socket/data/TariffZoneData;)Lcom/txdriver/db/TariffZone;

    goto :goto_3

    .line 122
    :cond_3
    invoke-interface {p0}, Lcom/txdriver/socket/data/TariffData;->getAutoTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 123
    invoke-static {v0, v2}, Lcom/txdriver/db/TariffAutoType;->createTariffAutoType(Lcom/txdriver/db/Tariff;I)Lcom/txdriver/db/TariffAutoType;

    goto :goto_4

    .line 125
    :cond_4
    invoke-interface {p0}, Lcom/txdriver/socket/data/TariffData;->getDistancePrices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/socket/data/DistancePriceData;

    .line 126
    invoke-static {v0, v2}, Lcom/txdriver/db/DistancePrice;->createDistancePrice(Lcom/txdriver/db/Tariff;Lcom/txdriver/socket/data/DistancePriceData;)Lcom/txdriver/db/DistancePrice;

    goto :goto_5

    .line 128
    :cond_5
    invoke-interface {p0}, Lcom/txdriver/socket/data/TariffData;->getTimePrices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/socket/data/TimePriceData;

    .line 129
    invoke-static {v0, v1}, Lcom/txdriver/db/TimePrice;->createTimePrice(Lcom/txdriver/db/Tariff;Lcom/txdriver/socket/data/TimePriceData;)Lcom/txdriver/db/TimePrice;

    goto :goto_6

    :cond_6
    return-object v0
.end method

.method public static deleteAll()V
    .locals 2

    .line 136
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/txdriver/db/Tariff;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public static deleteById(I)V
    .locals 3

    .line 140
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/txdriver/db/Tariff;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "TariffId = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public static getAll()Lcom/activeandroid/query/From;
    .locals 2

    .line 189
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/Tariff;

    .line 190
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    return-object v0
.end method

.method public static getQuery(J)Lcom/activeandroid/query/From;
    .locals 2

    .line 201
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/Tariff;

    .line 202
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 203
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    const-string p0, "Id = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    return-object p0
.end method

.method public static getQuery(JII)Lcom/activeandroid/query/From;
    .locals 5

    .line 151
    new-instance v0, Lcom/activeandroid/query/Select;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Tariffs.*"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Lcom/activeandroid/query/Select;-><init>([Ljava/lang/String;)V

    const-class v2, Lcom/txdriver/db/Tariff;

    .line 152
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v2, Lcom/txdriver/db/TariffOrderType;

    .line 153
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/From;->innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v2, "Tariffs.Id = TariffsOrderTypes.Tariff"

    .line 154
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v2, Lcom/txdriver/db/TariffAutoType;

    .line 155
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/From;->innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v2, "Tariffs.Id = TariffAutoTypes.Tariff"

    .line 156
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v2, Lcom/txdriver/db/TariffDay;

    .line 157
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/From;->innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v2, "Tariffs.Id = TariffDays.Tariff"

    .line 158
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v2, "TariffAutoTypes.AutoType ASC, (Tariffs.EndTimeStamp - Tariffs.StartTimeStamp) ASC"

    .line 159
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v2, "Tariffs.Id"

    .line 160
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/From;->groupBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 162
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v2, p1

    sub-int/2addr p2, v1

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x7

    .line 163
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v2, p1

    const/4 p0, 0x4

    add-int/lit16 p3, p3, 0x5a0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    const-string p0, "TariffAutoTypes.AutoType = ? AND (TariffDays.Day = ? AND (? BETWEEN Tariffs.StartTimeStamp AND Tariffs.EndTimeStamp) OR TariffDays.Day = ? AND (? BETWEEN Tariffs.StartTimeStamp AND Tariffs.EndTimeStamp))"

    .line 161
    invoke-virtual {v0, p0, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    return-object p0
.end method

.method public static getQuery(JIIZ)Lcom/activeandroid/query/From;
    .locals 3

    .line 144
    invoke-static {p0, p1, p2, p3}, Lcom/txdriver/db/Tariff;->getQuery(JII)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 146
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    sub-int/2addr p2, p1

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x7

    .line 147
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v1, p1

    const/4 p0, 0x4

    add-int/lit16 p3, p3, 0x5a0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "TariffAutoTypes.AutoType = ? AND (TariffDays.Day = ? AND (? BETWEEN Tariffs.StartTimeStamp AND Tariffs.EndTimeStamp) OR TariffDays.Day = ? AND (? BETWEEN Tariffs.StartTimeStamp AND Tariffs.EndTimeStamp)) AND Tariffs.Personal = ?"

    .line 145
    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    return-object p0
.end method

.method public static getQuery(JJII)Lcom/activeandroid/query/From;
    .locals 3

    .line 182
    invoke-static {p2, p3, p4, p5}, Lcom/txdriver/db/Tariff;->getQuery(JII)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 184
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v1, p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    sub-int/2addr p4, p3

    if-lez p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x7

    .line 185
    :goto_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v1, p3

    const/4 p2, 0x4

    add-int/lit16 p5, p5, 0x5a0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p2

    const/4 p2, 0x5

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, p2

    const-string p0, "TariffAutoTypes.AutoType = ? AND (TariffDays.Day = ? AND (? BETWEEN Tariffs.StartTimeStamp AND Tariffs.EndTimeStamp) OR TariffDays.Day = ? AND (? BETWEEN Tariffs.StartTimeStamp AND Tariffs.EndTimeStamp)) AND TariffsOrderTypes.OrderType = ?"

    .line 183
    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    return-object p0
.end method

.method public static getQuery(JJIIZ)Lcom/activeandroid/query/From;
    .locals 4

    .line 167
    invoke-static {p2, p3, p4, p5}, Lcom/txdriver/db/Tariff;->getQuery(JII)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x7

    new-array v2, v1, [Ljava/lang/Object;

    .line 169
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v2, p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v2, p3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x2

    aput-object p2, v2, v3

    sub-int/2addr p4, p3

    if-lez p4, :cond_0

    move v1, p4

    .line 170
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v2, p3

    const/4 p2, 0x4

    add-int/lit16 p5, p5, 0x5a0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, p2

    const/4 p2, 0x5

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, p2

    const/4 p0, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    const-string p0, "TariffAutoTypes.AutoType = ? AND (TariffDays.Day = ? AND (? BETWEEN Tariffs.StartTimeStamp AND Tariffs.EndTimeStamp) OR TariffDays.Day = ? AND (? BETWEEN Tariffs.StartTimeStamp AND Tariffs.EndTimeStamp)) AND TariffsOrderTypes.OrderType = ? AND Tariffs.Personal = ?"

    .line 168
    invoke-virtual {v0, p0, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    return-object p0
.end method

.method public static getTariff(I)Lcom/txdriver/db/Tariff;
    .locals 3

    .line 194
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/Tariff;

    .line 195
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 196
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "TariffId = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 197
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/Tariff;

    return-object p0
.end method

.method public static getTariff(JII)Lcom/txdriver/db/Tariff;
    .locals 0

    .line 174
    invoke-static {p0, p1, p2, p3}, Lcom/txdriver/db/Tariff;->getQuery(JII)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/Tariff;

    return-object p0
.end method

.method public static getTariff(JJII)Lcom/txdriver/db/Tariff;
    .locals 0

    .line 178
    invoke-static/range {p0 .. p5}, Lcom/txdriver/db/Tariff;->getQuery(JJII)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/Tariff;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 209
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 210
    :cond_1
    check-cast p1, Lcom/txdriver/db/Tariff;

    .line 211
    iget v2, p0, Lcom/txdriver/db/Tariff;->tariffId:I

    iget p1, p1, Lcom/txdriver/db/Tariff;->tariffId:I

    if-eq v2, p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getDistancePrices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/db/DistancePrice;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/txdriver/db/Tariff;->distancePrices:Ljava/util/List;

    if-nez v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/txdriver/db/Tariff;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/txdriver/db/DistancePrice;->getDistancePrice(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/db/Tariff;->distancePrices:Ljava/util/List;

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/txdriver/db/Tariff;->distancePrices:Ljava/util/List;

    return-object v0
.end method

.method public getIdleSpeed()F
    .locals 1

    .line 260
    iget v0, p0, Lcom/txdriver/db/Tariff;->idleSpeed:I

    if-lez v0, :cond_0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40a00000    # 5.0f

    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/txdriver/db/Tariff;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTariffZone(DD)Lcom/txdriver/db/TariffZone;
    .locals 3

    .line 230
    invoke-virtual {p0}, Lcom/txdriver/db/Tariff;->getTariffZones()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/db/TariffZone;

    .line 231
    iget-object v2, v1, Lcom/txdriver/db/TariffZone;->zone:Lcom/txdriver/db/Zone;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/txdriver/db/Zone;->contains(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTariffZones()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/db/TariffZone;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/txdriver/db/Tariff;->tariffZones:Ljava/util/List;

    if-nez v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/txdriver/db/Tariff;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/txdriver/db/TariffZone;->getTariffZones(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/db/Tariff;->tariffZones:Ljava/util/List;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/txdriver/db/Tariff;->tariffZones:Ljava/util/List;

    return-object v0
.end method

.method public getTimePrices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/db/TimePrice;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/txdriver/db/Tariff;->timePrices:Ljava/util/List;

    if-nez v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/txdriver/db/Tariff;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/txdriver/db/TimePrice;->getTimePrice(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/db/Tariff;->timePrices:Ljava/util/List;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/txdriver/db/Tariff;->timePrices:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/txdriver/db/Tariff;->tariffId:I

    return v0
.end method

.method public isMinPriceOperationAnd()Z
    .locals 2

    .line 268
    iget v0, p0, Lcom/txdriver/db/Tariff;->minPriceOperation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMinPriceOperationOr()Z
    .locals 2

    .line 264
    iget v0, p0, Lcom/txdriver/db/Tariff;->minPriceOperation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/txdriver/db/Tariff;->name:Ljava/lang/String;

    return-object v0
.end method
