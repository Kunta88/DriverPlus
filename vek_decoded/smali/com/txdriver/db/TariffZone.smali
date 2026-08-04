.class public Lcom/txdriver/db/TariffZone;
.super Lcom/activeandroid/Model;
.source "TariffZone.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "TariffZones"
.end annotation


# instance fields
.field public charge:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Charge"
    .end annotation
.end field

.field public endCharge:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "EndCharge"
    .end annotation
.end field

.field public pricePerKm:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "pricePerKm"
    .end annotation
.end field

.field public pricePerMinute:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "pricePerMinute"
    .end annotation
.end field

.field public startCharge:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "StartCharge"
    .end annotation
.end field

.field public tariff:Lcom/txdriver/db/Tariff;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Tariff"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field

.field public zone:Lcom/txdriver/db/Zone;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Zone"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/db/Tariff;Lcom/txdriver/socket/data/TariffZoneData;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/txdriver/db/TariffZone;->tariff:Lcom/txdriver/db/Tariff;

    .line 36
    iget p1, p2, Lcom/txdriver/socket/data/TariffZoneData;->pricePerKm:F

    iput p1, p0, Lcom/txdriver/db/TariffZone;->pricePerKm:F

    .line 37
    iget p1, p2, Lcom/txdriver/socket/data/TariffZoneData;->pricePerMinute:F

    iput p1, p0, Lcom/txdriver/db/TariffZone;->pricePerMinute:F

    .line 38
    iget p1, p2, Lcom/txdriver/socket/data/TariffZoneData;->startCharge:F

    iput p1, p0, Lcom/txdriver/db/TariffZone;->startCharge:F

    .line 39
    iget p1, p2, Lcom/txdriver/socket/data/TariffZoneData;->endCharge:F

    iput p1, p0, Lcom/txdriver/db/TariffZone;->endCharge:F

    .line 40
    iget p1, p2, Lcom/txdriver/socket/data/TariffZoneData;->charge:F

    iput p1, p0, Lcom/txdriver/db/TariffZone;->charge:F

    .line 41
    iget p1, p2, Lcom/txdriver/socket/data/TariffZoneData;->zoneId:I

    invoke-static {p1}, Lcom/txdriver/db/Zone;->getById(I)Lcom/txdriver/db/Zone;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/db/TariffZone;->zone:Lcom/txdriver/db/Zone;

    return-void
.end method

.method public static createTariffZone(Lcom/txdriver/db/Tariff;Lcom/txdriver/socket/data/TariffZoneData;)Lcom/txdriver/db/TariffZone;
    .locals 1

    .line 45
    new-instance v0, Lcom/txdriver/db/TariffZone;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/db/TariffZone;-><init>(Lcom/txdriver/db/Tariff;Lcom/txdriver/socket/data/TariffZoneData;)V

    .line 46
    invoke-virtual {v0}, Lcom/txdriver/db/TariffZone;->save()V

    return-object v0
.end method

.method public static getTariffZone(II)Lcom/txdriver/db/TariffZone;
    .locals 3

    .line 58
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/TariffZone;

    .line 59
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v1, Lcom/txdriver/db/Zone;

    .line 60
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v1, "Zones.Id = TariffZones.Zone"

    .line 61
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v1, Lcom/txdriver/db/Tariff;

    .line 62
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v1, "Tariffs.Id = TariffZones.Tariff"

    .line 63
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 64
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const-string p0, "Tariffs.TariffId = ? and Zones.ZoneId = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 65
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/TariffZone;

    return-object p0
.end method

.method public static getTariffZone(JJ)Lcom/txdriver/db/TariffZone;
    .locals 2

    .line 69
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/TariffZone;

    .line 70
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 71
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const-string p0, "Tariff = ? AND Zone = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/TariffZone;

    return-object p0
.end method

.method public static getTariffZones(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/txdriver/db/TariffZone;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/TariffZone;

    .line 52
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 53
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    const-string p0, "Tariff = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p0

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

    if-eqz p1, :cond_5

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    invoke-super {p0, p1}, Lcom/activeandroid/Model;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 81
    :cond_2
    check-cast p1, Lcom/txdriver/db/TariffZone;

    .line 83
    iget-object v2, p0, Lcom/txdriver/db/TariffZone;->tariff:Lcom/txdriver/db/Tariff;

    iget-object v3, p1, Lcom/txdriver/db/TariffZone;->tariff:Lcom/txdriver/db/Tariff;

    invoke-virtual {v2, v3}, Lcom/txdriver/db/Tariff;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 84
    :cond_3
    iget-object v2, p0, Lcom/txdriver/db/TariffZone;->zone:Lcom/txdriver/db/Zone;

    iget-object p1, p1, Lcom/txdriver/db/TariffZone;->zone:Lcom/txdriver/db/Zone;

    invoke-virtual {v2, p1}, Lcom/txdriver/db/Zone;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/txdriver/db/TariffZone;->tariff:Lcom/txdriver/db/Tariff;

    invoke-virtual {v0}, Lcom/txdriver/db/Tariff;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 92
    iget-object v1, p0, Lcom/txdriver/db/TariffZone;->zone:Lcom/txdriver/db/Zone;

    invoke-virtual {v1}, Lcom/txdriver/db/Zone;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
